; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_amdtp-dot.c_write_midi_messages.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_amdtp-dot.c_write_midi_messages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdtp_stream = type { i32, %struct.amdtp_dot* }
%struct.amdtp_dot = type { i32** }

@MAX_MIDI_PORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdtp_stream*, i32*, i32, i32)* @write_midi_messages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_midi_messages(%struct.amdtp_stream* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdtp_stream*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.amdtp_dot*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.amdtp_stream* %0, %struct.amdtp_stream** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %15 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %14, i32 0, i32 1
  %16 = load %struct.amdtp_dot*, %struct.amdtp_dot** %15, align 8
  store %struct.amdtp_dot* %16, %struct.amdtp_dot** %9, align 8
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %101, %4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %104

21:                                               ; preds = %17
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %10, align 4
  %24 = add i32 %22, %23
  %25 = urem i32 %24, 8
  store i32 %25, i32* %11, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32* %27, i32** %13, align 8
  store i32 0, i32* %12, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @MAX_MIDI_PORTS, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %56

31:                                               ; preds = %21
  %32 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i64 @midi_ratelimit_per_packet(%struct.amdtp_stream* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %31
  %37 = load %struct.amdtp_dot*, %struct.amdtp_dot** %9, align 8
  %38 = getelementptr inbounds %struct.amdtp_dot, %struct.amdtp_dot* %37, i32 0, i32 0
  %39 = load i32**, i32*** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %56

45:                                               ; preds = %36
  %46 = load %struct.amdtp_dot*, %struct.amdtp_dot** %9, align 8
  %47 = getelementptr inbounds %struct.amdtp_dot, %struct.amdtp_dot* %46, i32 0, i32 0
  %48 = load i32**, i32*** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = load i32*, i32** %13, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = call i32 @snd_rawmidi_transmit(i32* %52, i32* %54, i32 2)
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %45, %36, %31, %21
  %57 = load i32, i32* %12, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %85

59:                                               ; preds = %56
  %60 = load i32, i32* %11, align 4
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32*, i32** %13, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 3
  store i32 224, i32* %64, align 4
  br label %75

65:                                               ; preds = %59
  %66 = load i32, i32* %11, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32*, i32** %13, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 3
  store i32 32, i32* %70, align 4
  br label %74

71:                                               ; preds = %65
  %72 = load i32*, i32** %13, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 3
  store i32 0, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %68
  br label %75

75:                                               ; preds = %74, %62
  %76 = load i32, i32* %12, align 4
  %77 = load i32*, i32** %13, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 3
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @midi_use_bytes(%struct.amdtp_stream* %81, i32 %82, i32 %83)
  br label %92

85:                                               ; preds = %56
  %86 = load i32*, i32** %13, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  store i32 0, i32* %87, align 4
  %88 = load i32*, i32** %13, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2
  store i32 0, i32* %89, align 4
  %90 = load i32*, i32** %13, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 3
  store i32 0, i32* %91, align 4
  br label %92

92:                                               ; preds = %85, %75
  %93 = load i32*, i32** %13, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  store i32 128, i32* %94, align 4
  %95 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %96 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32*, i32** %6, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32* %100, i32** %6, align 8
  br label %101

101:                                              ; preds = %92
  %102 = load i32, i32* %10, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %17

104:                                              ; preds = %17
  ret void
}

declare dso_local i64 @midi_ratelimit_per_packet(%struct.amdtp_stream*, i32) #1

declare dso_local i32 @snd_rawmidi_transmit(i32*, i32*, i32) #1

declare dso_local i32 @midi_use_bytes(%struct.amdtp_stream*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
