; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8996.c_fll_factors.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8996.c_fll_factors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct._fll_div = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"Can't scale %dMHz input down to <=13.5MHz\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"FLL Fref=%u Fout=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Unable to find FLL_OUTDIV for Fout=%uHz\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"FLL Fvco=%dHz\0A\00", align 1
@fll_fratios = common dso_local global %struct.TYPE_3__* null, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"Unable to find FLL_FRATIO for Fref=%uHz\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"FLL N=%x THETA=%x LAMBDA=%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"FLL_FRATIO=%x FLL_OUTDIV=%x FLL_REFCLK_DIV=%x\0A\00", align 1
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
  store %struct._fll_div* %0, %struct._fll_div** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %9, align 4
  %13 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %14 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %13, i32 0, i32 0
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %34, %3
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %9, align 4
  %18 = udiv i32 %16, %17
  %19 = icmp ugt i32 %18, 13500000
  br i1 %19, label %20, label %35

20:                                               ; preds = %15
  %21 = load i32, i32* %9, align 4
  %22 = mul i32 %21, 2
  store i32 %22, i32* %9, align 4
  %23 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %24 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ugt i32 %27, 8
  br i1 %28, label %29, label %34

29:                                               ; preds = %20
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %202

34:                                               ; preds = %20
  br label %15

35:                                               ; preds = %15
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %6, align 4
  %41 = udiv i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp uge i32 %42, 3000000
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %46 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %45, i32 0, i32 1
  store i32 5, i32* %46, align 4
  br label %50

47:                                               ; preds = %35
  %48 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %49 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %48, i32 0, i32 1
  store i32 0, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* %6, align 4
  %52 = icmp uge i32 %51, 48000
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %55 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %54, i32 0, i32 2
  store i32 0, i32* %55, align 4
  br label %59

56:                                               ; preds = %50
  %57 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %58 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %57, i32 0, i32 2
  store i32 1, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %53
  store i32 2, i32* %9, align 4
  br label %60

60:                                               ; preds = %75, %59
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %9, align 4
  %63 = mul i32 %61, %62
  %64 = icmp ult i32 %63, 90000000
  br i1 %64, label %65, label %76

65:                                               ; preds = %60
  %66 = load i32, i32* %9, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ugt i32 %68, 64
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %202

75:                                               ; preds = %65
  br label %60

76:                                               ; preds = %60
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %9, align 4
  %79 = mul i32 %77, %78
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %9, align 4
  %81 = sub i32 %80, 1
  %82 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %83 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  store i32 0, i32* %12, align 4
  br label %86

86:                                               ; preds = %125, %76
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fll_fratios, align 8
  %89 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %88)
  %90 = icmp slt i32 %87, %89
  br i1 %90, label %91, label %128

91:                                               ; preds = %86
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fll_fratios, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp ule i32 %97, %98
  br i1 %99, label %100, label %124

100:                                              ; preds = %91
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fll_fratios, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp ule i32 %101, %107
  br i1 %108, label %109, label %124

109:                                              ; preds = %100
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fll_fratios, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %117 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %116, i32 0, i32 4
  store i32 %115, i32* %117, align 4
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fll_fratios, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %10, align 4
  br label %128

124:                                              ; preds = %100, %91
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %12, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %12, align 4
  br label %86

128:                                              ; preds = %109, %86
  %129 = load i32, i32* %12, align 4
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fll_fratios, align 8
  %131 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %130)
  %132 = icmp eq i32 %129, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %4, align 4
  br label %202

138:                                              ; preds = %128
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %6, align 4
  %142 = mul i32 %140, %141
  %143 = udiv i32 %139, %142
  %144 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %145 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %144, i32 0, i32 5
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* %6, align 4
  %148 = urem i32 %146, %147
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %138
  %151 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %152 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %151, i32 0, i32 6
  store i32 0, i32* %152, align 4
  %153 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %154 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %153, i32 0, i32 7
  store i32 0, i32* %154, align 4
  br label %181

155:                                              ; preds = %138
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* %6, align 4
  %159 = mul i32 %157, %158
  %160 = call i32 @gcd(i32 %156, i32 %159)
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* %8, align 4
  %162 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %163 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %10, align 4
  %166 = mul i32 %164, %165
  %167 = load i32, i32* %6, align 4
  %168 = mul i32 %166, %167
  %169 = sub i32 %161, %168
  %170 = load i32, i32* %11, align 4
  %171 = udiv i32 %169, %170
  %172 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %173 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %172, i32 0, i32 6
  store i32 %171, i32* %173, align 4
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* %6, align 4
  %176 = mul i32 %174, %175
  %177 = load i32, i32* %11, align 4
  %178 = udiv i32 %176, %177
  %179 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %180 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %179, i32 0, i32 7
  store i32 %178, i32* %180, align 4
  br label %181

181:                                              ; preds = %155, %150
  %182 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %183 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 4
  %185 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %186 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %185, i32 0, i32 6
  %187 = load i32, i32* %186, align 4
  %188 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %189 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %188, i32 0, i32 7
  %190 = load i32, i32* %189, align 4
  %191 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %184, i32 %187, i32 %190)
  %192 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %193 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 4
  %195 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %196 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %199 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %194, i32 %197, i32 %200)
  store i32 0, i32* %4, align 4
  br label %202

202:                                              ; preds = %181, %133, %70, %29
  %203 = load i32, i32* %4, align 4
  ret i32 %203
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @gcd(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
