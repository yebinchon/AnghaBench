; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_dg_mixer.c_hp_stereo_volume_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_dg_mixer.c_hp_stereo_volume_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.oxygen* }
%struct.oxygen = type { i32, %struct.dg* }
%struct.dg = type { i64* }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }

@EINVAL = common dso_local global i32 0, align 4
@CS4245_DAC_A_CTRL = common dso_local global i64 0, align 8
@CS4245_DAC_B_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @hp_stereo_volume_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp_stereo_volume_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.oxygen*, align 8
  %7 = alloca %struct.dg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %13 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %12, i32 0, i32 0
  %14 = load %struct.oxygen*, %struct.oxygen** %13, align 8
  store %struct.oxygen* %14, %struct.oxygen** %6, align 8
  %15 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %16 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %15, i32 0, i32 1
  %17 = load %struct.dg*, %struct.dg** %16, align 8
  store %struct.dg* %17, %struct.dg** %7, align 8
  store i32 0, i32* %9, align 4
  %18 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %19 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %10, align 8
  %25 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %26 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 1
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp sgt i64 %32, 255
  br i1 %33, label %43, label %34

34:                                               ; preds = %2
  %35 = load i64, i64* %10, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = load i64, i64* %11, align 8
  %39 = icmp sgt i64 %38, 255
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* %11, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40, %37, %34, %2
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %106

46:                                               ; preds = %40
  %47 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %48 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %47, i32 0, i32 0
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.dg*, %struct.dg** %7, align 8
  %51 = getelementptr inbounds %struct.dg, %struct.dg* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load i64, i64* @CS4245_DAC_A_CTRL, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = xor i64 %56, -1
  %58 = icmp ne i64 %55, %57
  br i1 %58, label %69, label %59

59:                                               ; preds = %46
  %60 = load %struct.dg*, %struct.dg** %7, align 8
  %61 = getelementptr inbounds %struct.dg, %struct.dg* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* @CS4245_DAC_B_CTRL, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %11, align 8
  %67 = xor i64 %66, -1
  %68 = icmp ne i64 %65, %67
  br i1 %68, label %69, label %101

69:                                               ; preds = %59, %46
  %70 = load i64, i64* %10, align 8
  %71 = xor i64 %70, -1
  %72 = load %struct.dg*, %struct.dg** %7, align 8
  %73 = getelementptr inbounds %struct.dg, %struct.dg* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = load i64, i64* @CS4245_DAC_A_CTRL, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  store i64 %71, i64* %76, align 8
  %77 = load i64, i64* %11, align 8
  %78 = xor i64 %77, -1
  %79 = load %struct.dg*, %struct.dg** %7, align 8
  %80 = getelementptr inbounds %struct.dg, %struct.dg* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = load i64, i64* @CS4245_DAC_B_CTRL, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  store i64 %78, i64* %83, align 8
  %84 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %85 = load i64, i64* @CS4245_DAC_A_CTRL, align 8
  %86 = call i32 @cs4245_write_spi(%struct.oxygen* %84, i64 %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp sge i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %69
  %90 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %91 = load i64, i64* @CS4245_DAC_B_CTRL, align 8
  %92 = call i32 @cs4245_write_spi(%struct.oxygen* %90, i64 %91)
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %89, %69
  %94 = load i32, i32* %8, align 4
  %95 = icmp sge i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  br label %99

97:                                               ; preds = %93
  %98 = load i32, i32* %8, align 4
  br label %99

99:                                               ; preds = %97, %96
  %100 = phi i32 [ 1, %96 ], [ %98, %97 ]
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %99, %59
  %102 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %103 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %102, i32 0, i32 0
  %104 = call i32 @mutex_unlock(i32* %103)
  %105 = load i32, i32* %9, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %101, %43
  %107 = load i32, i32* %3, align 4
  ret i32 %107
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
