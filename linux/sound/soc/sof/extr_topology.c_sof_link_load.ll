; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_sof_link_load.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_sof_link_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dai_link = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.snd_soc_tplg_link_config = type { %struct.snd_soc_tplg_hw_config*, i32, i32, %struct.snd_soc_tplg_private }
%struct.snd_soc_tplg_hw_config = type { i32, i32 }
%struct.snd_soc_tplg_private = type { i32, i32 }
%struct.snd_sof_dev = type { i32 }
%struct.sof_ipc_dai_config = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"error: no platforms\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"error: expected tokens for DAI, none found\0A\00", align 1
@dai_link_tokens = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"error: parse link tokens failed %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"error: unexpected DAI config count %d!\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"tplg: %d hw_configs found, default id: %d!\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"error: default hw_config id: %d not found!\0A\00", align 1
@SOF_IPC_GLB_DAI_MSG = common dso_local global i32 0, align 4
@SOF_IPC_DAI_CONFIG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"error: invalid DAI type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, %struct.snd_soc_dai_link*, %struct.snd_soc_tplg_link_config*)* @sof_link_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sof_link_load(%struct.snd_soc_component* %0, i32 %1, %struct.snd_soc_dai_link* %2, %struct.snd_soc_tplg_link_config* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_dai_link*, align 8
  %9 = alloca %struct.snd_soc_tplg_link_config*, align 8
  %10 = alloca %struct.snd_sof_dev*, align 8
  %11 = alloca %struct.snd_soc_tplg_private*, align 8
  %12 = alloca %struct.sof_ipc_dai_config, align 8
  %13 = alloca %struct.snd_soc_tplg_hw_config*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.snd_soc_dai_link* %2, %struct.snd_soc_dai_link** %8, align 8
  store %struct.snd_soc_tplg_link_config* %3, %struct.snd_soc_tplg_link_config** %9, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %18 = call %struct.snd_sof_dev* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %17)
  store %struct.snd_sof_dev* %18, %struct.snd_sof_dev** %10, align 8
  %19 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %9, align 8
  %20 = getelementptr inbounds %struct.snd_soc_tplg_link_config, %struct.snd_soc_tplg_link_config* %19, i32 0, i32 3
  store %struct.snd_soc_tplg_private* %20, %struct.snd_soc_tplg_private** %11, align 8
  store i32 0, i32* %16, align 4
  %21 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %22 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = icmp ne %struct.TYPE_3__* %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %4
  %26 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %10, align 8
  %27 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, i8*, ...) @dev_err(i32 %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %237

32:                                               ; preds = %4
  %33 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %10, align 8
  %34 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_name(i32 %35)
  %37 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %38 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 4
  %41 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %42 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %32
  %46 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %47 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  store i32 0, i32* %5, align 4
  br label %237

48:                                               ; preds = %32
  %49 = load %struct.snd_soc_tplg_private*, %struct.snd_soc_tplg_private** %11, align 8
  %50 = getelementptr inbounds %struct.snd_soc_tplg_private, %struct.snd_soc_tplg_private* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @le32_to_cpu(i32 %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %10, align 8
  %56 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32, i8*, ...) @dev_err(i32 %57, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %237

61:                                               ; preds = %48
  %62 = call i32 @memset(%struct.sof_ipc_dai_config* %12, i32 0, i32 24)
  %63 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %64 = load i32, i32* @dai_link_tokens, align 4
  %65 = load i32, i32* @dai_link_tokens, align 4
  %66 = call i32 @ARRAY_SIZE(i32 %65)
  %67 = load %struct.snd_soc_tplg_private*, %struct.snd_soc_tplg_private** %11, align 8
  %68 = getelementptr inbounds %struct.snd_soc_tplg_private, %struct.snd_soc_tplg_private* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.snd_soc_tplg_private*, %struct.snd_soc_tplg_private** %11, align 8
  %71 = getelementptr inbounds %struct.snd_soc_tplg_private, %struct.snd_soc_tplg_private* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @le32_to_cpu(i32 %72)
  %74 = call i32 @sof_parse_tokens(%struct.snd_soc_component* %63, %struct.sof_ipc_dai_config* %12, i32 %64, i32 %66, i32 %69, i64 %73)
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %61
  %78 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %10, align 8
  %79 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.snd_soc_tplg_private*, %struct.snd_soc_tplg_private** %11, align 8
  %82 = getelementptr inbounds %struct.snd_soc_tplg_private, %struct.snd_soc_tplg_private* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @le32_to_cpu(i32 %83)
  %85 = call i32 (i32, i8*, ...) @dev_err(i32 %80, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %84)
  %86 = load i32, i32* %15, align 4
  store i32 %86, i32* %5, align 4
  br label %237

87:                                               ; preds = %61
  %88 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %9, align 8
  %89 = getelementptr inbounds %struct.snd_soc_tplg_link_config, %struct.snd_soc_tplg_link_config* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @le32_to_cpu(i32 %90)
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %111, label %95

95:                                               ; preds = %87
  %96 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %12, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 129
  br i1 %98, label %99, label %110

99:                                               ; preds = %95
  %100 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %10, align 8
  %101 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %9, align 8
  %104 = getelementptr inbounds %struct.snd_soc_tplg_link_config, %struct.snd_soc_tplg_link_config* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @le32_to_cpu(i32 %105)
  %107 = call i32 (i32, i8*, ...) @dev_err(i32 %102, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i64 %106)
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %5, align 4
  br label %237

110:                                              ; preds = %95
  br label %161

111:                                              ; preds = %87
  %112 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %10, align 8
  %113 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %9, align 8
  %116 = getelementptr inbounds %struct.snd_soc_tplg_link_config, %struct.snd_soc_tplg_link_config* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %9, align 8
  %119 = getelementptr inbounds %struct.snd_soc_tplg_link_config, %struct.snd_soc_tplg_link_config* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i64 @le32_to_cpu(i32 %120)
  %122 = call i32 @dev_dbg(i32 %114, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %117, i64 %121)
  store i32 0, i32* %16, align 4
  br label %123

123:                                              ; preds = %142, %111
  %124 = load i32, i32* %16, align 4
  %125 = load i32, i32* %14, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %145

127:                                              ; preds = %123
  %128 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %9, align 8
  %129 = getelementptr inbounds %struct.snd_soc_tplg_link_config, %struct.snd_soc_tplg_link_config* %128, i32 0, i32 0
  %130 = load %struct.snd_soc_tplg_hw_config*, %struct.snd_soc_tplg_hw_config** %129, align 8
  %131 = load i32, i32* %16, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.snd_soc_tplg_hw_config, %struct.snd_soc_tplg_hw_config* %130, i64 %132
  %134 = getelementptr inbounds %struct.snd_soc_tplg_hw_config, %struct.snd_soc_tplg_hw_config* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %9, align 8
  %137 = getelementptr inbounds %struct.snd_soc_tplg_link_config, %struct.snd_soc_tplg_link_config* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = icmp eq i32 %135, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %127
  br label %145

141:                                              ; preds = %127
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %16, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %16, align 4
  br label %123

145:                                              ; preds = %140, %123
  %146 = load i32, i32* %16, align 4
  %147 = load i32, i32* %14, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %160

149:                                              ; preds = %145
  %150 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %10, align 8
  %151 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %9, align 8
  %154 = getelementptr inbounds %struct.snd_soc_tplg_link_config, %struct.snd_soc_tplg_link_config* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = call i64 @le32_to_cpu(i32 %155)
  %157 = call i32 (i32, i8*, ...) @dev_err(i32 %152, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i64 %156)
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %5, align 4
  br label %237

160:                                              ; preds = %145
  br label %161

161:                                              ; preds = %160, %110
  %162 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %9, align 8
  %163 = getelementptr inbounds %struct.snd_soc_tplg_link_config, %struct.snd_soc_tplg_link_config* %162, i32 0, i32 0
  %164 = load %struct.snd_soc_tplg_hw_config*, %struct.snd_soc_tplg_hw_config** %163, align 8
  %165 = load i32, i32* %16, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.snd_soc_tplg_hw_config, %struct.snd_soc_tplg_hw_config* %164, i64 %166
  store %struct.snd_soc_tplg_hw_config* %167, %struct.snd_soc_tplg_hw_config** %13, align 8
  %168 = load i32, i32* @SOF_IPC_GLB_DAI_MSG, align 4
  %169 = load i32, i32* @SOF_IPC_DAI_CONFIG, align 4
  %170 = or i32 %168, %169
  %171 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %12, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 8
  %173 = load %struct.snd_soc_tplg_hw_config*, %struct.snd_soc_tplg_hw_config** %13, align 8
  %174 = getelementptr inbounds %struct.snd_soc_tplg_hw_config, %struct.snd_soc_tplg_hw_config* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i64 @le32_to_cpu(i32 %175)
  %177 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %12, i32 0, i32 1
  store i64 %176, i64* %177, align 8
  %178 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %12, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  switch i32 %179, label %222 [
    i32 128, label %180
    i32 130, label %187
    i32 129, label %194
    i32 131, label %201
    i32 132, label %208
    i32 133, label %215
  ]

180:                                              ; preds = %161
  %181 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %182 = load i32, i32* %7, align 4
  %183 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %184 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %9, align 8
  %185 = load %struct.snd_soc_tplg_hw_config*, %struct.snd_soc_tplg_hw_config** %13, align 8
  %186 = call i32 @sof_link_ssp_load(%struct.snd_soc_component* %181, i32 %182, %struct.snd_soc_dai_link* %183, %struct.snd_soc_tplg_link_config* %184, %struct.snd_soc_tplg_hw_config* %185, %struct.sof_ipc_dai_config* %12)
  store i32 %186, i32* %15, align 4
  br label %231

187:                                              ; preds = %161
  %188 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %189 = load i32, i32* %7, align 4
  %190 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %191 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %9, align 8
  %192 = load %struct.snd_soc_tplg_hw_config*, %struct.snd_soc_tplg_hw_config** %13, align 8
  %193 = call i32 @sof_link_dmic_load(%struct.snd_soc_component* %188, i32 %189, %struct.snd_soc_dai_link* %190, %struct.snd_soc_tplg_link_config* %191, %struct.snd_soc_tplg_hw_config* %192, %struct.sof_ipc_dai_config* %12)
  store i32 %193, i32* %15, align 4
  br label %231

194:                                              ; preds = %161
  %195 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %196 = load i32, i32* %7, align 4
  %197 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %198 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %9, align 8
  %199 = load %struct.snd_soc_tplg_hw_config*, %struct.snd_soc_tplg_hw_config** %13, align 8
  %200 = call i32 @sof_link_hda_load(%struct.snd_soc_component* %195, i32 %196, %struct.snd_soc_dai_link* %197, %struct.snd_soc_tplg_link_config* %198, %struct.snd_soc_tplg_hw_config* %199, %struct.sof_ipc_dai_config* %12)
  store i32 %200, i32* %15, align 4
  br label %231

201:                                              ; preds = %161
  %202 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %203 = load i32, i32* %7, align 4
  %204 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %205 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %9, align 8
  %206 = load %struct.snd_soc_tplg_hw_config*, %struct.snd_soc_tplg_hw_config** %13, align 8
  %207 = call i32 @sof_link_alh_load(%struct.snd_soc_component* %202, i32 %203, %struct.snd_soc_dai_link* %204, %struct.snd_soc_tplg_link_config* %205, %struct.snd_soc_tplg_hw_config* %206, %struct.sof_ipc_dai_config* %12)
  store i32 %207, i32* %15, align 4
  br label %231

208:                                              ; preds = %161
  %209 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %210 = load i32, i32* %7, align 4
  %211 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %212 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %9, align 8
  %213 = load %struct.snd_soc_tplg_hw_config*, %struct.snd_soc_tplg_hw_config** %13, align 8
  %214 = call i32 @sof_link_sai_load(%struct.snd_soc_component* %209, i32 %210, %struct.snd_soc_dai_link* %211, %struct.snd_soc_tplg_link_config* %212, %struct.snd_soc_tplg_hw_config* %213, %struct.sof_ipc_dai_config* %12)
  store i32 %214, i32* %15, align 4
  br label %231

215:                                              ; preds = %161
  %216 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %217 = load i32, i32* %7, align 4
  %218 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %219 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %9, align 8
  %220 = load %struct.snd_soc_tplg_hw_config*, %struct.snd_soc_tplg_hw_config** %13, align 8
  %221 = call i32 @sof_link_esai_load(%struct.snd_soc_component* %216, i32 %217, %struct.snd_soc_dai_link* %218, %struct.snd_soc_tplg_link_config* %219, %struct.snd_soc_tplg_hw_config* %220, %struct.sof_ipc_dai_config* %12)
  store i32 %221, i32* %15, align 4
  br label %231

222:                                              ; preds = %161
  %223 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %10, align 8
  %224 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %12, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = call i32 (i32, i8*, ...) @dev_err(i32 %225, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %227)
  %229 = load i32, i32* @EINVAL, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %15, align 4
  br label %231

231:                                              ; preds = %222, %215, %208, %201, %194, %187, %180
  %232 = load i32, i32* %15, align 4
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %231
  %235 = load i32, i32* %15, align 4
  store i32 %235, i32* %5, align 4
  br label %237

236:                                              ; preds = %231
  store i32 0, i32* %5, align 4
  br label %237

237:                                              ; preds = %236, %234, %149, %99, %77, %54, %45, %25
  %238 = load i32, i32* %5, align 4
  ret i32 %238
}

declare dso_local %struct.snd_sof_dev* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @memset(%struct.sof_ipc_dai_config*, i32, i32) #1

declare dso_local i32 @sof_parse_tokens(%struct.snd_soc_component*, %struct.sof_ipc_dai_config*, i32, i32, i32, i64) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64) #1

declare dso_local i32 @sof_link_ssp_load(%struct.snd_soc_component*, i32, %struct.snd_soc_dai_link*, %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_hw_config*, %struct.sof_ipc_dai_config*) #1

declare dso_local i32 @sof_link_dmic_load(%struct.snd_soc_component*, i32, %struct.snd_soc_dai_link*, %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_hw_config*, %struct.sof_ipc_dai_config*) #1

declare dso_local i32 @sof_link_hda_load(%struct.snd_soc_component*, i32, %struct.snd_soc_dai_link*, %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_hw_config*, %struct.sof_ipc_dai_config*) #1

declare dso_local i32 @sof_link_alh_load(%struct.snd_soc_component*, i32, %struct.snd_soc_dai_link*, %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_hw_config*, %struct.sof_ipc_dai_config*) #1

declare dso_local i32 @sof_link_sai_load(%struct.snd_soc_component*, i32, %struct.snd_soc_dai_link*, %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_hw_config*, %struct.sof_ipc_dai_config*) #1

declare dso_local i32 @sof_link_esai_load(%struct.snd_soc_component*, i32, %struct.snd_soc_dai_link*, %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_hw_config*, %struct.sof_ipc_dai_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
