; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_drm_eld.c_eld_limit_channels.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_drm_eld.c_eld_limit_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_interval = type { i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_pcm_hw_rule = type { i32*, i32 }

@__const.eld_limit_channels.t = private unnamed_addr constant %struct.snd_interval { i32 1, i32 2, i32 1 }, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@eld_rates = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_rule*)* @eld_limit_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eld_limit_channels(%struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_rule* %1) #0 {
  %3 = alloca %struct.snd_pcm_hw_params*, align 8
  %4 = alloca %struct.snd_pcm_hw_rule*, align 8
  %5 = alloca %struct.snd_interval*, align 8
  %6 = alloca %struct.snd_interval*, align 8
  %7 = alloca %struct.snd_interval, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %3, align 8
  store %struct.snd_pcm_hw_rule* %1, %struct.snd_pcm_hw_rule** %4, align 8
  %12 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %13 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %4, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %12, i32 %15)
  store %struct.snd_interval* %16, %struct.snd_interval** %5, align 8
  %17 = bitcast %struct.snd_interval* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.snd_interval* @__const.eld_limit_channels.t to i8*), i64 12, i1 false)
  %18 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %4, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = call i32* @drm_eld_sad(i32* %21)
  store i32* %22, i32** %9, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %94

25:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  %26 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %27 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %28 = call %struct.snd_interval* @hw_param_interval_c(%struct.snd_pcm_hw_params* %26, i32 %27)
  store %struct.snd_interval* %28, %struct.snd_interval** %6, align 8
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %62, %25
  %30 = load i32, i32* %8, align 4
  %31 = load i64*, i64** @eld_rates, align 8
  %32 = call i32 @ARRAY_SIZE(i64* %31)
  %33 = icmp ult i32 %30, %32
  br i1 %33, label %34, label %65

34:                                               ; preds = %29
  %35 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %36 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64*, i64** @eld_rates, align 8
  %40 = load i32, i32* %8, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp sle i64 %38, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %34
  %46 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %47 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64*, i64** @eld_rates, align 8
  %51 = load i32, i32* %8, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = icmp sge i64 %49, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %45
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @BIT(i32 %57)
  %59 = load i32, i32* %11, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %56, %45, %34
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %8, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %29

65:                                               ; preds = %29
  %66 = load i32*, i32** %10, align 8
  %67 = call i32 @drm_eld_sad_count(i32* %66)
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %88, %65
  %69 = load i32, i32* %8, align 4
  %70 = icmp ugt i32 %69, 0
  br i1 %70, label %71, label %93

71:                                               ; preds = %68
  %72 = load i32, i32* %11, align 4
  %73 = load i32*, i32** %9, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %72, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %7, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = load i32*, i32** %9, align 8
  %83 = call i32 @sad_max_channels(i32* %82)
  %84 = call i64 @max(i64 %81, i32 %83)
  %85 = trunc i64 %84 to i32
  %86 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %7, i32 0, i32 1
  store i32 %85, i32* %86, align 4
  br label %87

87:                                               ; preds = %78, %71
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %8, align 4
  %90 = add i32 %89, -1
  store i32 %90, i32* %8, align 4
  %91 = load i32*, i32** %9, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 3
  store i32* %92, i32** %9, align 8
  br label %68

93:                                               ; preds = %68
  br label %94

94:                                               ; preds = %93, %2
  %95 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %96 = call i32 @snd_interval_refine(%struct.snd_interval* %95, %struct.snd_interval* %7)
  ret i32 %96
}

declare dso_local %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @drm_eld_sad(i32*) #1

declare dso_local %struct.snd_interval* @hw_param_interval_c(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @drm_eld_sad_count(i32*) #1

declare dso_local i64 @max(i64, i32) #1

declare dso_local i32 @sad_max_channels(i32*) #1

declare dso_local i32 @snd_interval_refine(%struct.snd_interval*, %struct.snd_interval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
