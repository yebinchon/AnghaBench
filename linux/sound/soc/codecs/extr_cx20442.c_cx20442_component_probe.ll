; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cx20442.c_cx20442_component_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cx20442.c_cx20442_component_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.cx20442_priv = type { i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"POR\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to get POR supply (%d)\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @cx20442_component_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx20442_component_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.cx20442_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.cx20442_priv* @kzalloc(i32 16, i32 %6)
  store %struct.cx20442_priv* %7, %struct.cx20442_priv** %4, align 8
  %8 = load %struct.cx20442_priv*, %struct.cx20442_priv** %4, align 8
  %9 = icmp eq %struct.cx20442_priv* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %56

13:                                               ; preds = %1
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %15 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @regulator_get(i32 %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.cx20442_priv*, %struct.cx20442_priv** %4, align 8
  %19 = getelementptr inbounds %struct.cx20442_priv, %struct.cx20442_priv* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load %struct.cx20442_priv*, %struct.cx20442_priv** %4, align 8
  %21 = getelementptr inbounds %struct.cx20442_priv, %struct.cx20442_priv* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @IS_ERR(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %13
  %26 = load %struct.cx20442_priv*, %struct.cx20442_priv** %4, align 8
  %27 = getelementptr inbounds %struct.cx20442_priv, %struct.cx20442_priv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @PTR_ERR(i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %31 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @dev_warn(i32 %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %25
  %40 = load i32, i32* @EPROBE_DEFER, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %39, %25
  %43 = load %struct.cx20442_priv*, %struct.cx20442_priv** %4, align 8
  %44 = call i32 @kfree(%struct.cx20442_priv* %43)
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %56

46:                                               ; preds = %13
  %47 = load %struct.cx20442_priv*, %struct.cx20442_priv** %4, align 8
  %48 = getelementptr inbounds %struct.cx20442_priv, %struct.cx20442_priv* %47, i32 0, i32 0
  store i32* null, i32** %48, align 8
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %50 = load %struct.cx20442_priv*, %struct.cx20442_priv** %4, align 8
  %51 = call i32 @snd_soc_component_set_drvdata(%struct.snd_soc_component* %49, %struct.cx20442_priv* %50)
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %53 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %46, %42, %10
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.cx20442_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @regulator_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.cx20442_priv*) #1

declare dso_local i32 @snd_soc_component_set_drvdata(%struct.snd_soc_component*, %struct.cx20442_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
