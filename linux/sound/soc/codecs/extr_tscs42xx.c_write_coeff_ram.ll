; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs42xx.c_write_coeff_ram.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs42xx.c_write_coeff_ram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.tscs42xx = type { i32 }

@DACCRSTAT_MAX_TRYS = common dso_local global i32 0, align 4
@R_DACCRSTAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to read stat (%d)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"dac coefficient write error (%d)\0A\00", align 1
@R_DACCRADDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to write dac ram address (%d)\0A\00", align 1
@R_DACCRWRL = common dso_local global i32 0, align 4
@COEFF_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to write dac ram (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32*, i32, i32)* @write_coeff_ram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_coeff_ram(%struct.snd_soc_component* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tscs42xx*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %15 = call %struct.tscs42xx* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.tscs42xx* %15, %struct.tscs42xx** %10, align 8
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %98, %4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %103

20:                                               ; preds = %16
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %43, %20
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* @DACCRSTAT_MAX_TRYS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %21
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %27 = load i32, i32* @R_DACCRSTAT, align 4
  %28 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %26, i32 %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %33 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %5, align 4
  br label %104

38:                                               ; preds = %25
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  br label %46

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %12, align 4
  br label %21

46:                                               ; preds = %41, %21
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @DACCRSTAT_MAX_TRYS, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %13, align 4
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %54 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %13, align 4
  store i32 %58, i32* %5, align 4
  br label %104

59:                                               ; preds = %46
  %60 = load %struct.tscs42xx*, %struct.tscs42xx** %10, align 8
  %61 = getelementptr inbounds %struct.tscs42xx, %struct.tscs42xx* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @R_DACCRADDR, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @regmap_write(i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %59
  %69 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %70 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %13, align 4
  store i32 %74, i32* %5, align 4
  br label %104

75:                                               ; preds = %59
  %76 = load %struct.tscs42xx*, %struct.tscs42xx** %10, align 8
  %77 = getelementptr inbounds %struct.tscs42xx, %struct.tscs42xx* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @R_DACCRWRL, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @COEFF_SIZE, align 4
  %83 = mul i32 %81, %82
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %80, i64 %84
  %86 = load i32, i32* @COEFF_SIZE, align 4
  %87 = call i32 @regmap_bulk_write(i32 %78, i32 %79, i32* %85, i32 %86)
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %75
  %91 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %92 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %13, align 4
  %95 = call i32 @dev_err(i32 %93, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %13, align 4
  store i32 %96, i32* %5, align 4
  br label %104

97:                                               ; preds = %75
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %8, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %16

103:                                              ; preds = %16
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %103, %90, %68, %50, %31
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local %struct.tscs42xx* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
