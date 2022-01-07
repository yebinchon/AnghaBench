; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt1305.c_rt1305_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt1305.c_rt1305_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt1305_priv = type { i32 }

@RT1305_ADC_SET_3 = common dso_local global i64 0, align 8
@RT1305_PR_BASE = common dso_local global i64 0, align 8
@RT1305_CLOCK_DETECT = common dso_local global i64 0, align 8
@RT1305_CLK_1 = common dso_local global i64 0, align 8
@RT1305_POWER_CTRL_3 = common dso_local global i64 0, align 8
@RT1305_EFUSE_1 = common dso_local global i64 0, align 8
@RT1305_POWER_CTRL_1 = common dso_local global i64 0, align 8
@RT1305_CAL_EFUSE_CLOCK = common dso_local global i64 0, align 8
@RT1305_POWER_STATUS = common dso_local global i64 0, align 8
@RT1305_POWER_CTRL_2 = common dso_local global i64 0, align 8
@RT1305_DAC_OFFSET_5 = common dso_local global i64 0, align 8
@RT1305_DAC_OFFSET_6 = common dso_local global i64 0, align 8
@RT1305_DAC_OFFSET_7 = common dso_local global i64 0, align 8
@RT1305_DAC_OFFSET_8 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"DC offsetl=0x%x, offsetr=0x%x\0A\00", align 1
@RT1305_SILENCE_DETECT = common dso_local global i64 0, align 8
@RT1305_SPK_TEMP_PROTECTION_1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Left_rhl = 0x%x rh=0x%x rl=0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Left channel %d.%dohm\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Left_r0 = 0x%llx\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Right_rhl = 0x%x rh=0x%x rl=0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Right channel %d.%dohm\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Right_r0 = 0x%llx\0A\00", align 1
@R0_UPPER = common dso_local global i32 0, align 4
@R0_LOWER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"R0 calibration failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt1305_priv*)* @rt1305_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt1305_calibrate(%struct.rt1305_priv* %0) #0 {
  %2 = alloca %struct.rt1305_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rt1305_priv* %0, %struct.rt1305_priv** %2, align 8
  %13 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %14 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @regcache_cache_bypass(i32 %15, i32 1)
  %17 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %18 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @rt1305_reset(i32 %19)
  %21 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %22 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* @RT1305_ADC_SET_3, align 8
  %25 = call i32 @regmap_write(i32 %23, i64 %24, i32 537)
  %26 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %27 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* @RT1305_PR_BASE, align 8
  %30 = add nsw i64 %29, 207
  %31 = call i32 @regmap_write(i32 %28, i64 %30, i32 21832)
  %32 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %33 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* @RT1305_PR_BASE, align 8
  %36 = add nsw i64 %35, 193
  %37 = call i32 @regmap_write(i32 %34, i64 %36, i32 800)
  %38 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %39 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* @RT1305_CLOCK_DETECT, align 8
  %42 = call i32 @regmap_write(i32 %40, i64 %41, i32 4096)
  %43 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %44 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* @RT1305_CLK_1, align 8
  %47 = call i32 @regmap_write(i32 %45, i64 %46, i32 1536)
  %48 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %49 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* @RT1305_POWER_CTRL_3, align 8
  %52 = call i32 @regmap_write(i32 %50, i64 %51, i32 65488)
  %53 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %54 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* @RT1305_EFUSE_1, align 8
  %57 = call i32 @regmap_write(i32 %55, i64 %56, i32 128)
  %58 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %59 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* @RT1305_EFUSE_1, align 8
  %62 = call i32 @regmap_write(i32 %60, i64 %61, i32 2176)
  %63 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %64 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* @RT1305_POWER_CTRL_1, align 8
  %67 = call i32 @regmap_write(i32 %65, i64 %66, i32 3582)
  %68 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %69 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* @RT1305_PR_BASE, align 8
  %72 = add nsw i64 %71, 93
  %73 = call i32 @regmap_write(i32 %70, i64 %72, i32 1090)
  %74 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %75 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i64, i64* @RT1305_CAL_EFUSE_CLOCK, align 8
  %78 = call i32 @regmap_write(i32 %76, i64 %77, i32 45056)
  %79 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %80 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i64, i64* @RT1305_PR_BASE, align 8
  %83 = add nsw i64 %82, 195
  %84 = call i32 @regmap_write(i32 %81, i64 %83, i32 54432)
  %85 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %86 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i64, i64* @RT1305_PR_BASE, align 8
  %89 = add nsw i64 %88, 204
  %90 = call i32 @regmap_write(i32 %87, i64 %89, i32 204)
  %91 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %92 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i64, i64* @RT1305_PR_BASE, align 8
  %95 = add nsw i64 %94, 193
  %96 = call i32 @regmap_write(i32 %93, i64 %95, i32 800)
  %97 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %98 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i64, i64* @RT1305_POWER_STATUS, align 8
  %101 = call i32 @regmap_write(i32 %99, i64 %100, i32 0)
  %102 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %103 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i64, i64* @RT1305_POWER_CTRL_2, align 8
  %106 = call i32 @regmap_write(i32 %104, i64 %105, i32 65535)
  %107 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %108 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i64, i64* @RT1305_POWER_CTRL_3, align 8
  %111 = call i32 @regmap_write(i32 %109, i64 %110, i32 64544)
  %112 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %113 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i64, i64* @RT1305_PR_BASE, align 8
  %116 = add nsw i64 %115, 6
  %117 = call i32 @regmap_write(i32 %114, i64 %116, i32 192)
  %118 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %119 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i64, i64* @RT1305_POWER_CTRL_3, align 8
  %122 = call i32 @regmap_write(i32 %120, i64 %121, i32 64672)
  %123 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %124 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i64, i64* @RT1305_POWER_CTRL_3, align 8
  %127 = call i32 @regmap_write(i32 %125, i64 %126, i32 64736)
  %128 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %129 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i64, i64* @RT1305_POWER_CTRL_3, align 8
  %132 = call i32 @regmap_write(i32 %130, i64 %131, i32 64752)
  %133 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %134 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i64, i64* @RT1305_EFUSE_1, align 8
  %137 = call i32 @regmap_write(i32 %135, i64 %136, i32 128)
  %138 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %139 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i64, i64* @RT1305_EFUSE_1, align 8
  %142 = call i32 @regmap_write(i32 %140, i64 %141, i32 2176)
  %143 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %144 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i64, i64* @RT1305_EFUSE_1, align 8
  %147 = call i32 @regmap_write(i32 %145, i64 %146, i32 2176)
  %148 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %149 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i64, i64* @RT1305_POWER_CTRL_3, align 8
  %152 = call i32 @regmap_write(i32 %150, i64 %151, i32 64736)
  %153 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %154 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i64, i64* @RT1305_POWER_CTRL_3, align 8
  %157 = call i32 @regmap_write(i32 %155, i64 %156, i32 64672)
  %158 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %159 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i64, i64* @RT1305_POWER_CTRL_3, align 8
  %162 = call i32 @regmap_write(i32 %160, i64 %161, i32 64544)
  %163 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %164 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i64, i64* @RT1305_PR_BASE, align 8
  %167 = add nsw i64 %166, 6
  %168 = call i32 @regmap_write(i32 %165, i64 %167, i32 0)
  %169 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %170 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i64, i64* @RT1305_EFUSE_1, align 8
  %173 = call i32 @regmap_write(i32 %171, i64 %172, i32 0)
  %174 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %175 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i64, i64* @RT1305_DAC_OFFSET_5, align 8
  %178 = call i32 @regmap_read(i32 %176, i64 %177, i32* %3)
  %179 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %180 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i64, i64* @RT1305_DAC_OFFSET_6, align 8
  %183 = call i32 @regmap_read(i32 %181, i64 %182, i32* %4)
  %184 = load i32, i32* %3, align 4
  %185 = shl i32 %184, 16
  %186 = load i32, i32* %4, align 4
  %187 = or i32 %185, %186
  store i32 %187, i32* %5, align 4
  %188 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %189 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i64, i64* @RT1305_DAC_OFFSET_7, align 8
  %192 = call i32 @regmap_read(i32 %190, i64 %191, i32* %3)
  %193 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %194 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i64, i64* @RT1305_DAC_OFFSET_8, align 8
  %197 = call i32 @regmap_read(i32 %195, i64 %196, i32* %4)
  %198 = load i32, i32* %3, align 4
  %199 = shl i32 %198, 16
  %200 = load i32, i32* %4, align 4
  %201 = or i32 %199, %200
  store i32 %201, i32* %6, align 4
  %202 = load i32, i32* %5, align 4
  %203 = load i32, i32* %6, align 4
  %204 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %202, i32 %203)
  %205 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %206 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i64, i64* @RT1305_PR_BASE, align 8
  %209 = add nsw i64 %208, 93
  %210 = call i32 @regmap_write(i32 %207, i64 %209, i32 38210)
  %211 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %212 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load i64, i64* @RT1305_POWER_CTRL_3, align 8
  %215 = call i32 @regmap_write(i32 %213, i64 %214, i32 64752)
  %216 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %217 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i64, i64* @RT1305_POWER_CTRL_2, align 8
  %220 = call i32 @regmap_write(i32 %218, i64 %219, i32 65535)
  %221 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %222 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load i64, i64* @RT1305_POWER_CTRL_1, align 8
  %225 = call i32 @regmap_write(i32 %223, i64 %224, i32 7678)
  %226 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %227 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load i64, i64* @RT1305_SILENCE_DETECT, align 8
  %230 = call i32 @regmap_write(i32 %228, i64 %229, i32 3603)
  %231 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %232 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load i64, i64* @RT1305_CLK_1, align 8
  %235 = call i32 @regmap_write(i32 %233, i64 %234, i32 1616)
  %236 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %237 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load i64, i64* @RT1305_PR_BASE, align 8
  %240 = add nsw i64 %239, 80
  %241 = call i32 @regmap_write(i32 %238, i64 %240, i32 100)
  %242 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %243 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load i64, i64* @RT1305_PR_BASE, align 8
  %246 = add nsw i64 %245, 81
  %247 = call i32 @regmap_write(i32 %244, i64 %246, i32 1904)
  %248 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %249 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load i64, i64* @RT1305_PR_BASE, align 8
  %252 = add nsw i64 %251, 82
  %253 = call i32 @regmap_write(i32 %250, i64 %252, i32 49932)
  %254 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %255 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load i64, i64* @RT1305_SPK_TEMP_PROTECTION_1, align 8
  %258 = call i32 @regmap_write(i32 %256, i64 %257, i32 33280)
  %259 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %260 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = load i64, i64* @RT1305_PR_BASE, align 8
  %263 = add nsw i64 %262, 212
  %264 = call i32 @regmap_write(i32 %261, i64 %263, i32 64256)
  %265 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %266 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = load i64, i64* @RT1305_PR_BASE, align 8
  %269 = add nsw i64 %268, 212
  %270 = call i32 @regmap_write(i32 %267, i64 %269, i32 65408)
  %271 = call i32 @msleep(i32 2000)
  %272 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %273 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = load i64, i64* @RT1305_PR_BASE, align 8
  %276 = add nsw i64 %275, 85
  %277 = call i32 @regmap_read(i32 %274, i64 %276, i32* %7)
  %278 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %279 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = load i64, i64* @RT1305_PR_BASE, align 8
  %282 = add nsw i64 %281, 86
  %283 = call i32 @regmap_read(i32 %280, i64 %282, i32* %8)
  %284 = load i32, i32* %7, align 4
  %285 = shl i32 %284, 16
  %286 = load i32, i32* %8, align 4
  %287 = or i32 %285, %286
  store i32 %287, i32* %9, align 4
  %288 = load i32, i32* %9, align 4
  %289 = mul i32 %288, 10
  %290 = udiv i32 %289, 33554432
  store i32 %290, i32* %10, align 4
  %291 = load i32, i32* %9, align 4
  %292 = load i32, i32* %7, align 4
  %293 = load i32, i32* %8, align 4
  %294 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %291, i32 %292, i32 %293)
  %295 = load i32, i32* %10, align 4
  %296 = udiv i32 %295, 10
  %297 = load i32, i32* %10, align 4
  %298 = urem i32 %297, 10
  %299 = call i32 @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %296, i32 %298)
  store i32 0, i32* %11, align 4
  %300 = load i32, i32* %9, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %306

