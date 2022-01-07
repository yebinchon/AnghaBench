; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l36.c_cs35l36_component_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l36.c_cs35l36_component_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.cs35l36_private = type { i64, i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64 }

@CS35L36_REV_A0 = common dso_local global i64 0, align 8
@CS35L36_BSTCVRT_DCM_CTRL = common dso_local global i32 0, align 4
@CS35L36_DCM_AUTO_MASK = common dso_local global i32 0, align 4
@CS35L36_TESTKEY_CTRL = common dso_local global i32 0, align 4
@CS35L36_TEST_UNLOCK1 = common dso_local global i32 0, align 4
@CS35L36_TEST_UNLOCK2 = common dso_local global i32 0, align 4
@CS35L36_BST_TST_MANUAL = common dso_local global i32 0, align 4
@CS35L36_BST_MAN_IPKCOMP_MASK = common dso_local global i32 0, align 4
@CS35L36_BST_MAN_IPKCOMP_SHIFT = common dso_local global i32 0, align 4
@CS35L36_BST_MAN_IPKCOMP_EN_MASK = common dso_local global i32 0, align 4
@CS35L36_TEST_LOCK1 = common dso_local global i32 0, align 4
@CS35L36_TEST_LOCK2 = common dso_local global i32 0, align 4
@CS35L36_AMP_DIG_VOL_CTRL = common dso_local global i32 0, align 4
@CS35L36_AMP_PCM_INV_MASK = common dso_local global i32 0, align 4
@CS35L36_ASP_TX_PIN_CTRL = common dso_local global i32 0, align 4
@CS35L36_ASP_TX_HIZ_MASK = common dso_local global i32 0, align 4
@CS35L36_VI_SPKMON_FILT = common dso_local global i32 0, align 4
@CS35L36_IMON_POL_MASK = common dso_local global i32 0, align 4
@CS35L36_VMON_POL_MASK = common dso_local global i32 0, align 4
@CS35L36_BSTCVRT_VCTRL1 = common dso_local global i32 0, align 4
@CS35L35_BSTCVRT_CTL_MASK = common dso_local global i32 0, align 4
@CS35L36_BSTCVRT_VCTRL2 = common dso_local global i32 0, align 4
@CS35L35_BSTCVRT_CTL_SEL_MASK = common dso_local global i32 0, align 4
@CS35L36_BSTCVRT_PEAK_CUR = common dso_local global i32 0, align 4
@CS35L36_BST_IPK_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Boost inductor config failed(%d)\0A\00", align 1
@CS35L36_DTEMP_WARN_THLD = common dso_local global i32 0, align 4
@CS35L36_TEMP_THLD_MASK = common dso_local global i32 0, align 4
@CS35L36_PAD_INTERFACE = common dso_local global i32 0, align 4
@CS35L36_INT_DRV_SEL_MASK = common dso_local global i32 0, align 4
@CS35L36_INT_DRV_SEL_SHIFT = common dso_local global i32 0, align 4
@CS35L36_INT_GPIO_SEL_MASK = common dso_local global i32 0, align 4
@CS35L36_INT_GPIO_SEL_SHIFT = common dso_local global i32 0, align 4
@CS35L36_10V_L36 = common dso_local global i64 0, align 8
@CS35L36_BSTCVRT_OVERVOLT_CTRL = common dso_local global i32 0, align 4
@CS35L36_BST_OVP_THLD_MASK = common dso_local global i32 0, align 4
@CS35L36_BST_OVP_THLD_11V = common dso_local global i32 0, align 4
@CS35L36_BST_ANA2_TEST = common dso_local global i32 0, align 4
@CS35L36_BST_OVP_TRIM_MASK = common dso_local global i32 0, align 4
@CS35L36_BST_OVP_TRIM_11V = common dso_local global i32 0, align 4
@CS35L36_BST_OVP_TRIM_SHIFT = common dso_local global i32 0, align 4
@CS35L36_BST_CTRL_LIM_MASK = common dso_local global i32 0, align 4
@CS35L36_BST_CTRL_LIM_SHIFT = common dso_local global i32 0, align 4
@CS35L36_BST_CTRL_10V_CLAMP = common dso_local global i32 0, align 4
@CS35L36_CTRL_OVRRIDE = common dso_local global i32 0, align 4
@CS35L36_SYNC_GLOBAL_OVR_MASK = common dso_local global i32 0, align 4
@CS35L36_SYNC_GLOBAL_OVR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @cs35l36_component_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs35l36_component_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.cs35l36_private*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.cs35l36_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.cs35l36_private* %7, %struct.cs35l36_private** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %9 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CS35L36_REV_A0, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %66

