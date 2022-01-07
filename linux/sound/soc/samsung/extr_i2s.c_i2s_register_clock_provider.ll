; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_i2s.c_i2s_register_clock_provider.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_i2s.c_i2s_register_clock_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_i2s_priv = type { i32, %struct.TYPE_4__, i32*, i32, i64, %struct.samsung_i2s_variant_regs*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.samsung_i2s_variant_regs = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"cdclk\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"rclk_src\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"prescaler\00", align 1
@__const.i2s_register_clock_provider.i2s_clk_desc = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str.3 = private unnamed_addr constant [11 x i8] c"i2s_opclk0\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"i2s_opclk1\00", align 1
@__const.i2s_register_clock_provider.clk_name = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str.5 = private unnamed_addr constant [13 x i8] c"#clock-cells\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"%s_%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@QUIRK_NO_MUXPSR = common dso_local global i32 0, align 4
@I2SPSR = common dso_local global i64 0, align 8
@PSR_PSREN = common dso_local global i32 0, align 4
@CLK_I2S_RCLK_SRC = common dso_local global i64 0, align 8
@CLK_SET_RATE_NO_REPARENT = common dso_local global i32 0, align 4
@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4
@I2SMOD = common dso_local global i64 0, align 8
@CLK_I2S_RCLK_PSR = common dso_local global i64 0, align 8
@CLK_I2S_CDCLK = common dso_local global i64 0, align 8
@CLK_GATE_SET_TO_DISABLE = common dso_local global i32 0, align 4
@of_clk_src_onecell_get = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"failed to add clock provider: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.samsung_i2s_priv*)* @i2s_register_clock_provider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2s_register_clock_provider(%struct.samsung_i2s_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.samsung_i2s_priv*, align 8
  %4 = alloca [3 x i8*], align 16
  %5 = alloca [2 x i8*], align 16
  %6 = alloca [2 x i8*], align 16
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.samsung_i2s_variant_regs*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.clk*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.samsung_i2s_priv* %0, %struct.samsung_i2s_priv** %3, align 8
  %16 = bitcast [3 x i8*]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([3 x i8*]* @__const.i2s_register_clock_provider.i2s_clk_desc to i8*), i64 24, i1 false)
  %17 = bitcast [2 x i8*]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 bitcast ([2 x i8*]* @__const.i2s_register_clock_provider.clk_name to i8*), i64 16, i1 false)
  %18 = bitcast [2 x i8*]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 16, i1 false)
  %19 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %3, align 8
  %20 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %19, i32 0, i32 6
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store %struct.device* %22, %struct.device** %7, align 8
  %23 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %3, align 8
  %24 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %23, i32 0, i32 5
  %25 = load %struct.samsung_i2s_variant_regs*, %struct.samsung_i2s_variant_regs** %24, align 8
  store %struct.samsung_i2s_variant_regs* %25, %struct.samsung_i2s_variant_regs** %8, align 8
  %26 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  %27 = call i32 @ARRAY_SIZE(i8** %26)
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %9, align 8
  %30 = alloca i8*, i64 %28, align 16
  store i64 %28, i64* %10, align 8
  %31 = load %struct.device*, %struct.device** %7, align 8
  %32 = getelementptr inbounds %struct.device, %struct.device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @of_find_property(i32 %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32* null)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %226

37:                                               ; preds = %1
  store i32 0, i32* %13, align 4
  br label %38

