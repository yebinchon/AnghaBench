; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp2_lock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp2_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm_adsp = type { i32, %struct.regmap* }
%struct.regmap = type { i32 }

@WM_ADSP2_REGION_ALL = common dso_local global i32 0, align 4
@ADSP2_LOCK_REGION_1_LOCK_REGION_0 = common dso_local global i32 0, align 4
@ADSP2_LOCK_CODE_0 = common dso_local global i32 0, align 4
@ADSP2_LOCK_CODE_1 = common dso_local global i32 0, align 4
@ADSP2_LOCK_REGION_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm_adsp*, i32)* @wm_adsp2_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm_adsp2_lock(%struct.wm_adsp* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wm_adsp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wm_adsp* %0, %struct.wm_adsp** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.wm_adsp*, %struct.wm_adsp** %4, align 8
  %11 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %10, i32 0, i32 1
  %12 = load %struct.regmap*, %struct.regmap** %11, align 8
  store %struct.regmap* %12, %struct.regmap** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @WM_ADSP2_REGION_ALL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %68

18:                                               ; preds = %2
  %19 = load i32, i32* @WM_ADSP2_REGION_ALL, align 4
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load %struct.wm_adsp*, %struct.wm_adsp** %4, align 8
  %23 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ADSP2_LOCK_REGION_1_LOCK_REGION_0, align 4
  %26 = add i32 %24, %25
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %54, %18
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %67

30:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @BIT(i32 0)
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @ADSP2_LOCK_CODE_0, align 4
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* @ADSP2_LOCK_CODE_1, align 4
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @BIT(i32 1)
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = load i32, i32* @ADSP2_LOCK_CODE_0, align 4
  %45 = load i32, i32* @ADSP2_LOCK_REGION_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* @ADSP2_LOCK_CODE_1, align 4
  %50 = load i32, i32* @ADSP2_LOCK_REGION_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %43, %38
  %55 = load %struct.regmap*, %struct.regmap** %6, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @regmap_write(%struct.regmap* %55, i32 %56, i32 %57)
  %59 = load %struct.regmap*, %struct.regmap** %6, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @regmap_write(%struct.regmap* %59, i32 %60, i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = lshr i32 %63, 2
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %9, align 4
  %66 = add i32 %65, 2
  store i32 %66, i32* %9, align 4
  br label %27

67:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %17
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
