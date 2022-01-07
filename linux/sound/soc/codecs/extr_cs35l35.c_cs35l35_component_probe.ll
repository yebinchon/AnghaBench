; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l35.c_cs35l35_component_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l35.c_cs35l35_component_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.cs35l35_private = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, %struct.monitor_cfg, %struct.classh_cfg }
%struct.monitor_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.classh_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@CS35L35_BST_CVTR_V_CTL = common dso_local global i32 0, align 4
@CS35L35_BST_CTL_MASK = common dso_local global i32 0, align 4
@CS35L35_BST_PEAK_I = common dso_local global i32 0, align 4
@CS35L35_BST_IPK_MASK = common dso_local global i32 0, align 4
@CS35L35_BST_IPK_SHIFT = common dso_local global i32 0, align 4
@CS35L35_PROTECT_CTL = common dso_local global i32 0, align 4
@CS35L35_AMP_GAIN_ZC_MASK = common dso_local global i32 0, align 4
@CS35L35_AMP_GAIN_ZC_SHIFT = common dso_local global i32 0, align 4
@CS35L35_AUDIN_RXLOC_CTL = common dso_local global i32 0, align 4
@CS35L35_AUD_IN_LR_MASK = common dso_local global i32 0, align 4
@CS35L35_AUD_IN_LR_SHIFT = common dso_local global i32 0, align 4
@CS35L35_ADVIN_RXLOC_CTL = common dso_local global i32 0, align 4
@CS35L35_ADV_IN_LR_MASK = common dso_local global i32 0, align 4
@CS35L35_ADV_IN_LR_SHIFT = common dso_local global i32 0, align 4
@CS35L35_CLASS_H_CTL = common dso_local global i32 0, align 4
@CS35L35_CH_STEREO_MASK = common dso_local global i32 0, align 4
@CS35L35_CH_STEREO_SHIFT = common dso_local global i32 0, align 4
@cs35l35_adv_controls = common dso_local global i32 0, align 4
@CS35L35_CLK_CTL1 = common dso_local global i32 0, align 4
@CS35L35_SP_DRV_MASK = common dso_local global i32 0, align 4
@CS35L35_SP_DRV_SHIFT = common dso_local global i32 0, align 4
@CS35L35_SP_FMT_CTL3 = common dso_local global i32 0, align 4
@CS35L35_SP_I2S_DRV_MASK = common dso_local global i32 0, align 4
@CS35L35_SP_I2S_DRV_SHIFT = common dso_local global i32 0, align 4
@CS35L35_CH_BST_OVR_MASK = common dso_local global i32 0, align 4
@CS35L35_CH_BST_OVR_SHIFT = common dso_local global i32 0, align 4
@CS35L35_CH_BST_LIM_MASK = common dso_local global i32 0, align 4
@CS35L35_CH_BST_LIM_SHIFT = common dso_local global i32 0, align 4
@CS35L35_CH_MEM_DEPTH_MASK = common dso_local global i32 0, align 4
@CS35L35_CH_MEM_DEPTH_SHIFT = common dso_local global i32 0, align 4
@CS35L35_CLASS_H_HEADRM_CTL = common dso_local global i32 0, align 4
@CS35L35_CH_HDRM_CTL_MASK = common dso_local global i32 0, align 4
@CS35L35_CH_HDRM_CTL_SHIFT = common dso_local global i32 0, align 4
@CS35L35_CLASS_H_RELEASE_RATE = common dso_local global i32 0, align 4
@CS35L35_CH_REL_RATE_MASK = common dso_local global i32 0, align 4
@CS35L35_CH_REL_RATE_SHIFT = common dso_local global i32 0, align 4
@CS35L35_CLASS_H_FET_DRIVE_CTL = common dso_local global i32 0, align 4
@CS35L35_CH_WKFET_DIS_MASK = common dso_local global i32 0, align 4
@CS35L35_CH_WKFET_DIS_SHIFT = common dso_local global i32 0, align 4
@CS35L35_CH_WKFET_DEL_MASK = common dso_local global i32 0, align 4
@CS35L35_CH_WKFET_DEL_SHIFT = common dso_local global i32 0, align 4
@CS35L35_CH_WKFET_THLD_MASK = common dso_local global i32 0, align 4
@CS35L35_CH_WKFET_THLD_SHIFT = common dso_local global i32 0, align 4
@CS35L35_CLASS_H_VP_CTL = common dso_local global i32 0, align 4
@CS35L35_CH_VP_AUTO_MASK = common dso_local global i32 0, align 4
@CS35L35_CH_VP_AUTO_SHIFT = common dso_local global i32 0, align 4
@CS35L35_CH_VP_RATE_MASK = common dso_local global i32 0, align 4
@CS35L35_CH_VP_RATE_SHIFT = common dso_local global i32 0, align 4
@CS35L35_CH_VP_MAN_MASK = common dso_local global i32 0, align 4
@CS35L35_CH_VP_MAN_SHIFT = common dso_local global i32 0, align 4
@CS35L35_SPKMON_DEPTH_CTL = common dso_local global i32 0, align 4
@CS35L35_VMON_DEPTH_MASK = common dso_local global i32 0, align 4
@CS35L35_VMON_DEPTH_SHIFT = common dso_local global i32 0, align 4
@CS35L35_VMON_TXLOC_CTL = common dso_local global i32 0, align 4
@CS35L35_MON_TXLOC_MASK = common dso_local global i32 0, align 4
@CS35L35_MON_TXLOC_SHIFT = common dso_local global i32 0, align 4
@CS35L35_MON_FRM_MASK = common dso_local global i32 0, align 4
@CS35L35_MON_FRM_SHIFT = common dso_local global i32 0, align 4
@CS35L35_IMON_DEPTH_MASK = common dso_local global i32 0, align 4
@CS35L35_IMON_DEPTH_SHIFT = common dso_local global i32 0, align 4
@CS35L35_IMON_TXLOC_CTL = common dso_local global i32 0, align 4
@CS35L35_IMON_SCALE_CTL = common dso_local global i32 0, align 4
@CS35L35_IMON_SCALE_MASK = common dso_local global i32 0, align 4
@CS35L35_IMON_SCALE_SHIFT = common dso_local global i32 0, align 4
@CS35L35_SUPMON_DEPTH_CTL = common dso_local global i32 0, align 4
@CS35L35_VPMON_DEPTH_MASK = common dso_local global i32 0, align 4
@CS35L35_VPMON_DEPTH_SHIFT = common dso_local global i32 0, align 4
@CS35L35_VPMON_TXLOC_CTL = common dso_local global i32 0, align 4
@CS35L35_VBSTMON_DEPTH_MASK = common dso_local global i32 0, align 4
@CS35L35_VBSTMON_DEPTH_SHIFT = common dso_local global i32 0, align 4
@CS35L35_VBSTMON_TXLOC_CTL = common dso_local global i32 0, align 4
@CS35L35_VPBRSTAT_DEPTH_MASK = common dso_local global i32 0, align 4
@CS35L35_VPBRSTAT_DEPTH_SHIFT = common dso_local global i32 0, align 4
@CS35L35_VPBR_STATUS_TXLOC_CTL = common dso_local global i32 0, align 4
@CS35L35_ZEROFILL_DEPTH_MASK = common dso_local global i32 0, align 4
@CS35L35_ZEROFILL_DEPTH_SHIFT = common dso_local global i32 0, align 4
@CS35L35_ZERO_FILL_LOC_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @cs35l35_component_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs35l35_component_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.cs35l35_private*, align 8
  %5 = alloca %struct.classh_cfg*, align 8
  %6 = alloca %struct.monitor_cfg*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = call %struct.cs35l35_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.cs35l35_private* %9, %struct.cs35l35_private** %4, align 8
  %10 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %11 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 11
  store %struct.classh_cfg* %12, %struct.classh_cfg** %5, align 8
  %13 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %14 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 10
  store %struct.monitor_cfg* %15, %struct.monitor_cfg** %6, align 8
  %16 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %17 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %1
  %22 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %23 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @CS35L35_BST_CVTR_V_CTL, align 4
  %26 = load i32, i32* @CS35L35_BST_CTL_MASK, align 4
  %27 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %28 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @regmap_update_bits(i32 %24, i32 %25, i32 %26, i32 %30)
  br label %32

