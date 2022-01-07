; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l35.c_cs35l35_boost_inductor.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l35.c_cs35l35_boost_inductor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs35l35_private = type { i32, %struct.regmap* }
%struct.regmap = type { i32 }

@CS35L35_BST_CONV_SW_FREQ = common dso_local global i32 0, align 4
@CS35L35_BST_CONV_SWFREQ_MASK = common dso_local global i32 0, align 4
@CS35L35_BST_PEAK_I = common dso_local global i32 0, align 4
@CS35L35_BST_IPK_MASK = common dso_local global i32 0, align 4
@CS35L35_BST_CONV_COEF_1 = common dso_local global i32 0, align 4
@CS35L35_BST_CONV_COEF_2 = common dso_local global i32 0, align 4
@CS35L35_BST_CONV_LBST_MASK = common dso_local global i32 0, align 4
@CS35L35_BST_CONV_SLOPE_COMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Invalid Inductor Value %d uH\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs35l35_private*, i32)* @cs35l35_boost_inductor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs35l35_boost_inductor(%struct.cs35l35_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cs35l35_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  store %struct.cs35l35_private* %0, %struct.cs35l35_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %9 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %8, i32 0, i32 1
  %10 = load %struct.regmap*, %struct.regmap** %9, align 8
  store %struct.regmap* %10, %struct.regmap** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.regmap*, %struct.regmap** %6, align 8
  %12 = load i32, i32* @CS35L35_BST_CONV_SW_FREQ, align 4
  %13 = load i32, i32* @CS35L35_BST_CONV_SWFREQ_MASK, align 4
  %14 = call i32 @regmap_update_bits(%struct.regmap* %11, i32 %12, i32 %13, i32 0)
  %15 = load %struct.regmap*, %struct.regmap** %6, align 8
  %16 = load i32, i32* @CS35L35_BST_PEAK_I, align 4
  %17 = call i32 @regmap_read(%struct.regmap* %15, i32 %16, i32* %7)
  %18 = load i32, i32* @CS35L35_BST_IPK_MASK, align 4
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %110 [
    i32 1000, label %22
    i32 1200, label %44
    i32 1500, label %66
    i32 2200, label %88
  ]

22:                                               ; preds = %2
  %23 = load %struct.regmap*, %struct.regmap** %6, align 8
  %24 = load i32, i32* @CS35L35_BST_CONV_COEF_1, align 4
  %25 = call i32 @regmap_write(%struct.regmap* %23, i32 %24, i32 36)
  %26 = load %struct.regmap*, %struct.regmap** %6, align 8
  %27 = load i32, i32* @CS35L35_BST_CONV_COEF_2, align 4
  %28 = call i32 @regmap_write(%struct.regmap* %26, i32 %27, i32 36)
  %29 = load %struct.regmap*, %struct.regmap** %6, align 8
  %30 = load i32, i32* @CS35L35_BST_CONV_SW_FREQ, align 4
  %31 = load i32, i32* @CS35L35_BST_CONV_LBST_MASK, align 4
  %32 = call i32 @regmap_update_bits(%struct.regmap* %29, i32 %30, i32 %31, i32 0)
  %33 = load i32, i32* %7, align 4
  %34 = icmp ult i32 %33, 4
  br i1 %34, label %35, label %39

35:                                               ; preds = %22
  %36 = load %struct.regmap*, %struct.regmap** %6, align 8
  %37 = load i32, i32* @CS35L35_BST_CONV_SLOPE_COMP, align 4
  %38 = call i32 @regmap_write(%struct.regmap* %36, i32 %37, i32 27)
  br label %43

39:                                               ; preds = %22
  %40 = load %struct.regmap*, %struct.regmap** %6, align 8
  %41 = load i32, i32* @CS35L35_BST_CONV_SLOPE_COMP, align 4
  %42 = call i32 @regmap_write(%struct.regmap* %40, i32 %41, i32 78)
  br label %43

43:                                               ; preds = %39, %35
  br label %118

44:                                               ; preds = %2
  %45 = load %struct.regmap*, %struct.regmap** %6, align 8
  %46 = load i32, i32* @CS35L35_BST_CONV_COEF_1, align 4
  %47 = call i32 @regmap_write(%struct.regmap* %45, i32 %46, i32 32)
  %48 = load %struct.regmap*, %struct.regmap** %6, align 8
  %49 = load i32, i32* @CS35L35_BST_CONV_COEF_2, align 4
  %50 = call i32 @regmap_write(%struct.regmap* %48, i32 %49, i32 32)
  %51 = load %struct.regmap*, %struct.regmap** %6, align 8
  %52 = load i32, i32* @CS35L35_BST_CONV_SW_FREQ, align 4
  %53 = load i32, i32* @CS35L35_BST_CONV_LBST_MASK, align 4
  %54 = call i32 @regmap_update_bits(%struct.regmap* %51, i32 %52, i32 %53, i32 1)
  %55 = load i32, i32* %7, align 4
  %56 = icmp ult i32 %55, 4
  br i1 %56, label %57, label %61

57:                                               ; preds = %44
  %58 = load %struct.regmap*, %struct.regmap** %6, align 8
  %59 = load i32, i32* @CS35L35_BST_CONV_SLOPE_COMP, align 4
  %60 = call i32 @regmap_write(%struct.regmap* %58, i32 %59, i32 27)
  br label %65

61:                                               ; preds = %44
  %62 = load %struct.regmap*, %struct.regmap** %6, align 8
  %63 = load i32, i32* @CS35L35_BST_CONV_SLOPE_COMP, align 4
  %64 = call i32 @regmap_write(%struct.regmap* %62, i32 %63, i32 71)
  br label %65

65:                                               ; preds = %61, %57
  br label %118

66:                                               ; preds = %2
  %67 = load %struct.regmap*, %struct.regmap** %6, align 8
  %68 = load i32, i32* @CS35L35_BST_CONV_COEF_1, align 4
  %69 = call i32 @regmap_write(%struct.regmap* %67, i32 %68, i32 32)
  %70 = load %struct.regmap*, %struct.regmap** %6, align 8
  %71 = load i32, i32* @CS35L35_BST_CONV_COEF_2, align 4
  %72 = call i32 @regmap_write(%struct.regmap* %70, i32 %71, i32 32)
  %73 = load %struct.regmap*, %struct.regmap** %6, align 8
  %74 = load i32, i32* @CS35L35_BST_CONV_SW_FREQ, align 4
  %75 = load i32, i32* @CS35L35_BST_CONV_LBST_MASK, align 4
  %76 = call i32 @regmap_update_bits(%struct.regmap* %73, i32 %74, i32 %75, i32 2)
  %77 = load i32, i32* %7, align 4
  %78 = icmp ult i32 %77, 4
  br i1 %78, label %79, label %83

79:                                               ; preds = %66
  %80 = load %struct.regmap*, %struct.regmap** %6, align 8
  %81 = load i32, i32* @CS35L35_BST_CONV_SLOPE_COMP, align 4
  %82 = call i32 @regmap_write(%struct.regmap* %80, i32 %81, i32 27)
  br label %87

83:                                               ; preds = %66
  %84 = load %struct.regmap*, %struct.regmap** %6, align 8
  %85 = load i32, i32* @CS35L35_BST_CONV_SLOPE_COMP, align 4
  %86 = call i32 @regmap_write(%struct.regmap* %84, i32 %85, i32 60)
  br label %87

87:                                               ; preds = %83, %79
  br label %118

88:                                               ; preds = %2
  %89 = load %struct.regmap*, %struct.regmap** %6, align 8
  %90 = load i32, i32* @CS35L35_BST_CONV_COEF_1, align 4
  %91 = call i32 @regmap_write(%struct.regmap* %89, i32 %90, i32 25)
  %92 = load %struct.regmap*, %struct.regmap** %6, align 8
  %93 = load i32, i32* @CS35L35_BST_CONV_COEF_2, align 4
  %94 = call i32 @regmap_write(%struct.regmap* %92, i32 %93, i32 37)
  %95 = load %struct.regmap*, %struct.regmap** %6, align 8
  %96 = load i32, i32* @CS35L35_BST_CONV_SW_FREQ, align 4
  %97 = load i32, i32* @CS35L35_BST_CONV_LBST_MASK, align 4
  %98 = call i32 @regmap_update_bits(%struct.regmap* %95, i32 %96, i32 %97, i32 3)
  %99 = load i32, i32* %7, align 4
  %100 = icmp ult i32 %99, 4
  br i1 %100, label %101, label %105

101:                                              ; preds = %88
  %102 = load %struct.regmap*, %struct.regmap** %6, align 8
  %103 = load i32, i32* @CS35L35_BST_CONV_SLOPE_COMP, align 4
  %104 = call i32 @regmap_write(%struct.regmap* %102, i32 %103, i32 27)
  br label %109

105:                                              ; preds = %88
  %106 = load %struct.regmap*, %struct.regmap** %6, align 8
  %107 = load i32, i32* @CS35L35_BST_CONV_SLOPE_COMP, align 4
  %108 = call i32 @regmap_write(%struct.regmap* %106, i32 %107, i32 35)
  br label %109

109:                                              ; preds = %105, %101
  br label %118

110:                                              ; preds = %2
  %111 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %112 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @dev_err(i32 %113, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %3, align 4
  br label %119

118:                                              ; preds = %109, %87, %65, %43
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %118, %110
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
