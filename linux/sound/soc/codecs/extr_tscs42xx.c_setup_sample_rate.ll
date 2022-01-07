; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs42xx.c_setup_sample_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs42xx.c_setup_sample_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.tscs42xx = type { i32, i32 }

@RV_DACSR_DBR_32 = common dso_local global i32 0, align 4
@RV_DACSR_DBM_PT25 = common dso_local global i32 0, align 4
@RV_DACSR_DBM_PT5 = common dso_local global i32 0, align 4
@RV_DACSR_DBR_48 = common dso_local global i32 0, align 4
@RV_DACSR_DBM_1 = common dso_local global i32 0, align 4
@RV_DACSR_DBM_2 = common dso_local global i32 0, align 4
@RV_DACSR_DBR_44_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unsupported sample rate %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@R_DACSR = common dso_local global i32 0, align 4
@RM_DACSR_DBR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to update register (%d)\0A\00", align 1
@RM_DACSR_DBM = common dso_local global i32 0, align 4
@R_ADCSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @setup_sample_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_sample_rate(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tscs42xx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %11 = call %struct.tscs42xx* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %10)
  store %struct.tscs42xx* %11, %struct.tscs42xx** %6, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %43 [
    i32 8000, label %13
    i32 16000, label %16
    i32 24000, label %19
    i32 32000, label %22
    i32 48000, label %25
    i32 96000, label %28
    i32 11025, label %31
    i32 22050, label %34
    i32 44100, label %37
    i32 88200, label %40
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @RV_DACSR_DBR_32, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @RV_DACSR_DBM_PT25, align 4
  store i32 %15, i32* %8, align 4
  br label %51

16:                                               ; preds = %2
  %17 = load i32, i32* @RV_DACSR_DBR_32, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @RV_DACSR_DBM_PT5, align 4
  store i32 %18, i32* %8, align 4
  br label %51

19:                                               ; preds = %2
  %20 = load i32, i32* @RV_DACSR_DBR_48, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @RV_DACSR_DBM_PT5, align 4
  store i32 %21, i32* %8, align 4
  br label %51

22:                                               ; preds = %2
  %23 = load i32, i32* @RV_DACSR_DBR_32, align 4
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @RV_DACSR_DBM_1, align 4
  store i32 %24, i32* %8, align 4
  br label %51

25:                                               ; preds = %2
  %26 = load i32, i32* @RV_DACSR_DBR_48, align 4
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @RV_DACSR_DBM_1, align 4
  store i32 %27, i32* %8, align 4
  br label %51

28:                                               ; preds = %2
  %29 = load i32, i32* @RV_DACSR_DBR_48, align 4
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @RV_DACSR_DBM_2, align 4
  store i32 %30, i32* %8, align 4
  br label %51

31:                                               ; preds = %2
  %32 = load i32, i32* @RV_DACSR_DBR_44_1, align 4
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @RV_DACSR_DBM_PT25, align 4
  store i32 %33, i32* %8, align 4
  br label %51

34:                                               ; preds = %2
  %35 = load i32, i32* @RV_DACSR_DBR_44_1, align 4
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* @RV_DACSR_DBM_PT5, align 4
  store i32 %36, i32* %8, align 4
  br label %51

37:                                               ; preds = %2
  %38 = load i32, i32* @RV_DACSR_DBR_44_1, align 4
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* @RV_DACSR_DBM_1, align 4
  store i32 %39, i32* %8, align 4
  br label %51

40:                                               ; preds = %2
  %41 = load i32, i32* @RV_DACSR_DBR_44_1, align 4
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* @RV_DACSR_DBM_2, align 4
  store i32 %42, i32* %8, align 4
  br label %51

43:                                               ; preds = %2
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %45 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %121

51:                                               ; preds = %40, %37, %34, %31, %28, %25, %22, %19, %16, %13
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %53 = load i32, i32* @R_DACSR, align 4
  %54 = load i32, i32* @RM_DACSR_DBR, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %52, i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %51
  %60 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %61 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %3, align 4
  br label %121

66:                                               ; preds = %51
  %67 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %68 = load i32, i32* @R_DACSR, align 4
  %69 = load i32, i32* @RM_DACSR_DBM, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %67, i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %66
  %75 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %76 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @dev_err(i32 %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %3, align 4
  br label %121

81:                                               ; preds = %66
  %82 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %83 = load i32, i32* @R_ADCSR, align 4
  %84 = load i32, i32* @RM_DACSR_DBR, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %82, i32 %83, i32 %84, i32 %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %81
  %90 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %91 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @dev_err(i32 %92, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %3, align 4
  br label %121

96:                                               ; preds = %81
  %97 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %98 = load i32, i32* @R_ADCSR, align 4
  %99 = load i32, i32* @RM_DACSR_DBM, align 4
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %97, i32 %98, i32 %99, i32 %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %96
  %105 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %106 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @dev_err(i32 %107, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %3, align 4
  br label %121

111:                                              ; preds = %96
  %112 = load %struct.tscs42xx*, %struct.tscs42xx** %6, align 8
  %113 = getelementptr inbounds %struct.tscs42xx, %struct.tscs42xx* %112, i32 0, i32 1
  %114 = call i32 @mutex_lock(i32* %113)
  %115 = load i32, i32* %5, align 4
  %116 = load %struct.tscs42xx*, %struct.tscs42xx** %6, align 8
  %117 = getelementptr inbounds %struct.tscs42xx, %struct.tscs42xx* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  %118 = load %struct.tscs42xx*, %struct.tscs42xx** %6, align 8
  %119 = getelementptr inbounds %struct.tscs42xx, %struct.tscs42xx* %118, i32 0, i32 1
  %120 = call i32 @mutex_unlock(i32* %119)
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %111, %104, %89, %74, %59, %43
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local %struct.tscs42xx* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
