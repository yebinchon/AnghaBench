; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-core.c_snd_soc_register_dais.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-core.c_snd_soc_register_dais.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { %struct.TYPE_2__*, %struct.device* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.snd_soc_dai_driver = type { i32 }
%struct.snd_soc_dai = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"ASoC: dai register %s #%zu\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, %struct.snd_soc_dai_driver*, i64)* @snd_soc_register_dais to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_soc_register_dais(%struct.snd_soc_component* %0, %struct.snd_soc_dai_driver* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.snd_soc_dai_driver*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.snd_soc_dai*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %5, align 8
  store %struct.snd_soc_dai_driver* %1, %struct.snd_soc_dai_driver** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %13 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %12, i32 0, i32 1
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %8, align 8
  %15 = load %struct.device*, %struct.device** %8, align 8
  %16 = load %struct.device*, %struct.device** %8, align 8
  %17 = call i32 @dev_name(%struct.device* %16)
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @dev_dbg(%struct.device* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %17, i64 %18)
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %51, %3
  %21 = load i32, i32* %10, align 4
  %22 = zext i32 %21 to i64
  %23 = load i64, i64* %7, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %54

25:                                               ; preds = %20
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %27 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %28 = load i32, i32* %10, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %27, i64 %29
  %31 = load i64, i64* %7, align 8
  %32 = icmp eq i64 %31, 1
  br i1 %32, label %33, label %41

33:                                               ; preds = %25
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %35 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %33, %25
  %42 = phi i1 [ false, %25 ], [ %40, %33 ]
  %43 = zext i1 %42 to i32
  %44 = call %struct.snd_soc_dai* @soc_add_dai(%struct.snd_soc_component* %26, %struct.snd_soc_dai_driver* %30, i32 %43)
  store %struct.snd_soc_dai* %44, %struct.snd_soc_dai** %9, align 8
  %45 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %46 = icmp eq %struct.snd_soc_dai* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %11, align 4
  br label %55

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %10, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %20

54:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %59

55:                                               ; preds = %47
  %56 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %57 = call i32 @snd_soc_unregister_dais(%struct.snd_soc_component* %56)
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %55, %54
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i64) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local %struct.snd_soc_dai* @soc_add_dai(%struct.snd_soc_component*, %struct.snd_soc_dai_driver*, i32) #1

declare dso_local i32 @snd_soc_unregister_dais(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