32:                                               ; preds = %21, %1
  %33 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %34 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %40 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @CS35L35_BST_PEAK_I, align 4
  %43 = load i32, i32* @CS35L35_BST_IPK_MASK, align 4
  %44 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %45 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CS35L35_BST_IPK_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = call i32 @regmap_update_bits(i32 %41, i32 %42, i32 %43, i32 %49)
  br label %51

51:                                               ; preds = %38, %32
  %52 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %53 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %54 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 9
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @cs35l35_boost_inductor(%struct.cs35l35_private* %52, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %627

62:                                               ; preds = %51
  %63 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %64 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %62
  %69 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %70 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @CS35L35_PROTECT_CTL, align 4
  %73 = load i32, i32* @CS35L35_AMP_GAIN_ZC_MASK, align 4
  %74 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %75 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @CS35L35_AMP_GAIN_ZC_SHIFT, align 4
  %79 = shl i32 %77, %78
  %80 = call i32 @regmap_update_bits(i32 %71, i32 %72, i32 %73, i32 %79)
  br label %81

81:                                               ; preds = %68, %62
  %82 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %83 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %81
  %88 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %89 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @CS35L35_AUDIN_RXLOC_CTL, align 4
  %92 = load i32, i32* @CS35L35_AUD_IN_LR_MASK, align 4
  %93 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %94 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @CS35L35_AUD_IN_LR_SHIFT, align 4
  %98 = shl i32 %96, %97
  %99 = call i32 @regmap_update_bits(i32 %90, i32 %91, i32 %92, i32 %98)
  br label %100

100:                                              ; preds = %87, %81
  %101 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %102 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 8
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %144

106:                                              ; preds = %100
  %107 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %108 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @CS35L35_ADVIN_RXLOC_CTL, align 4
  %111 = load i32, i32* @CS35L35_ADV_IN_LR_MASK, align 4
  %112 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %113 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @CS35L35_ADV_IN_LR_SHIFT, align 4
  %117 = shl i32 %115, %116
  %118 = call i32 @regmap_update_bits(i32 %109, i32 %110, i32 %111, i32 %117)
  %119 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %120 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 7
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %106
  %125 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %126 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @CS35L35_CLASS_H_CTL, align 4
  %129 = load i32, i32* @CS35L35_CH_STEREO_MASK, align 4
  %130 = load i32, i32* @CS35L35_CH_STEREO_SHIFT, align 4
  %131 = shl i32 1, %130
  %132 = call i32 @regmap_update_bits(i32 %127, i32 %128, i32 %129, i32 %131)
  br label %133

133:                                              ; preds = %124, %106
  %134 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %135 = load i32, i32* @cs35l35_adv_controls, align 4
  %136 = load i32, i32* @cs35l35_adv_controls, align 4
  %137 = call i32 @ARRAY_SIZE(i32 %136)
  %138 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %134, i32 %135, i32 %137)
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %7, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %133
  %142 = load i32, i32* %7, align 4
  store i32 %142, i32* %2, align 4
  br label %627

