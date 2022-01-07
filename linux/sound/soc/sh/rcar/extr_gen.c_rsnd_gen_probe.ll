; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_gen.c_rsnd_gen_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_gen.c_rsnd_gen_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_priv = type { %struct.rsnd_gen* }
%struct.rsnd_gen = type { i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"unknown generation R-Car sound device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsnd_gen_probe(%struct.rsnd_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rsnd_priv*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rsnd_gen*, align 8
  %6 = alloca i32, align 4
  store %struct.rsnd_priv* %0, %struct.rsnd_priv** %3, align 8
  %7 = load %struct.rsnd_priv*, %struct.rsnd_priv** %3, align 8
  %8 = call %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv* %7)
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.rsnd_gen* @devm_kzalloc(%struct.device* %9, i32 4, i32 %10)
  store %struct.rsnd_gen* %11, %struct.rsnd_gen** %5, align 8
  %12 = load %struct.rsnd_gen*, %struct.rsnd_gen** %5, align 8
  %13 = icmp ne %struct.rsnd_gen* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %49

17:                                               ; preds = %1
  %18 = load %struct.rsnd_gen*, %struct.rsnd_gen** %5, align 8
  %19 = load %struct.rsnd_priv*, %struct.rsnd_priv** %3, align 8
  %20 = getelementptr inbounds %struct.rsnd_priv, %struct.rsnd_priv* %19, i32 0, i32 0
  store %struct.rsnd_gen* %18, %struct.rsnd_gen** %20, align 8
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  %23 = load %struct.rsnd_priv*, %struct.rsnd_priv** %3, align 8
  %24 = call i64 @rsnd_is_gen1(%struct.rsnd_priv* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load %struct.rsnd_priv*, %struct.rsnd_priv** %3, align 8
  %28 = call i32 @rsnd_gen1_probe(%struct.rsnd_priv* %27)
  store i32 %28, i32* %6, align 4
  br label %41

29:                                               ; preds = %17
  %30 = load %struct.rsnd_priv*, %struct.rsnd_priv** %3, align 8
  %31 = call i64 @rsnd_is_gen2(%struct.rsnd_priv* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load %struct.rsnd_priv*, %struct.rsnd_priv** %3, align 8
  %35 = call i64 @rsnd_is_gen3(%struct.rsnd_priv* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33, %29
  %38 = load %struct.rsnd_priv*, %struct.rsnd_priv** %3, align 8
  %39 = call i32 @rsnd_gen2_probe(%struct.rsnd_priv* %38)
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %37, %33
  br label %41

41:                                               ; preds = %40, %26
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %14
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv*) #1

declare dso_local %struct.rsnd_gen* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @rsnd_is_gen1(%struct.rsnd_priv*) #1

declare dso_local i32 @rsnd_gen1_probe(%struct.rsnd_priv*) #1

declare dso_local i64 @rsnd_is_gen2(%struct.rsnd_priv*) #1

declare dso_local i64 @rsnd_is_gen3(%struct.rsnd_priv*) #1

declare dso_local i32 @rsnd_gen2_probe(%struct.rsnd_priv*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
