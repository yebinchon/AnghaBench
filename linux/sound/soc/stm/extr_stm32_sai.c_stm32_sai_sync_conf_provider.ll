; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai.c_stm32_sai_sync_conf_provider.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai.c_stm32_sai_sync_conf_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_sai_data = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Set %pOFn%s as synchro provider\0A\00", align 1
@STM_SAI_SYNC_OUT_A = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@SAI_GCR_SYNCOUT_MASK = common dso_local global i32 0, align 4
@STM_SAI_SYNC_OUT_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"%pOFn%s already set as sync provider\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_sai_data*, i32)* @stm32_sai_sync_conf_provider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_sai_sync_conf_provider(%struct.stm32_sai_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stm32_sai_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.stm32_sai_data* %0, %struct.stm32_sai_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.stm32_sai_data*, %struct.stm32_sai_data** %4, align 8
  %9 = getelementptr inbounds %struct.stm32_sai_data, %struct.stm32_sai_data* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = call i32 @stm32_sai_pclk_enable(%struct.TYPE_7__* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %84

17:                                               ; preds = %2
  %18 = load %struct.stm32_sai_data*, %struct.stm32_sai_data** %4, align 8
  %19 = getelementptr inbounds %struct.stm32_sai_data, %struct.stm32_sai_data* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.stm32_sai_data*, %struct.stm32_sai_data** %4, align 8
  %23 = getelementptr inbounds %struct.stm32_sai_data, %struct.stm32_sai_data* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @STM_SAI_SYNC_OUT_A, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %33 = call i32 @dev_dbg(%struct.TYPE_7__* %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %27, i8* %32)
  %34 = load i32, i32* @SAI_GCR_SYNCOUT_MASK, align 4
  %35 = load %struct.stm32_sai_data*, %struct.stm32_sai_data** %4, align 8
  %36 = getelementptr inbounds %struct.stm32_sai_data, %struct.stm32_sai_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @readl_relaxed(i32 %37)
  %39 = call i32 @FIELD_GET(i32 %34, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @STM_SAI_SYNC_OUT_NONE, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %71

43:                                               ; preds = %17
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %71

47:                                               ; preds = %43
  %48 = load %struct.stm32_sai_data*, %struct.stm32_sai_data** %4, align 8
  %49 = getelementptr inbounds %struct.stm32_sai_data, %struct.stm32_sai_data* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.stm32_sai_data*, %struct.stm32_sai_data** %4, align 8
  %53 = getelementptr inbounds %struct.stm32_sai_data, %struct.stm32_sai_data* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @STM_SAI_SYNC_OUT_A, align 4
  %60 = icmp eq i32 %58, %59
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %63 = call i32 @dev_err(%struct.TYPE_7__* %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %57, i8* %62)
  %64 = load %struct.stm32_sai_data*, %struct.stm32_sai_data** %4, align 8
  %65 = getelementptr inbounds %struct.stm32_sai_data, %struct.stm32_sai_data* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = call i32 @stm32_sai_pclk_disable(%struct.TYPE_7__* %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %84

71:                                               ; preds = %43, %17
  %72 = load i32, i32* @SAI_GCR_SYNCOUT_MASK, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @FIELD_PREP(i32 %72, i32 %73)
  %75 = load %struct.stm32_sai_data*, %struct.stm32_sai_data** %4, align 8
  %76 = getelementptr inbounds %struct.stm32_sai_data, %struct.stm32_sai_data* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @writel_relaxed(i32 %74, i32 %77)
  %79 = load %struct.stm32_sai_data*, %struct.stm32_sai_data** %4, align 8
  %80 = getelementptr inbounds %struct.stm32_sai_data, %struct.stm32_sai_data* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = call i32 @stm32_sai_pclk_disable(%struct.TYPE_7__* %82)
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %71, %47, %15
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @stm32_sai_pclk_enable(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_7__*, i8*, i32, i8*) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, i32, i8*) #1

declare dso_local i32 @stm32_sai_pclk_disable(%struct.TYPE_7__*) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