143:                                              ; preds = %133
  br label %144

144:                                              ; preds = %143, %100
  %145 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %146 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %144
  %151 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %152 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @CS35L35_CLK_CTL1, align 4
  %155 = load i32, i32* @CS35L35_SP_DRV_MASK, align 4
  %156 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %157 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @CS35L35_SP_DRV_SHIFT, align 4
  %161 = shl i32 %159, %160
  %162 = call i32 @regmap_update_bits(i32 %153, i32 %154, i32 %155, i32 %161)
  br label %163

163:                                              ; preds = %150, %144
  %164 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %165 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 6
  %167 = load i32, i32* %166, align 8
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %182

169:                                              ; preds = %163
  %170 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %171 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @CS35L35_SP_FMT_CTL3, align 4
  %174 = load i32, i32* @CS35L35_SP_I2S_DRV_MASK, align 4
  %175 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %176 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 6
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @CS35L35_SP_I2S_DRV_SHIFT, align 4
  %180 = shl i32 %178, %179
  %181 = call i32 @regmap_update_bits(i32 %172, i32 %173, i32 %174, i32 %180)
  br label %182

182:                                              ; preds = %169, %163
  %183 = load %struct.classh_cfg*, %struct.classh_cfg** %5, align 8
  %184 = getelementptr inbounds %struct.classh_cfg, %struct.classh_cfg* %183, i32 0, i32 11
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %375

187:                                              ; preds = %182
  %188 = load %struct.classh_cfg*, %struct.classh_cfg** %5, align 8
  %189 = getelementptr inbounds %struct.classh_cfg, %struct.classh_cfg* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %204

192:                                              ; preds = %187
  %193 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %194 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @CS35L35_CLASS_H_CTL, align 4
  %197 = load i32, i32* @CS35L35_CH_BST_OVR_MASK, align 4
  %198 = load %struct.classh_cfg*, %struct.classh_cfg** %5, align 8
  %199 = getelementptr inbounds %struct.classh_cfg, %struct.classh_cfg* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @CS35L35_CH_BST_OVR_SHIFT, align 4
  %202 = shl i32 %200, %201
  %203 = call i32 @regmap_update_bits(i32 %195, i32 %196, i32 %197, i32 %202)
  br label %204

204:                                              ; preds = %192, %187
  %205 = load %struct.classh_cfg*, %struct.classh_cfg** %5, align 8
  %206 = getelementptr inbounds %struct.classh_cfg, %struct.classh_cfg* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %221

209:                                              ; preds = %204
  %210 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %211 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @CS35L35_CLASS_H_CTL, align 4
  %214 = load i32, i32* @CS35L35_CH_BST_LIM_MASK, align 4
  %215 = load %struct.classh_cfg*, %struct.classh_cfg** %5, align 8
  %216 = getelementptr inbounds %struct.classh_cfg, %struct.classh_cfg* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @CS35L35_CH_BST_LIM_SHIFT, align 4
  %219 = shl i32 %217, %218
  %220 = call i32 @regmap_update_bits(i32 %212, i32 %213, i32 %214, i32 %219)
  br label %221

221:                                              ; preds = %209, %204
  %222 = load %struct.classh_cfg*, %struct.classh_cfg** %5, align 8
  %223 = getelementptr inbounds %struct.classh_cfg, %struct.classh_cfg* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %238

