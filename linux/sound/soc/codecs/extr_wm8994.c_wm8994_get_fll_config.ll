; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_wm8994_get_fll_config.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_wm8994_get_fll_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8994 = type { i32 }
%struct.fll_div = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"FLL input=%dHz, output=%dHz\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"CLK_REF_DIV=%d, Fref=%dHz\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"OUTDIV=%d, Fvco=%dHz\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"FLL_FRATIO=%d, Fref=%dHz\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Nmod=%d\0A\00", align 1
@FIXED_FLL_SIZE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"N=%x K=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm8994*, %struct.fll_div*, i32, i32)* @wm8994_get_fll_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8994_get_fll_config(%struct.wm8994* %0, %struct.fll_div* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm8994*, align 8
  %7 = alloca %struct.fll_div*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.wm8994* %0, %struct.wm8994** %6, align 8
  store %struct.fll_div* %1, %struct.fll_div** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load %struct.fll_div*, %struct.fll_div** %7, align 8
  %19 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  br label %20

20:                                               ; preds = %37, %4
  %21 = load i32, i32* %8, align 4
  %22 = icmp sgt i32 %21, 13500000
  br i1 %22, label %23, label %38

23:                                               ; preds = %20
  %24 = load %struct.fll_div*, %struct.fll_div** %7, align 8
  %25 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* %8, align 4
  %29 = sdiv i32 %28, 2
  store i32 %29, i32* %8, align 4
  %30 = load %struct.fll_div*, %struct.fll_div** %7, align 8
  %31 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %32, 3
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %187

37:                                               ; preds = %23
  br label %20

38:                                               ; preds = %20
  %39 = load %struct.fll_div*, %struct.fll_div** %7, align 8
  %40 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load %struct.fll_div*, %struct.fll_div** %7, align 8
  %45 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %44, i32 0, i32 1
  store i32 3, i32* %45, align 4
  br label %46

46:                                               ; preds = %66, %38
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.fll_div*, %struct.fll_div** %7, align 8
  %49 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  %52 = mul nsw i32 %47, %51
  %53 = icmp slt i32 %52, 90000000
  br i1 %53, label %54, label %67

54:                                               ; preds = %46
  %55 = load %struct.fll_div*, %struct.fll_div** %7, align 8
  %56 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load %struct.fll_div*, %struct.fll_div** %7, align 8
  %60 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %61, 63
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %187

66:                                               ; preds = %54
  br label %46

67:                                               ; preds = %46
  %68 = load %struct.fll_div*, %struct.fll_div** %7, align 8
  %69 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  %72 = load i32, i32* %9, align 4
  %73 = mul nsw i32 %72, %71
  store i32 %73, i32* %9, align 4
  %74 = load %struct.fll_div*, %struct.fll_div** %7, align 8
  %75 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %77)
  %79 = load i32, i32* %8, align 4
  %80 = icmp sgt i32 %79, 1000000
  br i1 %80, label %81, label %84

81:                                               ; preds = %67
  %82 = load %struct.fll_div*, %struct.fll_div** %7, align 8
  %83 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %82, i32 0, i32 2
  store i32 0, i32* %83, align 4
  br label %116

84:                                               ; preds = %67
  %85 = load i32, i32* %8, align 4
  %86 = icmp sgt i32 %85, 256000
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load %struct.fll_div*, %struct.fll_div** %7, align 8
  %89 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %88, i32 0, i32 2
  store i32 1, i32* %89, align 4
  %90 = load i32, i32* %8, align 4
  %91 = mul nsw i32 %90, 2
  store i32 %91, i32* %8, align 4
  br label %115

92:                                               ; preds = %84
  %93 = load i32, i32* %8, align 4
  %94 = icmp sgt i32 %93, 128000
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load %struct.fll_div*, %struct.fll_div** %7, align 8
  %97 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %96, i32 0, i32 2
  store i32 2, i32* %97, align 4
  %98 = load i32, i32* %8, align 4
  %99 = mul nsw i32 %98, 4
  store i32 %99, i32* %8, align 4
  br label %114

