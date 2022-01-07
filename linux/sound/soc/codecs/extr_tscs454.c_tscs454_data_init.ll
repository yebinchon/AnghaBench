; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs454.c_tscs454_data_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs454.c_tscs454_data_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tscs454 = type { i32, i32, i32, i32, i32, i32, i32*, i32 }
%struct.i2c_client = type { i32 }

@tscs454_regmap_cfg = common dso_local global i32 0, align 4
@TSCS454_DAI_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tscs454*, %struct.i2c_client*)* @tscs454_data_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tscs454_data_init(%struct.tscs454* %0, %struct.i2c_client* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tscs454*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tscs454* %0, %struct.tscs454** %4, align 8
  store %struct.i2c_client* %1, %struct.i2c_client** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %9 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %8, i32* @tscs454_regmap_cfg)
  %10 = load %struct.tscs454*, %struct.tscs454** %4, align 8
  %11 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %10, i32 0, i32 7
  store i32 %9, i32* %11, align 8
  %12 = load %struct.tscs454*, %struct.tscs454** %4, align 8
  %13 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @IS_ERR(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.tscs454*, %struct.tscs454** %4, align 8
  %19 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @PTR_ERR(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %59

23:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %37, %23
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @TSCS454_DAI_COUNT, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = load %struct.tscs454*, %struct.tscs454** %4, align 8
  %30 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %29, i32 0, i32 6
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @aif_init(i32* %34, i32 %35)
  br label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %24

40:                                               ; preds = %24
  %41 = load %struct.tscs454*, %struct.tscs454** %4, align 8
  %42 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %41, i32 0, i32 5
  %43 = call i32 @mutex_init(i32* %42)
  %44 = load %struct.tscs454*, %struct.tscs454** %4, align 8
  %45 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %44, i32 0, i32 4
  %46 = call i32 @pll_init(i32* %45, i32 1)
  %47 = load %struct.tscs454*, %struct.tscs454** %4, align 8
  %48 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %47, i32 0, i32 3
  %49 = call i32 @pll_init(i32* %48, i32 2)
  %50 = load %struct.tscs454*, %struct.tscs454** %4, align 8
  %51 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %50, i32 0, i32 2
  %52 = call i32 @coeff_ram_init(i32* %51)
  %53 = load %struct.tscs454*, %struct.tscs454** %4, align 8
  %54 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %53, i32 0, i32 1
  %55 = call i32 @coeff_ram_init(i32* %54)
  %56 = load %struct.tscs454*, %struct.tscs454** %4, align 8
  %57 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %56, i32 0, i32 0
  %58 = call i32 @coeff_ram_init(i32* %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %40, %17
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @aif_init(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @pll_init(i32*, i32) #1

declare dso_local i32 @coeff_ram_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