226:                                              ; preds = %221
  %227 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %228 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @CS35L35_CLASS_H_CTL, align 4
  %231 = load i32, i32* @CS35L35_CH_MEM_DEPTH_MASK, align 4
  %232 = load %struct.classh_cfg*, %struct.classh_cfg** %5, align 8
  %233 = getelementptr inbounds %struct.classh_cfg, %struct.classh_cfg* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @CS35L35_CH_MEM_DEPTH_SHIFT, align 4
  %236 = shl i32 %234, %235
  %237 = call i32 @regmap_update_bits(i32 %229, i32 %230, i32 %231, i32 %236)
  br label %238

238:                                              ; preds = %226, %221
  %239 = load %struct.classh_cfg*, %struct.classh_cfg** %5, align 8
  %240 = getelementptr inbounds %struct.classh_cfg, %struct.classh_cfg* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %255

243:                                              ; preds = %238
  %244 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %245 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @CS35L35_CLASS_H_HEADRM_CTL, align 4
  %248 = load i32, i32* @CS35L35_CH_HDRM_CTL_MASK, align 4
  %249 = load %struct.classh_cfg*, %struct.classh_cfg** %5, align 8
  %250 = getelementptr inbounds %struct.classh_cfg, %struct.classh_cfg* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @CS35L35_CH_HDRM_CTL_SHIFT, align 4
  %253 = shl i32 %251, %252
  %254 = call i32 @regmap_update_bits(i32 %246, i32 %247, i32 %248, i32 %253)
  br label %255

255:                                              ; preds = %243, %238
  %256 = load %struct.classh_cfg*, %struct.classh_cfg** %5, align 8
  %257 = getelementptr inbounds %struct.classh_cfg, %struct.classh_cfg* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 8
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %272

260:                                              ; preds = %255
  %261 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %262 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @CS35L35_CLASS_H_RELEASE_RATE, align 4
  %265 = load i32, i32* @CS35L35_CH_REL_RATE_MASK, align 4
  %266 = load %struct.classh_cfg*, %struct.classh_cfg** %5, align 8
  %267 = getelementptr inbounds %struct.classh_cfg, %struct.classh_cfg* %266, i32 0, i32 4
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* @CS35L35_CH_REL_RATE_SHIFT, align 4
  %270 = shl i32 %268, %269
  %271 = call i32 @regmap_update_bits(i32 %263, i32 %264, i32 %265, i32 %270)
  br label %272

272:                                              ; preds = %260, %255
  %273 = load %struct.classh_cfg*, %struct.classh_cfg** %5, align 8
  %274 = getelementptr inbounds %struct.classh_cfg, %struct.classh_cfg* %273, i32 0, i32 5
  %275 = load i32, i32* %274, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %289

277:                                              ; preds = %272
  %278 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %279 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @CS35L35_CLASS_H_FET_DRIVE_CTL, align 4
  %282 = load i32, i32* @CS35L35_CH_WKFET_DIS_MASK, align 4
  %283 = load %struct.classh_cfg*, %struct.classh_cfg** %5, align 8
  %284 = getelementptr inbounds %struct.classh_cfg, %struct.classh_cfg* %283, i32 0, i32 5
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @CS35L35_CH_WKFET_DIS_SHIFT, align 4
  %287 = shl i32 %285, %286
  %288 = call i32 @regmap_update_bits(i32 %280, i32 %281, i32 %282, i32 %287)
  br label %289

289:                                              ; preds = %277, %272
  %290 = load %struct.classh_cfg*, %struct.classh_cfg** %5, align 8
  %291 = getelementptr inbounds %struct.classh_cfg, %struct.classh_cfg* %290, i32 0, i32 6
  %292 = load i32, i32* %291, align 8
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %306

294:                                              ; preds = %289
  %295 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %296 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = load i32, i32* @CS35L35_CLASS_H_FET_DRIVE_CTL, align 4
  %299 = load i32, i32* @CS35L35_CH_WKFET_DEL_MASK, align 4
  %300 = load %struct.classh_cfg*, %struct.classh_cfg** %5, align 8
  %301 = getelementptr inbounds %struct.classh_cfg, %struct.classh_cfg* %300, i32 0, i32 6
  %302 = load i32, i32* %301, align 8
  %303 = load i32, i32* @CS35L35_CH_WKFET_DEL_SHIFT, align 4
  %304 = shl i32 %302, %303
  %305 = call i32 @regmap_update_bits(i32 %297, i32 %298, i32 %299, i32 %304)
  br label %306

306:                                              ; preds = %294, %289
  %307 = load %struct.classh_cfg*, %struct.classh_cfg** %5, align 8
  %308 = getelementptr inbounds %struct.classh_cfg, %struct.classh_cfg* %307, i32 0, i32 7
  %309 = load i32, i32* %308, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %323

