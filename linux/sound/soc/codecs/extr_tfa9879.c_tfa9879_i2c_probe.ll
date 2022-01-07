; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tfa9879.c_tfa9879_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tfa9879.c_tfa9879_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.i2c_client = type { i32 }
%struct.tfa9879_priv = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tfa9879_regmap = common dso_local global i32 0, align 4
@tfa9879_regs = common dso_local global %struct.TYPE_3__* null, align 8
@tfa9879_component = common dso_local global i32 0, align 4
@tfa9879_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @tfa9879_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tfa9879_i2c_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.tfa9879_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %7 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.tfa9879_priv* @devm_kzalloc(i32* %7, i32 4, i32 %8)
  store %struct.tfa9879_priv* %9, %struct.tfa9879_priv** %4, align 8
  %10 = load %struct.tfa9879_priv*, %struct.tfa9879_priv** %4, align 8
  %11 = icmp ne %struct.tfa9879_priv* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %63

15:                                               ; preds = %1
  %16 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %17 = load %struct.tfa9879_priv*, %struct.tfa9879_priv** %4, align 8
  %18 = call i32 @i2c_set_clientdata(%struct.i2c_client* %16, %struct.tfa9879_priv* %17)
  %19 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %20 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %19, i32* @tfa9879_regmap)
  %21 = load %struct.tfa9879_priv*, %struct.tfa9879_priv** %4, align 8
  %22 = getelementptr inbounds %struct.tfa9879_priv, %struct.tfa9879_priv* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.tfa9879_priv*, %struct.tfa9879_priv** %4, align 8
  %24 = getelementptr inbounds %struct.tfa9879_priv, %struct.tfa9879_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @IS_ERR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %15
  %29 = load %struct.tfa9879_priv*, %struct.tfa9879_priv** %4, align 8
  %30 = getelementptr inbounds %struct.tfa9879_priv, %struct.tfa9879_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @PTR_ERR(i32 %31)
  store i32 %32, i32* %2, align 4
  br label %63

33:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %56, %33
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tfa9879_regs, align 8
  %37 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %36)
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %59

39:                                               ; preds = %34
  %40 = load %struct.tfa9879_priv*, %struct.tfa9879_priv** %4, align 8
  %41 = getelementptr inbounds %struct.tfa9879_priv, %struct.tfa9879_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tfa9879_regs, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tfa9879_regs, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @regmap_write(i32 %42, i32 %48, i32 %54)
  br label %56

56:                                               ; preds = %39
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %34

59:                                               ; preds = %34
  %60 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %61 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %60, i32 0, i32 0
  %62 = call i32 @devm_snd_soc_register_component(i32* %61, i32* @tfa9879_component, i32* @tfa9879_dai, i32 1)
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %59, %28, %12
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.tfa9879_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.tfa9879_priv*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
