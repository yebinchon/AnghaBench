; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_get_int_tkn.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_get_int_tkn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_astate_param = type { i32, i32 }
%struct.device = type { i32 }
%struct.snd_soc_tplg_vendor_value_elem = type { i32, i32 }
%struct.skl_dev = type { i32, i32, %struct.TYPE_3__, %struct.skl_module** }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.skl_astate_param* }
%struct.skl_module = type { %struct.skl_module_iface*, %struct.skl_module_res* }
%struct.skl_module_iface = type { i32 }
%struct.skl_module_res = type { i32, i32, i32 }

@skl_tplg_get_int_tkn.mod_idx = internal global i32 0, align 4
@skl_tplg_get_int_tkn.res_val_idx = internal global i32 0, align 4
@skl_tplg_get_int_tkn.intf_val_idx = internal global i32 0, align 4
@skl_tplg_get_int_tkn.dir = internal global i32 0, align 4
@skl_tplg_get_int_tkn.pin_idx = internal global i32 0, align 4
@skl_tplg_get_int_tkn.astate_table = internal global %struct.skl_astate_param* null, align 8
@skl_tplg_get_int_tkn.astate_cfg_idx = internal global i32 0, align 4
@skl_tplg_get_int_tkn.count = internal global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"More than one entry for A-State count\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SKL_MAX_ASTATE_CFG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Invalid A-State count %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Invalid A-State index %d\0A\00", align 1
@SKL_IN_DIR_BIT_MASK = common dso_local global i32 0, align 4
@SKL_PIN_COUNT_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Not a manifest token %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.snd_soc_tplg_vendor_value_elem*, %struct.skl_dev*)* @skl_tplg_get_int_tkn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_tplg_get_int_tkn(%struct.device* %0, %struct.snd_soc_tplg_vendor_value_elem* %1, %struct.skl_dev* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.snd_soc_tplg_vendor_value_elem*, align 8
  %7 = alloca %struct.skl_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.skl_module_res*, align 8
  %11 = alloca %struct.skl_module_iface*, align 8
  %12 = alloca %struct.skl_module*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.snd_soc_tplg_vendor_value_elem* %1, %struct.snd_soc_tplg_vendor_value_elem** %6, align 8
  store %struct.skl_dev* %2, %struct.skl_dev** %7, align 8
  store i32 0, i32* %8, align 4
  store %struct.skl_module_res* null, %struct.skl_module_res** %10, align 8
  store %struct.skl_module_iface* null, %struct.skl_module_iface** %11, align 8
  store %struct.skl_module* null, %struct.skl_module** %12, align 8
  %15 = load %struct.skl_dev*, %struct.skl_dev** %7, align 8
  %16 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %15, i32 0, i32 3
  %17 = load %struct.skl_module**, %struct.skl_module*** %16, align 8
  %18 = icmp ne %struct.skl_module** %17, null
  br i1 %18, label %19, label %39

19:                                               ; preds = %3
  %20 = load %struct.skl_dev*, %struct.skl_dev** %7, align 8
  %21 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %20, i32 0, i32 3
  %22 = load %struct.skl_module**, %struct.skl_module*** %21, align 8
  %23 = load i32, i32* @skl_tplg_get_int_tkn.mod_idx, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.skl_module*, %struct.skl_module** %22, i64 %24
  %26 = load %struct.skl_module*, %struct.skl_module** %25, align 8
  store %struct.skl_module* %26, %struct.skl_module** %12, align 8
  %27 = load %struct.skl_module*, %struct.skl_module** %12, align 8
  %28 = getelementptr inbounds %struct.skl_module, %struct.skl_module* %27, i32 0, i32 1
  %29 = load %struct.skl_module_res*, %struct.skl_module_res** %28, align 8
  %30 = load i32, i32* @skl_tplg_get_int_tkn.res_val_idx, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.skl_module_res, %struct.skl_module_res* %29, i64 %31
  store %struct.skl_module_res* %32, %struct.skl_module_res** %10, align 8
  %33 = load %struct.skl_module*, %struct.skl_module** %12, align 8
  %34 = getelementptr inbounds %struct.skl_module, %struct.skl_module* %33, i32 0, i32 0
  %35 = load %struct.skl_module_iface*, %struct.skl_module_iface** %34, align 8
  %36 = load i32, i32* @skl_tplg_get_int_tkn.intf_val_idx, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.skl_module_iface, %struct.skl_module_iface* %35, i64 %37
  store %struct.skl_module_iface* %38, %struct.skl_module_iface** %11, align 8
  br label %39

39:                                               ; preds = %19, %3
  %40 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %6, align 8
  %41 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %307 [
    i32 135, label %43
    i32 130, label %49
    i32 152, label %104
    i32 148, label %108
    i32 147, label %171
    i32 146, label %189
    i32 149, label %198
    i32 132, label %207
    i32 129, label %207
    i32 131, label %207
    i32 128, label %207
    i32 150, label %207
    i32 151, label %207
    i32 145, label %217
    i32 154, label %229
    i32 159, label %244
    i32 161, label %259
    i32 160, label %259
    i32 162, label %259
    i32 134, label %259
    i32 133, label %259
    i32 136, label %259
    i32 153, label %259
    i32 155, label %259
    i32 157, label %271
    i32 156, label %283
    i32 143, label %295
    i32 140, label %295
    i32 144, label %295
    i32 138, label %295
    i32 142, label %295
    i32 139, label %295
    i32 137, label %295
    i32 141, label %295
    i32 158, label %295
  ]

43:                                               ; preds = %39
  %44 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %6, align 8
  %45 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.skl_dev*, %struct.skl_dev** %7, align 8
  %48 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %315

49:                                               ; preds = %39
  %50 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %6, align 8
  %51 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.skl_dev*, %struct.skl_dev** %7, align 8
  %54 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.device*, %struct.device** %5, align 8
  %56 = load %struct.skl_dev*, %struct.skl_dev** %7, align 8
  %57 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call %struct.skl_module** @devm_kcalloc(%struct.device* %55, i32 %58, i32 8, i32 %59)
  %61 = load %struct.skl_dev*, %struct.skl_dev** %7, align 8
  %62 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %61, i32 0, i32 3
  store %struct.skl_module** %60, %struct.skl_module*** %62, align 8
  %63 = load %struct.skl_dev*, %struct.skl_dev** %7, align 8
  %64 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %63, i32 0, i32 3
  %65 = load %struct.skl_module**, %struct.skl_module*** %64, align 8
  %66 = icmp ne %struct.skl_module** %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %49
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %319

70:                                               ; preds = %49
  store i32 0, i32* %13, align 4
  br label %71

71:                                               ; preds = %100, %70
  %72 = load i32, i32* %13, align 4
  %73 = load %struct.skl_dev*, %struct.skl_dev** %7, align 8
  %74 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %103

77:                                               ; preds = %71
  %78 = load %struct.device*, %struct.device** %5, align 8
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = call i8* @devm_kzalloc(%struct.device* %78, i64 16, i32 %79)
  %81 = bitcast i8* %80 to %struct.skl_module*
  %82 = load %struct.skl_dev*, %struct.skl_dev** %7, align 8
  %83 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %82, i32 0, i32 3
  %84 = load %struct.skl_module**, %struct.skl_module*** %83, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.skl_module*, %struct.skl_module** %84, i64 %86
  store %struct.skl_module* %81, %struct.skl_module** %87, align 8
  %88 = load %struct.skl_dev*, %struct.skl_dev** %7, align 8
  %89 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %88, i32 0, i32 3
  %90 = load %struct.skl_module**, %struct.skl_module*** %89, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.skl_module*, %struct.skl_module** %90, i64 %92
  %94 = load %struct.skl_module*, %struct.skl_module** %93, align 8
  %95 = icmp ne %struct.skl_module* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %77
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  br label %319

99:                                               ; preds = %77
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %13, align 4
  br label %71

103:                                              ; preds = %71
  br label %315

104:                                              ; preds = %39
  %105 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %6, align 8
  %106 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* @skl_tplg_get_int_tkn.mod_idx, align 4
  br label %315

108:                                              ; preds = %39
  %109 = load %struct.skl_astate_param*, %struct.skl_astate_param** @skl_tplg_get_int_tkn.astate_table, align 8
  %110 = icmp ne %struct.skl_astate_param* %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load %struct.device*, %struct.device** %5, align 8
  %113 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %112, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %4, align 4
  br label %319

116:                                              ; preds = %108
  %117 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %6, align 8
  %118 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @SKL_MAX_ASTATE_CFG, align 4
  %121 = icmp sgt i32 %119, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %116
  %123 = load %struct.device*, %struct.device** %5, align 8
  %124 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %6, align 8
  %125 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %123, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %4, align 4
  br label %319

130:                                              ; preds = %116
  %131 = load %struct.skl_dev*, %struct.skl_dev** %7, align 8
  %132 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = load %struct.skl_astate_param*, %struct.skl_astate_param** @skl_tplg_get_int_tkn.astate_table, align 8
  %136 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %6, align 8
  %137 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @struct_size(%struct.TYPE_4__* %134, %struct.skl_astate_param* %135, i32 %138)
  store i64 %139, i64* %14, align 8
  %140 = load %struct.device*, %struct.device** %5, align 8
  %141 = load i64, i64* %14, align 8
  %142 = load i32, i32* @GFP_KERNEL, align 4
  %143 = call i8* @devm_kzalloc(%struct.device* %140, i64 %141, i32 %142)
  %144 = bitcast i8* %143 to %struct.TYPE_4__*
  %145 = load %struct.skl_dev*, %struct.skl_dev** %7, align 8
  %146 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  store %struct.TYPE_4__* %144, %struct.TYPE_4__** %147, align 8
  %148 = load %struct.skl_dev*, %struct.skl_dev** %7, align 8
  %149 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = icmp ne %struct.TYPE_4__* %151, null
  br i1 %152, label %156, label %153

153:                                              ; preds = %130
  %154 = load i32, i32* @ENOMEM, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %4, align 4
  br label %319

156:                                              ; preds = %130
  %157 = load %struct.skl_dev*, %struct.skl_dev** %7, align 8
  %158 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  %162 = load %struct.skl_astate_param*, %struct.skl_astate_param** %161, align 8
  store %struct.skl_astate_param* %162, %struct.skl_astate_param** @skl_tplg_get_int_tkn.astate_table, align 8
  %163 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %6, align 8
  %164 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.skl_dev*, %struct.skl_dev** %7, align 8
  %167 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  store i32 %165, i32* %170, align 8
  store i32 %165, i32* @skl_tplg_get_int_tkn.count, align 4
  br label %315

171:                                              ; preds = %39
  %172 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %6, align 8
  %173 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @skl_tplg_get_int_tkn.count, align 4
  %176 = icmp sge i32 %174, %175
  br i1 %176, label %177, label %185

177:                                              ; preds = %171
  %178 = load %struct.device*, %struct.device** %5, align 8
  %179 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %6, align 8
  %180 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %178, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %181)
  %183 = load i32, i32* @EINVAL, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %4, align 4
  br label %319