311:                                              ; preds = %306
  %312 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %313 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @CS35L35_CLASS_H_FET_DRIVE_CTL, align 4
  %316 = load i32, i32* @CS35L35_CH_WKFET_THLD_MASK, align 4
  %317 = load %struct.classh_cfg*, %struct.classh_cfg** %5, align 8
  %318 = getelementptr inbounds %struct.classh_cfg, %struct.classh_cfg* %317, i32 0, i32 7
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* @CS35L35_CH_WKFET_THLD_SHIFT, align 4
  %321 = shl i32 %319, %320
  %322 = call i32 @regmap_update_bits(i32 %314, i32 %315, i32 %316, i32 %321)
  br label %323

323:                                              ; preds = %311, %306
  %324 = load %struct.classh_cfg*, %struct.classh_cfg** %5, align 8
  %325 = getelementptr inbounds %struct.classh_cfg, %struct.classh_cfg* %324, i32 0, i32 8
  %326 = load i32, i32* %325, align 8
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %340

328:                                              ; preds = %323
  %329 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %330 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = load i32, i32* @CS35L35_CLASS_H_VP_CTL, align 4
  %333 = load i32, i32* @CS35L35_CH_VP_AUTO_MASK, align 4
  %334 = load %struct.classh_cfg*, %struct.classh_cfg** %5, align 8
  %335 = getelementptr inbounds %struct.classh_cfg, %struct.classh_cfg* %334, i32 0, i32 8
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* @CS35L35_CH_VP_AUTO_SHIFT, align 4
  %338 = shl i32 %336, %337
  %339 = call i32 @regmap_update_bits(i32 %331, i32 %332, i32 %333, i32 %338)
  br label %340

340:                                              ; preds = %328, %323
  %341 = load %struct.classh_cfg*, %struct.classh_cfg** %5, align 8
  %342 = getelementptr inbounds %struct.classh_cfg, %struct.classh_cfg* %341, i32 0, i32 9
  %343 = load i32, i32* %342, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %357

345:                                              ; preds = %340
  %346 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %347 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = load i32, i32* @CS35L35_CLASS_H_VP_CTL, align 4
  %350 = load i32, i32* @CS35L35_CH_VP_RATE_MASK, align 4
  %351 = load %struct.classh_cfg*, %struct.classh_cfg** %5, align 8
  %352 = getelementptr inbounds %struct.classh_cfg, %struct.classh_cfg* %351, i32 0, i32 9
  %353 = load i32, i32* %352, align 4
  %354 = load i32, i32* @CS35L35_CH_VP_RATE_SHIFT, align 4
  %355 = shl i32 %353, %354
  %356 = call i32 @regmap_update_bits(i32 %348, i32 %349, i32 %350, i32 %355)
  br label %357

357:                                              ; preds = %345, %340
  %358 = load %struct.classh_cfg*, %struct.classh_cfg** %5, align 8
  %359 = getelementptr inbounds %struct.classh_cfg, %struct.classh_cfg* %358, i32 0, i32 10
  %360 = load i32, i32* %359, align 8
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %374

362:                                              ; preds = %357
  %363 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %364 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = load i32, i32* @CS35L35_CLASS_H_VP_CTL, align 4
  %367 = load i32, i32* @CS35L35_CH_VP_MAN_MASK, align 4
  %368 = load %struct.classh_cfg*, %struct.classh_cfg** %5, align 8
  %369 = getelementptr inbounds %struct.classh_cfg, %struct.classh_cfg* %368, i32 0, i32 10
  %370 = load i32, i32* %369, align 8
  %371 = load i32, i32* @CS35L35_CH_VP_MAN_SHIFT, align 4
  %372 = shl i32 %370, %371
  %373 = call i32 @regmap_update_bits(i32 %365, i32 %366, i32 %367, i32 %372)
  br label %374

374:                                              ; preds = %362, %357
  br label %375

375:                                              ; preds = %374, %182
  %376 = load %struct.monitor_cfg*, %struct.monitor_cfg** %6, align 8
  %377 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %376, i32 0, i32 24
  %378 = load i64, i64* %377, align 8
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %626

380:                                              ; preds = %375
  %381 = load %struct.monitor_cfg*, %struct.monitor_cfg** %6, align 8
  %382 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %381, i32 0, i32 23
  %383 = load i64, i64* %382, align 8
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %419

