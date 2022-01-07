; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai.c_stm32_sai_sync_conf_client.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai.c_stm32_sai_sync_conf_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_sai_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@SAI_GCR_SYNCIN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_sai_data*, i32)* @stm32_sai_sync_conf_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_sai_sync_conf_client(%struct.stm32_sai_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stm32_sai_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stm32_sai_data* %0, %struct.stm32_sai_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.stm32_sai_data*, %struct.stm32_sai_data** %4, align 8
  %8 = getelementptr inbounds %struct.stm32_sai_data, %struct.stm32_sai_data* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @stm32_sai_pclk_enable(i32* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %30

16:                                               ; preds = %2
  %17 = load i32, i32* @SAI_GCR_SYNCIN_MASK, align 4
  %18 = load i32, i32* %5, align 4
  %19 = sub nsw i32 %18, 1
  %20 = call i32 @FIELD_PREP(i32 %17, i32 %19)
  %21 = load %struct.stm32_sai_data*, %struct.stm32_sai_data** %4, align 8
  %22 = getelementptr inbounds %struct.stm32_sai_data, %struct.stm32_sai_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @writel_relaxed(i32 %20, i32 %23)
  %25 = load %struct.stm32_sai_data*, %struct.stm32_sai_data** %4, align 8
  %26 = getelementptr inbounds %struct.stm32_sai_data, %struct.stm32_sai_data* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @stm32_sai_pclk_disable(i32* %28)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %16, %14
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @stm32_sai_pclk_enable(i32*) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @stm32_sai_pclk_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