185:                                              ; preds = %171
  %186 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %6, align 8
  %187 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  store i32 %188, i32* @skl_tplg_get_int_tkn.astate_cfg_idx, align 4
  br label %315

189:                                              ; preds = %39
  %190 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %6, align 8
  %191 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.skl_astate_param*, %struct.skl_astate_param** @skl_tplg_get_int_tkn.astate_table, align 8
  %194 = load i32, i32* @skl_tplg_get_int_tkn.astate_cfg_idx, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.skl_astate_param, %struct.skl_astate_param* %193, i64 %195
  %197 = getelementptr inbounds %struct.skl_astate_param, %struct.skl_astate_param* %196, i32 0, i32 0
  store i32 %192, i32* %197, align 4
  br label %315

198:                                              ; preds = %39
  %199 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %6, align 8
  %200 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.skl_astate_param*, %struct.skl_astate_param** @skl_tplg_get_int_tkn.astate_table, align 8
  %203 = load i32, i32* @skl_tplg_get_int_tkn.astate_cfg_idx, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.skl_astate_param, %struct.skl_astate_param* %202, i64 %204
  %206 = getelementptr inbounds %struct.skl_astate_param, %struct.skl_astate_param* %205, i32 0, i32 1
  store i32 %201, i32* %206, align 4
  br label %315

