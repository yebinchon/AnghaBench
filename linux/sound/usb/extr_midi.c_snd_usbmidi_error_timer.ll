; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_midi.c_snd_usbmidi_error_timer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_midi.c_snd_usbmidi_error_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_midi = type { i32, %struct.TYPE_3__*, i32, i64 }
%struct.TYPE_3__ = type { i64, %struct.snd_usb_midi_in_endpoint* }
%struct.snd_usb_midi_in_endpoint = type { %struct.TYPE_4__**, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.timer_list = type { i32 }

@error_timer = common dso_local global i32 0, align 4
@MIDI_MAX_ENDPOINTS = common dso_local global i32 0, align 4
@INPUT_URBS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@umidi = common dso_local global %struct.snd_usb_midi* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @snd_usbmidi_error_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_usbmidi_error_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.snd_usb_midi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_usb_midi_in_endpoint*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %7 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %3, align 8
  %8 = ptrtoint %struct.snd_usb_midi* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* @error_timer, align 4
  %11 = call %struct.snd_usb_midi* @from_timer(i32 %8, %struct.timer_list* %9, i32 %10)
  store %struct.snd_usb_midi* %11, %struct.snd_usb_midi** %3, align 8
  %12 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %3, align 8
  %13 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %3, align 8
  %16 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %3, align 8
  %21 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %20, i32 0, i32 0
  %22 = call i32 @spin_unlock(i32* %21)
  br label %116

23:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %109, %23
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @MIDI_MAX_ENDPOINTS, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %112

28:                                               ; preds = %24
  %29 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %3, align 8
  %30 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %35, align 8
  store %struct.snd_usb_midi_in_endpoint* %36, %struct.snd_usb_midi_in_endpoint** %6, align 8
  %37 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %6, align 8
  %38 = icmp ne %struct.snd_usb_midi_in_endpoint* %37, null
  br i1 %38, label %39, label %88

39:                                               ; preds = %28
  %40 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %6, align 8
  %41 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, %struct.snd_usb_midi_in_endpoint* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %88

44:                                               ; preds = %39
  %45 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %6, align 8
  %46 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, %struct.snd_usb_midi_in_endpoint* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %84, %44
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @INPUT_URBS, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %87

51:                                               ; preds = %47
  %52 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %6, align 8
  %53 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, %struct.snd_usb_midi_in_endpoint* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %54, i64 %56
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = call i64 @atomic_read(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %84

63:                                               ; preds = %51
  %64 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %3, align 8
  %65 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %6, align 8
  %68 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, %struct.snd_usb_midi_in_endpoint* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %69, i64 %71
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i32 %66, i32* %74, align 4
  %75 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %6, align 8
  %76 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, %struct.snd_usb_midi_in_endpoint* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %77, i64 %79
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i32, i32* @GFP_ATOMIC, align 4
  %83 = call i32 @snd_usbmidi_submit_urb(%struct.TYPE_4__* %81, i32 %82)
  br label %84

84:                                               ; preds = %63, %62
  %85 = load i32, i32* %5, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %47

87:                                               ; preds = %47
  br label %88

88:                                               ; preds = %87, %39, %28
  %89 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %3, align 8
  %90 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %89, i32 0, i32 1
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = load i32, i32* %4, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %88
  %99 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %3, align 8
  %100 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %99, i32 0, i32 1
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @snd_usbmidi_do_output(i64 %106)
  br label %108

108:                                              ; preds = %98, %88
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %4, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %4, align 4
  br label %24

112:                                              ; preds = %24
  %113 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %3, align 8
  %114 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %113, i32 0, i32 0
  %115 = call i32 @spin_unlock(i32* %114)
  br label %116

116:                                              ; preds = %112, %19
  ret void
}

declare dso_local %struct.snd_usb_midi* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @snd_usbmidi_submit_urb(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @snd_usbmidi_do_output(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
