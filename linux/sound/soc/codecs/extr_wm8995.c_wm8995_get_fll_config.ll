; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8995.c_wm8995_get_fll_config.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8995.c_wm8995_get_fll_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fll_div = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"FLL input=%dHz, output=%dHz\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"CLK_REF_DIV=%d, Fref=%dHz\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"OUTDIV=%d, Fvco=%dHz\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"FLL_FRATIO=%d, Fref=%dHz\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Nmod=%d\0A\00", align 1
@FIXED_FLL_SIZE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"N=%x K=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fll_div*, i32, i32)* @wm8995_get_fll_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8995_get_fll_config(%struct.fll_div* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fll_div*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fll_div* %0, %struct.fll_div** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  %15 = load %struct.fll_div*, %struct.fll_div** %5, align 8
  %16 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  br label %17

17:                                               ; preds = %34, %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp sgt i32 %18, 13500000
  br i1 %19, label %20, label %35

20:                                               ; preds = %17
  %21 = load %struct.fll_div*, %struct.fll_div** %5, align 8
  %22 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* %6, align 4
  %26 = sdiv i32 %25, 2
  store i32 %26, i32* %6, align 4
  %27 = load %struct.fll_div*, %struct.fll_div** %5, align 8
  %28 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %29, 3
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %157

34:                                               ; preds = %20
  br label %17

35:                                               ; preds = %17
  %36 = load %struct.fll_div*, %struct.fll_div** %5, align 8
  %37 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load %struct.fll_div*, %struct.fll_div** %5, align 8
  %42 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %41, i32 0, i32 1
  store i32 3, i32* %42, align 4
  br label %43

43:                                               ; preds = %63, %35
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.fll_div*, %struct.fll_div** %5, align 8
  %46 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  %49 = mul nsw i32 %44, %48
  %50 = icmp slt i32 %49, 90000000
  br i1 %50, label %51, label %64

51:                                               ; preds = %43
  %52 = load %struct.fll_div*, %struct.fll_div** %5, align 8
  %53 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load %struct.fll_div*, %struct.fll_div** %5, align 8
  %57 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %58, 63
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %157

63:                                               ; preds = %51
  br label %43

64:                                               ; preds = %43
  %65 = load %struct.fll_div*, %struct.fll_div** %5, align 8
  %66 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  %69 = load i32, i32* %7, align 4
  %70 = mul nsw i32 %69, %68
  store i32 %70, i32* %7, align 4
  %71 = load %struct.fll_div*, %struct.fll_div** %5, align 8
  %72 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32 %74)
  %76 = load i32, i32* %6, align 4
  %77 = icmp sgt i32 %76, 1000000
  br i1 %77, label %78, label %81

78:                                               ; preds = %64
  %79 = load %struct.fll_div*, %struct.fll_div** %5, align 8
  %80 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %79, i32 0, i32 2
  store i32 0, i32* %80, align 4
  br label %113

81:                                               ; preds = %64
  %82 = load i32, i32* %6, align 4
  %83 = icmp sgt i32 %82, 256000
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load %struct.fll_div*, %struct.fll_div** %5, align 8
  %86 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %85, i32 0, i32 2
  store i32 1, i32* %86, align 4
  %87 = load i32, i32* %6, align 4
  %88 = mul nsw i32 %87, 2
  store i32 %88, i32* %6, align 4
  br label %112

89:                                               ; preds = %81
  %90 = load i32, i32* %6, align 4
  %91 = icmp sgt i32 %90, 128000
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load %struct.fll_div*, %struct.fll_div** %5, align 8
  %94 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %93, i32 0, i32 2
  store i32 2, i32* %94, align 4
  %95 = load i32, i32* %6, align 4
  %96 = mul nsw i32 %95, 4
  store i32 %96, i32* %6, align 4
  br label %111

97:                                               ; preds = %89
  %98 = load i32, i32* %6, align 4
  %99 = icmp sgt i32 %98, 64000
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load %struct.fll_div*, %struct.fll_div** %5, align 8
  %102 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %101, i32 0, i32 2
  store i32 3, i32* %102, align 4
  %103 = load i32, i32* %6, align 4
  %104 = mul nsw i32 %103, 8
  store i32 %104, i32* %6, align 4
  br label %110

105:                                              ; preds = %97
  %106 = load %struct.fll_div*, %struct.fll_div** %5, align 8
  %107 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %106, i32 0, i32 2
  store i32 4, i32* %107, align 4
  %108 = load i32, i32* %6, align 4
  %109 = mul nsw i32 %108, 16
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %105, %100
  br label %111

111:                                              ; preds = %110, %92
  br label %112

112:                                              ; preds = %111, %84
  br label %113

113:                                              ; preds = %112, %78
  %114 = load %struct.fll_div*, %struct.fll_div** %5, align 8
  %115 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %6, align 4
  %118 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %116, i32 %117)
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* %6, align 4
  %121 = sdiv i32 %119, %120
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %10, align 4
  %123 = load %struct.fll_div*, %struct.fll_div** %5, align 8
  %124 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* %6, align 4
  %127 = srem i32 %125, %126
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %11, align 4
  %129 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %128)
  %130 = load i64, i64* @FIXED_FLL_SIZE, align 8
  %131 = load i32, i32* %11, align 4
  %132 = zext i32 %131 to i64
  %133 = mul nsw i64 %130, %132
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @do_div(i32 %135, i32 %136)
  %138 = load i32, i32* %8, align 4
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %9, align 4
  %140 = urem i32 %139, 10
  %141 = icmp uge i32 %140, 5
  br i1 %141, label %142, label %145

142:                                              ; preds = %113
  %143 = load i32, i32* %9, align 4
  %144 = add i32 %143, 5
  store i32 %144, i32* %9, align 4
  br label %145

145:                                              ; preds = %142, %113
  %146 = load i32, i32* %9, align 4
  %147 = udiv i32 %146, 10
  %148 = load %struct.fll_div*, %struct.fll_div** %5, align 8
  %149 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 4
  %150 = load %struct.fll_div*, %struct.fll_div** %5, align 8
  %151 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.fll_div*, %struct.fll_div** %5, align 8
  %154 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %152, i32 %155)
  store i32 0, i32* %4, align 4
  br label %157

157:                                              ; preds = %145, %60, %31
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
