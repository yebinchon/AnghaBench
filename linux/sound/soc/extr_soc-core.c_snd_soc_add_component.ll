; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-core.c_snd_soc_add_component.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-core.c_snd_soc_add_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.snd_soc_component_driver = type { i64 }
%struct.snd_soc_dai_driver = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"ASoC: Failed to register DAIs: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_add_component(%struct.device* %0, %struct.snd_soc_component* %1, %struct.snd_soc_component_driver* %2, %struct.snd_soc_dai_driver* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.snd_soc_component_driver*, align 8
  %10 = alloca %struct.snd_soc_dai_driver*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.snd_soc_component* %1, %struct.snd_soc_component** %8, align 8
  store %struct.snd_soc_component_driver* %2, %struct.snd_soc_component_driver** %9, align 8
  store %struct.snd_soc_dai_driver* %3, %struct.snd_soc_dai_driver** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %15 = load %struct.snd_soc_component_driver*, %struct.snd_soc_component_driver** %9, align 8
  %16 = load %struct.device*, %struct.device** %7, align 8
  %17 = call i32 @snd_soc_component_initialize(%struct.snd_soc_component* %14, %struct.snd_soc_component_driver* %15, %struct.device* %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  br label %66

21:                                               ; preds = %5
  %22 = load %struct.snd_soc_component_driver*, %struct.snd_soc_component_driver** %9, align 8
  %23 = getelementptr inbounds %struct.snd_soc_component_driver, %struct.snd_soc_component_driver* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %21
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %44, %26
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %27
  %32 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %10, align 8
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %32, i64 %34
  %36 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %35, i32 0, i32 1
  %37 = call i32 @convert_endianness_formats(i32* %36)
  %38 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %10, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %38, i64 %40
  %42 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %41, i32 0, i32 0
  %43 = call i32 @convert_endianness_formats(i32* %42)
  br label %44

44:                                               ; preds = %31
  %45 = load i32, i32* %13, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %13, align 4
  br label %27

47:                                               ; preds = %27
  br label %48

48:                                               ; preds = %47, %21
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %50 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %10, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @snd_soc_register_dais(%struct.snd_soc_component* %49, %struct.snd_soc_dai_driver* %50, i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load %struct.device*, %struct.device** %7, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @dev_err(%struct.device* %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %63

59:                                               ; preds = %48
  %60 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %61 = call i32 @snd_soc_component_add(%struct.snd_soc_component* %60)
  %62 = call i32 (...) @snd_soc_try_rebind_card()
  store i32 0, i32* %6, align 4
  br label %68

63:                                               ; preds = %55
  %64 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %65 = call i32 @snd_soc_component_cleanup(%struct.snd_soc_component* %64)
  br label %66

66:                                               ; preds = %63, %20
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %66, %59
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @snd_soc_component_initialize(%struct.snd_soc_component*, %struct.snd_soc_component_driver*, %struct.device*) #1

declare dso_local i32 @convert_endianness_formats(i32*) #1

declare dso_local i32 @snd_soc_register_dais(%struct.snd_soc_component*, %struct.snd_soc_dai_driver*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @snd_soc_component_add(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_try_rebind_card(...) #1

declare dso_local i32 @snd_soc_component_cleanup(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