385:                                              ; preds = %380
  %386 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %387 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 8
  %389 = load i32, i32* @CS35L35_SPKMON_DEPTH_CTL, align 4
  %390 = load i32, i32* @CS35L35_VMON_DEPTH_MASK, align 4
  %391 = load %struct.monitor_cfg*, %struct.monitor_cfg** %6, align 8
  %392 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 8
  %394 = load i32, i32* @CS35L35_VMON_DEPTH_SHIFT, align 4
  %395 = shl i32 %393, %394
  %396 = call i32 @regmap_update_bits(i32 %388, i32 %389, i32 %390, i32 %395)
  %397 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %398 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = load i32, i32* @CS35L35_VMON_TXLOC_CTL, align 4
  %401 = load i32, i32* @CS35L35_MON_TXLOC_MASK, align 4
  %402 = load %struct.monitor_cfg*, %struct.monitor_cfg** %6, align 8
  %403 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %402, i32 0, i32 1
  %404 = load i32, i32* %403, align 4
  %405 = load i32, i32* @CS35L35_MON_TXLOC_SHIFT, align 4
  %406 = shl i32 %404, %405
  %407 = call i32 @regmap_update_bits(i32 %399, i32 %400, i32 %401, i32 %406)
  %408 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %409 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = load i32, i32* @CS35L35_VMON_TXLOC_CTL, align 4
  %412 = load i32, i32* @CS35L35_MON_FRM_MASK, align 4
  %413 = load %struct.monitor_cfg*, %struct.monitor_cfg** %6, align 8
  %414 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %413, i32 0, i32 2
  %415 = load i32, i32* %414, align 8
  %416 = load i32, i32* @CS35L35_MON_FRM_SHIFT, align 4
  %417 = shl i32 %415, %416
  %418 = call i32 @regmap_update_bits(i32 %410, i32 %411, i32 %412, i32 %417)
  br label %419

419:                                              ; preds = %385, %380
  %420 = load %struct.monitor_cfg*, %struct.monitor_cfg** %6, align 8
  %421 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %420, i32 0, i32 22
  %422 = load i64, i64* %421, align 8
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %424, label %469

424:                                              ; preds = %419
  %425 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %426 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 8
  %428 = load i32, i32* @CS35L35_SPKMON_DEPTH_CTL, align 4
  %429 = load i32, i32* @CS35L35_IMON_DEPTH_MASK, align 4
  %430 = load %struct.monitor_cfg*, %struct.monitor_cfg** %6, align 8
  %431 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %430, i32 0, i32 3
  %432 = load i32, i32* %431, align 4
  %433 = load i32, i32* @CS35L35_IMON_DEPTH_SHIFT, align 4
  %434 = shl i32 %432, %433
  %435 = call i32 @regmap_update_bits(i32 %427, i32 %428, i32 %429, i32 %434)
  %436 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %437 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 8
  %439 = load i32, i32* @CS35L35_IMON_TXLOC_CTL, align 4
  %440 = load i32, i32* @CS35L35_MON_TXLOC_MASK, align 4
  %441 = load %struct.monitor_cfg*, %struct.monitor_cfg** %6, align 8
  %442 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %441, i32 0, i32 4
  %443 = load i32, i32* %442, align 8
  %444 = load i32, i32* @CS35L35_MON_TXLOC_SHIFT, align 4
  %445 = shl i32 %443, %444
  %446 = call i32 @regmap_update_bits(i32 %438, i32 %439, i32 %440, i32 %445)
  %447 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %448 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 8
  %450 = load i32, i32* @CS35L35_IMON_TXLOC_CTL, align 4
  %451 = load i32, i32* @CS35L35_MON_FRM_MASK, align 4
  %452 = load %struct.monitor_cfg*, %struct.monitor_cfg** %6, align 8
  %453 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %452, i32 0, i32 5
  %454 = load i32, i32* %453, align 4
  %455 = load i32, i32* @CS35L35_MON_FRM_SHIFT, align 4
  %456 = shl i32 %454, %455
  %457 = call i32 @regmap_update_bits(i32 %449, i32 %450, i32 %451, i32 %456)
  %458 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %459 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 8
  %461 = load i32, i32* @CS35L35_IMON_SCALE_CTL, align 4
  %462 = load i32, i32* @CS35L35_IMON_SCALE_MASK, align 4
  %463 = load %struct.monitor_cfg*, %struct.monitor_cfg** %6, align 8
  %464 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %463, i32 0, i32 6
  %465 = load i32, i32* %464, align 8
  %466 = load i32, i32* @CS35L35_IMON_SCALE_SHIFT, align 4
  %467 = shl i32 %465, %466
  %468 = call i32 @regmap_update_bits(i32 %460, i32 %461, i32 %462, i32 %467)
  br label %469

469:                                              ; preds = %424, %419
  %470 = load %struct.monitor_cfg*, %struct.monitor_cfg** %6, align 8
  %471 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %470, i32 0, i32 21
  %472 = load i64, i64* %471, align 8
  %473 = icmp ne i64 %472, 0
  br i1 %473, label %474, label %508