38:                                               ; preds = %62, %37
  %39 = load i32, i32* %13, align 4
  %40 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %41 = call i32 @ARRAY_SIZE(i8** %40)
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %38
  %44 = load %struct.device*, %struct.device** %7, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = call %struct.clk* @clk_get(%struct.device* %44, i8* %48)
  store %struct.clk* %49, %struct.clk** %11, align 8
  %50 = load %struct.clk*, %struct.clk** %11, align 8
  %51 = call i64 @IS_ERR(%struct.clk* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %62

54:                                               ; preds = %43
  %55 = load %struct.clk*, %struct.clk** %11, align 8
  %56 = call i8* @__clk_get_name(%struct.clk* %55)
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 %58
  store i8* %56, i8** %59, align 8
  %60 = load %struct.clk*, %struct.clk** %11, align 8
  %61 = call i32 @clk_put(%struct.clk* %60)
  br label %62

62:                                               ; preds = %54, %53
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %13, align 4
  br label %38

65:                                               ; preds = %38
  store i32 0, i32* %13, align 4
  br label %66

66:                                               ; preds = %93, %65
  %67 = load i32, i32* %13, align 4
  %68 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  %69 = call i32 @ARRAY_SIZE(i8** %68)
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %96

71:                                               ; preds = %66
  %72 = load %struct.device*, %struct.device** %7, align 8
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = load %struct.device*, %struct.device** %7, align 8
  %75 = call i32 @dev_name(%struct.device* %74)
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = call i8* @devm_kasprintf(%struct.device* %72, i32 %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %75, i8* %79)
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %30, i64 %82
  store i8* %80, i8** %83, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %30, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %71
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %226

92:                                               ; preds = %71
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %13, align 4
  br label %66

96:                                               ; preds = %66
  %97 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %3, align 8
  %98 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @QUIRK_NO_MUXPSR, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %173, label %103

103:                                              ; preds = %96
  %104 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %3, align 8
  %105 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @I2SPSR, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @readl(i64 %108)
  store i32 %109, i32* %15, align 4
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* @PSR_PSREN, align 4
  %112 = or i32 %110, %111
  %113 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %3, align 8
  %114 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @I2SPSR, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @writel(i32 %112, i64 %117)
  %119 = load %struct.device*, %struct.device** %7, align 8
  %120 = load i64, i64* @CLK_I2S_RCLK_SRC, align 8
  %121 = getelementptr inbounds i8*, i8** %30, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %124 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %125 = call i32 @ARRAY_SIZE(i8** %124)
  %126 = load i32, i32* @CLK_SET_RATE_NO_REPARENT, align 4
  %127 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %128 = or i32 %126, %127
  %129 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %3, align 8
  %130 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @I2SMOD, align 8
  %133 = add nsw i64 %131, %132
  %134 = load %struct.samsung_i2s_variant_regs*, %struct.samsung_i2s_variant_regs** %8, align 8
  %135 = getelementptr inbounds %struct.samsung_i2s_variant_regs, %struct.samsung_i2s_variant_regs* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %3, align 8
  %138 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %137, i32 0, i32 3
  %139 = call i32 @clk_register_mux(%struct.device* %119, i8* %122, i8** %123, i32 %125, i32 %128, i64 %133, i32 %136, i32 1, i32 0, i32* %138)
  %140 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %3, align 8
  %141 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* @CLK_I2S_RCLK_SRC, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  store i32 %139, i32* %144, align 4
  %145 = load %struct.device*, %struct.device** %7, align 8
  %146 = load i64, i64* @CLK_I2S_RCLK_PSR, align 8
  %147 = getelementptr inbounds i8*, i8** %30, i64 %146
  %148 = load i8*, i8** %147, align 8
  %149 = load i64, i64* @CLK_I2S_RCLK_SRC, align 8
  %150 = getelementptr inbounds i8*, i8** %30, i64 %149
  %151 = load i8*, i8** %150, align 8
  %152 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %153 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %3, align 8
  %154 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %153, i32 0, i32 4
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @I2SPSR, align 8
  %157 = add nsw i64 %155, %156
  %158 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %3, align 8
  %159 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %158, i32 0, i32 3
  %160 = call i32 @clk_register_divider(%struct.device* %145, i8* %148, i8* %151, i32 %152, i64 %157, i32 8, i32 6, i32 0, i32* %159)
  %161 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %3, align 8
  %162 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = load i64, i64* @CLK_I2S_RCLK_PSR, align 8
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  store i32 %160, i32* %165, align 4
  %166 = load i64, i64* @CLK_I2S_RCLK_PSR, align 8
  %167 = getelementptr inbounds i8*, i8** %30, i64 %166
  %168 = load i8*, i8** %167, align 8
  %169 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  store i8* %168, i8** %169, align 16
  %170 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %3, align 8
  %171 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  store i32 2, i32* %172, align 8
  br label %173

173:                                              ; preds = %103, %96
  %174 = load %struct.device*, %struct.device** %7, align 8
  %175 = load i64, i64* @CLK_I2S_CDCLK, align 8
  %176 = getelementptr inbounds i8*, i8** %30, i64 %175
  %177 = load i8*, i8** %176, align 8
  %178 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %179 = load i8*, i8** %178, align 16
  %180 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %181 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %3, align 8
  %182 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %181, i32 0, i32 4
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @I2SMOD, align 8
  %185 = add nsw i64 %183, %184
  %186 = load %struct.samsung_i2s_variant_regs*, %struct.samsung_i2s_variant_regs** %8, align 8
  %187 = getelementptr inbounds %struct.samsung_i2s_variant_regs, %struct.samsung_i2s_variant_regs* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @CLK_GATE_SET_TO_DISABLE, align 4
  %190 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %3, align 8
  %191 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %190, i32 0, i32 3
  %192 = call i32 @clk_register_gate(%struct.device* %174, i8* %177, i8* %179, i32 %180, i64 %185, i32 %188, i32 %189, i32* %191)
  %193 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %3, align 8
  %194 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %193, i32 0, i32 2
  %195 = load i32*, i32** %194, align 8
  %196 = load i64, i64* @CLK_I2S_CDCLK, align 8
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  store i32 %192, i32* %197, align 4
  %198 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %3, align 8
  %199 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %200, align 8
  %203 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %3, align 8
  %204 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %203, i32 0, i32 2
  %205 = load i32*, i32** %204, align 8
  %206 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %3, align 8
  %207 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 1
  store i32* %205, i32** %208, align 8
  %209 = load %struct.device*, %struct.device** %7, align 8
  %210 = getelementptr inbounds %struct.device, %struct.device* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @of_clk_src_onecell_get, align 4
  %213 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %3, align 8
  %214 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %213, i32 0, i32 1
  %215 = call i32 @of_clk_add_provider(i32 %211, i32 %212, %struct.TYPE_4__* %214)
  store i32 %215, i32* %12, align 4
  %216 = load i32, i32* %12, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %173
  %219 = load %struct.device*, %struct.device** %7, align 8
  %220 = load i32, i32* %12, align 4
  %221 = call i32 @dev_err(%struct.device* %219, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %220)
  %222 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %3, align 8
  %223 = call i32 @i2s_unregister_clocks(%struct.samsung_i2s_priv* %222)
  br label %224

224:                                              ; preds = %218, %173
  %225 = load i32, i32* %12, align 4
  store i32 %225, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %226

226:                                              ; preds = %224, %89, %36
  %227 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %227)
  %228 = load i32, i32* %2, align 4
  ret i32 %228
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @of_find_property(i32, i8*, i32*) #2

declare dso_local %struct.clk* @clk_get(%struct.device*, i8*) #2

declare dso_local i64 @IS_ERR(%struct.clk*) #2

declare dso_local i8* @__clk_get_name(%struct.clk*) #2

declare dso_local i32 @clk_put(%struct.clk*) #2

declare dso_local i8* @devm_kasprintf(%struct.device*, i32, i8*, i32, i8*) #2

declare dso_local i32 @dev_name(%struct.device*) #2

declare dso_local i32 @readl(i64) #2

declare dso_local i32 @writel(i32, i64) #2

declare dso_local i32 @clk_register_mux(%struct.device*, i8*, i8**, i32, i32, i64, i32, i32, i32, i32*) #2

declare dso_local i32 @clk_register_divider(%struct.device*, i8*, i8*, i32, i64, i32, i32, i32, i32*) #2

declare dso_local i32 @clk_register_gate(%struct.device*, i8*, i8*, i32, i64, i32, i32, i32*) #2

declare dso_local i32 @of_clk_add_provider(i32, i32, %struct.TYPE_4__*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #2

declare dso_local i32 @i2s_unregister_clocks(%struct.samsung_i2s_priv*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
