; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_mchp-i2s-mcc.c_mchp_i2s_mcc_config_divs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_mchp-i2s-mcc.c_mchp_i2s_mcc_config_divs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mchp_i2s_mcc_dev = type { i32, %struct.clk*, %struct.clk*, i32 }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"gclk error for rate %lu: %d\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"found perfect rate on gclk: %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"pclk error for rate %lu: %d\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"found perfect rate on pclk: %lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"unable to change rate to clocks\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"source CLK is %s with rate %lu, diff %lu\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"gclk\00", align 1
@MCHP_I2SMCC_MRA_SRCCLK_GCLK = common dso_local global i32 0, align 4
@MCHP_I2SMCC_MRA_SRCCLK_PCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mchp_i2s_mcc_dev*, i32, i32*, i64*)* @mchp_i2s_mcc_config_divs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mchp_i2s_mcc_config_divs(%struct.mchp_i2s_mcc_dev* %0, i32 %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mchp_i2s_mcc_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.clk*, align 8
  %15 = alloca i32, align 4
  store %struct.mchp_i2s_mcc_dev* %0, %struct.mchp_i2s_mcc_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 -1, i64* %12, align 8
  store %struct.clk* null, %struct.clk** %14, align 8
  %16 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %6, align 8
  %17 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %13, align 4
  br label %26

22:                                               ; preds = %4
  %23 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %6, align 8
  %24 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %13, align 4
  br label %26

26:                                               ; preds = %22, %20
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @lcm(i32 %27, i32 %28)
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load i32, i32* %13, align 4
  %32 = zext i32 %31 to i64
  %33 = udiv i64 %30, %32
  %34 = urem i64 %33, 2
  %35 = icmp eq i64 %34, 1
  br i1 %35, label %36, label %42

36:                                               ; preds = %26
  %37 = load i64, i64* %11, align 8
  %38 = load i32, i32* %13, align 4
  %39 = zext i32 %38 to i64
  %40 = udiv i64 %37, %39
  %41 = icmp ugt i64 %40, 2
  br i1 %41, label %55, label %42

42:                                               ; preds = %36, %26
  %43 = load i64, i64* %11, align 8
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = udiv i64 %43, %45
  %47 = urem i64 %46, 2
  %48 = icmp eq i64 %47, 1
  br i1 %48, label %49, label %58

49:                                               ; preds = %42
  %50 = load i64, i64* %11, align 8
  %51 = load i32, i32* %7, align 4
  %52 = zext i32 %51 to i64
  %53 = udiv i64 %50, %52
  %54 = icmp ugt i64 %53, 2
  br i1 %54, label %55, label %58

55:                                               ; preds = %49, %36
  %56 = load i64, i64* %11, align 8
  %57 = mul i64 %56, 2
  store i64 %57, i64* %11, align 8
  br label %58

58:                                               ; preds = %55, %49, %42
  %59 = load i64, i64* %11, align 8
  store i64 %59, i64* %10, align 8
  br label %60

60:                                               ; preds = %143, %58
  %61 = load i64, i64* %10, align 8
  %62 = load i32, i32* %13, align 4
  %63 = zext i32 %62 to i64
  %64 = icmp eq i64 %61, %63
  br i1 %64, label %73, label %65

65:                                               ; preds = %60
  %66 = load i64, i64* %10, align 8
  %67 = load i32, i32* %13, align 4
  %68 = mul i32 %67, 2
  %69 = zext i32 %68 to i64
  %70 = udiv i64 %66, %69
  %71 = call i64 @GENMASK(i32 5, i32 0)
  %72 = icmp ule i64 %70, %71
  br i1 %72, label %73, label %88

73:                                               ; preds = %65, %60
  %74 = load i64, i64* %10, align 8
  %75 = load i32, i32* %7, align 4
  %76 = zext i32 %75 to i64
  %77 = icmp eq i64 %74, %76
  br i1 %77, label %86, label %78

78:                                               ; preds = %73
  %79 = load i64, i64* %10, align 8
  %80 = load i32, i32* %7, align 4
  %81 = mul i32 %80, 2
  %82 = zext i32 %81 to i64
  %83 = udiv i64 %79, %82
  %84 = call i64 @GENMASK(i32 5, i32 0)
  %85 = icmp ule i64 %83, %84
  br label %86

86:                                               ; preds = %78, %73
  %87 = phi i1 [ true, %73 ], [ %85, %78 ]
  br label %88

88:                                               ; preds = %86, %65
  %89 = phi i1 [ false, %65 ], [ %87, %86 ]
  br i1 %89, label %90, label %147

90:                                               ; preds = %88
  %91 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %6, align 8
  %92 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %91, i32 0, i32 1
  %93 = load %struct.clk*, %struct.clk** %92, align 8
  %94 = load i64, i64* %10, align 8
  %95 = load i64*, i64** %9, align 8
  %96 = call i32 @mchp_i2s_mcc_clk_get_rate_diff(%struct.clk* %93, i64 %94, %struct.clk** %14, i64* %95, i64* %12)
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %90
  %100 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %6, align 8
  %101 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load i64, i64* %10, align 8
  %104 = load i32, i32* %15, align 4
  %105 = call i32 (i32, i8*, ...) @dev_err(i32 %102, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %103, i32 %104)
  br label %116

106:                                              ; preds = %90
  %107 = load i64, i64* %12, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %106
  %110 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %6, align 8
  %111 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load i64, i64* %10, align 8
  %114 = call i32 (i32, i8*, ...) @dev_dbg(i32 %112, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %113)
  br label %147

115:                                              ; preds = %106
  br label %116

116:                                              ; preds = %115, %99
  %117 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %6, align 8
  %118 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %117, i32 0, i32 2
  %119 = load %struct.clk*, %struct.clk** %118, align 8
  %120 = load i64, i64* %10, align 8
  %121 = load i64*, i64** %9, align 8
  %122 = call i32 @mchp_i2s_mcc_clk_get_rate_diff(%struct.clk* %119, i64 %120, %struct.clk** %14, i64* %121, i64* %12)
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* %15, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %116
  %126 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %6, align 8
  %127 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load i64, i64* %10, align 8
  %130 = load i32, i32* %15, align 4
  %131 = call i32 (i32, i8*, ...) @dev_err(i32 %128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %129, i32 %130)
  br label %142

132:                                              ; preds = %116
  %133 = load i64, i64* %12, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %132
  %136 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %6, align 8
  %137 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = load i64, i64* %10, align 8
  %140 = call i32 (i32, i8*, ...) @dev_dbg(i32 %138, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %139)
  br label %147

141:                                              ; preds = %132
  br label %142

142:                                              ; preds = %141, %125
  br label %143

143:                                              ; preds = %142
  %144 = load i64, i64* %11, align 8
  %145 = load i64, i64* %10, align 8
  %146 = add i64 %145, %144
  store i64 %146, i64* %10, align 8
  br label %60

147:                                              ; preds = %135, %109, %88
  %148 = load %struct.clk*, %struct.clk** %14, align 8
  %149 = icmp ne %struct.clk* %148, null
  br i1 %149, label %157, label %150

150:                                              ; preds = %147
  %151 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %6, align 8
  %152 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = call i32 (i32, i8*, ...) @dev_err(i32 %153, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %155 = load i32, i32* @EINVAL, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %5, align 4
  br label %214

157:                                              ; preds = %147
  %158 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %6, align 8
  %159 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.clk*, %struct.clk** %14, align 8
  %162 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %6, align 8
  %163 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %162, i32 0, i32 2
  %164 = load %struct.clk*, %struct.clk** %163, align 8
  %165 = icmp eq %struct.clk* %161, %164
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %168 = load i64*, i64** %9, align 8
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* %12, align 8
  %171 = call i32 (i32, i8*, ...) @dev_dbg(i32 %160, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* %167, i64 %169, i64 %170)
  %172 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %6, align 8
  %173 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %187

176:                                              ; preds = %157
  %177 = load i64*, i64** %9, align 8
  %178 = load i64, i64* %177, align 8
  %179 = load i32, i32* %13, align 4
  %180 = mul i32 2, %179
  %181 = zext i32 %180 to i64
  %182 = udiv i64 %178, %181
  %183 = call i32 @MCHP_I2SMCC_MRA_IMCKDIV(i64 %182)
  %184 = load i32*, i32** %8, align 8
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %183
  store i32 %186, i32* %184, align 4
  br label %187

187:                                              ; preds = %176, %157
  %188 = load i64*, i64** %9, align 8
  %189 = load i64, i64* %188, align 8
  %190 = load i32, i32* %7, align 4
  %191 = mul i32 2, %190
  %192 = zext i32 %191 to i64
  %193 = udiv i64 %189, %192
  %194 = call i32 @MCHP_I2SMCC_MRA_ISCKDIV(i64 %193)
  %195 = load i32*, i32** %8, align 8
  %196 = load i32, i32* %195, align 4
  %197 = or i32 %196, %194
  store i32 %197, i32* %195, align 4
  %198 = load %struct.clk*, %struct.clk** %14, align 8
  %199 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %6, align 8
  %200 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %199, i32 0, i32 1
  %201 = load %struct.clk*, %struct.clk** %200, align 8
  %202 = icmp eq %struct.clk* %198, %201
  br i1 %202, label %203, label %208

203:                                              ; preds = %187
  %204 = load i32, i32* @MCHP_I2SMCC_MRA_SRCCLK_GCLK, align 4
  %205 = load i32*, i32** %8, align 8
  %206 = load i32, i32* %205, align 4
  %207 = or i32 %206, %204
  store i32 %207, i32* %205, align 4
  br label %213

208:                                              ; preds = %187
  %209 = load i32, i32* @MCHP_I2SMCC_MRA_SRCCLK_PCLK, align 4
  %210 = load i32*, i32** %8, align 8
  %211 = load i32, i32* %210, align 4
  %212 = or i32 %211, %209
  store i32 %212, i32* %210, align 4
  br label %213

213:                                              ; preds = %208, %203
  store i32 0, i32* %5, align 4
  br label %214

214:                                              ; preds = %213, %150
  %215 = load i32, i32* %5, align 4
  ret i32 %215
}

declare dso_local i64 @lcm(i32, i32) #1

declare dso_local i64 @GENMASK(i32, i32) #1

declare dso_local i32 @mchp_i2s_mcc_clk_get_rate_diff(%struct.clk*, i64, %struct.clk**, i64*, i64*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @MCHP_I2SMCC_MRA_IMCKDIV(i64) #1

declare dso_local i32 @MCHP_I2SMCC_MRA_ISCKDIV(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