474:                                              ; preds = %469
  %475 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %476 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 8
  %478 = load i32, i32* @CS35L35_SUPMON_DEPTH_CTL, align 4
  %479 = load i32, i32* @CS35L35_VPMON_DEPTH_MASK, align 4
  %480 = load %struct.monitor_cfg*, %struct.monitor_cfg** %6, align 8
  %481 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %480, i32 0, i32 7
  %482 = load i32, i32* %481, align 4
  %483 = load i32, i32* @CS35L35_VPMON_DEPTH_SHIFT, align 4
  %484 = shl i32 %482, %483
  %485 = call i32 @regmap_update_bits(i32 %477, i32 %478, i32 %479, i32 %484)
  %486 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %487 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 8
  %489 = load i32, i32* @CS35L35_VPMON_TXLOC_CTL, align 4
  %490 = load i32, i32* @CS35L35_MON_TXLOC_MASK, align 4
  %491 = load %struct.monitor_cfg*, %struct.monitor_cfg** %6, align 8
  %492 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %491, i32 0, i32 8
  %493 = load i32, i32* %492, align 8
  %494 = load i32, i32* @CS35L35_MON_TXLOC_SHIFT, align 4
  %495 = shl i32 %493, %494
  %496 = call i32 @regmap_update_bits(i32 %488, i32 %489, i32 %490, i32 %495)
  %497 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %498 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %497, i32 0, i32 0
  %499 = load i32, i32* %498, align 8
  %500 = load i32, i32* @CS35L35_VPMON_TXLOC_CTL, align 4
  %501 = load i32, i32* @CS35L35_MON_FRM_MASK, align 4
  %502 = load %struct.monitor_cfg*, %struct.monitor_cfg** %6, align 8
  %503 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %502, i32 0, i32 9
  %504 = load i32, i32* %503, align 4
  %505 = load i32, i32* @CS35L35_MON_FRM_SHIFT, align 4
  %506 = shl i32 %504, %505
  %507 = call i32 @regmap_update_bits(i32 %499, i32 %500, i32 %501, i32 %506)
  br label %508

508:                                              ; preds = %474, %469
  %509 = load %struct.monitor_cfg*, %struct.monitor_cfg** %6, align 8
  %510 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %509, i32 0, i32 20
  %511 = load i64, i64* %510, align 8
  %512 = icmp ne i64 %511, 0
  br i1 %512, label %513, label %547

513:                                              ; preds = %508
  %514 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %515 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %514, i32 0, i32 0
  %516 = load i32, i32* %515, align 8
  %517 = load i32, i32* @CS35L35_SUPMON_DEPTH_CTL, align 4
  %518 = load i32, i32* @CS35L35_VBSTMON_DEPTH_MASK, align 4
  %519 = load %struct.monitor_cfg*, %struct.monitor_cfg** %6, align 8
  %520 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %519, i32 0, i32 7
  %521 = load i32, i32* %520, align 4
  %522 = load i32, i32* @CS35L35_VBSTMON_DEPTH_SHIFT, align 4
  %523 = shl i32 %521, %522
  %524 = call i32 @regmap_update_bits(i32 %516, i32 %517, i32 %518, i32 %523)
  %525 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %526 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %525, i32 0, i32 0
  %527 = load i32, i32* %526, align 8
  %528 = load i32, i32* @CS35L35_VBSTMON_TXLOC_CTL, align 4
  %529 = load i32, i32* @CS35L35_MON_TXLOC_MASK, align 4
  %530 = load %struct.monitor_cfg*, %struct.monitor_cfg** %6, align 8
  %531 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %530, i32 0, i32 10
  %532 = load i32, i32* %531, align 8
  %533 = load i32, i32* @CS35L35_MON_TXLOC_SHIFT, align 4
  %534 = shl i32 %532, %533
  %535 = call i32 @regmap_update_bits(i32 %527, i32 %528, i32 %529, i32 %534)
  %536 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %537 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %536, i32 0, i32 0
  %538 = load i32, i32* %537, align 8
  %539 = load i32, i32* @CS35L35_VBSTMON_TXLOC_CTL, align 4
  %540 = load i32, i32* @CS35L35_MON_FRM_MASK, align 4
  %541 = load %struct.monitor_cfg*, %struct.monitor_cfg** %6, align 8
  %542 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %541, i32 0, i32 11
  %543 = load i32, i32* %542, align 4
  %544 = load i32, i32* @CS35L35_MON_FRM_SHIFT, align 4
  %545 = shl i32 %543, %544
  %546 = call i32 @regmap_update_bits(i32 %538, i32 %539, i32 %540, i32 %545)
  br label %547

547:                                              ; preds = %513, %508
  %548 = load %struct.monitor_cfg*, %struct.monitor_cfg** %6, align 8
  %549 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %548, i32 0, i32 19
  %550 = load i64, i64* %549, align 8
  %551 = icmp ne i64 %550, 0
  br i1 %551, label %552, label %586

