; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_get_token.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_get_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.snd_soc_tplg_vendor_value_elem = type { i32, i32 }
%struct.skl_dev = type { i64 }
%struct.skl_module_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__*, %struct.TYPE_11__*, %struct.TYPE_8__, i8*, i8*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, %struct.skl_module_iface*, %struct.skl_module_res* }
%struct.skl_module_iface = type { i32 }
%struct.skl_module_res = type { i32 }

@skl_tplg_get_token.is_pipe_exists = internal global i32 0, align 4
@skl_tplg_get_token.pin_index = internal global i32 0, align 4
@skl_tplg_get_token.dir = internal global i32 0, align 4
@skl_tplg_get_token.conf_idx = internal global i32 0, align 4
@SKL_TKN_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAX_IN_QUEUE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_OUT_QUEUE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@SKL_IN_DIR_BIT_MASK = common dso_local global i32 0, align 4
@SKL_PIN_COUNT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Token %d not handled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.snd_soc_tplg_vendor_value_elem*, %struct.skl_dev*, %struct.skl_module_cfg*)* @skl_tplg_get_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_tplg_get_token(%struct.device* %0, %struct.snd_soc_tplg_vendor_value_elem* %1, %struct.skl_dev* %2, %struct.skl_module_cfg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.snd_soc_tplg_vendor_value_elem*, align 8
  %8 = alloca %struct.skl_dev*, align 8
  %9 = alloca %struct.skl_module_cfg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.skl_module_iface*, align 8
  %13 = alloca %struct.skl_module_res*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.snd_soc_tplg_vendor_value_elem* %1, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  store %struct.skl_dev* %2, %struct.skl_dev** %8, align 8
  store %struct.skl_module_cfg* %3, %struct.skl_module_cfg** %9, align 8
  store i32 0, i32* %10, align 4
  store %struct.skl_module_iface* null, %struct.skl_module_iface** %12, align 8
  store %struct.skl_module_res* null, %struct.skl_module_res** %13, align 8
  %16 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %17 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %14, align 4
  %19 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %20 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %15, align 4
  %22 = load %struct.skl_dev*, %struct.skl_dev** %8, align 8
  %23 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %4
  %27 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %28 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %27, i32 0, i32 19
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 3
  %31 = load %struct.skl_module_res*, %struct.skl_module_res** %30, align 8
  %32 = load i32, i32* %14, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.skl_module_res, %struct.skl_module_res* %31, i64 %33
  store %struct.skl_module_res* %34, %struct.skl_module_res** %13, align 8
  %35 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %36 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %35, i32 0, i32 19
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = load %struct.skl_module_iface*, %struct.skl_module_iface** %38, align 8
  %40 = load i32, i32* %15, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.skl_module_iface, %struct.skl_module_iface* %39, i64 %41
  store %struct.skl_module_iface* %42, %struct.skl_module_iface** %12, align 8
  br label %43

43:                                               ; preds = %26, %4
  %44 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  %45 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SKL_TKN_MAX, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %381

52:                                               ; preds = %43
  %53 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  %54 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %369 [
    i32 133, label %56
    i32 130, label %64
    i32 137, label %72
    i32 136, label %101
    i32 129, label %130
    i32 139, label %136
    i32 132, label %142
    i32 138, label %148
    i32 135, label %154
    i32 177, label %160
    i32 158, label %167
    i32 159, label %167
    i32 156, label %167
    i32 160, label %167
    i32 143, label %179
    i32 155, label %185
    i32 172, label %191
    i32 171, label %197
    i32 148, label %203
    i32 151, label %220
    i32 150, label %224
    i32 146, label %224
    i32 147, label %224
    i32 145, label %224
    i32 149, label %224
    i32 157, label %224
    i32 154, label %245
    i32 173, label %245
    i32 141, label %245
    i32 142, label %245
    i32 178, label %272
    i32 179, label %283
    i32 170, label %294
    i32 167, label %306
    i32 164, label %306
    i32 168, label %306
    i32 162, label %306
    i32 166, label %306
    i32 163, label %306
    i32 161, label %306
    i32 165, label %306
    i32 152, label %323
    i32 153, label %323
    i32 128, label %323
    i32 174, label %335
    i32 175, label %342
    i32 176, label %349
    i32 144, label %356
    i32 169, label %362
    i32 134, label %368
    i32 131, label %368
    i32 140, label %368
  ]

56:                                               ; preds = %52
  %57 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  %58 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %61 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %60, i32 0, i32 19
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store i32 %59, i32* %63, align 8
  br label %377

64:                                               ; preds = %52
  %65 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  %66 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %69 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %68, i32 0, i32 19
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  store i32 %67, i32* %71, align 4
  br label %377

72:                                               ; preds = %52
  %73 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %74 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %73, i32 0, i32 18
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %84, label %77

77:                                               ; preds = %72
  %78 = load %struct.device*, %struct.device** %6, align 8
  %79 = load i32, i32* @MAX_IN_QUEUE, align 4
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call i8* @devm_kcalloc(%struct.device* %78, i32 %79, i32 1, i32 %80)
  %82 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %83 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %82, i32 0, i32 18
  store i8* %81, i8** %83, align 8
  br label %84

84:                                               ; preds = %77, %72
  %85 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %86 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %85, i32 0, i32 18
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %381

92:                                               ; preds = %84
  %93 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %94 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %93, i32 0, i32 18
  %95 = load i8*, i8** %94, align 8
  %96 = load i32, i32* @MAX_IN_QUEUE, align 4
  %97 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  %98 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @skl_tplg_fill_pin_dynamic_val(i8* %95, i32 %96, i32 %99)
  br label %377

101:                                              ; preds = %52
  %102 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %103 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %102, i32 0, i32 17
  %104 = load i8*, i8** %103, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %113, label %106

106:                                              ; preds = %101
  %107 = load %struct.device*, %struct.device** %6, align 8
  %108 = load i32, i32* @MAX_IN_QUEUE, align 4
  %109 = load i32, i32* @GFP_KERNEL, align 4
  %110 = call i8* @devm_kcalloc(%struct.device* %107, i32 %108, i32 1, i32 %109)
  %111 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %112 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %111, i32 0, i32 17
  store i8* %110, i8** %112, align 8
  br label %113

113:                                              ; preds = %106, %101
  %114 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %115 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %114, i32 0, i32 17
  %116 = load i8*, i8** %115, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %113
  %119 = load i32, i32* @ENOMEM, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %5, align 4
  br label %381

121:                                              ; preds = %113
  %122 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %123 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %122, i32 0, i32 17
  %124 = load i8*, i8** %123, align 8
  %125 = load i32, i32* @MAX_OUT_QUEUE, align 4
  %126 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  %127 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @skl_tplg_fill_pin_dynamic_val(i8* %124, i32 %125, i32 %128)
  br label %377

130:                                              ; preds = %52
  %131 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  %132 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %135 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 8
  br label %377

136:                                              ; preds = %52
  %137 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  %138 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %141 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 4
  br label %377

142:                                              ; preds = %52
  %143 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  %144 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %147 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %146, i32 0, i32 4
  store i32 %145, i32* %147, align 8
  br label %377

148:                                              ; preds = %52
  %149 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  %150 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %153 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %152, i32 0, i32 5
  store i32 %151, i32* %153, align 4
  br label %377

154:                                              ; preds = %52
  %155 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  %156 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %159 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %158, i32 0, i32 6
  store i32 %157, i32* %159, align 8
  br label %377

160:                                              ; preds = %52
  %161 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  %162 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %165 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %164, i32 0, i32 16
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  store i32 %163, i32* %166, align 8
  br label %377

167:                                              ; preds = %52, %52, %52, %52
  %168 = load %struct.device*, %struct.device** %6, align 8
  %169 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  %170 = load %struct.skl_module_res*, %struct.skl_module_res** %13, align 8
  %171 = load i32, i32* @skl_tplg_get_token.pin_index, align 4
  %172 = load i32, i32* @skl_tplg_get_token.dir, align 4
  %173 = call i32 @skl_tplg_fill_res_tkn(%struct.device* %168, %struct.snd_soc_tplg_vendor_value_elem* %169, %struct.skl_module_res* %170, i32 %171, i32 %172)
  store i32 %173, i32* %11, align 4
  %174 = load i32, i32* %11, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %167
  %177 = load i32, i32* %11, align 4
  store i32 %177, i32* %5, align 4
  br label %381

178:                                              ; preds = %167
  br label %377

179:                                              ; preds = %52
  %180 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  %181 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %184 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %183, i32 0, i32 7
  store i32 %182, i32* %184, align 4
  br label %377

185:                                              ; preds = %52
  %186 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  %187 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %190 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %189, i32 0, i32 8
  store i32 %188, i32* %190, align 8
  br label %377

191:                                              ; preds = %52
  %192 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  %193 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %196 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %195, i32 0, i32 9
  store i32 %194, i32* %196, align 4
  br label %377

197:                                              ; preds = %52
  %198 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  %199 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %202 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %201, i32 0, i32 10
  store i32 %200, i32* %202, align 8
  br label %377

203:                                              ; preds = %52
  %204 = load %struct.device*, %struct.device** %6, align 8
  %205 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %206 = load %struct.skl_dev*, %struct.skl_dev** %8, align 8
  %207 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  %208 = call i32 @skl_tplg_add_pipe(%struct.device* %204, %struct.skl_module_cfg* %205, %struct.skl_dev* %206, %struct.snd_soc_tplg_vendor_value_elem* %207)
  store i32 %208, i32* %11, align 4
  %209 = load i32, i32* %11, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %219

211:                                              ; preds = %203
  %212 = load i32, i32* %11, align 4
  %213 = load i32, i32* @EEXIST, align 4
  %214 = sub nsw i32 0, %213
  %215 = icmp eq i32 %212, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %211
  store i32 1, i32* @skl_tplg_get_token.is_pipe_exists, align 4
  br label %377

217:                                              ; preds = %211
  %218 = load i32, i32* @skl_tplg_get_token.is_pipe_exists, align 4
  store i32 %218, i32* %5, align 4
  br label %381

219:                                              ; preds = %203
  br label %377

220:                                              ; preds = %52
  %221 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  %222 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  store i32 %223, i32* @skl_tplg_get_token.conf_idx, align 4
  br label %377

224:                                              ; preds = %52, %52, %52, %52, %52, %52
  %225 = load i32, i32* @skl_tplg_get_token.is_pipe_exists, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %244

227:                                              ; preds = %224
  %228 = load %struct.device*, %struct.device** %6, align 8
  %229 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %230 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %229, i32 0, i32 15
  %231 = load %struct.TYPE_11__*, %struct.TYPE_11__** %230, align 8
  %232 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  %233 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  %236 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @skl_tplg_fill_pipe_tkn(%struct.device* %228, %struct.TYPE_11__* %231, i32 %234, i32 %237)
  store i32 %238, i32* %11, align 4
  %239 = load i32, i32* %11, align 4
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %227
  %242 = load i32, i32* %11, align 4
  store i32 %242, i32* %5, align 4
  br label %381

243:                                              ; preds = %227
  br label %244

244:                                              ; preds = %243, %224
  br label %377

245:                                              ; preds = %52, %52, %52, %52
  %246 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %247 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %246, i32 0, i32 15
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %271

252:                                              ; preds = %245
  %253 = load %struct.device*, %struct.device** %6, align 8
  %254 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %255 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %254, i32 0, i32 15
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %255, align 8
  %257 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  %258 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  %261 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @skl_tplg_get_token.conf_idx, align 4
  %264 = load i32, i32* @skl_tplg_get_token.dir, align 4
  %265 = call i32 @skl_tplg_fill_pipe_cfg(%struct.device* %253, %struct.TYPE_11__* %256, i32 %259, i32 %262, i32 %263, i32 %264)
  store i32 %265, i32* %11, align 4
  %266 = load i32, i32* %11, align 4
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %252
  %269 = load i32, i32* %11, align 4
  store i32 %269, i32* %5, align 4
  br label %381

270:                                              ; preds = %252
  br label %271

271:                                              ; preds = %270, %245
  br label %377

272:                                              ; preds = %52
  %273 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  %274 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %277 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %276, i32 0, i32 14
  %278 = load %struct.TYPE_9__*, %struct.TYPE_9__** %277, align 8
  %279 = load i32, i32* @skl_tplg_get_token.conf_idx, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 0
  store i32 %275, i32* %282, align 4
  br label %377

283:                                              ; preds = %52
  %284 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  %285 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %288 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %287, i32 0, i32 14
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** %288, align 8
  %290 = load i32, i32* @skl_tplg_get_token.conf_idx, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 1
  store i32 %286, i32* %293, align 4
  br label %377

294:                                              ; preds = %52
  %295 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  %296 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @SKL_IN_DIR_BIT_MASK, align 4
  %299 = and i32 %297, %298
  store i32 %299, i32* @skl_tplg_get_token.dir, align 4
  %300 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  %301 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @SKL_PIN_COUNT_MASK, align 4
  %304 = and i32 %302, %303
  %305 = ashr i32 %304, 4
  store i32 %305, i32* @skl_tplg_get_token.pin_index, align 4
  br label %377

306:                                              ; preds = %52, %52, %52, %52, %52, %52, %52, %52
  %307 = load %struct.device*, %struct.device** %6, align 8
  %308 = load %struct.skl_module_iface*, %struct.skl_module_iface** %12, align 8
  %309 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  %310 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  %313 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* @skl_tplg_get_token.dir, align 4
  %316 = load i32, i32* @skl_tplg_get_token.pin_index, align 4
  %317 = call i32 @skl_tplg_widget_fill_fmt(%struct.device* %307, %struct.skl_module_iface* %308, i32 %311, i32 %314, i32 %315, i32 %316)
  store i32 %317, i32* %11, align 4
  %318 = load i32, i32* %11, align 4
  %319 = icmp slt i32 %318, 0
  br i1 %319, label %320, label %322

320:                                              ; preds = %306
  %321 = load i32, i32* %11, align 4
  store i32 %321, i32* %5, align 4
  br label %381

322:                                              ; preds = %306
  br label %377

323:                                              ; preds = %52, %52, %52
  %324 = load %struct.device*, %struct.device** %6, align 8
  %325 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %326 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  %327 = load i32, i32* @skl_tplg_get_token.dir, align 4
  %328 = load i32, i32* @skl_tplg_get_token.pin_index, align 4
  %329 = call i32 @skl_tplg_fill_pins_info(%struct.device* %324, %struct.skl_module_cfg* %325, %struct.snd_soc_tplg_vendor_value_elem* %326, i32 %327, i32 %328)
  store i32 %329, i32* %11, align 4
  %330 = load i32, i32* %11, align 4
  %331 = icmp slt i32 %330, 0
  br i1 %331, label %332, label %334

332:                                              ; preds = %323
  %333 = load i32, i32* %11, align 4
  store i32 %333, i32* %5, align 4
  br label %381

334:                                              ; preds = %323
  br label %377

335:                                              ; preds = %52
  %336 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  %337 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %340 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %339, i32 0, i32 13
  %341 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %340, i32 0, i32 0
  store i32 %338, i32* %341, align 4
  br label %377

342:                                              ; preds = %52
  %343 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  %344 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %347 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %346, i32 0, i32 13
  %348 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %347, i32 0, i32 1
  store i32 %345, i32* %348, align 4
  br label %377

349:                                              ; preds = %52
  %350 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  %351 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %354 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %353, i32 0, i32 13
  %355 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %354, i32 0, i32 2
  store i32 %352, i32* %355, align 4
  br label %377

356:                                              ; preds = %52
  %357 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  %358 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %361 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %360, i32 0, i32 11
  store i32 %359, i32* %361, align 4
  br label %377

362:                                              ; preds = %52
  %363 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  %364 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %367 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %366, i32 0, i32 12
  store i32 %365, i32* %367, align 8
  br label %377

368:                                              ; preds = %52, %52, %52
  br label %377

369:                                              ; preds = %52
  %370 = load %struct.device*, %struct.device** %6, align 8
  %371 = load %struct.snd_soc_tplg_vendor_value_elem*, %struct.snd_soc_tplg_vendor_value_elem** %7, align 8
  %372 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, %struct.snd_soc_tplg_vendor_value_elem* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 4
  %374 = call i32 @dev_err(%struct.device* %370, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %373)
  %375 = load i32, i32* @EINVAL, align 4
  %376 = sub nsw i32 0, %375
  store i32 %376, i32* %5, align 4
  br label %381

377:                                              ; preds = %368, %362, %356, %349, %342, %335, %334, %322, %294, %283, %272, %271, %244, %220, %219, %216, %197, %191, %185, %179, %178, %160, %154, %148, %142, %136, %130, %121, %92, %64, %56
  %378 = load i32, i32* %10, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %10, align 4
  %380 = load i32, i32* %10, align 4
  store i32 %380, i32* %5, align 4
  br label %381

381:                                              ; preds = %377, %369, %332, %320, %268, %241, %217, %176, %118, %89, %49
  %382 = load i32, i32* %5, align 4
  ret i32 %382
}

declare dso_local i8* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @skl_tplg_fill_pin_dynamic_val(i8*, i32, i32) #1

declare dso_local i32 @skl_tplg_fill_res_tkn(%struct.device*, %struct.snd_soc_tplg_vendor_value_elem*, %struct.skl_module_res*, i32, i32) #1

declare dso_local i32 @skl_tplg_add_pipe(%struct.device*, %struct.skl_module_cfg*, %struct.skl_dev*, %struct.snd_soc_tplg_vendor_value_elem*) #1

declare dso_local i32 @skl_tplg_fill_pipe_tkn(%struct.device*, %struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @skl_tplg_fill_pipe_cfg(%struct.device*, %struct.TYPE_11__*, i32, i32, i32, i32) #1

declare dso_local i32 @skl_tplg_widget_fill_fmt(%struct.device*, %struct.skl_module_iface*, i32, i32, i32, i32) #1

declare dso_local i32 @skl_tplg_fill_pins_info(%struct.device*, %struct.skl_module_cfg*, %struct.snd_soc_tplg_vendor_value_elem*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