302:                                              ; preds = %1
  %303 = load i32, i32* %11, align 4
  %304 = load i32, i32* %9, align 4
  %305 = call i32 @do_div(i32 %303, i32 %304)
  br label %306

306:                                              ; preds = %302, %1
  %307 = load i32, i32* %11, align 4
  %308 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %307)
  %309 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %310 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = load i64, i64* @RT1305_SPK_TEMP_PROTECTION_1, align 8
  %313 = call i32 @regmap_write(i32 %311, i64 %312, i32 37376)
  %314 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %315 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = load i64, i64* @RT1305_PR_BASE, align 8
  %318 = add nsw i64 %317, 212
  %319 = call i32 @regmap_write(i32 %316, i64 %318, i32 64256)
  %320 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %321 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = load i64, i64* @RT1305_PR_BASE, align 8
  %324 = add nsw i64 %323, 212
  %325 = call i32 @regmap_write(i32 %322, i64 %324, i32 65408)
  %326 = call i32 @msleep(i32 2000)
  %327 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %328 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = load i64, i64* @RT1305_PR_BASE, align 8
  %331 = add nsw i64 %330, 85
  %332 = call i32 @regmap_read(i32 %329, i64 %331, i32* %7)
  %333 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %334 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 4
  %336 = load i64, i64* @RT1305_PR_BASE, align 8
  %337 = add nsw i64 %336, 86
  %338 = call i32 @regmap_read(i32 %335, i64 %337, i32* %8)
  %339 = load i32, i32* %7, align 4
  %340 = shl i32 %339, 16
  %341 = load i32, i32* %8, align 4
  %342 = or i32 %340, %341
  store i32 %342, i32* %9, align 4
  %343 = load i32, i32* %9, align 4
  %344 = mul i32 %343, 10
  %345 = udiv i32 %344, 33554432
  store i32 %345, i32* %10, align 4
  %346 = load i32, i32* %9, align 4
  %347 = load i32, i32* %7, align 4
  %348 = load i32, i32* %8, align 4
  %349 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %346, i32 %347, i32 %348)
  %350 = load i32, i32* %10, align 4
  %351 = udiv i32 %350, 10
  %352 = load i32, i32* %10, align 4
  %353 = urem i32 %352, 10
  %354 = call i32 @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %351, i32 %353)
  store i32 0, i32* %12, align 4
  %355 = load i32, i32* %9, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %361