13:                                               ; preds = %1
  %14 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %15 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 11
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %66

19:                                               ; preds = %13
  %20 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %21 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @CS35L36_BSTCVRT_DCM_CTRL, align 4
  %24 = load i32, i32* @CS35L36_DCM_AUTO_MASK, align 4
  %25 = load i32, i32* @CS35L36_DCM_AUTO_MASK, align 4
  %26 = call i32 @regmap_update_bits(i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %28 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @CS35L36_TESTKEY_CTRL, align 4
  %31 = load i32, i32* @CS35L36_TEST_UNLOCK1, align 4
  %32 = call i32 @regmap_write(i32 %29, i32 %30, i32 %31)
  %33 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %34 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @CS35L36_TESTKEY_CTRL, align 4
  %37 = load i32, i32* @CS35L36_TEST_UNLOCK2, align 4
  %38 = call i32 @regmap_write(i32 %35, i32 %36, i32 %37)
  %39 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %40 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @CS35L36_BST_TST_MANUAL, align 4
  %43 = load i32, i32* @CS35L36_BST_MAN_IPKCOMP_MASK, align 4
  %44 = load i32, i32* @CS35L36_BST_MAN_IPKCOMP_SHIFT, align 4
  %45 = shl i32 0, %44
  %46 = call i32 @regmap_update_bits(i32 %41, i32 %42, i32 %43, i32 %45)
  %47 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %48 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @CS35L36_BST_TST_MANUAL, align 4
  %51 = load i32, i32* @CS35L36_BST_MAN_IPKCOMP_EN_MASK, align 4
  %52 = load i32, i32* @CS35L36_BST_MAN_IPKCOMP_EN_MASK, align 4
  %53 = call i32 @regmap_update_bits(i32 %49, i32 %50, i32 %51, i32 %52)
  %54 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %55 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @CS35L36_TESTKEY_CTRL, align 4
  %58 = load i32, i32* @CS35L36_TEST_LOCK1, align 4
  %59 = call i32 @regmap_write(i32 %56, i32 %57, i32 %58)
  %60 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %61 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @CS35L36_TESTKEY_CTRL, align 4
  %64 = load i32, i32* @CS35L36_TEST_LOCK2, align 4
  %65 = call i32 @regmap_write(i32 %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %19, %13, %1
  %67 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %68 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 10
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %66
  %73 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %74 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @CS35L36_AMP_DIG_VOL_CTRL, align 4
  %77 = load i32, i32* @CS35L36_AMP_PCM_INV_MASK, align 4
  %78 = load i32, i32* @CS35L36_AMP_PCM_INV_MASK, align 4
  %79 = call i32 @regmap_update_bits(i32 %75, i32 %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %72, %66
  %81 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %82 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 9
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %80
  %87 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %88 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @CS35L36_ASP_TX_PIN_CTRL, align 4
  %91 = load i32, i32* @CS35L36_ASP_TX_HIZ_MASK, align 4
  %92 = load i32, i32* @CS35L36_ASP_TX_HIZ_MASK, align 4
  %93 = call i32 @regmap_update_bits(i32 %89, i32 %90, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %86, %80
  %95 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %96 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 8
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %94
  %101 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %102 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @CS35L36_VI_SPKMON_FILT, align 4
  %105 = load i32, i32* @CS35L36_IMON_POL_MASK, align 4
  %106 = call i32 @regmap_update_bits(i32 %103, i32 %104, i32 %105, i32 0)
  br label %107

107:                                              ; preds = %100, %94
  %108 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %109 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 7
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %107
  %114 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %115 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @CS35L36_VI_SPKMON_FILT, align 4
  %118 = load i32, i32* @CS35L36_VMON_POL_MASK, align 4
  %119 = call i32 @regmap_update_bits(i32 %116, i32 %117, i32 %118, i32 0)
  br label %120

120:                                              ; preds = %113, %107
  %121 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %122 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %120
  %127 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %128 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @CS35L36_BSTCVRT_VCTRL1, align 4
  %131 = load i32, i32* @CS35L35_BSTCVRT_CTL_MASK, align 4
  %132 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %133 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @regmap_update_bits(i32 %129, i32 %130, i32 %131, i32 %135)
  br label %137

137:                                              ; preds = %126, %120
  %138 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %139 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %137
  %144 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %145 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @CS35L36_BSTCVRT_VCTRL2, align 4
  %148 = load i32, i32* @CS35L35_BSTCVRT_CTL_SEL_MASK, align 4
  %149 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %150 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @regmap_update_bits(i32 %146, i32 %147, i32 %148, i32 %152)
  br label %154

154:                                              ; preds = %143, %137
  %155 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %156 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %171

160:                                              ; preds = %154
  %161 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %162 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @CS35L36_BSTCVRT_PEAK_CUR, align 4
  %165 = load i32, i32* @CS35L36_BST_IPK_MASK, align 4
  %166 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %167 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @regmap_update_bits(i32 %163, i32 %164, i32 %165, i32 %169)
  br label %171

171:                                              ; preds = %160, %154
  %172 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %173 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 6
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %194

177:                                              ; preds = %171
  %178 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %179 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %180 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 6
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @cs35l36_boost_inductor(%struct.cs35l36_private* %178, i64 %182)
  store i32 %183, i32* %5, align 4
  %184 = load i32, i32* %5, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %177
  %187 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %188 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* %5, align 4
  %191 = call i32 @dev_err(i32 %189, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %190)
  %192 = load i32, i32* %5, align 4
  store i32 %192, i32* %2, align 4
  br label %320

193:                                              ; preds = %177
  br label %194

194:                                              ; preds = %193, %171
  %195 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %196 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %211

200:                                              ; preds = %194
  %201 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %202 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @CS35L36_DTEMP_WARN_THLD, align 4
  %205 = load i32, i32* @CS35L36_TEMP_THLD_MASK, align 4
  %206 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %207 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %206, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @regmap_update_bits(i32 %203, i32 %204, i32 %205, i32 %209)
  br label %211

211:                                              ; preds = %200, %194
  %212 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %213 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %212, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 8
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %230

217:                                              ; preds = %211
  %218 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %219 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @CS35L36_PAD_INTERFACE, align 4
  %222 = load i32, i32* @CS35L36_INT_DRV_SEL_MASK, align 4
  %223 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %224 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %223, i32 0, i32 3
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @CS35L36_INT_DRV_SEL_SHIFT, align 4
  %228 = shl i32 %226, %227
  %229 = call i32 @regmap_update_bits(i32 %220, i32 %221, i32 %222, i32 %228)
  br label %230

230:                                              ; preds = %217, %211
  %231 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %232 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %231, i32 0, i32 3
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 5
  %234 = load i32, i32* %233, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %249

236:                                              ; preds = %230
  %237 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %238 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @CS35L36_PAD_INTERFACE, align 4
  %241 = load i32, i32* @CS35L36_INT_GPIO_SEL_MASK, align 4
  %242 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %243 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %242, i32 0, i32 3
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 5
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @CS35L36_INT_GPIO_SEL_SHIFT, align 4
  %247 = shl i32 %245, %246
  %248 = call i32 @regmap_update_bits(i32 %239, i32 %240, i32 %241, i32 %247)
  br label %249

249:                                              ; preds = %236, %230
  %250 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %251 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @CS35L36_10V_L36, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %311

255:                                              ; preds = %249
  %256 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %257 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @CS35L36_BSTCVRT_OVERVOLT_CTRL, align 4
  %260 = load i32, i32* @CS35L36_BST_OVP_THLD_MASK, align 4
  %261 = load i32, i32* @CS35L36_BST_OVP_THLD_11V, align 4
  %262 = call i32 @regmap_update_bits(i32 %258, i32 %259, i32 %260, i32 %261)
  %263 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %264 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* @CS35L36_TESTKEY_CTRL, align 4
  %267 = load i32, i32* @CS35L36_TEST_UNLOCK1, align 4
  %268 = call i32 @regmap_write(i32 %265, i32 %266, i32 %267)
  %269 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %270 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @CS35L36_TESTKEY_CTRL, align 4
  %273 = load i32, i32* @CS35L36_TEST_UNLOCK2, align 4
  %274 = call i32 @regmap_write(i32 %271, i32 %272, i32 %273)
  %275 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %276 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @CS35L36_BST_ANA2_TEST, align 4
  %279 = load i32, i32* @CS35L36_BST_OVP_TRIM_MASK, align 4
  %280 = load i32, i32* @CS35L36_BST_OVP_TRIM_11V, align 4
  %281 = load i32, i32* @CS35L36_BST_OVP_TRIM_SHIFT, align 4
  %282 = shl i32 %280, %281
  %283 = call i32 @regmap_update_bits(i32 %277, i32 %278, i32 %279, i32 %282)
  %284 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %285 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @CS35L36_BSTCVRT_VCTRL2, align 4
  %288 = load i32, i32* @CS35L36_BST_CTRL_LIM_MASK, align 4
  %289 = load i32, i32* @CS35L36_BST_CTRL_LIM_SHIFT, align 4
  %290 = shl i32 1, %289
  %291 = call i32 @regmap_update_bits(i32 %286, i32 %287, i32 %288, i32 %290)
  %292 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %293 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @CS35L36_BSTCVRT_VCTRL1, align 4
  %296 = load i32, i32* @CS35L35_BSTCVRT_CTL_MASK, align 4
  %297 = load i32, i32* @CS35L36_BST_CTRL_10V_CLAMP, align 4
  %298 = call i32 @regmap_update_bits(i32 %294, i32 %295, i32 %296, i32 %297)
  %299 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %300 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* @CS35L36_TESTKEY_CTRL, align 4
  %303 = load i32, i32* @CS35L36_TEST_LOCK1, align 4
  %304 = call i32 @regmap_write(i32 %301, i32 %302, i32 %303)
  %305 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %306 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* @CS35L36_TESTKEY_CTRL, align 4
  %309 = load i32, i32* @CS35L36_TEST_LOCK2, align 4
  %310 = call i32 @regmap_write(i32 %307, i32 %308, i32 %309)
  br label %311

311:                                              ; preds = %255, %249
  %312 = load %struct.cs35l36_private*, %struct.cs35l36_private** %4, align 8
  %313 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @CS35L36_CTRL_OVRRIDE, align 4
  %316 = load i32, i32* @CS35L36_SYNC_GLOBAL_OVR_MASK, align 4
  %317 = load i32, i32* @CS35L36_SYNC_GLOBAL_OVR_SHIFT, align 4
  %318 = shl i32 0, %317
  %319 = call i32 @regmap_update_bits(i32 %314, i32 %315, i32 %316, i32 %318)
  store i32 0, i32* %2, align 4
  br label %320

320:                                              ; preds = %311, %186
  %321 = load i32, i32* %2, align 4
  ret i32 %321
}

declare dso_local %struct.cs35l36_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @cs35l36_boost_inductor(%struct.cs35l36_private*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
