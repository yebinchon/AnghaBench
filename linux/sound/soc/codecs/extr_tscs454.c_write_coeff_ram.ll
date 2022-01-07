; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs454.c_write_coeff_ram.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs454.c_write_coeff_ram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.tscs454 = type { i32 }

@DACCRSTAT_MAX_TRYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to read stat (%d)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Coefficient write error (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to write dac ram address (%d)\0A\00", align 1
@COEFF_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to write dac ram (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32*, i32, i32, i32, i32, i32)* @write_coeff_ram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_coeff_ram(%struct.snd_soc_component* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_soc_component*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.tscs454*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %22 = call %struct.tscs454* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %21)
  store %struct.tscs454* %22, %struct.tscs454** %16, align 8
  store i32 0, i32* %18, align 4
  br label %23

23:                                               ; preds = %105, %7
  %24 = load i32, i32* %18, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %110

27:                                               ; preds = %23
  store i32 0, i32* %19, align 4
  br label %28

28:                                               ; preds = %50, %27
  %29 = load i32, i32* %19, align 4
  %30 = load i32, i32* @DACCRSTAT_MAX_TRYS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %28
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @snd_soc_component_read(%struct.snd_soc_component* %33, i32 %34, i32* %17)
  store i32 %35, i32* %20, align 4
  %36 = load i32, i32* %20, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %40 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %20, align 4
  %43 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %20, align 4
  store i32 %44, i32* %8, align 4
  br label %111

45:                                               ; preds = %32
  %46 = load i32, i32* %17, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  br label %53

49:                                               ; preds = %45
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %19, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %19, align 4
  br label %28

53:                                               ; preds = %48, %28
  %54 = load i32, i32* %19, align 4
  %55 = load i32, i32* @DACCRSTAT_MAX_TRYS, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %20, align 4
  %60 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %61 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %20, align 4
  %64 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %20, align 4
  store i32 %65, i32* %8, align 4
  br label %111

66:                                               ; preds = %53
  %67 = load %struct.tscs454*, %struct.tscs454** %16, align 8
  %68 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @regmap_write(i32 %69, i32 %70, i32 %71)
  store i32 %72, i32* %20, align 4
  %73 = load i32, i32* %20, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %66
  %76 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %77 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %20, align 4
  %80 = call i32 @dev_err(i32 %78, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %20, align 4
  store i32 %81, i32* %8, align 4
  br label %111

82:                                               ; preds = %66
  %83 = load %struct.tscs454*, %struct.tscs454** %16, align 8
  %84 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32*, i32** %10, align 8
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* @COEFF_SIZE, align 4
  %90 = mul i32 %88, %89
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %87, i64 %91
  %93 = load i32, i32* @COEFF_SIZE, align 4
  %94 = call i32 @regmap_bulk_write(i32 %85, i32 %86, i32* %92, i32 %93)
  store i32 %94, i32* %20, align 4
  %95 = load i32, i32* %20, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %82
  %98 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %99 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %20, align 4
  %102 = call i32 @dev_err(i32 %100, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %20, align 4
  store i32 %103, i32* %8, align 4
  br label %111

104:                                              ; preds = %82
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %18, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %18, align 4
  %108 = load i32, i32* %14, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %14, align 4
  br label %23

110:                                              ; preds = %23
  store i32 0, i32* %8, align 4
  br label %111

111:                                              ; preds = %110, %97, %75, %57, %38
  %112 = load i32, i32* %8, align 4
  ret i32 %112
}

declare dso_local %struct.tscs454* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read(%struct.snd_soc_component*, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
