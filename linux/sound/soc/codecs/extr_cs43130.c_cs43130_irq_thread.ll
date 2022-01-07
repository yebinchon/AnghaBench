; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs43130.c_cs43130_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs43130.c_cs43130_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs43130_private = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@CS43130_NUM_INT = common dso_local global i32 0, align 4
@CS43130_INT_STATUS_1 = common dso_local global i64 0, align 8
@CS43130_INT_MASK_1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"number of interrupts occurred (%u)\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@CS43130_XTAL_RDY_INT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@CS43130_PLL_RDY_INT = common dso_local global i32 0, align 4
@CS43130_HPLOAD_NO_DC_INT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"DC load has not completed before AC load (%x)\0A\00", align 1
@CS43130_HPLOAD_UNPLUG_INT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"HP unplugged during measurement (%x)\0A\00", align 1
@CS43130_HPLOAD_OOR_INT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"HP load out of range (%x)\0A\00", align 1
@CS43130_HPLOAD_AC_INT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"HP AC load measurement done (%x)\0A\00", align 1
@CS43130_HPLOAD_DC_INT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"HP DC load measurement done (%x)\0A\00", align 1
@CS43130_HPLOAD_ON_INT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"HP load state machine on done (%x)\0A\00", align 1
@CS43130_HPLOAD_OFF_INT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"HP load state machine off done (%x)\0A\00", align 1
@CS43130_XTAL_ERR_INT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"Crystal err: clock is not running\0A\00", align 1
@CS43130_HP_UNPLUG_INT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"HP unplugged\0A\00", align 1
@CS43130_JACK_MASK = common dso_local global i32 0, align 4
@CS43130_HP_PLUG_INT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"HP load queue work\0A\00", align 1
@SND_JACK_MECHANICAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cs43130_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs43130_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cs43130_private*, align 8
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.cs43130_private*
  store %struct.cs43130_private* %16, %struct.cs43130_private** %6, align 8
  %17 = load %struct.cs43130_private*, %struct.cs43130_private** %6, align 8
  %18 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %17, i32 0, i32 10
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %18, align 8
  store %struct.snd_soc_component* %19, %struct.snd_soc_component** %7, align 8
  %20 = load i32, i32* @CS43130_NUM_INT, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %8, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %24 = load i32, i32* @CS43130_NUM_INT, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %54, %2
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @ARRAY_SIZE(i32* %23)
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %27
  %32 = load %struct.cs43130_private*, %struct.cs43130_private** %6, align 8
  %33 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %32, i32 0, i32 9
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* @CS43130_INT_STATUS_1, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %23, i64 %40
  %42 = call i32 @regmap_read(i32 %34, i64 %38, i32* %41)
  %43 = load %struct.cs43130_private*, %struct.cs43130_private** %6, align 8
  %44 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %43, i32 0, i32 9
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* @CS43130_INT_MASK_1, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %26, i64 %51
  %53 = call i32 @regmap_read(i32 %45, i64 %49, i32* %52)
  br label %54

54:                                               ; preds = %31
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %12, align 4
  br label %27

57:                                               ; preds = %27
  store i32 0, i32* %12, align 4
  br label %58

58:                                               ; preds = %93, %57
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @ARRAY_SIZE(i32* %23)
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %96

62:                                               ; preds = %58
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %23, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %26, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = xor i32 %70, -1
  %72 = and i32 %66, %71
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %23, i64 %74
  store i32 %72, i32* %75, align 4
  store i32 0, i32* %13, align 4
  br label %76

76:                                               ; preds = %89, %62
  %77 = load i32, i32* %13, align 4
  %78 = icmp slt i32 %77, 8
  br i1 %78, label %79, label %92

79:                                               ; preds = %76
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %23, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %13, align 4
  %85 = lshr i32 %83, %84
  %86 = and i32 %85, 1
  %87 = load i32, i32* %10, align 4
  %88 = add i32 %87, %86
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %79
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %13, align 4
  br label %76

92:                                               ; preds = %76
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %12, align 4
  br label %58