357:                                              ; preds = %306
  %358 = load i32, i32* %12, align 4
  %359 = load i32, i32* %9, align 4
  %360 = call i32 @do_div(i32 %358, i32 %359)
  br label %361

361:                                              ; preds = %357, %306
  %362 = load i32, i32* %12, align 4
  %363 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %362)
  %364 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %365 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  %367 = load i64, i64* @RT1305_SPK_TEMP_PROTECTION_1, align 8
  %368 = call i32 @regmap_write(i32 %366, i64 %367, i32 49900)
  %369 = load i32, i32* %11, align 4
  %370 = load i32, i32* @R0_UPPER, align 4
  %371 = icmp sgt i32 %369, %370
  br i1 %371, label %372, label %420

372:                                              ; preds = %361
  %373 = load i32, i32* %11, align 4
  %374 = load i32, i32* @R0_LOWER, align 4
  %375 = icmp slt i32 %373, %374
  br i1 %375, label %376, label %420

376:                                              ; preds = %372
  %377 = load i32, i32* %12, align 4
  %378 = load i32, i32* @R0_UPPER, align 4
  %379 = icmp sgt i32 %377, %378
  br i1 %379, label %380, label %420

380:                                              ; preds = %376
  %381 = load i32, i32* %12, align 4
  %382 = load i32, i32* @R0_LOWER, align 4
  %383 = icmp slt i32 %381, %382
  br i1 %383, label %384, label %420

