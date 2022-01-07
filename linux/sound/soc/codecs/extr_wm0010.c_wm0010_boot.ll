; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm0010.c_wm0010_boot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm0010.c_wm0010_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32* }
%struct.spi_device = type { i32 }
%struct.wm0010_priv = type { i64, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i32, i32, i32, i32, i32*, i32*, i32, i32 }
%struct.dfw_pllrec = type { i32, i32, i32, i32, i32*, i32*, i32, i32 }

@WM0010_POWER_OFF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"DSP already powered up!\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Max DSP clock frequency is 26MHz\0A\00", align 1
@ECANCELED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"max_spi_freq: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to enable core supplies: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Failed to enable DBVDD: %d\0A\00", align 1
@WM0010_OUT_OF_RESET = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [34 x i8] c"Failed to get interrupt from DSP\0A\00", align 1
@WM0010_BOOTROM = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [42 x i8] c"Failed to get interrupt from DSP loader.\0A\00", align 1
@WM0010_STAGE2 = common dso_local global i64 0, align 8
@DFW_CMD_PLL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"First PLL write failed: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Second PLL write failed: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"PLL packet received\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Not enabling DSP PLL.\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"wm0010.dfw\00", align 1
@WM0010_FIRMWARE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm0010_boot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm0010_boot(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.wm0010_priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.spi_message, align 4
  %9 = alloca %struct.spi_transfer, align 8
  %10 = alloca %struct.dfw_pllrec, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %17 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call %struct.spi_device* @to_spi_device(i32* %18)
  store %struct.spi_device* %19, %struct.spi_device** %4, align 8
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %21 = call %struct.wm0010_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %20)
  store %struct.wm0010_priv* %21, %struct.wm0010_priv** %5, align 8
  %22 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %23 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %22, i32 0, i32 5
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %27 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @WM0010_POWER_OFF, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %1
  %32 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %33 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %32, i32 0, i32 12
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dev_warn(i32 %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %31, %1
  %37 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %38 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %37, i32 0, i32 5
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %42 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %43, 26000000
  br i1 %44, label %45, label %52

45:                                               ; preds = %36
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %47 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 (i32*, i8*, ...) @dev_err(i32* %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @ECANCELED, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %324

52:                                               ; preds = %36
  %53 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %54 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %53, i32 0, i32 4
  %55 = call i32 @mutex_lock(i32* %54)
  %56 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %57 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %56, i32 0, i32 2
  store i32 0, i32* %57, align 4
  %58 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %59 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %62 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %61, i32 0, i32 7
  %63 = load i64, i64* %62, align 8
  %64 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %63)
  %65 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %66 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @ARRAY_SIZE(i32 %67)
  %69 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %70 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @regulator_bulk_enable(i32 %68, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %52
  %76 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %77 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %76, i32 0, i32 0
  %78 = load i32, i32* %7, align 4
  %79 = call i32 (i32*, i8*, ...) @dev_err(i32* %77, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  %80 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %81 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %80, i32 0, i32 4
  %82 = call i32 @mutex_unlock(i32* %81)
  br label %324

83:                                               ; preds = %52
  %84 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %85 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %84, i32 0, i32 11
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @regulator_enable(i32 %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %83
  %91 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %92 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %91, i32 0, i32 0
  %93 = load i32, i32* %7, align 4
  %94 = call i32 (i32*, i8*, ...) @dev_err(i32* %92, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %93)
  br label %312

95:                                               ; preds = %83
  %96 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %97 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %96, i32 0, i32 10
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %100 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %99, i32 0, i32 9
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = call i32 @gpio_set_value_cansleep(i32 %98, i32 %104)
  %106 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %107 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %106, i32 0, i32 5
  %108 = load i64, i64* %6, align 8
  %109 = call i32 @spin_lock_irqsave(i32* %107, i64 %108)
  %110 = load i64, i64* @WM0010_OUT_OF_RESET, align 8
  %111 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %112 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %111, i32 0, i32 0
  store i64 %110, i64* %112, align 8
  %113 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %114 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %113, i32 0, i32 5
  %115 = load i64, i64* %6, align 8
  %116 = call i32 @spin_unlock_irqrestore(i32* %114, i64 %115)
  %117 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %118 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %117, i32 0, i32 8
  %119 = call i32 @msecs_to_jiffies(i32 20)
  %120 = call i32 @wait_for_completion_timeout(i32* %118, i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %95
  %123 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %124 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 (i32*, i8*, ...) @dev_err(i32* %125, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %127

127:                                              ; preds = %122, %95
  %128 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %129 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %128, i32 0, i32 5
  %130 = load i64, i64* %6, align 8
  %131 = call i32 @spin_lock_irqsave(i32* %129, i64 %130)
  %132 = load i64, i64* @WM0010_BOOTROM, align 8
  %133 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %134 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  %135 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %136 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %135, i32 0, i32 5
  %137 = load i64, i64* %6, align 8
  %138 = call i32 @spin_unlock_irqrestore(i32* %136, i64 %137)
  %139 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %140 = call i32 @wm0010_stage2_load(%struct.snd_soc_component* %139)
  store i32 %140, i32* %7, align 4
  %141 = load i32, i32* %7, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %127
  br label %305

144:                                              ; preds = %127
  %145 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %146 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %145, i32 0, i32 8
  %147 = call i32 @msecs_to_jiffies(i32 20)
  %148 = call i32 @wait_for_completion_timeout(i32* %146, i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %155, label %150

150:                                              ; preds = %144
  %151 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %152 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 (i32*, i8*, ...) @dev_err(i32* %153, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  br label %155

155:                                              ; preds = %150, %144
  %156 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %157 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %156, i32 0, i32 5
  %158 = load i64, i64* %6, align 8
  %159 = call i32 @spin_lock_irqsave(i32* %157, i64 %158)
  %160 = load i64, i64* @WM0010_STAGE2, align 8
  %161 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %162 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %161, i32 0, i32 0
  store i64 %160, i64* %162, align 8
  %163 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %164 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %163, i32 0, i32 5
  %165 = load i64, i64* %6, align 8
  %166 = call i32 @spin_unlock_irqrestore(i32* %164, i64 %165)
  %167 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %168 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %167, i32 0, i32 7
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %273

171:                                              ; preds = %155
  %172 = bitcast %struct.dfw_pllrec* %10 to %struct.spi_transfer*
  %173 = call i32 @memset(%struct.spi_transfer* %172, i32 0, i32 40)
  %174 = load i32, i32* @DFW_CMD_PLL, align 4
  %175 = getelementptr inbounds %struct.dfw_pllrec, %struct.dfw_pllrec* %10, i32 0, i32 7
  store i32 %174, i32* %175, align 4
  %176 = getelementptr inbounds %struct.dfw_pllrec, %struct.dfw_pllrec* %10, i32 0, i32 0
  store i32 32, i32* %176, align 8
  %177 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %178 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %177, i32 0, i32 6
  %179 = load i32, i32* %178, align 4
  %180 = getelementptr inbounds %struct.dfw_pllrec, %struct.dfw_pllrec* %10, i32 0, i32 6
  store i32 %179, i32* %180, align 8
  %181 = load i32, i32* @ENOMEM, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %7, align 4
  %183 = getelementptr inbounds %struct.dfw_pllrec, %struct.dfw_pllrec* %10, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = add nsw i32 %184, 8
  store i32 %185, i32* %12, align 4
  %186 = load i32, i32* %12, align 4
  %187 = load i32, i32* @GFP_KERNEL, align 4
  %188 = load i32, i32* @GFP_DMA, align 4
  %189 = or i32 %187, %188
  %190 = call i32* @kzalloc(i32 %186, i32 %189)
  store i32* %190, i32** %14, align 8
  %191 = load i32*, i32** %14, align 8
  %192 = icmp ne i32* %191, null
  br i1 %192, label %194, label %193

193:                                              ; preds = %171
  br label %305

194:                                              ; preds = %171
  %195 = load i32, i32* %12, align 4
  %196 = load i32, i32* @GFP_KERNEL, align 4
  %197 = load i32, i32* @GFP_DMA, align 4
  %198 = or i32 %196, %197
  %199 = call i32* @kzalloc(i32 %195, i32 %198)
  store i32* %199, i32** %13, align 8
  %200 = load i32*, i32** %13, align 8
  %201 = icmp ne i32* %200, null
  br i1 %201, label %203, label %202

202:                                              ; preds = %194
  br label %302

203:                                              ; preds = %194
  %204 = bitcast %struct.dfw_pllrec* %10 to i32*
  %205 = load i32*, i32** %13, align 8
  %206 = load i32, i32* %12, align 4
  %207 = call i32 @byte_swap_64(i32* %204, i32* %205, i32 %206)
  %208 = call i32 @spi_message_init(%struct.spi_message* %8)
  %209 = call i32 @memset(%struct.spi_transfer* %9, i32 0, i32 40)
  %210 = load i32*, i32** %14, align 8
  %211 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 5
  store i32* %210, i32** %211, align 8
  %212 = load i32*, i32** %13, align 8
  %213 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 4
  store i32* %212, i32** %213, align 8
  %214 = load i32, i32* %12, align 4
  %215 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 1
  store i32 %214, i32* %215, align 4
  %216 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 2
  store i32 8, i32* %216, align 8
  %217 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %218 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = sdiv i32 %219, 6
  %221 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 3
  store i32 %220, i32* %221, align 4
  %222 = call i32 @spi_message_add_tail(%struct.spi_transfer* %9, %struct.spi_message* %8)
  %223 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %224 = call i32 @spi_sync(%struct.spi_device* %223, %struct.spi_message* %8)
  store i32 %224, i32* %7, align 4
  %225 = load i32, i32* %7, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %203
  %228 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %229 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %228, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  %231 = load i32, i32* %7, align 4
  %232 = call i32 (i32*, i8*, ...) @dev_err(i32* %230, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %231)
  br label %299

233:                                              ; preds = %203
  %234 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %235 = call i32 @spi_sync(%struct.spi_device* %234, %struct.spi_message* %8)
  store i32 %235, i32* %7, align 4
  %236 = load i32, i32* %7, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %233
  %239 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %240 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %239, i32 0, i32 0
  %241 = load i32*, i32** %240, align 8
  %242 = load i32, i32* %7, align 4
  %243 = call i32 (i32*, i8*, ...) @dev_err(i32* %241, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %242)
  br label %299

244:                                              ; preds = %233
  %245 = load i32*, i32** %14, align 8
  store i32* %245, i32** %11, align 8
  store i32 0, i32* %15, align 4
  br label %246

246:                                              ; preds = %265, %244
  %247 = load i32, i32* %15, align 4
  %248 = load i32, i32* %12, align 4
  %249 = sdiv i32 %248, 4
  %250 = icmp slt i32 %247, %249
  br i1 %250, label %251, label %268

251:                                              ; preds = %246
  %252 = load i32*, i32** %11, align 8
  %253 = load i32, i32* %252, align 4
  %254 = icmp eq i32 %253, 234941711
  br i1 %254, label %255, label %262

255:                                              ; preds = %251
  %256 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %257 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %256, i32 0, i32 0
  %258 = load i32*, i32** %257, align 8
  %259 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %258, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %260 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %261 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %260, i32 0, i32 2
  store i32 1, i32* %261, align 4
  br label %268

262:                                              ; preds = %251
  %263 = load i32*, i32** %11, align 8
  %264 = getelementptr inbounds i32, i32* %263, i32 1
  store i32* %264, i32** %11, align 8
  br label %265

265:                                              ; preds = %262
  %266 = load i32, i32* %15, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %15, align 4
  br label %246

268:                                              ; preds = %255, %246
  %269 = load i32*, i32** %13, align 8
  %270 = call i32 @kfree(i32* %269)
  %271 = load i32*, i32** %14, align 8
  %272 = call i32 @kfree(i32* %271)
  br label %278

273:                                              ; preds = %155
  %274 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %275 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %274, i32 0, i32 0
  %276 = load i32*, i32** %275, align 8
  %277 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %276, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  br label %278

278:                                              ; preds = %273, %268
  %279 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %280 = call i32 @wm0010_firmware_load(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), %struct.snd_soc_component* %279)
  store i32 %280, i32* %7, align 4
  %281 = load i32, i32* %7, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %278
  br label %305

284:                                              ; preds = %278
  %285 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %286 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %285, i32 0, i32 5
  %287 = load i64, i64* %6, align 8
  %288 = call i32 @spin_lock_irqsave(i32* %286, i64 %287)
  %289 = load i64, i64* @WM0010_FIRMWARE, align 8
  %290 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %291 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %290, i32 0, i32 0
  store i64 %289, i64* %291, align 8
  %292 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %293 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %292, i32 0, i32 5
  %294 = load i64, i64* %6, align 8
  %295 = call i32 @spin_unlock_irqrestore(i32* %293, i64 %294)
  %296 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %297 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %296, i32 0, i32 4
  %298 = call i32 @mutex_unlock(i32* %297)
  store i32 0, i32* %2, align 4
  br label %326

299:                                              ; preds = %238, %227
  %300 = load i32*, i32** %13, align 8
  %301 = call i32 @kfree(i32* %300)
  br label %302

302:                                              ; preds = %299, %202
  %303 = load i32*, i32** %14, align 8
  %304 = call i32 @kfree(i32* %303)
  br label %305

305:                                              ; preds = %302, %283, %193, %143
  %306 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %307 = call i32 @wm0010_halt(%struct.snd_soc_component* %306)
  %308 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %309 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %308, i32 0, i32 4
  %310 = call i32 @mutex_unlock(i32* %309)
  %311 = load i32, i32* %7, align 4
  store i32 %311, i32* %2, align 4
  br label %326

312:                                              ; preds = %90
  %313 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %314 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %313, i32 0, i32 4
  %315 = call i32 @mutex_unlock(i32* %314)
  %316 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %317 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %316, i32 0, i32 3
  %318 = load i32, i32* %317, align 8
  %319 = call i32 @ARRAY_SIZE(i32 %318)
  %320 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %321 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %320, i32 0, i32 3
  %322 = load i32, i32* %321, align 8
  %323 = call i32 @regulator_bulk_disable(i32 %319, i32 %322)
  br label %324

324:                                              ; preds = %312, %75, %45
  %325 = load i32, i32* %7, align 4
  store i32 %325, i32* %2, align 4
  br label %326

326:                                              ; preds = %324, %305, %284
  %327 = load i32, i32* %2, align 4
  ret i32 %327
}

declare dso_local %struct.spi_device* @to_spi_device(i32*) #1

declare dso_local %struct.wm0010_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @gpio_set_value_cansleep(i32, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wm0010_stage2_load(%struct.snd_soc_component*) #1

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @byte_swap_64(i32*, i32*, i32) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(%struct.spi_device*, %struct.spi_message*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @wm0010_firmware_load(i8*, %struct.snd_soc_component*) #1

declare dso_local i32 @wm0010_halt(%struct.snd_soc_component*) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
