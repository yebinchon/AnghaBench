; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8958-dsp2.c_wm8958_dsp2_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8958-dsp2.c_wm8958_dsp2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol_new = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.wm8994_priv = type { i32, %struct.TYPE_11__, i32*, %struct.TYPE_12__, i32*, %struct.TYPE_12__, i32*, %struct.TYPE_12__, i32*, %struct.TYPE_12__, %struct.wm8994* }
%struct.TYPE_11__ = type { %struct.snd_soc_component* }
%struct.TYPE_12__ = type { i32, i32* }
%struct.wm8994 = type { %struct.wm8994_pdata }
%struct.wm8994_pdata = type { i32, i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@wm8958_mbc_snd_controls = common dso_local global %struct.snd_kcontrol_new* null, align 8
@wm8958_vss_snd_controls = common dso_local global %struct.snd_kcontrol_new* null, align 8
@wm8958_enh_eq_snd_controls = common dso_local global %struct.snd_kcontrol_new* null, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@FW_ACTION_HOTPLUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"wm8958_mbc.wfw\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@wm8958_mbc_loaded = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"wm8958_mbc_vss.wfw\00", align 1
@wm8958_mbc_vss_loaded = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"wm8958_enh_eq.wfw\00", align 1
@wm8958_enh_eq_loaded = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"MBC Mode\00", align 1
@wm8958_get_mbc_enum = common dso_local global i32 0, align 4
@wm8958_put_mbc_enum = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to add MBC mode controls: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"VSS Mode\00", align 1
@wm8958_get_vss_enum = common dso_local global i32 0, align 4
@wm8958_put_vss_enum = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"Failed to add VSS mode controls: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"VSS HPF Mode\00", align 1
@wm8958_get_vss_hpf_enum = common dso_local global i32 0, align 4
@wm8958_put_vss_hpf_enum = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [40 x i8] c"Failed to add VSS HPFmode controls: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Enhanced EQ Mode\00", align 1
@wm8958_get_enh_eq_enum = common dso_local global i32 0, align 4
@wm8958_put_enh_eq_enum = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [40 x i8] c"Failed to add enhanced EQ controls: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wm8958_dsp2_init(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.wm8994_priv*, align 8
  %4 = alloca %struct.wm8994*, align 8
  %5 = alloca %struct.wm8994_pdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [1 x %struct.snd_kcontrol_new], align 4
  %9 = alloca [1 x %struct.snd_kcontrol_new], align 4
  %10 = alloca [1 x %struct.snd_kcontrol_new], align 4
  %11 = alloca [1 x %struct.snd_kcontrol_new], align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %13 = call %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %12)
  store %struct.wm8994_priv* %13, %struct.wm8994_priv** %3, align 8
  %14 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %15 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %14, i32 0, i32 10
  %16 = load %struct.wm8994*, %struct.wm8994** %15, align 8
  store %struct.wm8994* %16, %struct.wm8994** %4, align 8
  %17 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %18 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %17, i32 0, i32 0
  store %struct.wm8994_pdata* %18, %struct.wm8994_pdata** %5, align 8
  %19 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %20 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %19, i32 0, i32 0
  store i32 -1, i32* %20, align 8
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %22 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @wm8958_mbc_snd_controls, align 8
  %23 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @wm8958_mbc_snd_controls, align 8
  %24 = call i32 @ARRAY_SIZE(%struct.snd_kcontrol_new* %23)
  %25 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %21, %struct.snd_kcontrol_new* %22, i32 %24)
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %27 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @wm8958_vss_snd_controls, align 8
  %28 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @wm8958_vss_snd_controls, align 8
  %29 = call i32 @ARRAY_SIZE(%struct.snd_kcontrol_new* %28)
  %30 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %26, %struct.snd_kcontrol_new* %27, i32 %29)
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %32 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @wm8958_enh_eq_snd_controls, align 8
  %33 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @wm8958_enh_eq_snd_controls, align 8
  %34 = call i32 @ARRAY_SIZE(%struct.snd_kcontrol_new* %33)
  %35 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %31, %struct.snd_kcontrol_new* %32, i32 %34)
  %36 = load i32, i32* @THIS_MODULE, align 4
  %37 = load i32, i32* @FW_ACTION_HOTPLUG, align 4
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %39 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %43 = load i32, i32* @wm8958_mbc_loaded, align 4
  %44 = call i32 @request_firmware_nowait(i32 %36, i32 %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41, %struct.snd_soc_component* %42, i32 %43)
  %45 = load i32, i32* @THIS_MODULE, align 4
  %46 = load i32, i32* @FW_ACTION_HOTPLUG, align 4
  %47 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %48 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %52 = load i32, i32* @wm8958_mbc_vss_loaded, align 4
  %53 = call i32 @request_firmware_nowait(i32 %45, i32 %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %50, %struct.snd_soc_component* %51, i32 %52)
  %54 = load i32, i32* @THIS_MODULE, align 4
  %55 = load i32, i32* @FW_ACTION_HOTPLUG, align 4
  %56 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %57 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %61 = load i32, i32* @wm8958_enh_eq_loaded, align 4
  %62 = call i32 @request_firmware_nowait(i32 %54, i32 %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %59, %struct.snd_soc_component* %60, i32 %61)
  %63 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %5, align 8
  %64 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %149