207:                                              ; preds = %39, %39, %39, %39, %39, %39
  %208 = load %struct.device*, %struct.device** %5, align 8
  %209 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %6, align 8
  %210 = load %struct.skl_module*, %struct.skl_module** %12, align 8
  %211 = call i32 @skl_tplg_fill_mod_info(%struct.device* %208, %struct.snd_soc_tplg_vendor_value_elem* %209, %struct.skl_module* %210)
  store i32 %211, i32* %9, align 4
  %212 = load i32, i32* %9, align 4
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %207
  %215 = load i32, i32* %9, align 4
  store i32 %215, i32* %4, align 4
  br label %319

216:                                              ; preds = %207
  br label %315

217:                                              ; preds = %39
  %218 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %6, align 8
  %219 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @SKL_IN_DIR_BIT_MASK, align 4
  %222 = and i32 %220, %221
  store i32 %222, i32* @skl_tplg_get_int_tkn.dir, align 4
  %223 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %6, align 8
  %224 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @SKL_PIN_COUNT_MASK, align 4
  %227 = and i32 %225, %226
  %228 = ashr i32 %227, 4
  store i32 %228, i32* @skl_tplg_get_int_tkn.pin_idx, align 4
  br label %315

229:                                              ; preds = %39
  %230 = load %struct.skl_module_res*, %struct.skl_module_res** %10, align 8
  %231 = icmp ne %struct.skl_module_res* %230, null
  br i1 %231, label %235, label %232

