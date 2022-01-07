; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8731.c_wm8731_request_supplies.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8731.c_wm8731_request_supplies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.wm8731_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@wm8731_supply_names = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"Failed to request supplies: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to enable supplies: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.wm8731_priv*)* @wm8731_request_supplies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8731_request_supplies(%struct.device* %0, %struct.wm8731_priv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.wm8731_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.wm8731_priv* %1, %struct.wm8731_priv** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %28, %2
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.wm8731_priv*, %struct.wm8731_priv** %5, align 8
  %11 = getelementptr inbounds %struct.wm8731_priv, %struct.wm8731_priv* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %12)
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %8
  %16 = load i32*, i32** @wm8731_supply_names, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.wm8731_priv*, %struct.wm8731_priv** %5, align 8
  %22 = getelementptr inbounds %struct.wm8731_priv, %struct.wm8731_priv* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %20, i32* %27, align 4
  br label %28

28:                                               ; preds = %15
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %8

31:                                               ; preds = %8
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load %struct.wm8731_priv*, %struct.wm8731_priv** %5, align 8
  %34 = getelementptr inbounds %struct.wm8731_priv, %struct.wm8731_priv* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %35)
  %37 = load %struct.wm8731_priv*, %struct.wm8731_priv** %5, align 8
  %38 = getelementptr inbounds %struct.wm8731_priv, %struct.wm8731_priv* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = call i32 @devm_regulator_bulk_get(%struct.device* %32, i32 %36, %struct.TYPE_4__* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %31
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @dev_err(%struct.device* %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %65

48:                                               ; preds = %31
  %49 = load %struct.wm8731_priv*, %struct.wm8731_priv** %5, align 8
  %50 = getelementptr inbounds %struct.wm8731_priv, %struct.wm8731_priv* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %51)
  %53 = load %struct.wm8731_priv*, %struct.wm8731_priv** %5, align 8
  %54 = getelementptr inbounds %struct.wm8731_priv, %struct.wm8731_priv* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = call i32 @regulator_bulk_enable(i32 %52, %struct.TYPE_4__* %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %48
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %65

64:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %59, %43
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @regulator_bulk_enable(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