384:                                              ; preds = %380
  %385 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %386 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 4
  %388 = load i64, i64* @RT1305_PR_BASE, align 8
  %389 = add nsw i64 %388, 78
  %390 = load i32, i32* %11, align 4
  %391 = ashr i32 %390, 16
  %392 = and i32 %391, 65535
  %393 = call i32 @regmap_write(i32 %387, i64 %389, i32 %392)
  %394 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %395 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 4
  %397 = load i64, i64* @RT1305_PR_BASE, align 8
  %398 = add nsw i64 %397, 79
  %399 = load i32, i32* %11, align 4
  %400 = and i32 %399, 65535
  %401 = call i32 @regmap_write(i32 %396, i64 %398, i32 %400)
  %402 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %403 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 4
  %405 = load i64, i64* @RT1305_PR_BASE, align 8
  %406 = add nsw i64 %405, 254
  %407 = load i32, i32* %12, align 4
  %408 = ashr i32 %407, 16
  %409 = and i32 %408, 65535
  %410 = or i32 %409, 63488
  %411 = call i32 @regmap_write(i32 %404, i64 %406, i32 %410)
  %412 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %413 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 4
  %415 = load i64, i64* @RT1305_PR_BASE, align 8
  %416 = add nsw i64 %415, 253
  %417 = load i32, i32* %12, align 4
  %418 = and i32 %417, 65535
  %419 = call i32 @regmap_write(i32 %414, i64 %416, i32 %418)
  br label %422