232:                                              ; preds = %229
  %233 = load i32, i32* @EINVAL, align 4
  %234 = sub nsw i32 0, %233
  store i32 %234, i32* %4, align 4
  br label %319

235:                                              ; preds = %229
  %236 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %6, align 8
  %237 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.skl_module_res*, %struct.skl_module_res** %10, align 8
  %240 = getelementptr inbounds %struct.skl_module_res, %struct.skl_module_res* %239, i32 0, i32 0
  store i32 %238, i32* %240, align 4
  %241 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %6, align 8
  %242 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  store i32 %243, i32* @skl_tplg_get_int_tkn.res_val_idx, align 4
  br label %315

244:                                              ; preds = %39
  %245 = load %struct.skl_module_iface*, %struct.skl_module_iface** %11, align 8
  %246 = icmp ne %struct.skl_module_iface* %245, null
  br i1 %246, label %250, label %247

247:                                              ; preds = %244
  %248 = load i32, i32* @EINVAL, align 4
  %249 = sub nsw i32 0, %248
  store i32 %249, i32* %4, align 4
  br label %319

250:                                              ; preds = %244
  %251 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %6, align 8
  %252 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.skl_module_iface*, %struct.skl_module_iface** %11, align 8
  %255 = getelementptr inbounds %struct.skl_module_iface, %struct.skl_module_iface* %254, i32 0, i32 0
  store i32 %253, i32* %255, align 4
  %256 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %6, align 8
  %257 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  store i32 %258, i32* @skl_tplg_get_int_tkn.intf_val_idx, align 4
  br label %315

259:                                              ; preds = %39, %39, %39, %39, %39, %39, %39, %39
  %260 = load %struct.device*, %struct.device** %5, align 8
  %261 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %6, align 8
  %262 = load %struct.skl_module_res*, %struct.skl_module_res** %10, align 8
  %263 = load i32, i32* @skl_tplg_get_int_tkn.pin_idx, align 4
  %264 = load i32, i32* @skl_tplg_get_int_tkn.dir, align 4
  %265 = call i32 @skl_tplg_fill_res_tkn(%struct.device* %260, %struct.snd_soc_tplg_vendor_value_elem* %261, %struct.skl_module_res* %262, i32 %263, i32 %264)
  store i32 %265, i32* %9, align 4
  %266 = load i32, i32* %9, align 4
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %259
  %269 = load i32, i32* %9, align 4
  store i32 %269, i32* %4, align 4
  br label %319

270:                                              ; preds = %259
  br label %315

