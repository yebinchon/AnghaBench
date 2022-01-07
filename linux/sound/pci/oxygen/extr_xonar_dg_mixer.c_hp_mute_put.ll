; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_dg_mixer.c_hp_mute_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_dg_mixer.c_hp_mute_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.oxygen* }
%struct.oxygen = type { i32, %struct.dg* }
%struct.dg = type { i32* }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@CS4245_MUTE_DAC = common dso_local global i32 0, align 4
@CS4245_DAC_CTRL_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @hp_mute_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp_mute_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.oxygen*, align 8
  %7 = alloca %struct.dg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %10, i32 0, i32 0
  %12 = load %struct.oxygen*, %struct.oxygen** %11, align 8
  store %struct.oxygen* %12, %struct.oxygen** %6, align 8
  %13 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %14 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %13, i32 0, i32 1
  %15 = load %struct.dg*, %struct.dg** %14, align 8
  store %struct.dg* %15, %struct.dg** %7, align 8
  %16 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %17 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %72

27:                                               ; preds = %2
  %28 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %29 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load i32, i32* @CS4245_MUTE_DAC, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.dg*, %struct.dg** %7, align 8
  %34 = getelementptr inbounds %struct.dg, %struct.dg* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @CS4245_DAC_CTRL_1, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %32
  store i32 %39, i32* %37, align 4
  %40 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %41 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = xor i32 %46, -1
  %48 = shl i32 %47, 2
  %49 = load i32, i32* @CS4245_MUTE_DAC, align 4
  %50 = and i32 %48, %49
  %51 = load %struct.dg*, %struct.dg** %7, align 8
  %52 = getelementptr inbounds %struct.dg, %struct.dg* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @CS4245_DAC_CTRL_1, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %50
  store i32 %57, i32* %55, align 4
  %58 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %59 = load i64, i64* @CS4245_DAC_CTRL_1, align 8
  %60 = call i32 @cs4245_write_spi(%struct.oxygen* %58, i64 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %27
  br label %66

64:                                               ; preds = %27
  %65 = load i32, i32* %8, align 4
  br label %66

66:                                               ; preds = %64, %63
  %67 = phi i32 [ 1, %63 ], [ %65, %64 ]
  store i32 %67, i32* %9, align 4
  %68 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %69 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %66, %24
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cs4245_write_spi(%struct.oxygen*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
