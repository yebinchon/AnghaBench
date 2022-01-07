; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1701.c_adau1701_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1701.c_adau1701_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.adau1701 = type { i32*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Failed to enable regulators: %d\0A\00", align 1
@ADAU1707_CLKDIV_UNSET = common dso_local global i32 0, align 4
@ADAU1701_PINCONF_0 = common dso_local global i32 0, align 4
@ADAU1701_PINCONF_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @adau1701_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adau1701_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.adau1701*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = call %struct.adau1701* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.adau1701* %9, %struct.adau1701** %7, align 8
  %10 = load %struct.adau1701*, %struct.adau1701** %7, align 8
  %11 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %14 = call i32 @sigmadsp_attach(i32 %12, %struct.snd_soc_component* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %113

19:                                               ; preds = %1
  %20 = load %struct.adau1701*, %struct.adau1701** %7, align 8
  %21 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @ARRAY_SIZE(i32 %22)
  %24 = load %struct.adau1701*, %struct.adau1701** %7, align 8
  %25 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @regulator_bulk_enable(i32 %23, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %19
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %32 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %113

37:                                               ; preds = %19
  %38 = load i32, i32* @ADAU1707_CLKDIV_UNSET, align 4
  %39 = load %struct.adau1701*, %struct.adau1701** %7, align 8
  %40 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %42 = load %struct.adau1701*, %struct.adau1701** %7, align 8
  %43 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @adau1701_reset(%struct.snd_soc_component* %41, i32 %44, i32 0)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %103

49:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %66, %49
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %51, 6
  br i1 %52, label %53, label %69

53:                                               ; preds = %50
  %54 = load %struct.adau1701*, %struct.adau1701** %7, align 8
  %55 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %4, align 4
  %62 = mul nsw i32 %61, 4
  %63 = shl i32 %60, %62
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %53
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %50

69:                                               ; preds = %50
  %70 = load %struct.adau1701*, %struct.adau1701** %7, align 8
  %71 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ADAU1701_PINCONF_0, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @regmap_write(i32 %72, i32 %73, i32 %74)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %93, %69
  %77 = load i32, i32* %4, align 4
  %78 = icmp slt i32 %77, 6
  br i1 %78, label %79, label %96

79:                                               ; preds = %76
  %80 = load %struct.adau1701*, %struct.adau1701** %7, align 8
  %81 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 6
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %4, align 4
  %89 = mul nsw i32 %88, 4
  %90 = shl i32 %87, %89
  %91 = load i32, i32* %6, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %79
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %4, align 4
  br label %76

96:                                               ; preds = %76
  %97 = load %struct.adau1701*, %struct.adau1701** %7, align 8
  %98 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @ADAU1701_PINCONF_1, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @regmap_write(i32 %99, i32 %100, i32 %101)
  store i32 0, i32* %2, align 4
  br label %113

103:                                              ; preds = %48
  %104 = load %struct.adau1701*, %struct.adau1701** %7, align 8
  %105 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @ARRAY_SIZE(i32 %106)
  %108 = load %struct.adau1701*, %struct.adau1701** %7, align 8
  %109 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @regulator_bulk_disable(i32 %107, i32 %110)
  %112 = load i32, i32* %5, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %103, %96, %30, %17
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.adau1701* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @sigmadsp_attach(i32, %struct.snd_soc_component*) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @adau1701_reset(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
