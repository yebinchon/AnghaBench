; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l34.c_cs35l34_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l34.c_cs35l34_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs35l34_private = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@CS35L34_INT_STATUS_4 = common dso_local global i32 0, align 4
@CS35L34_INT_STATUS_3 = common dso_local global i32 0, align 4
@CS35L34_INT_STATUS_2 = common dso_local global i32 0, align 4
@CS35L34_INT_STATUS_1 = common dso_local global i32 0, align 4
@CS35L34_INT_MASK_4 = common dso_local global i32 0, align 4
@CS35L34_INT_MASK_3 = common dso_local global i32 0, align 4
@CS35L34_INT_MASK_2 = common dso_local global i32 0, align 4
@CS35L34_INT_MASK_1 = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@CS35L34_CAL_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Cal error\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Cal error release\0A\00", align 1
@CS35L34_PROT_RELEASE_CTL = common dso_local global i32 0, align 4
@CS35L34_CAL_ERR_RLS = common dso_local global i32 0, align 4
@CS35L34_ALIVE_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"Alive error\0A\00", align 1
@CS35L34_AMP_SHORT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Amp short error\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Amp short error release\0A\00", align 1
@CS35L34_SHORT_RLS = common dso_local global i32 0, align 4
@CS35L34_OTW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"Over temperature warning\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Over temperature warning release\0A\00", align 1
@CS35L34_OTW_RLS = common dso_local global i32 0, align 4
@CS35L34_OTE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"Over temperature error\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Over temperature error release\0A\00", align 1
@CS35L34_OTE_RLS = common dso_local global i32 0, align 4
@CS35L34_BST_HIGH = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [36 x i8] c"VBST too high error; powering off!\0A\00", align 1
@CS35L34_PWRCTL2 = common dso_local global i32 0, align 4
@CS35L34_PDN_AMP = common dso_local global i32 0, align 4
@CS35L34_PWRCTL1 = common dso_local global i32 0, align 4
@CS35L34_PDN_ALL = common dso_local global i32 0, align 4
@CS35L34_LBST_SHORT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"LBST short error; powering off!\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cs35l34_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs35l34_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cs35l34_private*, align 8
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.cs35l34_private*
  store %struct.cs35l34_private* %18, %struct.cs35l34_private** %6, align 8
  %19 = load %struct.cs35l34_private*, %struct.cs35l34_private** %6, align 8
  %20 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %19, i32 0, i32 1
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %20, align 8
  store %struct.snd_soc_component* %21, %struct.snd_soc_component** %7, align 8
  %22 = load %struct.cs35l34_private*, %struct.cs35l34_private** %6, align 8
  %23 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @CS35L34_INT_STATUS_4, align 4
  %26 = call i32 @regmap_read(i32 %24, i32 %25, i32* %11)
  %27 = load %struct.cs35l34_private*, %struct.cs35l34_private** %6, align 8
  %28 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @CS35L34_INT_STATUS_3, align 4
  %31 = call i32 @regmap_read(i32 %29, i32 %30, i32* %10)
  %32 = load %struct.cs35l34_private*, %struct.cs35l34_private** %6, align 8
  %33 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @CS35L34_INT_STATUS_2, align 4
  %36 = call i32 @regmap_read(i32 %34, i32 %35, i32* %9)
  %37 = load %struct.cs35l34_private*, %struct.cs35l34_private** %6, align 8
  %38 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @CS35L34_INT_STATUS_1, align 4
  %41 = call i32 @regmap_read(i32 %39, i32 %40, i32* %8)
  %42 = load %struct.cs35l34_private*, %struct.cs35l34_private** %6, align 8
  %43 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @CS35L34_INT_MASK_4, align 4
  %46 = call i32 @regmap_read(i32 %44, i32 %45, i32* %15)
  %47 = load %struct.cs35l34_private*, %struct.cs35l34_private** %6, align 8
  %48 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @CS35L34_INT_MASK_3, align 4
  %51 = call i32 @regmap_read(i32 %49, i32 %50, i32* %14)
  %52 = load %struct.cs35l34_private*, %struct.cs35l34_private** %6, align 8
  %53 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @CS35L34_INT_MASK_2, align 4
  %56 = call i32 @regmap_read(i32 %54, i32 %55, i32* %13)
  %57 = load %struct.cs35l34_private*, %struct.cs35l34_private** %6, align 8
  %58 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @CS35L34_INT_MASK_1, align 4
  %61 = call i32 @regmap_read(i32 %59, i32 %60, i32* %12)
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %12, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %62, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %87, label %67

67:                                               ; preds = %2
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %13, align 4
  %70 = xor i32 %69, -1
  %71 = and i32 %68, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %87, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %14, align 4
  %76 = xor i32 %75, -1
  %77 = and i32 %74, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %73
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %15, align 4
  %82 = xor i32 %81, -1
  %83 = and i32 %80, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %79
  %86 = load i32, i32* @IRQ_NONE, align 4
  store i32 %86, i32* %3, align 4
  br label %308

