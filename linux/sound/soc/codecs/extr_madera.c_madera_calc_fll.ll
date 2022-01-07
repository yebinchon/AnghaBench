; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_calc_fll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_calc_fll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.madera_fll_gains = type { i32 }
%struct.madera_fll = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.madera_fll_cfg = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"fref=%u Fout=%u fvco=%u\0A\00", align 1
@MADERA_FLL_VCO_MULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"GCD=%u\0A\00", align 1
@madera_fll_sync_gains = common dso_local global %struct.madera_fll_gains* null, align 8
@madera_fll_main_gains = common dso_local global %struct.madera_fll_gains* null, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"N=%d THETA=%d LAMBDA=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"FRATIO=0x%x(%d) REFCLK_DIV=0x%x(%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"GAIN=0x%x(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.madera_fll*, %struct.madera_fll_cfg*, i32, i32)* @madera_calc_fll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_calc_fll(%struct.madera_fll* %0, %struct.madera_fll_cfg* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.madera_fll*, align 8
  %7 = alloca %struct.madera_fll_cfg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.madera_fll_gains*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.madera_fll* %0, %struct.madera_fll** %6, align 8
  store %struct.madera_fll_cfg* %1, %struct.madera_fll_cfg** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %18 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %21 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @MADERA_FLL_VCO_MULT, align 4
  %24 = mul nsw i32 %22, %23
  %25 = call i32 (%struct.madera_fll*, i8*, i32, ...) @madera_fll_dbg(%struct.madera_fll* %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19, i32 %24)
  %26 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %27 = load %struct.madera_fll_cfg*, %struct.madera_fll_cfg** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @madera_calc_fratio(%struct.madera_fll* %26, %struct.madera_fll_cfg* %27, i32 %28, i32 %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* %13, align 4
  store i32 %34, i32* %5, align 4
  br label %202

35:                                               ; preds = %4
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.madera_fll_cfg*, %struct.madera_fll_cfg** %7, align 8
  %38 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 1, %39
  %41 = udiv i32 %36, %40
  store i32 %41, i32* %8, align 4
  %42 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %43 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %8, align 4
  %47 = mul i32 %45, %46
  %48 = udiv i32 %44, %47
  %49 = load %struct.madera_fll_cfg*, %struct.madera_fll_cfg** %7, align 8
  %50 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %52 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %8, align 4
  %56 = mul i32 %54, %55
  %57 = urem i32 %53, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %92

59:                                               ; preds = %35
  %60 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %61 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %8, align 4
  %65 = mul i32 %63, %64
  %66 = call i32 @gcd(i32 %62, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 (%struct.madera_fll*, i8*, i32, ...) @madera_fll_dbg(%struct.madera_fll* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %71 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.madera_fll_cfg*, %struct.madera_fll_cfg** %7, align 8
  %74 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %13, align 4
  %77 = mul nsw i32 %75, %76
  %78 = load i32, i32* %8, align 4
  %79 = mul i32 %77, %78
  %80 = sub i32 %72, %79
  %81 = load i32, i32* %10, align 4
  %82 = udiv i32 %80, %81
  %83 = load %struct.madera_fll_cfg*, %struct.madera_fll_cfg** %7, align 8
  %84 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %8, align 4
  %87 = mul i32 %85, %86
  %88 = load i32, i32* %10, align 4
  %89 = udiv i32 %87, %88
  %90 = load %struct.madera_fll_cfg*, %struct.madera_fll_cfg** %7, align 8
  %91 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  br label %97

92:                                               ; preds = %35
  %93 = load %struct.madera_fll_cfg*, %struct.madera_fll_cfg** %7, align 8
  %94 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %93, i32 0, i32 2
  store i32 0, i32* %94, align 4
  %95 = load %struct.madera_fll_cfg*, %struct.madera_fll_cfg** %7, align 8
  %96 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %95, i32 0, i32 3
  store i32 0, i32* %96, align 4
  br label %97

97:                                               ; preds = %92, %59
  br label %98

98:                                               ; preds = %103, %97
  %99 = load %struct.madera_fll_cfg*, %struct.madera_fll_cfg** %7, align 8
  %100 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = icmp sge i32 %101, 65536
  br i1 %102, label %103, label %112

103:                                              ; preds = %98
  %104 = load %struct.madera_fll_cfg*, %struct.madera_fll_cfg** %7, align 8
  %105 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = ashr i32 %106, 1
  store i32 %107, i32* %105, align 4
  %108 = load %struct.madera_fll_cfg*, %struct.madera_fll_cfg** %7, align 8
  %109 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = ashr i32 %110, 1
  store i32 %111, i32* %109, align 4
  br label %98

112:                                              ; preds = %98
  %113 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %114 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %113, i32 0, i32 1
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  switch i32 %117, label %145 [
    i32 130, label %118
    i32 129, label %141
    i32 128, label %141
  ]

118:                                              ; preds = %112
  %119 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %120 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %119, i32 0, i32 1
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  switch i32 %123, label %128 [
    i32 0, label %124
  ]

124:                                              ; preds = %118
  %125 = load %struct.madera_fll_gains*, %struct.madera_fll_gains** @madera_fll_sync_gains, align 8
  store %struct.madera_fll_gains* %125, %struct.madera_fll_gains** %11, align 8
  %126 = load %struct.madera_fll_gains*, %struct.madera_fll_gains** @madera_fll_sync_gains, align 8
  %127 = call i32 @ARRAY_SIZE(%struct.madera_fll_gains* %126)
  store i32 %127, i32* %12, align 4
  br label %140

128:                                              ; preds = %118
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load %struct.madera_fll_gains*, %struct.madera_fll_gains** @madera_fll_sync_gains, align 8
  store %struct.madera_fll_gains* %132, %struct.madera_fll_gains** %11, align 8
  %133 = load %struct.madera_fll_gains*, %struct.madera_fll_gains** @madera_fll_sync_gains, align 8
  %134 = call i32 @ARRAY_SIZE(%struct.madera_fll_gains* %133)
  store i32 %134, i32* %12, align 4
  br label %139

135:                                              ; preds = %128
  %136 = load %struct.madera_fll_gains*, %struct.madera_fll_gains** @madera_fll_main_gains, align 8
  store %struct.madera_fll_gains* %136, %struct.madera_fll_gains** %11, align 8
  %137 = load %struct.madera_fll_gains*, %struct.madera_fll_gains** @madera_fll_main_gains, align 8
  %138 = call i32 @ARRAY_SIZE(%struct.madera_fll_gains* %137)
  store i32 %138, i32* %12, align 4
  br label %139

139:                                              ; preds = %135, %131
  br label %140

140:                                              ; preds = %139, %124
  br label %157

141:                                              ; preds = %112, %112
  %142 = load %struct.madera_fll_gains*, %struct.madera_fll_gains** @madera_fll_sync_gains, align 8
  store %struct.madera_fll_gains* %142, %struct.madera_fll_gains** %11, align 8
  %143 = load %struct.madera_fll_gains*, %struct.madera_fll_gains** @madera_fll_sync_gains, align 8
  %144 = call i32 @ARRAY_SIZE(%struct.madera_fll_gains* %143)
  store i32 %144, i32* %12, align 4
  br label %157

145:                                              ; preds = %112
  %146 = load i32, i32* %9, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = load %struct.madera_fll_gains*, %struct.madera_fll_gains** @madera_fll_sync_gains, align 8
  store %struct.madera_fll_gains* %149, %struct.madera_fll_gains** %11, align 8
  %150 = load %struct.madera_fll_gains*, %struct.madera_fll_gains** @madera_fll_sync_gains, align 8
  %151 = call i32 @ARRAY_SIZE(%struct.madera_fll_gains* %150)
  store i32 %151, i32* %12, align 4
  br label %156

152:                                              ; preds = %145
  %153 = load %struct.madera_fll_gains*, %struct.madera_fll_gains** @madera_fll_main_gains, align 8
  store %struct.madera_fll_gains* %153, %struct.madera_fll_gains** %11, align 8
  %154 = load %struct.madera_fll_gains*, %struct.madera_fll_gains** @madera_fll_main_gains, align 8
  %155 = call i32 @ARRAY_SIZE(%struct.madera_fll_gains* %154)
  store i32 %155, i32* %12, align 4
  br label %156

156:                                              ; preds = %152, %148
  br label %157

157:                                              ; preds = %156, %141, %140
  %158 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %159 = load %struct.madera_fll_cfg*, %struct.madera_fll_cfg** %7, align 8
  %160 = load i32, i32* %8, align 4
  %161 = load %struct.madera_fll_gains*, %struct.madera_fll_gains** %11, align 8
  %162 = load i32, i32* %12, align 4
  %163 = call i32 @madera_find_fll_gain(%struct.madera_fll* %158, %struct.madera_fll_cfg* %159, i32 %160, %struct.madera_fll_gains* %161, i32 %162)
  store i32 %163, i32* %14, align 4
  %164 = load i32, i32* %14, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %157
  %167 = load i32, i32* %14, align 4
  store i32 %167, i32* %5, align 4
  br label %202

168:                                              ; preds = %157
  %169 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %170 = load %struct.madera_fll_cfg*, %struct.madera_fll_cfg** %7, align 8
  %171 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.madera_fll_cfg*, %struct.madera_fll_cfg** %7, align 8
  %174 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.madera_fll_cfg*, %struct.madera_fll_cfg** %7, align 8
  %177 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = call i32 (%struct.madera_fll*, i8*, i32, ...) @madera_fll_dbg(%struct.madera_fll* %169, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %172, i32 %175, i32 %178)
  %180 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %181 = load %struct.madera_fll_cfg*, %struct.madera_fll_cfg** %7, align 8
  %182 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %13, align 4
  %185 = load %struct.madera_fll_cfg*, %struct.madera_fll_cfg** %7, align 8
  %186 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.madera_fll_cfg*, %struct.madera_fll_cfg** %7, align 8
  %189 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = shl i32 1, %190
  %192 = call i32 (%struct.madera_fll*, i8*, i32, ...) @madera_fll_dbg(%struct.madera_fll* %180, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %183, i32 %184, i32 %187, i32 %191)
  %193 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %194 = load %struct.madera_fll_cfg*, %struct.madera_fll_cfg** %7, align 8
  %195 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.madera_fll_cfg*, %struct.madera_fll_cfg** %7, align 8
  %198 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 4
  %200 = shl i32 1, %199
  %201 = call i32 (%struct.madera_fll*, i8*, i32, ...) @madera_fll_dbg(%struct.madera_fll* %193, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %196, i32 %200)
  store i32 0, i32* %5, align 4
  br label %202

202:                                              ; preds = %168, %166, %33
  %203 = load i32, i32* %5, align 4
  ret i32 %203
}

declare dso_local i32 @madera_fll_dbg(%struct.madera_fll*, i8*, i32, ...) #1

declare dso_local i32 @madera_calc_fratio(%struct.madera_fll*, %struct.madera_fll_cfg*, i32, i32) #1

declare dso_local i32 @gcd(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.madera_fll_gains*) #1

declare dso_local i32 @madera_find_fll_gain(%struct.madera_fll*, %struct.madera_fll_cfg*, i32, %struct.madera_fll_gains*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