67:                                               ; preds = %1
  %68 = getelementptr inbounds [1 x %struct.snd_kcontrol_new], [1 x %struct.snd_kcontrol_new]* %8, i64 0, i64 0
  %69 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %70 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %69, i32 0, i32 9
  %71 = load i32, i32* @wm8958_get_mbc_enum, align 4
  %72 = load i32, i32* @wm8958_put_mbc_enum, align 4
  %73 = bitcast %struct.TYPE_12__* %70 to { i32, i32* }*
  %74 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %73, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @SOC_ENUM_EXT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %75, i32* %77, i32 %71, i32 %72)
  %79 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %68, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  %80 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %5, align 8
  %81 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = call i8* @kmalloc_array(i32 %82, i32 8, i32 %83)
  %85 = bitcast i8* %84 to i32*
  %86 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %87 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %86, i32 0, i32 8
  store i32* %85, i32** %87, align 8
  %88 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %89 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %88, i32 0, i32 8
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %67
  br label %410

93:                                               ; preds = %67
  store i32 0, i32* %7, align 4
  br label %94

94:                                               ; preds = %115, %93
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %5, align 8
  %97 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %118

100:                                              ; preds = %94
  %101 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %5, align 8
  %102 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %101, i32 0, i32 7
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %110 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %109, i32 0, i32 8
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 %108, i32* %114, align 4
  br label %115

115:                                              ; preds = %100
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  br label %94

118:                                              ; preds = %94
  %119 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %5, align 8
  %120 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %123 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %122, i32 0, i32 9
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  store i32 %121, i32* %124, align 8
  %125 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %126 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %125, i32 0, i32 8
  %127 = load i32*, i32** %126, align 8
  %128 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %129 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %128, i32 0, i32 9
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  store i32* %127, i32** %130, align 8
  %131 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %132 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load %struct.snd_soc_component*, %struct.snd_soc_component** %133, align 8
  %135 = getelementptr inbounds [1 x %struct.snd_kcontrol_new], [1 x %struct.snd_kcontrol_new]* %8, i64 0, i64 0
  %136 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %134, %struct.snd_kcontrol_new* %135, i32 1)
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %6, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %118
  %140 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %141 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load %struct.snd_soc_component*, %struct.snd_soc_component** %142, align 8
  %144 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @dev_err(i32 %145, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %139, %118
  br label %149

149:                                              ; preds = %148, %1
  %150 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %5, align 8
  %151 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %236

154:                                              ; preds = %149
  %155 = getelementptr inbounds [1 x %struct.snd_kcontrol_new], [1 x %struct.snd_kcontrol_new]* %9, i64 0, i64 0
  %156 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %157 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %156, i32 0, i32 7
  %158 = load i32, i32* @wm8958_get_vss_enum, align 4
  %159 = load i32, i32* @wm8958_put_vss_enum, align 4
  %160 = bitcast %struct.TYPE_12__* %157 to { i32, i32* }*
  %161 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %160, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = call i32 @SOC_ENUM_EXT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %162, i32* %164, i32 %158, i32 %159)
  %166 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %155, i32 0, i32 0
  store i32 %165, i32* %166, align 4
  %167 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %5, align 8
  %168 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @GFP_KERNEL, align 4
  %171 = call i8* @kmalloc_array(i32 %169, i32 8, i32 %170)
  %172 = bitcast i8* %171 to i32*
  %173 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %174 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %173, i32 0, i32 6
  store i32* %172, i32** %174, align 8
  %175 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %176 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %175, i32 0, i32 6
  %177 = load i32*, i32** %176, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %180, label %179

179:                                              ; preds = %154
  br label %410

180:                                              ; preds = %154
  store i32 0, i32* %7, align 4
  br label %181

181:                                              ; preds = %202, %180
  %182 = load i32, i32* %7, align 4
  %183 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %5, align 8
  %184 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = icmp slt i32 %182, %185
  br i1 %186, label %187, label %205

187:                                              ; preds = %181
  %188 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %5, align 8
  %189 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %188, i32 0, i32 6
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %189, align 8
  %191 = load i32, i32* %7, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %197 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %196, i32 0, i32 6
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %7, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  store i32 %195, i32* %201, align 4
  br label %202