100:                                              ; preds = %92
  %101 = load i32, i32* %8, align 4
  %102 = icmp sgt i32 %101, 64000
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load %struct.fll_div*, %struct.fll_div** %7, align 8
  %105 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %104, i32 0, i32 2
  store i32 3, i32* %105, align 4
  %106 = load i32, i32* %8, align 4
  %107 = mul nsw i32 %106, 8
  store i32 %107, i32* %8, align 4
  br label %113

108:                                              ; preds = %100
  %109 = load %struct.fll_div*, %struct.fll_div** %7, align 8
  %110 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %109, i32 0, i32 2
  store i32 4, i32* %110, align 4
  %111 = load i32, i32* %8, align 4
  %112 = mul nsw i32 %111, 16
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %108, %103
  br label %114

114:                                              ; preds = %113, %95
  br label %115

115:                                              ; preds = %114, %87
  br label %116

116:                                              ; preds = %115, %81
  %117 = load %struct.fll_div*, %struct.fll_div** %7, align 8
  %118 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %8, align 4
  %121 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %119, i32 %120)
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %8, align 4
  %124 = sdiv i32 %122, %123
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %12, align 4
  %126 = load %struct.fll_div*, %struct.fll_div** %7, align 8
  %127 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %8, align 4
  %130 = srem i32 %128, %129
  store i32 %130, i32* %13, align 4
  %131 = load i32, i32* %13, align 4
  %132 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %131)
  %133 = load %struct.wm8994*, %struct.wm8994** %6, align 8
  %134 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  switch i32 %135, label %166 [
    i32 128, label %136
  ]

136:                                              ; preds = %116
  %137 = load i64, i64* @FIXED_FLL_SIZE, align 8
  %138 = load i32, i32* %13, align 4
  %139 = zext i32 %138 to i64
  %140 = mul nsw i64 %137, %139
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @do_div(i32 %142, i32 %143)
  %145 = load i32, i32* %10, align 4
  store i32 %145, i32* %11, align 4
  %146 = load i32, i32* %11, align 4
  %147 = urem i32 %146, 10
  %148 = icmp uge i32 %147, 5
  br i1 %148, label %149, label %152

149:                                              ; preds = %136
  %150 = load i32, i32* %11, align 4
  %151 = add i32 %150, 5
  store i32 %151, i32* %11, align 4
  br label %152

152:                                              ; preds = %149, %136
  %153 = load i32, i32* %11, align 4
  %154 = udiv i32 %153, 10
  %155 = load %struct.fll_div*, %struct.fll_div** %7, align 8
  %156 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %155, i32 0, i32 4
  store i32 %154, i32* %156, align 4
  %157 = load %struct.fll_div*, %struct.fll_div** %7, align 8
  %158 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %157, i32 0, i32 5
  store i32 0, i32* %158, align 4
  %159 = load %struct.fll_div*, %struct.fll_div** %7, align 8
  %160 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.fll_div*, %struct.fll_div** %7, align 8
  %163 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %161, i32 %164)
  br label %186

166:                                              ; preds = %116
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* %8, align 4
  %169 = call i32 @gcd(i32 %167, i32 %168)
  store i32 %169, i32* %14, align 4
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* %8, align 4
  %172 = load %struct.fll_div*, %struct.fll_div** %7, align 8
  %173 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = mul i32 %171, %174
  %176 = sub i32 %170, %175
  %177 = load i32, i32* %14, align 4
  %178 = udiv i32 %176, %177
  %179 = load %struct.fll_div*, %struct.fll_div** %7, align 8
  %180 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %179, i32 0, i32 4
  store i32 %178, i32* %180, align 4
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* %14, align 4
  %183 = udiv i32 %181, %182
  %184 = load %struct.fll_div*, %struct.fll_div** %7, align 8
  %185 = getelementptr inbounds %struct.fll_div, %struct.fll_div* %184, i32 0, i32 5
  store i32 %183, i32* %185, align 4
  br label %186

186:                                              ; preds = %166, %152
  store i32 0, i32* %5, align 4
  br label %187

187:                                              ; preds = %186, %63, %34
  %188 = load i32, i32* %5, align 4
  ret i32 %188
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @gcd(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
