; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_calc_fll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_calc_fll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.arizona_fll = type { i32, i32 }
%struct.arizona_fll_cfg = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"Fref=%u Fout=%u\0A\00", align 1
@ARIZONA_FLL_MIN_OUTDIV = common dso_local global i32 0, align 4
@ARIZONA_FLL_MIN_FVCO = common dso_local global i32 0, align 4
@ARIZONA_FLL_MAX_OUTDIV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Fvco=%dHz\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"GCD=%u\0A\00", align 1
@fll_gains = common dso_local global %struct.TYPE_3__* null, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"Unable to find gain for Fref=%uHz\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"N=%d THETA=%d LAMBDA=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"FRATIO=0x%x(%d) OUTDIV=%d REFCLK_DIV=0x%x(%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"GAIN=0x%x(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arizona_fll*, %struct.arizona_fll_cfg*, i32, i32)* @arizona_calc_fll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_calc_fll(%struct.arizona_fll* %0, %struct.arizona_fll_cfg* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.arizona_fll*, align 8
  %7 = alloca %struct.arizona_fll_cfg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.arizona_fll* %0, %struct.arizona_fll** %6, align 8
  store %struct.arizona_fll_cfg* %1, %struct.arizona_fll_cfg** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.arizona_fll*, %struct.arizona_fll** %6, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.arizona_fll*, %struct.arizona_fll** %6, align 8
  %18 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (%struct.arizona_fll*, i8*, i32, ...) @arizona_fll_dbg(%struct.arizona_fll* %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19)
  %21 = load i32, i32* @ARIZONA_FLL_MIN_OUTDIV, align 4
  store i32 %21, i32* %11, align 4
  br label %22

22:                                               ; preds = %43, %4
  %23 = load %struct.arizona_fll*, %struct.arizona_fll** %6, align 8
  %24 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %11, align 4
  %27 = mul i32 %25, %26
  %28 = load i32, i32* @ARIZONA_FLL_MIN_FVCO, align 4
  %29 = load %struct.arizona_fll*, %struct.arizona_fll** %6, align 8
  %30 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = mul i32 %28, %31
  %33 = icmp ult i32 %27, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %22
  %35 = load i32, i32* %11, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @ARIZONA_FLL_MAX_OUTDIV, align 4
  %39 = icmp ugt i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %224

43:                                               ; preds = %34
  br label %22

44:                                               ; preds = %22
  %45 = load %struct.arizona_fll*, %struct.arizona_fll** %6, align 8
  %46 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %11, align 4
  %49 = mul i32 %47, %48
  %50 = load %struct.arizona_fll*, %struct.arizona_fll** %6, align 8
  %51 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = udiv i32 %49, %52
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.arizona_fll_cfg*, %struct.arizona_fll_cfg** %7, align 8
  %56 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.arizona_fll*, %struct.arizona_fll** %6, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 (%struct.arizona_fll*, i8*, i32, ...) @arizona_fll_dbg(%struct.arizona_fll* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load %struct.arizona_fll*, %struct.arizona_fll** %6, align 8
  %61 = load %struct.arizona_fll_cfg*, %struct.arizona_fll_cfg** %7, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @arizona_calc_fratio(%struct.arizona_fll* %60, %struct.arizona_fll_cfg* %61, i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %44
  %69 = load i32, i32* %14, align 4
  store i32 %69, i32* %5, align 4
  br label %224

70:                                               ; preds = %44
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.arizona_fll_cfg*, %struct.arizona_fll_cfg** %7, align 8
  %73 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 1, %74
  %76 = udiv i32 %71, %75
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %8, align 4
  %80 = mul i32 %78, %79
  %81 = udiv i32 %77, %80
  %82 = load %struct.arizona_fll_cfg*, %struct.arizona_fll_cfg** %7, align 8
  %83 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %8, align 4
  %87 = mul i32 %85, %86
  %88 = urem i32 %84, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %119

90:                                               ; preds = %70
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %8, align 4
  %94 = mul i32 %92, %93
  %95 = call i32 @gcd(i32 %91, i32 %94)
  store i32 %95, i32* %12, align 4
  %96 = load %struct.arizona_fll*, %struct.arizona_fll** %6, align 8
  %97 = load i32, i32* %12, align 4
  %98 = call i32 (%struct.arizona_fll*, i8*, i32, ...) @arizona_fll_dbg(%struct.arizona_fll* %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %10, align 4
  %100 = load %struct.arizona_fll_cfg*, %struct.arizona_fll_cfg** %7, align 8
  %101 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %14, align 4
  %104 = mul i32 %102, %103
  %105 = load i32, i32* %8, align 4
  %106 = mul i32 %104, %105
  %107 = sub i32 %99, %106
  %108 = load i32, i32* %12, align 4
  %109 = udiv i32 %107, %108
  %110 = load %struct.arizona_fll_cfg*, %struct.arizona_fll_cfg** %7, align 8
  %111 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %8, align 4
  %114 = mul i32 %112, %113
  %115 = load i32, i32* %12, align 4
  %116 = udiv i32 %114, %115
  %117 = load %struct.arizona_fll_cfg*, %struct.arizona_fll_cfg** %7, align 8
  %118 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %117, i32 0, i32 4
  store i32 %116, i32* %118, align 4
  br label %124

119:                                              ; preds = %70
  %120 = load %struct.arizona_fll_cfg*, %struct.arizona_fll_cfg** %7, align 8
  %121 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %120, i32 0, i32 3
  store i32 0, i32* %121, align 4
  %122 = load %struct.arizona_fll_cfg*, %struct.arizona_fll_cfg** %7, align 8
  %123 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %122, i32 0, i32 4
  store i32 0, i32* %123, align 4
  br label %124

124:                                              ; preds = %119, %90
  br label %125

125:                                              ; preds = %130, %124
  %126 = load %struct.arizona_fll_cfg*, %struct.arizona_fll_cfg** %7, align 8
  %127 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = icmp sge i32 %128, 65536
  br i1 %129, label %130, label %139

130:                                              ; preds = %125
  %131 = load %struct.arizona_fll_cfg*, %struct.arizona_fll_cfg** %7, align 8
  %132 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = lshr i32 %133, 1
  store i32 %134, i32* %132, align 4
  %135 = load %struct.arizona_fll_cfg*, %struct.arizona_fll_cfg** %7, align 8
  %136 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = ashr i32 %137, 1
  store i32 %138, i32* %136, align 4
  br label %125

139:                                              ; preds = %125
  store i32 0, i32* %13, align 4
  br label %140

140:                                              ; preds = %173, %139
  %141 = load i32, i32* %13, align 4
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fll_gains, align 8
  %143 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %142)
  %144 = icmp slt i32 %141, %143
  br i1 %144, label %145, label %176

145:                                              ; preds = %140
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fll_gains, align 8
  %147 = load i32, i32* %13, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %8, align 4
  %153 = icmp ule i32 %151, %152
  br i1 %153, label %154, label %172

154:                                              ; preds = %145
  %155 = load i32, i32* %8, align 4
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fll_gains, align 8
  %157 = load i32, i32* %13, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp ule i32 %155, %161
  br i1 %162, label %163, label %172

163:                                              ; preds = %154
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fll_gains, align 8
  %165 = load i32, i32* %13, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.arizona_fll_cfg*, %struct.arizona_fll_cfg** %7, align 8
  %171 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %170, i32 0, i32 5
  store i32 %169, i32* %171, align 4
  br label %176

172:                                              ; preds = %154, %145
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %13, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %13, align 4
  br label %140

176:                                              ; preds = %163, %140
  %177 = load i32, i32* %13, align 4
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fll_gains, align 8
  %179 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %178)
  %180 = icmp eq i32 %177, %179
  br i1 %180, label %181, label %187

181:                                              ; preds = %176
  %182 = load %struct.arizona_fll*, %struct.arizona_fll** %6, align 8
  %183 = load i32, i32* %8, align 4
  %184 = call i32 @arizona_fll_err(%struct.arizona_fll* %182, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %183)
  %185 = load i32, i32* @EINVAL, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %5, align 4
  br label %224

187:                                              ; preds = %176
  %188 = load %struct.arizona_fll*, %struct.arizona_fll** %6, align 8
  %189 = load %struct.arizona_fll_cfg*, %struct.arizona_fll_cfg** %7, align 8
  %190 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.arizona_fll_cfg*, %struct.arizona_fll_cfg** %7, align 8
  %193 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.arizona_fll_cfg*, %struct.arizona_fll_cfg** %7, align 8
  %196 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 4
  %198 = call i32 (%struct.arizona_fll*, i8*, i32, ...) @arizona_fll_dbg(%struct.arizona_fll* %188, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %191, i32 %194, i32 %197)
  %199 = load %struct.arizona_fll*, %struct.arizona_fll** %6, align 8
  %200 = load %struct.arizona_fll_cfg*, %struct.arizona_fll_cfg** %7, align 8
  %201 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %200, i32 0, i32 6
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %14, align 4
  %204 = load %struct.arizona_fll_cfg*, %struct.arizona_fll_cfg** %7, align 8
  %205 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.arizona_fll_cfg*, %struct.arizona_fll_cfg** %7, align 8
  %208 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.arizona_fll_cfg*, %struct.arizona_fll_cfg** %7, align 8
  %211 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = shl i32 1, %212
  %214 = call i32 (%struct.arizona_fll*, i8*, i32, ...) @arizona_fll_dbg(%struct.arizona_fll* %199, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %202, i32 %203, i32 %206, i32 %209, i32 %213)
  %215 = load %struct.arizona_fll*, %struct.arizona_fll** %6, align 8
  %216 = load %struct.arizona_fll_cfg*, %struct.arizona_fll_cfg** %7, align 8
  %217 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %216, i32 0, i32 5
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.arizona_fll_cfg*, %struct.arizona_fll_cfg** %7, align 8
  %220 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 4
  %222 = shl i32 1, %221
  %223 = call i32 (%struct.arizona_fll*, i8*, i32, ...) @arizona_fll_dbg(%struct.arizona_fll* %215, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %218, i32 %222)
  store i32 0, i32* %5, align 4
  br label %224

224:                                              ; preds = %187, %181, %68, %40
  %225 = load i32, i32* %5, align 4
  ret i32 %225
}

declare dso_local i32 @arizona_fll_dbg(%struct.arizona_fll*, i8*, i32, ...) #1

declare dso_local i32 @arizona_calc_fratio(%struct.arizona_fll*, %struct.arizona_fll_cfg*, i32, i32, i32) #1

declare dso_local i32 @gcd(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @arizona_fll_err(%struct.arizona_fll*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
