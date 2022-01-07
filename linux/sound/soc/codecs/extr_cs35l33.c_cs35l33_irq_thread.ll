; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l33.c_cs35l33_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l33.c_cs35l33_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs35l33_private = type { i32, i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@CS35L33_INT_STATUS_2 = common dso_local global i32 0, align 4
@CS35L33_INT_STATUS_1 = common dso_local global i32 0, align 4
@CS35L33_INT_MASK_2 = common dso_local global i32 0, align 4
@CS35L33_INT_MASK_1 = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@CS35L33_AMP_SHORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Amp short error\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Amp short error release\0A\00", align 1
@CS35L33_AMP_CTL = common dso_local global i32 0, align 4
@CS35L33_AMP_SHORT_RLS = common dso_local global i32 0, align 4
@CS35L33_CAL_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"Cal error\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Cal error release\0A\00", align 1
@CS35L33_CAL_ERR_RLS = common dso_local global i32 0, align 4
@CS35L33_OTE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Over temperature error\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Over temperature error release\0A\00", align 1
@CS35L33_OTE_RLS = common dso_local global i32 0, align 4
@CS35L33_OTW = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"Over temperature warning\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Over temperature warning release\0A\00", align 1
@CS35L33_OTW_RLS = common dso_local global i32 0, align 4
@CS35L33_ALIVE_ERR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"ERROR: ADSPCLK Interrupt\0A\00", align 1
@CS35L33_MCLK_ERR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"ERROR: MCLK Interrupt\0A\00", align 1
@CS35L33_VMON_OVFL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [32 x i8] c"ERROR: VMON Overflow Interrupt\0A\00", align 1
@CS35L33_IMON_OVFL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [32 x i8] c"ERROR: IMON Overflow Interrupt\0A\00", align 1
@CS35L33_VPMON_OVFL = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [33 x i8] c"ERROR: VPMON Overflow Interrupt\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cs35l33_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs35l33_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cs35l33_private*, align 8
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.cs35l33_private*
  store %struct.cs35l33_private* %14, %struct.cs35l33_private** %6, align 8
  %15 = load %struct.cs35l33_private*, %struct.cs35l33_private** %6, align 8
  %16 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %15, i32 0, i32 2
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %16, align 8
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %7, align 8
  %18 = load %struct.cs35l33_private*, %struct.cs35l33_private** %6, align 8
  %19 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CS35L33_INT_STATUS_2, align 4
  %22 = call i32 @regmap_read(i32 %20, i32 %21, i32* %9)
  %23 = load %struct.cs35l33_private*, %struct.cs35l33_private** %6, align 8
  %24 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CS35L33_INT_STATUS_1, align 4
  %27 = call i32 @regmap_read(i32 %25, i32 %26, i32* %8)
  %28 = load %struct.cs35l33_private*, %struct.cs35l33_private** %6, align 8
  %29 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CS35L33_INT_MASK_2, align 4
  %32 = call i32 @regmap_read(i32 %30, i32 %31, i32* %12)
  %33 = load %struct.cs35l33_private*, %struct.cs35l33_private** %6, align 8
  %34 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CS35L33_INT_MASK_1, align 4
  %37 = call i32 @regmap_read(i32 %35, i32 %36, i32* %11)
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %11, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %2
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %12, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* @IRQ_NONE, align 4
  store i32 %50, i32* %3, align 4
  br label %266

51:                                               ; preds = %43, %2
  %52 = load %struct.cs35l33_private*, %struct.cs35l33_private** %6, align 8
  %53 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @CS35L33_INT_STATUS_1, align 4
  %56 = call i32 @regmap_read(i32 %54, i32 %55, i32* %10)
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @CS35L33_AMP_SHORT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %95

61:                                               ; preds = %51
  %62 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %63 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dev_crit(i32 %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @CS35L33_AMP_SHORT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %94, label %70

70:                                               ; preds = %61
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %72 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dev_dbg(i32 %73, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %75 = load %struct.cs35l33_private*, %struct.cs35l33_private** %6, align 8
  %76 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @CS35L33_AMP_CTL, align 4
  %79 = load i32, i32* @CS35L33_AMP_SHORT_RLS, align 4
  %80 = call i32 @regmap_update_bits(i32 %77, i32 %78, i32 %79, i32 0)
  %81 = load %struct.cs35l33_private*, %struct.cs35l33_private** %6, align 8
  %82 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @CS35L33_AMP_CTL, align 4
  %85 = load i32, i32* @CS35L33_AMP_SHORT_RLS, align 4
  %86 = load i32, i32* @CS35L33_AMP_SHORT_RLS, align 4
  %87 = call i32 @regmap_update_bits(i32 %83, i32 %84, i32 %85, i32 %86)
  %88 = load %struct.cs35l33_private*, %struct.cs35l33_private** %6, align 8
  %89 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @CS35L33_AMP_CTL, align 4
  %92 = load i32, i32* @CS35L33_AMP_SHORT_RLS, align 4
  %93 = call i32 @regmap_update_bits(i32 %90, i32 %91, i32 %92, i32 0)
  br label %94

94:                                               ; preds = %70, %61
  br label %95

95:                                               ; preds = %94, %51
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @CS35L33_CAL_ERR, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %136

100:                                              ; preds = %95
  %101 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %102 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @dev_err(i32 %103, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %105 = load %struct.cs35l33_private*, %struct.cs35l33_private** %6, align 8
  %106 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %105, i32 0, i32 0
  store i32 0, i32* %106, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @CS35L33_CAL_ERR, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %135, label %111

111:                                              ; preds = %100
  %112 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %113 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @dev_dbg(i32 %114, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %116 = load %struct.cs35l33_private*, %struct.cs35l33_private** %6, align 8
  %117 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @CS35L33_AMP_CTL, align 4
  %120 = load i32, i32* @CS35L33_CAL_ERR_RLS, align 4
  %121 = call i32 @regmap_update_bits(i32 %118, i32 %119, i32 %120, i32 0)
  %122 = load %struct.cs35l33_private*, %struct.cs35l33_private** %6, align 8
  %123 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @CS35L33_AMP_CTL, align 4
  %126 = load i32, i32* @CS35L33_CAL_ERR_RLS, align 4
  %127 = load i32, i32* @CS35L33_CAL_ERR_RLS, align 4
  %128 = call i32 @regmap_update_bits(i32 %124, i32 %125, i32 %126, i32 %127)
  %129 = load %struct.cs35l33_private*, %struct.cs35l33_private** %6, align 8
  %130 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @CS35L33_AMP_CTL, align 4
  %133 = load i32, i32* @CS35L33_CAL_ERR_RLS, align 4
  %134 = call i32 @regmap_update_bits(i32 %131, i32 %132, i32 %133, i32 0)
  br label %135

135:                                              ; preds = %111, %100
  br label %136

136:                                              ; preds = %135, %95
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* @CS35L33_OTE, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %175

141:                                              ; preds = %136
  %142 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %143 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @dev_crit(i32 %144, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* @CS35L33_OTE, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %174, label %150

150:                                              ; preds = %141
  %151 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %152 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @dev_dbg(i32 %153, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %155 = load %struct.cs35l33_private*, %struct.cs35l33_private** %6, align 8
  %156 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @CS35L33_AMP_CTL, align 4
  %159 = load i32, i32* @CS35L33_OTE_RLS, align 4
  %160 = call i32 @regmap_update_bits(i32 %157, i32 %158, i32 %159, i32 0)
  %161 = load %struct.cs35l33_private*, %struct.cs35l33_private** %6, align 8
  %162 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @CS35L33_AMP_CTL, align 4
  %165 = load i32, i32* @CS35L33_OTE_RLS, align 4
  %166 = load i32, i32* @CS35L33_OTE_RLS, align 4
  %167 = call i32 @regmap_update_bits(i32 %163, i32 %164, i32 %165, i32 %166)
  %168 = load %struct.cs35l33_private*, %struct.cs35l33_private** %6, align 8
  %169 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @CS35L33_AMP_CTL, align 4
  %172 = load i32, i32* @CS35L33_OTE_RLS, align 4
  %173 = call i32 @regmap_update_bits(i32 %170, i32 %171, i32 %172, i32 0)
  br label %174

174:                                              ; preds = %150, %141
  br label %175

175:                                              ; preds = %174, %136
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* @CS35L33_OTW, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %214

180:                                              ; preds = %175
  %181 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %182 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @dev_err(i32 %183, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %185 = load i32, i32* %10, align 4
  %186 = load i32, i32* @CS35L33_OTW, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %213, label %189

189:                                              ; preds = %180
  %190 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %191 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @dev_dbg(i32 %192, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %194 = load %struct.cs35l33_private*, %struct.cs35l33_private** %6, align 8
  %195 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @CS35L33_AMP_CTL, align 4
  %198 = load i32, i32* @CS35L33_OTW_RLS, align 4
  %199 = call i32 @regmap_update_bits(i32 %196, i32 %197, i32 %198, i32 0)
  %200 = load %struct.cs35l33_private*, %struct.cs35l33_private** %6, align 8
  %201 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @CS35L33_AMP_CTL, align 4
  %204 = load i32, i32* @CS35L33_OTW_RLS, align 4
  %205 = load i32, i32* @CS35L33_OTW_RLS, align 4
  %206 = call i32 @regmap_update_bits(i32 %202, i32 %203, i32 %204, i32 %205)
  %207 = load %struct.cs35l33_private*, %struct.cs35l33_private** %6, align 8
  %208 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @CS35L33_AMP_CTL, align 4
  %211 = load i32, i32* @CS35L33_OTW_RLS, align 4
  %212 = call i32 @regmap_update_bits(i32 %209, i32 %210, i32 %211, i32 0)
  br label %213

213:                                              ; preds = %189, %180
  br label %214

214:                                              ; preds = %213, %175
  %215 = load i32, i32* @CS35L33_ALIVE_ERR, align 4
  %216 = load i32, i32* %8, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %224

219:                                              ; preds = %214
  %220 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %221 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @dev_err(i32 %222, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %224

224:                                              ; preds = %219, %214
  %225 = load i32, i32* @CS35L33_MCLK_ERR, align 4
  %226 = load i32, i32* %8, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %224
  %230 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %231 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @dev_err(i32 %232, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  br label %234

234:                                              ; preds = %229, %224
  %235 = load i32, i32* @CS35L33_VMON_OVFL, align 4
  %236 = load i32, i32* %9, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %234
  %240 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %241 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @dev_err(i32 %242, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  br label %244

244:                                              ; preds = %239, %234
  %245 = load i32, i32* @CS35L33_IMON_OVFL, align 4
  %246 = load i32, i32* %9, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %254

249:                                              ; preds = %244
  %250 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %251 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @dev_err(i32 %252, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  br label %254

254:                                              ; preds = %249, %244
  %255 = load i32, i32* @CS35L33_VPMON_OVFL, align 4
  %256 = load i32, i32* %9, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %254
  %260 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %261 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @dev_err(i32 %262, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0))
  br label %264

264:                                              ; preds = %259, %254
  %265 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %265, i32* %3, align 4
  br label %266

266:                                              ; preds = %264, %49
  %267 = load i32, i32* %3, align 4
  ret i32 %267
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_crit(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