202:                                              ; preds = %187
  %203 = load i32, i32* %7, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %7, align 4
  br label %181

205:                                              ; preds = %181
  %206 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %5, align 8
  %207 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %210 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %209, i32 0, i32 7
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 0
  store i32 %208, i32* %211, align 8
  %212 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %213 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %212, i32 0, i32 6
  %214 = load i32*, i32** %213, align 8
  %215 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %216 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %215, i32 0, i32 7
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 1
  store i32* %214, i32** %217, align 8
  %218 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %219 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 0
  %221 = load %struct.snd_soc_component*, %struct.snd_soc_component** %220, align 8
  %222 = getelementptr inbounds [1 x %struct.snd_kcontrol_new], [1 x %struct.snd_kcontrol_new]* %9, i64 0, i64 0
  %223 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %221, %struct.snd_kcontrol_new* %222, i32 1)
  store i32 %223, i32* %6, align 4
  %224 = load i32, i32* %6, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %235

226:                                              ; preds = %205
  %227 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %228 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 0
  %230 = load %struct.snd_soc_component*, %struct.snd_soc_component** %229, align 8
  %231 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %6, align 4
  %234 = call i32 @dev_err(i32 %232, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %233)
  br label %235

235:                                              ; preds = %226, %205
  br label %236

236:                                              ; preds = %235, %149
  %237 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %5, align 8
  %238 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %323

241:                                              ; preds = %236
  %242 = getelementptr inbounds [1 x %struct.snd_kcontrol_new], [1 x %struct.snd_kcontrol_new]* %10, i64 0, i64 0
  %243 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %244 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %243, i32 0, i32 5
  %245 = load i32, i32* @wm8958_get_vss_hpf_enum, align 4
  %246 = load i32, i32* @wm8958_put_vss_hpf_enum, align 4
  %247 = bitcast %struct.TYPE_12__* %244 to { i32, i32* }*
  %248 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %247, i32 0, i32 1
  %251 = load i32*, i32** %250, align 8
  %252 = call i32 @SOC_ENUM_EXT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %249, i32* %251, i32 %245, i32 %246)
  %253 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %242, i32 0, i32 0
  store i32 %252, i32* %253, align 4
  %254 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %5, align 8
  %255 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @GFP_KERNEL, align 4
  %258 = call i8* @kmalloc_array(i32 %256, i32 8, i32 %257)
  %259 = bitcast i8* %258 to i32*
  %260 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %261 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %260, i32 0, i32 4
  store i32* %259, i32** %261, align 8
  %262 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %263 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %262, i32 0, i32 4
  %264 = load i32*, i32** %263, align 8
  %265 = icmp ne i32* %264, null
  br i1 %265, label %267, label %266

266:                                              ; preds = %241
  br label %410

267:                                              ; preds = %241
  store i32 0, i32* %7, align 4
  br label %268

268:                                              ; preds = %289, %267
  %269 = load i32, i32* %7, align 4
  %270 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %5, align 8
  %271 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = icmp slt i32 %269, %272
  br i1 %273, label %274, label %292

274:                                              ; preds = %268
  %275 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %5, align 8
  %276 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %275, i32 0, i32 5
  %277 = load %struct.TYPE_9__*, %struct.TYPE_9__** %276, align 8
  %278 = load i32, i32* %7, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %284 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %283, i32 0, i32 4
  %285 = load i32*, i32** %284, align 8
  %286 = load i32, i32* %7, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  store i32 %282, i32* %288, align 4
  br label %289

289:                                              ; preds = %274
  %290 = load i32, i32* %7, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %7, align 4
  br label %268

292:                                              ; preds = %268
  %293 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %5, align 8
  %294 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %297 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %296, i32 0, i32 5
  %298 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %297, i32 0, i32 0
  store i32 %295, i32* %298, align 8
  %299 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %300 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %299, i32 0, i32 4
  %301 = load i32*, i32** %300, align 8
  %302 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %303 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %302, i32 0, i32 5
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 1
  store i32* %301, i32** %304, align 8
  %305 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %306 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %306, i32 0, i32 0
  %308 = load %struct.snd_soc_component*, %struct.snd_soc_component** %307, align 8
  %309 = getelementptr inbounds [1 x %struct.snd_kcontrol_new], [1 x %struct.snd_kcontrol_new]* %10, i64 0, i64 0
  %310 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %308, %struct.snd_kcontrol_new* %309, i32 1)
  store i32 %310, i32* %6, align 4
  %311 = load i32, i32* %6, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %322

313:                                              ; preds = %292
  %314 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %315 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i32 0, i32 0
  %317 = load %struct.snd_soc_component*, %struct.snd_soc_component** %316, align 8
  %318 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* %6, align 4
  %321 = call i32 @dev_err(i32 %319, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i32 %320)
  br label %322