420:                                              ; preds = %380, %376, %372, %361
  %421 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %422

422:                                              ; preds = %420, %384
  %423 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %424 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 4
  %426 = load i64, i64* @RT1305_POWER_CTRL_1, align 8
  %427 = call i32 @regmap_write(i32 %425, i64 %426, i32 3582)
  %428 = call i32 @usleep_range(i32 200000, i32 400000)
  %429 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %430 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 4
  %432 = load i64, i64* @RT1305_PR_BASE, align 8
  %433 = add nsw i64 %432, 93
  %434 = call i32 @regmap_write(i32 %431, i64 %433, i32 1090)
  %435 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %436 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 4
  %438 = load i64, i64* @RT1305_CLOCK_DETECT, align 8
  %439 = call i32 @regmap_write(i32 %437, i64 %438, i32 12288)
  %440 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %441 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 4
  %443 = load i64, i64* @RT1305_CLK_1, align 8
  %444 = call i32 @regmap_write(i32 %442, i64 %443, i32 1024)
  %445 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %446 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 4
  %448 = load i64, i64* @RT1305_POWER_CTRL_1, align 8
  %449 = call i32 @regmap_write(i32 %447, i64 %448, i32 0)
  %450 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %451 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 4
  %453 = load i64, i64* @RT1305_CAL_EFUSE_CLOCK, align 8
  %454 = call i32 @regmap_write(i32 %452, i64 %453, i32 32768)
  %455 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %456 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 4
  %458 = load i64, i64* @RT1305_POWER_CTRL_2, align 8
  %459 = call i32 @regmap_write(i32 %457, i64 %458, i32 4128)
  %460 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %461 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 4
  %463 = load i64, i64* @RT1305_POWER_CTRL_3, align 8
  %464 = call i32 @regmap_write(i32 %462, i64 %463, i32 0)
  %465 = load %struct.rt1305_priv*, %struct.rt1305_priv** %2, align 8
  %466 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %465, i32 0, i32 0
  %467 = load i32, i32* %466, align 4
  %468 = call i32 @regcache_cache_bypass(i32 %467, i32 0)
  ret void
}

declare dso_local i32 @regcache_cache_bypass(i32, i32) #1

declare dso_local i32 @rt1305_reset(i32) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
