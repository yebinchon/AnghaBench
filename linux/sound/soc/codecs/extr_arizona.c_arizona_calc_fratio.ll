; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_calc_fratio.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_calc_fratio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arizona_fll = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.arizona_fll_cfg = type { i32, i32 }

@ARIZONA_FLL_MAX_FREF = common dso_local global i32 0, align 4
@ARIZONA_FLL_MAX_REFDIV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unable to find FRATIO for Fref=%uHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"pseudo: initial ratio=%u fref=%u refdiv=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"pseudo: found fref=%u refdiv=%d(%d) ratio=%d\0A\00", align 1
@ARIZONA_FLL_MAX_FRATIO = common dso_local global i32 0, align 4
@ARIZONA_FLL_VCO_CORNER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"pseudo: hit VCO corner\0A\00", align 1
@pseudo_fref_max = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [44 x i8] c"pseudo: exceeded max fref(%u) for ratio=%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"pseudo: change fref=%u refdiv=%d(%d) ratio=%u\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Falling back to integer mode operation\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arizona_fll*, %struct.arizona_fll_cfg*, i32, i32, i32)* @arizona_calc_fratio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_calc_fratio(%struct.arizona_fll* %0, %struct.arizona_fll_cfg* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.arizona_fll*, align 8
  %8 = alloca %struct.arizona_fll_cfg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.arizona_fll* %0, %struct.arizona_fll** %7, align 8
  store %struct.arizona_fll_cfg* %1, %struct.arizona_fll_cfg** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 1, i32* %15, align 4
  %16 = load %struct.arizona_fll_cfg*, %struct.arizona_fll_cfg** %8, align 8
  %17 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %37, %5
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @ARIZONA_FLL_MAX_FREF, align 4
  %21 = icmp ugt i32 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %18
  %23 = load i32, i32* %15, align 4
  %24 = mul nsw i32 %23, 2
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %10, align 4
  %26 = udiv i32 %25, 2
  store i32 %26, i32* %10, align 4
  %27 = load %struct.arizona_fll_cfg*, %struct.arizona_fll_cfg** %8, align 8
  %28 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* @ARIZONA_FLL_MAX_REFDIV, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %213

37:                                               ; preds = %22
  br label %18

38:                                               ; preds = %18
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.arizona_fll_cfg*, %struct.arizona_fll_cfg** %8, align 8
  %41 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %40, i32 0, i32 1
  %42 = call i32 @arizona_find_fratio(i32 %39, i32* %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load %struct.arizona_fll*, %struct.arizona_fll** %7, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @arizona_fll_err(%struct.arizona_fll* %46, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %6, align 4
  br label %213

50:                                               ; preds = %38
  %51 = load %struct.arizona_fll*, %struct.arizona_fll** %7, align 8
  %52 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %71 [
    i32 131, label %56
    i32 128, label %56
    i32 130, label %58
    i32 129, label %58
  ]

56:                                               ; preds = %50, %50
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %6, align 4
  br label %213

58:                                               ; preds = %50, %50
  %59 = load %struct.arizona_fll*, %struct.arizona_fll** %7, align 8
  %60 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %63, 3
  br i1 %64, label %68, label %65

65:                                               ; preds = %58
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65, %58
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %6, align 4
  br label %213

70:                                               ; preds = %65
  br label %77

71:                                               ; preds = %50
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* %12, align 4
  store i32 %75, i32* %6, align 4
  br label %213

76:                                               ; preds = %71
  br label %77

77:                                               ; preds = %76, %70
  %78 = load i32, i32* %12, align 4
  %79 = sub nsw i32 %78, 1
  %80 = load %struct.arizona_fll_cfg*, %struct.arizona_fll_cfg** %8, align 8
  %81 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.arizona_fll_cfg*, %struct.arizona_fll_cfg** %8, align 8
  %83 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %14, align 4
  %85 = load %struct.arizona_fll*, %struct.arizona_fll** %7, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %14, align 4
  %89 = call i32 (%struct.arizona_fll*, i8*, ...) @arizona_fll_dbg(%struct.arizona_fll* %85, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %191, %77
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* @ARIZONA_FLL_MAX_REFDIV, align 4
  %93 = icmp sle i32 %91, %92
  br i1 %93, label %94, label %206

94:                                               ; preds = %90
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %13, align 4
  br label %96

96:                                               ; preds = %122, %94
  %97 = load i32, i32* %13, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %125

99:                                               ; preds = %96
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %10, align 4
  %103 = mul i32 %101, %102
  %104 = urem i32 %100, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %121

106:                                              ; preds = %99
  %107 = load i32, i32* %14, align 4
  %108 = load %struct.arizona_fll_cfg*, %struct.arizona_fll_cfg** %8, align 8
  %109 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %13, align 4
  %111 = sub nsw i32 %110, 1
  %112 = load %struct.arizona_fll_cfg*, %struct.arizona_fll_cfg** %8, align 8
  %113 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.arizona_fll*, %struct.arizona_fll** %7, align 8
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %13, align 4
  %119 = call i32 (%struct.arizona_fll*, i8*, ...) @arizona_fll_dbg(%struct.arizona_fll* %114, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %115, i32 %116, i32 %117, i32 %118)
  %120 = load i32, i32* %13, align 4
  store i32 %120, i32* %6, align 4
  br label %213

121:                                              ; preds = %99
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %13, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %13, align 4
  br label %96

125:                                              ; preds = %96
  %126 = load i32, i32* %12, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %13, align 4
  br label %128

128:                                              ; preds = %188, %125
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* @ARIZONA_FLL_MAX_FRATIO, align 4
  %131 = icmp sle i32 %129, %130
  br i1 %131, label %132, label %191

132:                                              ; preds = %128
  %133 = load i32, i32* @ARIZONA_FLL_VCO_CORNER, align 4
  %134 = sdiv i32 %133, 2
  %135 = load %struct.arizona_fll*, %struct.arizona_fll** %7, align 8
  %136 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %13, align 4
  %139 = mul nsw i32 %137, %138
  %140 = sdiv i32 %134, %139
  %141 = load i32, i32* %10, align 4
  %142 = icmp ult i32 %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %132
  %144 = load %struct.arizona_fll*, %struct.arizona_fll** %7, align 8
  %145 = call i32 (%struct.arizona_fll*, i8*, ...) @arizona_fll_dbg(%struct.arizona_fll* %144, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %191

146:                                              ; preds = %132
  %147 = load i32, i32* %10, align 4
  %148 = load i32*, i32** @pseudo_fref_max, align 8
  %149 = load i32, i32* %13, align 4
  %150 = sub nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = icmp ugt i32 %147, %153
  br i1 %154, label %155, label %165

155:                                              ; preds = %146
  %156 = load %struct.arizona_fll*, %struct.arizona_fll** %7, align 8
  %157 = load i32*, i32** @pseudo_fref_max, align 8
  %158 = load i32, i32* %13, align 4
  %159 = sub nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %157, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %13, align 4
  %164 = call i32 (%struct.arizona_fll*, i8*, ...) @arizona_fll_dbg(%struct.arizona_fll* %156, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %162, i32 %163)
  br label %191

165:                                              ; preds = %146
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* %10, align 4
  %169 = mul i32 %167, %168
  %170 = urem i32 %166, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %187

172:                                              ; preds = %165
  %173 = load i32, i32* %14, align 4
  %174 = load %struct.arizona_fll_cfg*, %struct.arizona_fll_cfg** %8, align 8
  %175 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 4
  %176 = load i32, i32* %13, align 4
  %177 = sub nsw i32 %176, 1
  %178 = load %struct.arizona_fll_cfg*, %struct.arizona_fll_cfg** %8, align 8
  %179 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %178, i32 0, i32 1
  store i32 %177, i32* %179, align 4
  %180 = load %struct.arizona_fll*, %struct.arizona_fll** %7, align 8
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* %14, align 4
  %183 = load i32, i32* %15, align 4
  %184 = load i32, i32* %13, align 4
  %185 = call i32 (%struct.arizona_fll*, i8*, ...) @arizona_fll_dbg(%struct.arizona_fll* %180, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %181, i32 %182, i32 %183, i32 %184)
  %186 = load i32, i32* %13, align 4
  store i32 %186, i32* %6, align 4
  br label %213

187:                                              ; preds = %165
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %13, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %13, align 4
  br label %128

191:                                              ; preds = %155, %143, %128
  %192 = load i32, i32* %15, align 4
  %193 = mul nsw i32 %192, 2
  store i32 %193, i32* %15, align 4
  %194 = load i32, i32* %10, align 4
  %195 = udiv i32 %194, 2
  store i32 %195, i32* %10, align 4
  %196 = load i32, i32* %14, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %14, align 4
  %198 = load i32, i32* %10, align 4
  %199 = call i32 @arizona_find_fratio(i32 %198, i32* null)
  store i32 %199, i32* %12, align 4
  %200 = load %struct.arizona_fll*, %struct.arizona_fll** %7, align 8
  %201 = load i32, i32* %10, align 4
  %202 = load i32, i32* %14, align 4
  %203 = load i32, i32* %15, align 4
  %204 = load i32, i32* %12, align 4
  %205 = call i32 (%struct.arizona_fll*, i8*, ...) @arizona_fll_dbg(%struct.arizona_fll* %200, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %201, i32 %202, i32 %203, i32 %204)
  br label %90

206:                                              ; preds = %90
  %207 = load %struct.arizona_fll*, %struct.arizona_fll** %7, align 8
  %208 = call i32 @arizona_fll_warn(%struct.arizona_fll* %207, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %209 = load %struct.arizona_fll_cfg*, %struct.arizona_fll_cfg** %8, align 8
  %210 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %6, align 4
  br label %213

213:                                              ; preds = %206, %172, %106, %74, %68, %56, %45, %34
  %214 = load i32, i32* %6, align 4
  ret i32 %214
}

declare dso_local i32 @arizona_find_fratio(i32, i32*) #1

declare dso_local i32 @arizona_fll_err(%struct.arizona_fll*, i8*, i32) #1

declare dso_local i32 @arizona_fll_dbg(%struct.arizona_fll*, i8*, ...) #1

declare dso_local i32 @arizona_fll_warn(%struct.arizona_fll*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
