; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio.c_snd_echo_mixer_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio.c_snd_echo_mixer_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 }
%struct.echoaudio = type { i32**, i32 }

@ECHO_MAXAUDIOOUTPUTS = common dso_local global i32 0, align 4
@ECHO_MAXAUDIOINPUTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ECHOGAIN_MINOUT = common dso_local global i32 0, align 4
@ECHOGAIN_MAXOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_echo_mixer_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_echo_mixer_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.echoaudio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %12 = call %struct.echoaudio* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.echoaudio* %12, %struct.echoaudio** %6, align 8
  %13 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %14 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %18 = call i32 @num_busses_in(%struct.echoaudio* %17)
  %19 = udiv i32 %16, %18
  store i32 %19, i32* %9, align 4
  %20 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %21 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %25 = call i32 @num_busses_in(%struct.echoaudio* %24)
  %26 = urem i32 %23, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @ECHO_MAXAUDIOOUTPUTS, align 4
  %29 = icmp uge i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @ECHO_MAXAUDIOINPUTS, align 4
  %33 = icmp uge i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30, %2
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %85

37:                                               ; preds = %30
  %38 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %39 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @ECHOGAIN_MINOUT, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %37
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @ECHOGAIN_MAXOUT, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48, %37
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %85

55:                                               ; preds = %48
  %56 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %57 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %56, i32 0, i32 0
  %58 = load i32**, i32*** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %55
  %70 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %71 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %70, i32 0, i32 1
  %72 = call i32 @spin_lock_irq(i32* %71)
  %73 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @set_monitor_gain(%struct.echoaudio* %73, i32 %74, i32 %75, i32 %76)
  %78 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %79 = call i32 @update_output_line_level(%struct.echoaudio* %78)
  %80 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %81 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %80, i32 0, i32 1
  %82 = call i32 @spin_unlock_irq(i32* %81)
  store i32 1, i32* %7, align 4
  br label %83

83:                                               ; preds = %69, %55
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %52, %34
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.echoaudio* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @num_busses_in(%struct.echoaudio*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @set_monitor_gain(%struct.echoaudio*, i32, i32, i32) #1

declare dso_local i32 @update_output_line_level(%struct.echoaudio*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
