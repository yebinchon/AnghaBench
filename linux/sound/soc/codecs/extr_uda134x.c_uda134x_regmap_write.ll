; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_uda134x.c_uda134x_regmap_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_uda134x.c_uda134x_regmap_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uda134x_platform_data = type { i32 }

@UDA134X_STATUS_ADDR = common dso_local global i32 0, align 4
@UDA134X_DATA0_ADDR = common dso_local global i32 0, align 4
@UDA134X_DATA1_ADDR = common dso_local global i32 0, align 4
@UDA134X_EXTADDR_PREFIX = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@UDA134X_EXTDATA_PREFIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @uda134x_regmap_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uda134x_regmap_write(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.uda134x_platform_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.uda134x_platform_data*
  store %struct.uda134x_platform_data* %13, %struct.uda134x_platform_data** %8, align 8
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %32 [
    i32 129, label %16
    i32 128, label %16
    i32 134, label %23
    i32 133, label %23
    i32 132, label %23
    i32 131, label %23
    i32 130, label %30
  ]

16:                                               ; preds = %3, %3
  %17 = load i32, i32* @UDA134X_STATUS_ADDR, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %6, align 4
  %19 = sub i32 %18, 129
  %20 = shl i32 %19, 7
  %21 = load i32, i32* %11, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %11, align 4
  br label %50

23:                                               ; preds = %3, %3, %3, %3
  %24 = load i32, i32* @UDA134X_DATA0_ADDR, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %6, align 4
  %26 = sub i32 %25, 134
  %27 = shl i32 %26, 6
  %28 = load i32, i32* %11, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %11, align 4
  br label %50

30:                                               ; preds = %3
  %31 = load i32, i32* @UDA134X_DATA1_ADDR, align 4
  store i32 %31, i32* %10, align 4
  br label %50

32:                                               ; preds = %3
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @UDA134X_EXTADDR_PREFIX, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %10, align 4
  %36 = load %struct.uda134x_platform_data*, %struct.uda134x_platform_data** %8, align 8
  %37 = getelementptr inbounds %struct.uda134x_platform_data, %struct.uda134x_platform_data* %36, i32 0, i32 0
  %38 = load i32, i32* @UDA134X_DATA0_ADDR, align 4
  %39 = call i32 @l3_write(i32* %37, i32 %38, i32* %10, i32 1)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %61

45:                                               ; preds = %32
  %46 = load i32, i32* @UDA134X_DATA0_ADDR, align 4
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @UDA134X_EXTDATA_PREFIX, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %45, %30, %23, %16
  %51 = load %struct.uda134x_platform_data*, %struct.uda134x_platform_data** %8, align 8
  %52 = getelementptr inbounds %struct.uda134x_platform_data, %struct.uda134x_platform_data* %51, i32 0, i32 0
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @l3_write(i32* %52, i32 %53, i32* %11, i32 1)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 1
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %61

60:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %57, %42
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @l3_write(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
