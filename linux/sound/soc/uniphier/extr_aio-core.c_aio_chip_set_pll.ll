; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aio_chip_set_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aio_chip_set_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_aio_chip = type { %struct.TYPE_3__*, %struct.regmap*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.regmap = type { i32 }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"PLL(%d) not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@A2APLLCTR1_APLLX_36MHZ = common dso_local global i32 0, align 4
@A2APLLCTR1_APLLX_33MHZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"PLL frequency not supported(%d)\0A\00", align 1
@A2APLLCTR1 = common dso_local global i32 0, align 4
@A2APLLCTR1_APLLX_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aio_chip_set_pll(%struct.uniphier_aio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uniphier_aio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.regmap*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.uniphier_aio_chip* %0, %struct.uniphier_aio_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %5, align 8
  %13 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %8, align 8
  %16 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %5, align 8
  %17 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %16, i32 0, i32 1
  %18 = load %struct.regmap*, %struct.regmap** %17, align 8
  store %struct.regmap* %18, %struct.regmap** %9, align 8
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %64

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %28 [
    i32 131, label %24
    i32 129, label %25
    i32 130, label %26
    i32 128, label %27
  ]

24:                                               ; preds = %22
  store i32 0, i32* %10, align 4
  br label %34

25:                                               ; preds = %22
  store i32 1, i32* %10, align 4
  br label %34

26:                                               ; preds = %22
  store i32 2, i32* %10, align 4
  br label %34

27:                                               ; preds = %22
  store i32 3, i32* %10, align 4
  br label %34

28:                                               ; preds = %22
  %29 = load %struct.device*, %struct.device** %8, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %64

34:                                               ; preds = %27, %26, %25, %24
  %35 = load i32, i32* %7, align 4
  switch i32 %35, label %40 [
    i32 36864000, label %36
    i32 33868800, label %38
  ]

36:                                               ; preds = %34
  %37 = load i32, i32* @A2APLLCTR1_APLLX_36MHZ, align 4
  store i32 %37, i32* %11, align 4
  br label %46

38:                                               ; preds = %34
  %39 = load i32, i32* @A2APLLCTR1_APLLX_33MHZ, align 4
  store i32 %39, i32* %11, align 4
  br label %46

40:                                               ; preds = %34
  %41 = load %struct.device*, %struct.device** %8, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %64

46:                                               ; preds = %38, %36
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %5, align 8
  %49 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 %47, i32* %54, align 4
  %55 = load %struct.regmap*, %struct.regmap** %9, align 8
  %56 = load i32, i32* @A2APLLCTR1, align 4
  %57 = load i32, i32* @A2APLLCTR1_APLLX_MASK, align 4
  %58 = load i32, i32* %10, align 4
  %59 = shl i32 %57, %58
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %10, align 4
  %62 = shl i32 %60, %61
  %63 = call i32 @regmap_update_bits(%struct.regmap* %55, i32 %56, i32 %59, i32 %62)
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %46, %40, %28, %21
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
