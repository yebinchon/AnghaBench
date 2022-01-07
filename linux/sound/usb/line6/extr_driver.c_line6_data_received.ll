; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_driver.c_line6_data_received.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_driver.c_line6_data_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32*, i32, i64 }
%struct.usb_line6 = type { i32, i32*, i32 (%struct.usb_line6*)*, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.midi_buffer }
%struct.midi_buffer = type { i32 }

@ESHUTDOWN = common dso_local global i32 0, align 4
@LINE6_CAP_CONTROL_MIDI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%d %d buffer overflow - message skipped\0A\00", align 1
@LINE6_MIDI_MESSAGE_MAXLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @line6_data_received to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @line6_data_received(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.usb_line6*, align 8
  %4 = alloca %struct.midi_buffer*, align 8
  %5 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %6 = load %struct.urb*, %struct.urb** %2, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.usb_line6*
  store %struct.usb_line6* %9, %struct.usb_line6** %3, align 8
  %10 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %11 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %10, i32 0, i32 5
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.midi_buffer* %13, %struct.midi_buffer** %4, align 8
  %14 = load %struct.urb*, %struct.urb** %2, align 8
  %15 = getelementptr inbounds %struct.urb, %struct.urb* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @ESHUTDOWN, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %116

21:                                               ; preds = %1
  %22 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %23 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %22, i32 0, i32 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @LINE6_CAP_CONTROL_MIDI, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %89

30:                                               ; preds = %21
  %31 = load %struct.midi_buffer*, %struct.midi_buffer** %4, align 8
  %32 = load %struct.urb*, %struct.urb** %2, align 8
  %33 = getelementptr inbounds %struct.urb, %struct.urb* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.urb*, %struct.urb** %2, align 8
  %36 = getelementptr inbounds %struct.urb, %struct.urb* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @line6_midibuf_write(%struct.midi_buffer* %31, i32* %34, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.urb*, %struct.urb** %2, align 8
  %41 = getelementptr inbounds %struct.urb, %struct.urb* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %30
  %45 = load %struct.midi_buffer*, %struct.midi_buffer** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @line6_midibuf_ignore(%struct.midi_buffer* %45, i32 %46)
  %48 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %49 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.urb*, %struct.urb** %2, align 8
  %53 = getelementptr inbounds %struct.urb, %struct.urb* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @dev_dbg(i32 %50, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %44, %30
  br label %57

57:                                               ; preds = %87, %56
  %58 = load %struct.midi_buffer*, %struct.midi_buffer** %4, align 8
  %59 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %60 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* @LINE6_MIDI_MESSAGE_MAXLEN, align 4
  %63 = call i32 @line6_midibuf_read(%struct.midi_buffer* %58, i32* %61, i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %88

67:                                               ; preds = %57
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %70 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %72 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %73 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @line6_midi_receive(%struct.usb_line6* %71, i32* %74, i32 %75)
  %77 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %78 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %77, i32 0, i32 2
  %79 = load i32 (%struct.usb_line6*)*, i32 (%struct.usb_line6*)** %78, align 8
  %80 = icmp ne i32 (%struct.usb_line6*)* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %67
  %82 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %83 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %82, i32 0, i32 2
  %84 = load i32 (%struct.usb_line6*)*, i32 (%struct.usb_line6*)** %83, align 8
  %85 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %86 = call i32 %84(%struct.usb_line6* %85)
  br label %87

87:                                               ; preds = %81, %67
  br label %57

88:                                               ; preds = %66
  br label %113

89:                                               ; preds = %21
  %90 = load %struct.urb*, %struct.urb** %2, align 8
  %91 = getelementptr inbounds %struct.urb, %struct.urb* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %94 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %93, i32 0, i32 1
  store i32* %92, i32** %94, align 8
  %95 = load %struct.urb*, %struct.urb** %2, align 8
  %96 = getelementptr inbounds %struct.urb, %struct.urb* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %99 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %101 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %100, i32 0, i32 2
  %102 = load i32 (%struct.usb_line6*)*, i32 (%struct.usb_line6*)** %101, align 8
  %103 = icmp ne i32 (%struct.usb_line6*)* %102, null
  br i1 %103, label %104, label %110

104:                                              ; preds = %89
  %105 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %106 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %105, i32 0, i32 2
  %107 = load i32 (%struct.usb_line6*)*, i32 (%struct.usb_line6*)** %106, align 8
  %108 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %109 = call i32 %107(%struct.usb_line6* %108)
  br label %110

110:                                              ; preds = %104, %89
  %111 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %112 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %111, i32 0, i32 1
  store i32* null, i32** %112, align 8
  br label %113

113:                                              ; preds = %110, %88
  %114 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %115 = call i32 @line6_start_listen(%struct.usb_line6* %114)
  br label %116

116:                                              ; preds = %113, %20
  ret void
}

declare dso_local i32 @line6_midibuf_write(%struct.midi_buffer*, i32*, i32) #1

declare dso_local i32 @line6_midibuf_ignore(%struct.midi_buffer*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @line6_midibuf_read(%struct.midi_buffer*, i32*, i32) #1

declare dso_local i32 @line6_midi_receive(%struct.usb_line6*, i32*, i32) #1

declare dso_local i32 @line6_start_listen(%struct.usb_line6*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
