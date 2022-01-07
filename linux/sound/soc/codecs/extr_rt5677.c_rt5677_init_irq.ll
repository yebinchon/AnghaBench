; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5677.c_rt5677_init_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5677.c_rt5677_init_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.rt5677_priv = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"No interrupt specified\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RT5677_DIG_MISC = common dso_local global i32 0, align 4
@RT5677_IRQ_DEBOUNCE_SEL_MASK = common dso_local global i32 0, align 4
@RT5677_IRQ_DEBOUNCE_SEL_RC = common dso_local global i32 0, align 4
@RT5677_GEN_CTRL1 = common dso_local global i32 0, align 4
@RT5677_SEL_GPIO_JD1_MASK = common dso_local global i32 0, align 4
@RT5677_SEL_GPIO_JD1_SFT = common dso_local global i32 0, align 4
@RT5677_SEL_GPIO_JD2_MASK = common dso_local global i32 0, align 4
@RT5677_SEL_GPIO_JD2_SFT = common dso_local global i32 0, align 4
@RT5677_SEL_GPIO_JD3_MASK = common dso_local global i32 0, align 4
@RT5677_SEL_GPIO_JD3_SFT = common dso_local global i32 0, align 4
@RT5677_JD_CTRL1 = common dso_local global i32 0, align 4
@RT5677_GPIO_CTRL1 = common dso_local global i32 0, align 4
@RT5677_GPIO1_PIN_MASK = common dso_local global i32 0, align 4
@RT5677_GPIO1_PIN_IRQ = common dso_local global i32 0, align 4
@RT5677_IRQ_NUM = common dso_local global i32 0, align 4
@rt5677_domain_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to create IRQ domain\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@rt5677_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"rt5677\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to request IRQ: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @rt5677_init_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5677_init_irq(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt5677_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = call %struct.rt5677_priv* @i2c_get_clientdata(%struct.i2c_client* %8)
  store %struct.rt5677_priv* %9, %struct.rt5677_priv** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.rt5677_priv*, %struct.rt5677_priv** %5, align 8
  %11 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %1
  %16 = load %struct.rt5677_priv*, %struct.rt5677_priv** %5, align 8
  %17 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %15
  %22 = load %struct.rt5677_priv*, %struct.rt5677_priv** %5, align 8
  %23 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %163

28:                                               ; preds = %21, %15, %1
  %29 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %163

39:                                               ; preds = %28
  %40 = load %struct.rt5677_priv*, %struct.rt5677_priv** %5, align 8
  %41 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %40, i32 0, i32 3
  %42 = call i32 @mutex_init(i32* %41)
  %43 = load %struct.rt5677_priv*, %struct.rt5677_priv** %5, align 8
  %44 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @RT5677_DIG_MISC, align 4
  %47 = load i32, i32* @RT5677_IRQ_DEBOUNCE_SEL_MASK, align 4
  %48 = load i32, i32* @RT5677_IRQ_DEBOUNCE_SEL_RC, align 4
  %49 = call i32 @regmap_update_bits(i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.rt5677_priv*, %struct.rt5677_priv** %5, align 8
  %51 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @RT5677_GEN_CTRL1, align 4
  %54 = call i32 @regmap_update_bits(i32 %52, i32 %53, i32 255, i32 255)
  %55 = load %struct.rt5677_priv*, %struct.rt5677_priv** %5, align 8
  %56 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %39
  %61 = load i32, i32* @RT5677_SEL_GPIO_JD1_MASK, align 4
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %6, align 4
  %64 = load %struct.rt5677_priv*, %struct.rt5677_priv** %5, align 8
  %65 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @RT5677_SEL_GPIO_JD1_SFT, align 4
  %69 = shl i32 %67, %68
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %60, %39
  %73 = load %struct.rt5677_priv*, %struct.rt5677_priv** %5, align 8
  %74 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %72
  %79 = load i32, i32* @RT5677_SEL_GPIO_JD2_MASK, align 4
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %6, align 4
  %82 = load %struct.rt5677_priv*, %struct.rt5677_priv** %5, align 8
  %83 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @RT5677_SEL_GPIO_JD2_SFT, align 4
  %87 = shl i32 %85, %86
  %88 = load i32, i32* %7, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %78, %72
  %91 = load %struct.rt5677_priv*, %struct.rt5677_priv** %5, align 8
  %92 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %90
  %97 = load i32, i32* @RT5677_SEL_GPIO_JD3_MASK, align 4
  %98 = load i32, i32* %6, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %6, align 4
  %100 = load %struct.rt5677_priv*, %struct.rt5677_priv** %5, align 8
  %101 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @RT5677_SEL_GPIO_JD3_SFT, align 4
  %105 = shl i32 %103, %104
  %106 = load i32, i32* %7, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %96, %90
  %109 = load %struct.rt5677_priv*, %struct.rt5677_priv** %5, align 8
  %110 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @RT5677_JD_CTRL1, align 4
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @regmap_update_bits(i32 %111, i32 %112, i32 %113, i32 %114)
  %116 = load %struct.rt5677_priv*, %struct.rt5677_priv** %5, align 8
  %117 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @RT5677_GPIO_CTRL1, align 4
  %120 = load i32, i32* @RT5677_GPIO1_PIN_MASK, align 4
  %121 = load i32, i32* @RT5677_GPIO1_PIN_IRQ, align 4
  %122 = call i32 @regmap_update_bits(i32 %118, i32 %119, i32 %120, i32 %121)
  %123 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %124 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @RT5677_IRQ_NUM, align 4
  %128 = load %struct.rt5677_priv*, %struct.rt5677_priv** %5, align 8
  %129 = call i32 @irq_domain_add_linear(i32 %126, i32 %127, i32* @rt5677_domain_ops, %struct.rt5677_priv* %128)
  %130 = load %struct.rt5677_priv*, %struct.rt5677_priv** %5, align 8
  %131 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 4
  %132 = load %struct.rt5677_priv*, %struct.rt5677_priv** %5, align 8
  %133 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %142, label %136

136:                                              ; preds = %108
  %137 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %138 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %137, i32 0, i32 0
  %139 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %138, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %2, align 4
  br label %163

142:                                              ; preds = %108
  %143 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %144 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %143, i32 0, i32 0
  %145 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %146 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @rt5677_irq, align 4
  %149 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %150 = load i32, i32* @IRQF_ONESHOT, align 4
  %151 = or i32 %149, %150
  %152 = load %struct.rt5677_priv*, %struct.rt5677_priv** %5, align 8
  %153 = call i32 @devm_request_threaded_irq(%struct.TYPE_5__* %144, i32 %147, i32* null, i32 %148, i32 %151, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.rt5677_priv* %152)
  store i32 %153, i32* %4, align 4
  %154 = load i32, i32* %4, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %142
  %157 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %158 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %157, i32 0, i32 0
  %159 = load i32, i32* %4, align 4
  %160 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %158, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %159)
  br label %161

161:                                              ; preds = %156, %142
  %162 = load i32, i32* %4, align 4
  store i32 %162, i32* %2, align 4
  br label %163

163:                                              ; preds = %161, %136, %33, %27
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local %struct.rt5677_priv* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @irq_domain_add_linear(i32, i32, i32*, %struct.rt5677_priv*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_5__*, i32, i32*, i32, i32, i8*, %struct.rt5677_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
