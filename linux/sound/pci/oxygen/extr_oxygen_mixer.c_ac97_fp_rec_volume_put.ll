; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_mixer.c_ac97_fp_rec_volume_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_mixer.c_ac97_fp_rec_volume_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.oxygen* }
%struct.oxygen = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@AC97_REC_GAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @ac97_fp_rec_volume_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ac97_fp_rec_volume_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.oxygen*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %10 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %9, i32 0, i32 0
  %11 = load %struct.oxygen*, %struct.oxygen** %10, align 8
  store %struct.oxygen* %11, %struct.oxygen** %5, align 8
  %12 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %13 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %16 = load i32, i32* @AC97_REC_GAIN, align 4
  %17 = call i32 @oxygen_read_ac97(%struct.oxygen* %15, i32 1, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, -1800
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %22 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 7
  %29 = or i32 %20, %28
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %32 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 7
  %39 = shl i32 %38, 8
  %40 = or i32 %30, %39
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %41, %42
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %2
  %48 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %49 = load i32, i32* @AC97_REC_GAIN, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @oxygen_write_ac97(%struct.oxygen* %48, i32 1, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %47, %2
  %53 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %54 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* %8, align 4
  ret i32 %56
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @oxygen_read_ac97(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @oxygen_write_ac97(%struct.oxygen*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