87:                                               ; preds = %79, %73, %67, %2
  %88 = load %struct.cs35l34_private*, %struct.cs35l34_private** %6, align 8
  %89 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @CS35L34_INT_STATUS_1, align 4
  %92 = call i32 @regmap_read(i32 %90, i32 %91, i32* %16)
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @CS35L34_CAL_ERR, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %131

97:                                               ; preds = %87
  %98 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %99 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @dev_err(i32 %100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* @CS35L34_CAL_ERR, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %130, label %106

106:                                              ; preds = %97
  %107 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %108 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @dev_dbg(i32 %109, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %111 = load %struct.cs35l34_private*, %struct.cs35l34_private** %6, align 8
  %112 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @CS35L34_PROT_RELEASE_CTL, align 4
  %115 = load i32, i32* @CS35L34_CAL_ERR_RLS, align 4
  %116 = call i32 @regmap_update_bits(i32 %113, i32 %114, i32 %115, i32 0)
  %117 = load %struct.cs35l34_private*, %struct.cs35l34_private** %6, align 8
  %118 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @CS35L34_PROT_RELEASE_CTL, align 4
  %121 = load i32, i32* @CS35L34_CAL_ERR_RLS, align 4
  %122 = load i32, i32* @CS35L34_CAL_ERR_RLS, align 4
  %123 = call i32 @regmap_update_bits(i32 %119, i32 %120, i32 %121, i32 %122)
  %124 = load %struct.cs35l34_private*, %struct.cs35l34_private** %6, align 8
  %125 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @CS35L34_PROT_RELEASE_CTL, align 4
  %128 = load i32, i32* @CS35L34_CAL_ERR_RLS, align 4
  %129 = call i32 @regmap_update_bits(i32 %126, i32 %127, i32 %128, i32 0)
  br label %130

130:                                              ; preds = %106, %97
  br label %131

131:                                              ; preds = %130, %87
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* @CS35L34_ALIVE_ERR, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %138 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @dev_err(i32 %139, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %141

141:                                              ; preds = %136, %131
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @CS35L34_AMP_SHORT, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %180

146:                                              ; preds = %141
  %147 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %148 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @dev_crit(i32 %149, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %151 = load i32, i32* %16, align 4
  %152 = load i32, i32* @CS35L34_AMP_SHORT, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %179, label %155

155:                                              ; preds = %146
  %156 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %157 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @dev_dbg(i32 %158, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %160 = load %struct.cs35l34_private*, %struct.cs35l34_private** %6, align 8
  %161 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @CS35L34_PROT_RELEASE_CTL, align 4
  %164 = load i32, i32* @CS35L34_SHORT_RLS, align 4
  %165 = call i32 @regmap_update_bits(i32 %162, i32 %163, i32 %164, i32 0)
  %166 = load %struct.cs35l34_private*, %struct.cs35l34_private** %6, align 8
  %167 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @CS35L34_PROT_RELEASE_CTL, align 4
  %170 = load i32, i32* @CS35L34_SHORT_RLS, align 4
  %171 = load i32, i32* @CS35L34_SHORT_RLS, align 4
  %172 = call i32 @regmap_update_bits(i32 %168, i32 %169, i32 %170, i32 %171)
  %173 = load %struct.cs35l34_private*, %struct.cs35l34_private** %6, align 8
  %174 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @CS35L34_PROT_RELEASE_CTL, align 4
  %177 = load i32, i32* @CS35L34_SHORT_RLS, align 4
  %178 = call i32 @regmap_update_bits(i32 %175, i32 %176, i32 %177, i32 0)
  br label %179

179:                                              ; preds = %155, %146
  br label %180

180:                                              ; preds = %179, %141
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* @CS35L34_OTW, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %219

185:                                              ; preds = %180
  %186 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %187 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @dev_crit(i32 %188, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %190 = load i32, i32* %16, align 4
  %191 = load i32, i32* @CS35L34_OTW, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %218, label %194

194:                                              ; preds = %185
  %195 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %196 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @dev_dbg(i32 %197, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %199 = load %struct.cs35l34_private*, %struct.cs35l34_private** %6, align 8
  %200 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @CS35L34_PROT_RELEASE_CTL, align 4
  %203 = load i32, i32* @CS35L34_OTW_RLS, align 4
  %204 = call i32 @regmap_update_bits(i32 %201, i32 %202, i32 %203, i32 0)
  %205 = load %struct.cs35l34_private*, %struct.cs35l34_private** %6, align 8
  %206 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @CS35L34_PROT_RELEASE_CTL, align 4
  %209 = load i32, i32* @CS35L34_OTW_RLS, align 4
  %210 = load i32, i32* @CS35L34_OTW_RLS, align 4
  %211 = call i32 @regmap_update_bits(i32 %207, i32 %208, i32 %209, i32 %210)
  %212 = load %struct.cs35l34_private*, %struct.cs35l34_private** %6, align 8
  %213 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @CS35L34_PROT_RELEASE_CTL, align 4
  %216 = load i32, i32* @CS35L34_OTW_RLS, align 4
  %217 = call i32 @regmap_update_bits(i32 %214, i32 %215, i32 %216, i32 0)
  br label %218

218:                                              ; preds = %194, %185
  br label %219

219:                                              ; preds = %218, %180
  %220 = load i32, i32* %8, align 4
  %221 = load i32, i32* @CS35L34_OTE, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %258

224:                                              ; preds = %219
  %225 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %226 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @dev_crit(i32 %227, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %229 = load i32, i32* %16, align 4
  %230 = load i32, i32* @CS35L34_OTE, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %257, label %233

233:                                              ; preds = %224
  %234 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %235 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @dev_dbg(i32 %236, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %238 = load %struct.cs35l34_private*, %struct.cs35l34_private** %6, align 8
  %239 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @CS35L34_PROT_RELEASE_CTL, align 4
  %242 = load i32, i32* @CS35L34_OTE_RLS, align 4
  %243 = call i32 @regmap_update_bits(i32 %240, i32 %241, i32 %242, i32 0)
  %244 = load %struct.cs35l34_private*, %struct.cs35l34_private** %6, align 8
  %245 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @CS35L34_PROT_RELEASE_CTL, align 4
  %248 = load i32, i32* @CS35L34_OTE_RLS, align 4
  %249 = load i32, i32* @CS35L34_OTE_RLS, align 4
  %250 = call i32 @regmap_update_bits(i32 %246, i32 %247, i32 %248, i32 %249)
  %251 = load %struct.cs35l34_private*, %struct.cs35l34_private** %6, align 8
  %252 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @CS35L34_PROT_RELEASE_CTL, align 4
  %255 = load i32, i32* @CS35L34_OTE_RLS, align 4
  %256 = call i32 @regmap_update_bits(i32 %253, i32 %254, i32 %255, i32 0)
  br label %257

257:                                              ; preds = %233, %224
  br label %258

258:                                              ; preds = %257, %219
  %259 = load i32, i32* %10, align 4
  %260 = load i32, i32* @CS35L34_BST_HIGH, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %282

263:                                              ; preds = %258
  %264 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %265 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @dev_crit(i32 %266, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  %268 = load %struct.cs35l34_private*, %struct.cs35l34_private** %6, align 8
  %269 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @CS35L34_PWRCTL2, align 4
  %272 = load i32, i32* @CS35L34_PDN_AMP, align 4
  %273 = load i32, i32* @CS35L34_PDN_AMP, align 4
  %274 = call i32 @regmap_update_bits(i32 %270, i32 %271, i32 %272, i32 %273)
  %275 = load %struct.cs35l34_private*, %struct.cs35l34_private** %6, align 8
  %276 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @CS35L34_PWRCTL1, align 4
  %279 = load i32, i32* @CS35L34_PDN_ALL, align 4
  %280 = load i32, i32* @CS35L34_PDN_ALL, align 4
  %281 = call i32 @regmap_update_bits(i32 %277, i32 %278, i32 %279, i32 %280)
  br label %282

282:                                              ; preds = %263, %258
  %283 = load i32, i32* %10, align 4
  %284 = load i32, i32* @CS35L34_LBST_SHORT, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %306

287:                                              ; preds = %282
  %288 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %289 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @dev_crit(i32 %290, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  %292 = load %struct.cs35l34_private*, %struct.cs35l34_private** %6, align 8
  %293 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @CS35L34_PWRCTL2, align 4
  %296 = load i32, i32* @CS35L34_PDN_AMP, align 4
  %297 = load i32, i32* @CS35L34_PDN_AMP, align 4
  %298 = call i32 @regmap_update_bits(i32 %294, i32 %295, i32 %296, i32 %297)
  %299 = load %struct.cs35l34_private*, %struct.cs35l34_private** %6, align 8
  %300 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* @CS35L34_PWRCTL1, align 4
  %303 = load i32, i32* @CS35L34_PDN_ALL, align 4
  %304 = load i32, i32* @CS35L34_PDN_ALL, align 4
  %305 = call i32 @regmap_update_bits(i32 %301, i32 %302, i32 %303, i32 %304)
  br label %306

306:                                              ; preds = %287, %282
  %307 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %307, i32* %3, align 4
  br label %308

308:                                              ; preds = %306, %85
  %309 = load i32, i32* %3, align 4
  ret i32 %309
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_crit(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
