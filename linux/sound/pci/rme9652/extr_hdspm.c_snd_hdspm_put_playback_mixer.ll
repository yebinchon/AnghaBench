; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_put_playback_mixer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_put_playback_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_6__ = type { i32 }
%struct.hdspm = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@HDSPM_MAX_CHANNELS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UNITY_GAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_hdspm_put_playback_mixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdspm_put_playback_mixer(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.hdspm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call %struct.hdspm* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.hdspm* %11, %struct.hdspm** %6, align 8
  %12 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %13 = call i32 @snd_hdspm_use_is_exclusive(%struct.hdspm* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %72

18:                                               ; preds = %2
  %19 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %20 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @HDSPM_MAX_CHANNELS, align 4
  %29 = icmp sge i32 %27, %28
  br label %30

30:                                               ; preds = %26, %18
  %31 = phi i1 [ true, %18 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = call i64 @snd_BUG_ON(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %72

38:                                               ; preds = %30
  %39 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %40 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @UNITY_GAIN, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sdiv i32 %47, 64
  store i32 %48, i32* %9, align 4
  %49 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %50 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %49, i32 0, i32 0
  %51 = call i32 @spin_lock_irq(i32* %50)
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @hdspm_read_pb_gain(%struct.hdspm* %53, i32 %54, i32 %55)
  %57 = icmp ne i32 %52, %56
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %38
  %62 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @hdspm_write_pb_gain(%struct.hdspm* %62, i32 %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %61, %38
  %68 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %69 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %68, i32 0, i32 0
  %70 = call i32 @spin_unlock_irq(i32* %69)
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %67, %35, %15
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.hdspm* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_hdspm_use_is_exclusive(%struct.hdspm*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @hdspm_read_pb_gain(%struct.hdspm*, i32, i32) #1

declare dso_local i32 @hdspm_write_pb_gain(%struct.hdspm*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
