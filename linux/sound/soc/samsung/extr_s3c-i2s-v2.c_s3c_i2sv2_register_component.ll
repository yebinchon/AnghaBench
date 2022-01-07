; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_s3c-i2s-v2.c_s3c_i2sv2_register_component.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_s3c-i2s-v2.c_s3c_i2sv2_register_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.snd_soc_component_driver = type { i32 }
%struct.snd_soc_dai_driver = type { i32, i32, i64 }
%struct.snd_soc_dai_ops = type { i64, i32, i32, i32, i64, i32 }

@s3c2412_i2s_trigger = common dso_local global i32 0, align 4
@s3c_i2sv2_hw_params = common dso_local global i64 0, align 8
@s3c2412_i2s_set_fmt = common dso_local global i32 0, align 4
@s3c2412_i2s_set_clkdiv = common dso_local global i32 0, align 4
@s3c_i2sv2_set_sysclk = common dso_local global i32 0, align 4
@s3c2412_i2s_delay = common dso_local global i64 0, align 8
@s3c2412_i2s_suspend = common dso_local global i32 0, align 4
@s3c2412_i2s_resume = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s3c_i2sv2_register_component(%struct.device* %0, i32 %1, %struct.snd_soc_component_driver* %2, %struct.snd_soc_dai_driver* %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component_driver*, align 8
  %8 = alloca %struct.snd_soc_dai_driver*, align 8
  %9 = alloca %struct.snd_soc_dai_ops*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_soc_component_driver* %2, %struct.snd_soc_component_driver** %7, align 8
  store %struct.snd_soc_dai_driver* %3, %struct.snd_soc_dai_driver** %8, align 8
  %10 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %8, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.snd_soc_dai_ops*
  store %struct.snd_soc_dai_ops* %13, %struct.snd_soc_dai_ops** %9, align 8
  %14 = load i32, i32* @s3c2412_i2s_trigger, align 4
  %15 = load %struct.snd_soc_dai_ops*, %struct.snd_soc_dai_ops** %9, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai_ops, %struct.snd_soc_dai_ops* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 8
  %17 = load %struct.snd_soc_dai_ops*, %struct.snd_soc_dai_ops** %9, align 8
  %18 = getelementptr inbounds %struct.snd_soc_dai_ops, %struct.snd_soc_dai_ops* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %4
  %22 = load i64, i64* @s3c_i2sv2_hw_params, align 8
  %23 = load %struct.snd_soc_dai_ops*, %struct.snd_soc_dai_ops** %9, align 8
  %24 = getelementptr inbounds %struct.snd_soc_dai_ops, %struct.snd_soc_dai_ops* %23, i32 0, i32 4
  store i64 %22, i64* %24, align 8
  br label %25

25:                                               ; preds = %21, %4
  %26 = load i32, i32* @s3c2412_i2s_set_fmt, align 4
  %27 = load %struct.snd_soc_dai_ops*, %struct.snd_soc_dai_ops** %9, align 8
  %28 = getelementptr inbounds %struct.snd_soc_dai_ops, %struct.snd_soc_dai_ops* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @s3c2412_i2s_set_clkdiv, align 4
  %30 = load %struct.snd_soc_dai_ops*, %struct.snd_soc_dai_ops** %9, align 8
  %31 = getelementptr inbounds %struct.snd_soc_dai_ops, %struct.snd_soc_dai_ops* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @s3c_i2sv2_set_sysclk, align 4
  %33 = load %struct.snd_soc_dai_ops*, %struct.snd_soc_dai_ops** %9, align 8
  %34 = getelementptr inbounds %struct.snd_soc_dai_ops, %struct.snd_soc_dai_ops* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.snd_soc_dai_ops*, %struct.snd_soc_dai_ops** %9, align 8
  %36 = getelementptr inbounds %struct.snd_soc_dai_ops, %struct.snd_soc_dai_ops* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %25
  %40 = load i64, i64* @s3c2412_i2s_delay, align 8
  %41 = load %struct.snd_soc_dai_ops*, %struct.snd_soc_dai_ops** %9, align 8
  %42 = getelementptr inbounds %struct.snd_soc_dai_ops, %struct.snd_soc_dai_ops* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %39, %25
  %44 = load i32, i32* @s3c2412_i2s_suspend, align 4
  %45 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %8, align 8
  %46 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @s3c2412_i2s_resume, align 4
  %48 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %8, align 8
  %49 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = load %struct.snd_soc_component_driver*, %struct.snd_soc_component_driver** %7, align 8
  %52 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %8, align 8
  %53 = call i32 @devm_snd_soc_register_component(%struct.device* %50, %struct.snd_soc_component_driver* %51, %struct.snd_soc_dai_driver* %52, i32 1)
  ret i32 %53
}

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, %struct.snd_soc_component_driver*, %struct.snd_soc_dai_driver*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
