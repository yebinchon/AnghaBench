; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8904.c_fll_factors.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8904.c_fll_factors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct._fll_div = type { i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [43 x i8] c"Can't scale %dMHz input down to <=13.5MHz\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Fref=%u Fout=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Unable to find FLL_OUTDIV for Fout=%uHz\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Fvco=%dHz\0A\00", align 1
@fll_fratios = common dso_local global %struct.TYPE_3__* null, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"Unable to find FLL_FRATIO for Fref=%uHz\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Nmod=%d\0A\00", align 1
@FIXED_FLL_SIZE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [58 x i8] c"N=%x K=%x FLL_FRATIO=%x FLL_OUTDIV=%x FLL_CLK_REF_DIV=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._fll_div*, i32, i32)* @fll_factors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fll_factors(%struct._fll_div* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._fll_div*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct._fll_div* %0, %struct._fll_div** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %13, align 4
  %15 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %16 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %15, i32 0, i32 3
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %36, %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %13, align 4
  %20 = udiv i32 %18, %19
  %21 = icmp ugt i32 %20, 13500000
  br i1 %21, label %22, label %37

22:                                               ; preds = %17
  %23 = load i32, i32* %13, align 4
  %24 = mul i32 %23, 2
  store i32 %24, i32* %13, align 4
  %25 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %26 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %26, align 8
  %29 = load i32, i32* %13, align 4
  %30 = icmp ugt i32 %29, 8
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %172

36:                                               ; preds = %22
  br label %17

37:                                               ; preds = %17
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %6, align 4
  %43 = udiv i32 %42, %41
  store i32 %43, i32* %6, align 4
  store i32 4, i32* %13, align 4
  br label %44

44:                                               ; preds = %59, %37
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %13, align 4
  %47 = mul i32 %45, %46
  %48 = icmp ult i32 %47, 90000000
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = load i32, i32* %13, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ugt i32 %52, 64
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %172

59:                                               ; preds = %49
  br label %44

60:                                               ; preds = %44
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %13, align 4
  %63 = mul i32 %61, %62
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %13, align 4
  %65 = sub i32 %64, 1
  %66 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %67 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* %12, align 4
  %69 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  store i32 0, i32* %14, align 4
  br label %70

70:                                               ; preds = %111, %60
  %71 = load i32, i32* %14, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fll_fratios, align 8
  %73 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %72)
  %74 = icmp slt i32 %71, %73
  br i1 %74, label %75, label %114

75:                                               ; preds = %70
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fll_fratios, align 8
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ule i32 %81, %82
  br i1 %83, label %84, label %110

84:                                               ; preds = %75
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fll_fratios, align 8
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp ule i32 %85, %91
  br i1 %92, label %93, label %110

93:                                               ; preds = %84
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fll_fratios, align 8
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %101 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fll_fratios, align 8
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %12, align 4
  %109 = udiv i32 %108, %107
  store i32 %109, i32* %12, align 4
  br label %114

110:                                              ; preds = %84, %75
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %14, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %14, align 4
  br label %70

114:                                              ; preds = %93, %70
  %115 = load i32, i32* %14, align 4
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fll_fratios, align 8
  %117 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %116)
  %118 = icmp eq i32 %115, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %4, align 4
  br label %172

124:                                              ; preds = %114
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %6, align 4
  %127 = udiv i32 %125, %126
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %10, align 4
  %129 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %130 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %6, align 4
  %133 = urem i32 %131, %132
  store i32 %133, i32* %11, align 4
  %134 = load i32, i32* %11, align 4
  %135 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %134)
  %136 = load i64, i64* @FIXED_FLL_SIZE, align 8
  %137 = load i32, i32* %11, align 4
  %138 = zext i32 %137 to i64
  %139 = mul nsw i64 %136, %138
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %6, align 4
  %143 = call i32 @do_div(i32 %141, i32 %142)
  %144 = load i32, i32* %8, align 4
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %9, align 4
  %146 = urem i32 %145, 10
  %147 = icmp uge i32 %146, 5
  br i1 %147, label %148, label %151

148:                                              ; preds = %124
  %149 = load i32, i32* %9, align 4
  %150 = add i32 %149, 5
  store i32 %150, i32* %9, align 4
  br label %151

151:                                              ; preds = %148, %124
  %152 = load i32, i32* %9, align 4
  %153 = udiv i32 %152, 10
  %154 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %155 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 8
  %156 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %157 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %160 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %163 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %166 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %169 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0), i32 %158, i32 %161, i32 %164, i32 %167, i64 %170)
  store i32 0, i32* %4, align 4
  br label %172

172:                                              ; preds = %151, %119, %54, %31
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