322:                                              ; preds = %313, %292
  br label %323

323:                                              ; preds = %322, %236
  %324 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %5, align 8
  %325 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %324, i32 0, i32 3
  %326 = load i32, i32* %325, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %410

328:                                              ; preds = %323
  %329 = getelementptr inbounds [1 x %struct.snd_kcontrol_new], [1 x %struct.snd_kcontrol_new]* %11, i64 0, i64 0
  %330 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %331 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %330, i32 0, i32 3
  %332 = load i32, i32* @wm8958_get_enh_eq_enum, align 4
  %333 = load i32, i32* @wm8958_put_enh_eq_enum, align 4
  %334 = bitcast %struct.TYPE_12__* %331 to { i32, i32* }*
  %335 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %334, i32 0, i32 1
  %338 = load i32*, i32** %337, align 8
  %339 = call i32 @SOC_ENUM_EXT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %336, i32* %338, i32 %332, i32 %333)
  %340 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %329, i32 0, i32 0
  store i32 %339, i32* %340, align 4
  %341 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %5, align 8
  %342 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %341, i32 0, i32 3
  %343 = load i32, i32* %342, align 4
  %344 = load i32, i32* @GFP_KERNEL, align 4
  %345 = call i8* @kmalloc_array(i32 %343, i32 8, i32 %344)
  %346 = bitcast i8* %345 to i32*
  %347 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %348 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %347, i32 0, i32 2
  store i32* %346, i32** %348, align 8
  %349 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %350 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %349, i32 0, i32 2
  %351 = load i32*, i32** %350, align 8
  %352 = icmp ne i32* %351, null
  br i1 %352, label %354, label %353

353:                                              ; preds = %328
  br label %410

354:                                              ; preds = %328
  store i32 0, i32* %7, align 4
  br label %355

355:                                              ; preds = %376, %354
  %356 = load i32, i32* %7, align 4
  %357 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %5, align 8
  %358 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %357, i32 0, i32 3
  %359 = load i32, i32* %358, align 4
  %360 = icmp slt i32 %356, %359
  br i1 %360, label %361, label %379

361:                                              ; preds = %355
  %362 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %5, align 8
  %363 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %362, i32 0, i32 4
  %364 = load %struct.TYPE_10__*, %struct.TYPE_10__** %363, align 8
  %365 = load i32, i32* %7, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %364, i64 %366
  %368 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 4
  %370 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %371 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %370, i32 0, i32 2
  %372 = load i32*, i32** %371, align 8
  %373 = load i32, i32* %7, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32, i32* %372, i64 %374
  store i32 %369, i32* %375, align 4
  br label %376

376:                                              ; preds = %361
  %377 = load i32, i32* %7, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %7, align 4
  br label %355

379:                                              ; preds = %355
  %380 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %5, align 8
  %381 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %380, i32 0, i32 3
  %382 = load i32, i32* %381, align 4
  %383 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %384 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %383, i32 0, i32 3
  %385 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %384, i32 0, i32 0
  store i32 %382, i32* %385, align 8
  %386 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %387 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %386, i32 0, i32 2
  %388 = load i32*, i32** %387, align 8
  %389 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %390 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %389, i32 0, i32 3
  %391 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %390, i32 0, i32 1
  store i32* %388, i32** %391, align 8
  %392 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %393 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %392, i32 0, i32 1
  %394 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %393, i32 0, i32 0
  %395 = load %struct.snd_soc_component*, %struct.snd_soc_component** %394, align 8
  %396 = getelementptr inbounds [1 x %struct.snd_kcontrol_new], [1 x %struct.snd_kcontrol_new]* %11, i64 0, i64 0
  %397 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %395, %struct.snd_kcontrol_new* %396, i32 1)
  store i32 %397, i32* %6, align 4
  %398 = load i32, i32* %6, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %409

400:                                              ; preds = %379
  %401 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %402 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %401, i32 0, i32 1
  %403 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %402, i32 0, i32 0
  %404 = load %struct.snd_soc_component*, %struct.snd_soc_component** %403, align 8
  %405 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 4
  %407 = load i32, i32* %6, align 4
  %408 = call i32 @dev_err(i32 %406, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i32 %407)
  br label %409

409:                                              ; preds = %400, %379
  br label %410

410:                                              ; preds = %92, %179, %266, %353, %409, %323
  ret void
}

declare dso_local %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, %struct.snd_kcontrol_new*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.snd_kcontrol_new*) #1

declare dso_local i32 @request_firmware_nowait(i32, i32, i8*, i32, i32, %struct.snd_soc_component*, i32) #1

declare dso_local i32 @SOC_ENUM_EXT(i8*, i32, i32*, i32, i32) #1

declare dso_local i8* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