96:                                               ; preds = %58
  %97 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %98 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %10, align 4
  %101 = call i32 (i32, i8*, ...) @dev_dbg(i32 %99, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %96
  %105 = load i32, i32* @IRQ_NONE, align 4
  store i32 %105, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %353

106:                                              ; preds = %96
  %107 = getelementptr inbounds i32, i32* %23, i64 0
  %108 = load i32, i32* %107, align 16
  %109 = load i32, i32* @CS43130_XTAL_RDY_INT, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %106
  %113 = load %struct.cs43130_private*, %struct.cs43130_private** %6, align 8
  %114 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %113, i32 0, i32 8
  %115 = call i32 @complete(i32* %114)
  %116 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %116, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %353

117:                                              ; preds = %106
  %118 = getelementptr inbounds i32, i32* %23, i64 0
  %119 = load i32, i32* %118, align 16
  %120 = load i32, i32* @CS43130_PLL_RDY_INT, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %117
  %124 = load %struct.cs43130_private*, %struct.cs43130_private** %6, align 8
  %125 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %124, i32 0, i32 7
  %126 = call i32 @complete(i32* %125)
  %127 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %127, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %353

128:                                              ; preds = %117
  %129 = getelementptr inbounds i32, i32* %23, i64 3
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @CS43130_HPLOAD_NO_DC_INT, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %150

134:                                              ; preds = %128
  %135 = getelementptr inbounds i32, i32* %23, i64 3
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.cs43130_private*, %struct.cs43130_private** %6, align 8
  %138 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %140 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.cs43130_private*, %struct.cs43130_private** %6, align 8
  %143 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 (i32, i8*, ...) @dev_err(i32 %141, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %144)
  %146 = load %struct.cs43130_private*, %struct.cs43130_private** %6, align 8
  %147 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %146, i32 0, i32 6
  %148 = call i32 @complete(i32* %147)
  %149 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %149, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %353

150:                                              ; preds = %128
  %151 = getelementptr inbounds i32, i32* %23, i64 3
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @CS43130_HPLOAD_UNPLUG_INT, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %172

156:                                              ; preds = %150
  %157 = getelementptr inbounds i32, i32* %23, i64 3
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.cs43130_private*, %struct.cs43130_private** %6, align 8
  %160 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 8
  %161 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %162 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.cs43130_private*, %struct.cs43130_private** %6, align 8
  %165 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 (i32, i8*, ...) @dev_err(i32 %163, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %166)
  %168 = load %struct.cs43130_private*, %struct.cs43130_private** %6, align 8
  %169 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %168, i32 0, i32 6
  %170 = call i32 @complete(i32* %169)
  %171 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %171, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %353

172:                                              ; preds = %150
  %173 = getelementptr inbounds i32, i32* %23, i64 3
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @CS43130_HPLOAD_OOR_INT, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %194

178:                                              ; preds = %172
  %179 = getelementptr inbounds i32, i32* %23, i64 3
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.cs43130_private*, %struct.cs43130_private** %6, align 8
  %182 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 8
  %183 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %184 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.cs43130_private*, %struct.cs43130_private** %6, align 8
  %187 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32 (i32, i8*, ...) @dev_err(i32 %185, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %188)
  %190 = load %struct.cs43130_private*, %struct.cs43130_private** %6, align 8
  %191 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %190, i32 0, i32 6
  %192 = call i32 @complete(i32* %191)
  %193 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %193, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %353

194:                                              ; preds = %172
  %195 = getelementptr inbounds i32, i32* %23, i64 3
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @CS43130_HPLOAD_AC_INT, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %216

200:                                              ; preds = %194
  %201 = getelementptr inbounds i32, i32* %23, i64 3
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.cs43130_private*, %struct.cs43130_private** %6, align 8
  %204 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %203, i32 0, i32 0
  store i32 %202, i32* %204, align 8
  %205 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %206 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.cs43130_private*, %struct.cs43130_private** %6, align 8
  %209 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = call i32 (i32, i8*, ...) @dev_dbg(i32 %207, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %210)
  %212 = load %struct.cs43130_private*, %struct.cs43130_private** %6, align 8
  %213 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %212, i32 0, i32 6
  %214 = call i32 @complete(i32* %213)
  %215 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %215, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %353

216:                                              ; preds = %194
  %217 = getelementptr inbounds i32, i32* %23, i64 3
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @CS43130_HPLOAD_DC_INT, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %238

222:                                              ; preds = %216
  %223 = getelementptr inbounds i32, i32* %23, i64 3
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.cs43130_private*, %struct.cs43130_private** %6, align 8
  %226 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %225, i32 0, i32 0
  store i32 %224, i32* %226, align 8
  %227 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %228 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.cs43130_private*, %struct.cs43130_private** %6, align 8
  %231 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = call i32 (i32, i8*, ...) @dev_dbg(i32 %229, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %232)
  %234 = load %struct.cs43130_private*, %struct.cs43130_private** %6, align 8
  %235 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %234, i32 0, i32 6
  %236 = call i32 @complete(i32* %235)
  %237 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %237, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %353

238:                                              ; preds = %216
  %239 = getelementptr inbounds i32, i32* %23, i64 3
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @CS43130_HPLOAD_ON_INT, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %260

244:                                              ; preds = %238
  %245 = getelementptr inbounds i32, i32* %23, i64 3
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.cs43130_private*, %struct.cs43130_private** %6, align 8
  %248 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %247, i32 0, i32 0
  store i32 %246, i32* %248, align 8
  %249 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %250 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.cs43130_private*, %struct.cs43130_private** %6, align 8
  %253 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = call i32 (i32, i8*, ...) @dev_dbg(i32 %251, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %254)
  %256 = load %struct.cs43130_private*, %struct.cs43130_private** %6, align 8
  %257 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %256, i32 0, i32 6
  %258 = call i32 @complete(i32* %257)
  %259 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %259, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %353

260:                                              ; preds = %238
  %261 = getelementptr inbounds i32, i32* %23, i64 3
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @CS43130_HPLOAD_OFF_INT, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %282

266:                                              ; preds = %260
  %267 = getelementptr inbounds i32, i32* %23, i64 3
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.cs43130_private*, %struct.cs43130_private** %6, align 8
  %270 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %269, i32 0, i32 0
  store i32 %268, i32* %270, align 8
  %271 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %272 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.cs43130_private*, %struct.cs43130_private** %6, align 8
  %275 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = call i32 (i32, i8*, ...) @dev_dbg(i32 %273, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %276)
  %278 = load %struct.cs43130_private*, %struct.cs43130_private** %6, align 8
  %279 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %278, i32 0, i32 6
  %280 = call i32 @complete(i32* %279)
  %281 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %281, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %353

282:                                              ; preds = %260
  %283 = getelementptr inbounds i32, i32* %23, i64 0
  %284 = load i32, i32* %283, align 16
  %285 = load i32, i32* @CS43130_XTAL_ERR_INT, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %294

288:                                              ; preds = %282
  %289 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %290 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = call i32 (i32, i8*, ...) @dev_err(i32 %291, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  %293 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %293, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %353

294:                                              ; preds = %282
  %295 = getelementptr inbounds i32, i32* %23, i64 0
  %296 = load i32, i32* %295, align 16
  %297 = load i32, i32* @CS43130_HP_UNPLUG_INT, align 4
  %298 = and i32 %296, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %312

300:                                              ; preds = %294
  %301 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %302 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = call i32 (i32, i8*, ...) @dev_dbg(i32 %303, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %305 = load %struct.cs43130_private*, %struct.cs43130_private** %6, align 8
  %306 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %305, i32 0, i32 1
  store i32 0, i32* %306, align 4
  %307 = load %struct.cs43130_private*, %struct.cs43130_private** %6, align 8
  %308 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %307, i32 0, i32 2
  %309 = load i32, i32* @CS43130_JACK_MASK, align 4
  %310 = call i32 @snd_soc_jack_report(i32* %308, i32 0, i32 %309)
  %311 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %311, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %353

312:                                              ; preds = %294
  %313 = getelementptr inbounds i32, i32* %23, i64 0
  %314 = load i32, i32* %313, align 16
  %315 = load i32, i32* @CS43130_HP_PLUG_INT, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %351

318:                                              ; preds = %312
  %319 = load %struct.cs43130_private*, %struct.cs43130_private** %6, align 8
  %320 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %319, i32 0, i32 5
  %321 = load i64, i64* %320, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %344

323:                                              ; preds = %318
  %324 = load %struct.cs43130_private*, %struct.cs43130_private** %6, align 8
  %325 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %344, label %328

328:                                              ; preds = %323
  %329 = load %struct.cs43130_private*, %struct.cs43130_private** %6, align 8
  %330 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %329, i32 0, i32 3
  %331 = call i32 @work_busy(i32* %330)
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %344, label %333

333:                                              ; preds = %328
  %334 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %335 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = call i32 (i32, i8*, ...) @dev_dbg(i32 %336, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %338 = load %struct.cs43130_private*, %struct.cs43130_private** %6, align 8
  %339 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %338, i32 0, i32 4
  %340 = load i32, i32* %339, align 8
  %341 = load %struct.cs43130_private*, %struct.cs43130_private** %6, align 8
  %342 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %341, i32 0, i32 3
  %343 = call i32 @queue_work(i32 %340, i32* %342)
  br label %344

344:                                              ; preds = %333, %328, %323, %318
  %345 = load %struct.cs43130_private*, %struct.cs43130_private** %6, align 8
  %346 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %345, i32 0, i32 2
  %347 = load i32, i32* @SND_JACK_MECHANICAL, align 4
  %348 = load i32, i32* @CS43130_JACK_MASK, align 4
  %349 = call i32 @snd_soc_jack_report(i32* %346, i32 %347, i32 %348)
  %350 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %350, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %353

351:                                              ; preds = %312
  %352 = load i32, i32* @IRQ_NONE, align 4
  store i32 %352, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %353

353:                                              ; preds = %351, %344, %300, %288, %266, %244, %222, %200, %178, %156, %134, %123, %112, %104
  %354 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %354)
  %355 = load i32, i32* %3, align 4
  ret i32 %355
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @regmap_read(i32, i64, i32*) #2

declare dso_local i32 @dev_dbg(i32, i8*, ...) #2

declare dso_local i32 @complete(i32*) #2

declare dso_local i32 @dev_err(i32, i8*, ...) #2

declare dso_local i32 @snd_soc_jack_report(i32*, i32, i32) #2

declare dso_local i32 @work_busy(i32*) #2

declare dso_local i32 @queue_work(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