271:                                              ; preds = %39
  %272 = load %struct.skl_module_iface*, %struct.skl_module_iface** %11, align 8
  %273 = icmp ne %struct.skl_module_iface* %272, null
  br i1 %273, label %277, label %274

274:                                              ; preds = %271
  %275 = load i32, i32* @EINVAL, align 4
  %276 = sub nsw i32 0, %275
  store i32 %276, i32* %4, align 4
  br label %319

277:                                              ; preds = %271
  %278 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %6, align 8
  %279 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.skl_module_res*, %struct.skl_module_res** %10, align 8
  %282 = getelementptr inbounds %struct.skl_module_res, %struct.skl_module_res* %281, i32 0, i32 1
  store i32 %280, i32* %282, align 4
  br label %315

283:                                              ; preds = %39
  %284 = load %struct.skl_module_iface*, %struct.skl_module_iface** %11, align 8
  %285 = icmp ne %struct.skl_module_iface* %284, null
  br i1 %285, label %289, label %286

286:                                              ; preds = %283
  %287 = load i32, i32* @EINVAL, align 4
  %288 = sub nsw i32 0, %287
  store i32 %288, i32* %4, align 4
  br label %319

289:                                              ; preds = %283
  %290 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %6, align 8
  %291 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.skl_module_res*, %struct.skl_module_res** %10, align 8
  %294 = getelementptr inbounds %struct.skl_module_res, %struct.skl_module_res* %293, i32 0, i32 2
  store i32 %292, i32* %294, align 4
  br label %315

295:                                              ; preds = %39, %39, %39, %39, %39, %39, %39, %39, %39
  %296 = load %struct.device*, %struct.device** %5, align 8
  %297 = load %struct.skl_module_iface*, %struct.skl_module_iface** %11, align 8
  %298 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %6, align 8
  %299 = load i32, i32* @skl_tplg_get_int_tkn.dir, align 4
  %300 = load i32, i32* @skl_tplg_get_int_tkn.pin_idx, align 4
  %301 = call i32 @skl_tplg_manifest_fill_fmt(%struct.device* %296, %struct.skl_module_iface* %297, %struct.snd_soc_tplg_vendor_value_elem* %298, i32 %299, i32 %300)
  store i32 %301, i32* %9, align 4
  %302 = load i32, i32* %9, align 4
  %303 = icmp slt i32 %302, 0
  br i1 %303, label %304, label %306

304:                                              ; preds = %295
  %305 = load i32, i32* %9, align 4
  store i32 %305, i32* %4, align 4
  br label %319

306:                                              ; preds = %295
  br label %315

307:                                              ; preds = %39
  %308 = load %struct.device*, %struct.device** %5, align 8
  %309 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %6, align 8
  %310 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %308, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %311)
  %313 = load i32, i32* @EINVAL, align 4
  %314 = sub nsw i32 0, %313
  store i32 %314, i32* %4, align 4
  br label %319

315:                                              ; preds = %306, %289, %277, %270, %250, %235, %217, %216, %198, %189, %185, %156, %104, %103, %43
  %316 = load i32, i32* %8, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %8, align 4
  %318 = load i32, i32* %8, align 4
  store i32 %318, i32* %4, align 4
  br label %319

319:                                              ; preds = %315, %307, %304, %286, %274, %268, %247, %232, %214, %177, %153, %122, %111, %96, %67
  %320 = load i32, i32* %4, align 4
  ret i32 %320
}

declare dso_local %struct.skl_module** @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i64, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @struct_size(%struct.TYPE_4__*, %struct.skl_astate_param*, i32) #1

declare dso_local i32 @skl_tplg_fill_mod_info(%struct.device*, %struct.snd_soc_tplg_vendor_value_elem*, %struct.skl_module*) #1

declare dso_local i32 @skl_tplg_fill_res_tkn(%struct.device*, %struct.snd_soc_tplg_vendor_value_elem*, %struct.skl_module_res*, i32, i32) #1

declare dso_local i32 @skl_tplg_manifest_fill_fmt(%struct.device*, %struct.skl_module_iface*, %struct.snd_soc_tplg_vendor_value_elem*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
