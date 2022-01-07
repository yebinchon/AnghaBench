; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm1250-ev1.c_wm1250_ev1_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm1250-ev1.c_wm1250_ev1_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.wm1250_ev1_pdata = type { i32* }
%struct.wm1250_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@wm1250_gpio_names = common dso_local global i32* null, align 8
@GPIOF_OUT_INIT_LOW = common dso_local global i8* null, align 8
@GPIOF_OUT_INIT_HIGH = common dso_local global i8* null, align 8
@WM1250_EV1_GPIO_CLK_SEL0 = common dso_local global i64 0, align 8
@WM1250_EV1_GPIO_CLK_SEL1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Failed to get GPIOs: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @wm1250_ev1_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm1250_ev1_pdata(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.wm1250_ev1_pdata*, align 8
  %5 = alloca %struct.wm1250_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = call %struct.wm1250_ev1_pdata* @dev_get_platdata(i32* %9)
  store %struct.wm1250_ev1_pdata* %10, %struct.wm1250_ev1_pdata** %4, align 8
  %11 = load %struct.wm1250_ev1_pdata*, %struct.wm1250_ev1_pdata** %4, align 8
  %12 = icmp ne %struct.wm1250_ev1_pdata* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %108

14:                                               ; preds = %1
  %15 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.wm1250_priv* @devm_kzalloc(i32* %16, i32 8, i32 %17)
  store %struct.wm1250_priv* %18, %struct.wm1250_priv** %5, align 8
  %19 = load %struct.wm1250_priv*, %struct.wm1250_priv** %5, align 8
  %20 = icmp ne %struct.wm1250_priv* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %106

24:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %67, %24
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.wm1250_priv*, %struct.wm1250_priv** %5, align 8
  %28 = getelementptr inbounds %struct.wm1250_priv, %struct.wm1250_priv* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %29)
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %32, label %70

32:                                               ; preds = %25
  %33 = load %struct.wm1250_ev1_pdata*, %struct.wm1250_ev1_pdata** %4, align 8
  %34 = getelementptr inbounds %struct.wm1250_ev1_pdata, %struct.wm1250_ev1_pdata* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.wm1250_priv*, %struct.wm1250_priv** %5, align 8
  %41 = getelementptr inbounds %struct.wm1250_priv, %struct.wm1250_priv* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  store i32 %39, i32* %46, align 4
  %47 = load i32*, i32** @wm1250_gpio_names, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.wm1250_priv*, %struct.wm1250_priv** %5, align 8
  %53 = getelementptr inbounds %struct.wm1250_priv, %struct.wm1250_priv* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  store i32 %51, i32* %58, align 8
  %59 = load i8*, i8** @GPIOF_OUT_INIT_LOW, align 8
  %60 = load %struct.wm1250_priv*, %struct.wm1250_priv** %5, align 8
  %61 = getelementptr inbounds %struct.wm1250_priv, %struct.wm1250_priv* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i8* %59, i8** %66, align 8
  br label %67

67:                                               ; preds = %32
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %25

70:                                               ; preds = %25
  %71 = load i8*, i8** @GPIOF_OUT_INIT_HIGH, align 8
  %72 = load %struct.wm1250_priv*, %struct.wm1250_priv** %5, align 8
  %73 = getelementptr inbounds %struct.wm1250_priv, %struct.wm1250_priv* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load i64, i64* @WM1250_EV1_GPIO_CLK_SEL0, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i8* %71, i8** %77, align 8
  %78 = load i8*, i8** @GPIOF_OUT_INIT_HIGH, align 8
  %79 = load %struct.wm1250_priv*, %struct.wm1250_priv** %5, align 8
  %80 = getelementptr inbounds %struct.wm1250_priv, %struct.wm1250_priv* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = load i64, i64* @WM1250_EV1_GPIO_CLK_SEL1, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  store i8* %78, i8** %84, align 8
  %85 = load %struct.wm1250_priv*, %struct.wm1250_priv** %5, align 8
  %86 = getelementptr inbounds %struct.wm1250_priv, %struct.wm1250_priv* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = load %struct.wm1250_priv*, %struct.wm1250_priv** %5, align 8
  %89 = getelementptr inbounds %struct.wm1250_priv, %struct.wm1250_priv* %88, i32 0, i32 0
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %90)
  %92 = call i32 @gpio_request_array(%struct.TYPE_3__* %87, i32 %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %70
  %96 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %97 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %96, i32 0, i32 0
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @dev_err(i32* %97, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %98)
  br label %106

100:                                              ; preds = %70
  %101 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %102 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %101, i32 0, i32 0
  %103 = load %struct.wm1250_priv*, %struct.wm1250_priv** %5, align 8
  %104 = call i32 @dev_set_drvdata(i32* %102, %struct.wm1250_priv* %103)
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %2, align 4
  br label %108

106:                                              ; preds = %95, %21
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %106, %100, %13
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local %struct.wm1250_ev1_pdata* @dev_get_platdata(i32*) #1

declare dso_local %struct.wm1250_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @gpio_request_array(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.wm1250_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
