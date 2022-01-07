; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp2_enable_core.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp2_enable_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm_adsp = type { i64, i32 }

@ADSP2_CONTROL = common dso_local global i64 0, align 8
@ADSP2_SYS_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm_adsp*)* @wm_adsp2_enable_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm_adsp2_enable_core(%struct.wm_adsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wm_adsp*, align 8
  %4 = alloca i32, align 4
  store %struct.wm_adsp* %0, %struct.wm_adsp** %3, align 8
  %5 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %6 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %9 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ADSP2_CONTROL, align 8
  %12 = add nsw i64 %10, %11
  %13 = load i32, i32* @ADSP2_SYS_ENA, align 4
  %14 = load i32, i32* @ADSP2_SYS_ENA, align 4
  %15 = call i32 @regmap_update_bits_async(i32 %7, i64 %12, i32 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %23

20:                                               ; preds = %1
  %21 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %22 = call i32 @wm_adsp2v2_enable_core(%struct.wm_adsp* %21)
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %20, %18
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @regmap_update_bits_async(i32, i64, i32, i32) #1

declare dso_local i32 @wm_adsp2v2_enable_core(%struct.wm_adsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