552:                                              ; preds = %547
  %553 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %554 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %553, i32 0, i32 0
  %555 = load i32, i32* %554, align 8
  %556 = load i32, i32* @CS35L35_SUPMON_DEPTH_CTL, align 4
  %557 = load i32, i32* @CS35L35_VPBRSTAT_DEPTH_MASK, align 4
  %558 = load %struct.monitor_cfg*, %struct.monitor_cfg** %6, align 8
  %559 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %558, i32 0, i32 12
  %560 = load i32, i32* %559, align 8
  %561 = load i32, i32* @CS35L35_VPBRSTAT_DEPTH_SHIFT, align 4
  %562 = shl i32 %560, %561
  %563 = call i32 @regmap_update_bits(i32 %555, i32 %556, i32 %557, i32 %562)
  %564 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %565 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %564, i32 0, i32 0
  %566 = load i32, i32* %565, align 8
  %567 = load i32, i32* @CS35L35_VPBR_STATUS_TXLOC_CTL, align 4
  %568 = load i32, i32* @CS35L35_MON_TXLOC_MASK, align 4
  %569 = load %struct.monitor_cfg*, %struct.monitor_cfg** %6, align 8
  %570 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %569, i32 0, i32 13
  %571 = load i32, i32* %570, align 4
  %572 = load i32, i32* @CS35L35_MON_TXLOC_SHIFT, align 4
  %573 = shl i32 %571, %572
  %574 = call i32 @regmap_update_bits(i32 %566, i32 %567, i32 %568, i32 %573)
  %575 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %576 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %575, i32 0, i32 0
  %577 = load i32, i32* %576, align 8
  %578 = load i32, i32* @CS35L35_VPBR_STATUS_TXLOC_CTL, align 4
  %579 = load i32, i32* @CS35L35_MON_FRM_MASK, align 4
  %580 = load %struct.monitor_cfg*, %struct.monitor_cfg** %6, align 8
  %581 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %580, i32 0, i32 14
  %582 = load i32, i32* %581, align 8
  %583 = load i32, i32* @CS35L35_MON_FRM_SHIFT, align 4
  %584 = shl i32 %582, %583
  %585 = call i32 @regmap_update_bits(i32 %577, i32 %578, i32 %579, i32 %584)
  br label %586

586:                                              ; preds = %552, %547
  %587 = load %struct.monitor_cfg*, %struct.monitor_cfg** %6, align 8
  %588 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %587, i32 0, i32 18
  %589 = load i64, i64* %588, align 8
  %590 = icmp ne i64 %589, 0
  br i1 %590, label %591, label %625

591:                                              ; preds = %586
  %592 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %593 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %592, i32 0, i32 0
  %594 = load i32, i32* %593, align 8
  %595 = load i32, i32* @CS35L35_SUPMON_DEPTH_CTL, align 4
  %596 = load i32, i32* @CS35L35_ZEROFILL_DEPTH_MASK, align 4
  %597 = load %struct.monitor_cfg*, %struct.monitor_cfg** %6, align 8
  %598 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %597, i32 0, i32 15
  %599 = load i32, i32* %598, align 4
  %600 = load i32, i32* @CS35L35_ZEROFILL_DEPTH_SHIFT, align 4
  %601 = shl i32 %599, %600
  %602 = call i32 @regmap_update_bits(i32 %594, i32 %595, i32 %596, i32 %601)
  %603 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %604 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %603, i32 0, i32 0
  %605 = load i32, i32* %604, align 8
  %606 = load i32, i32* @CS35L35_ZERO_FILL_LOC_CTL, align 4
  %607 = load i32, i32* @CS35L35_MON_TXLOC_MASK, align 4
  %608 = load %struct.monitor_cfg*, %struct.monitor_cfg** %6, align 8
  %609 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %608, i32 0, i32 16
  %610 = load i32, i32* %609, align 8
  %611 = load i32, i32* @CS35L35_MON_TXLOC_SHIFT, align 4
  %612 = shl i32 %610, %611
  %613 = call i32 @regmap_update_bits(i32 %605, i32 %606, i32 %607, i32 %612)
  %614 = load %struct.cs35l35_private*, %struct.cs35l35_private** %4, align 8
  %615 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %614, i32 0, i32 0
  %616 = load i32, i32* %615, align 8
  %617 = load i32, i32* @CS35L35_ZERO_FILL_LOC_CTL, align 4
  %618 = load i32, i32* @CS35L35_MON_FRM_MASK, align 4
  %619 = load %struct.monitor_cfg*, %struct.monitor_cfg** %6, align 8
  %620 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %619, i32 0, i32 17
  %621 = load i32, i32* %620, align 4
  %622 = load i32, i32* @CS35L35_MON_FRM_SHIFT, align 4
  %623 = shl i32 %621, %622
  %624 = call i32 @regmap_update_bits(i32 %616, i32 %617, i32 %618, i32 %623)
  br label %625

625:                                              ; preds = %591, %586
  br label %626

626:                                              ; preds = %625, %375
  store i32 0, i32* %2, align 4
  br label %627

627:                                              ; preds = %626, %141, %60
  %628 = load i32, i32* %2, align 4
  ret i32 %628
}

declare dso_local %struct.cs35l35_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @cs35l35_boost_inductor(%struct.cs35l35_private*, i32) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
