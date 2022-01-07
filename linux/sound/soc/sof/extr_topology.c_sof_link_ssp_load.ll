; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_sof_link_ssp_load.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_sof_link_ssp_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dai_link = type { i32 }
%struct.snd_soc_tplg_link_config = type { %struct.snd_soc_tplg_private }
%struct.snd_soc_tplg_private = type { i32, i32 }
%struct.snd_soc_tplg_hw_config = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sof_ipc_dai_config = type { i8*, %struct.TYPE_4__, %struct.TYPE_5__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i8*, i32, i8*, i8*, i8*, i8*, i32 }
%struct.snd_sof_dev = type { i32, i32 }
%struct.sof_ipc_reply = type { i32 }

@ssp_tokens = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"error: parse ssp tokens failed %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [96 x i8] c"tplg: config SSP%d fmt 0x%x mclk %d bclk %d fclk %d width (%d)%d slots %d mclk id %d quirks %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"error: invalid fsync rate for SSP%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"error: invalid channel count for SSP%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"error: failed to set DAI config for SSP%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"error: failed to save DAI config for SSP%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, %struct.snd_soc_dai_link*, %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_hw_config*, %struct.sof_ipc_dai_config*)* @sof_link_ssp_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sof_link_ssp_load(%struct.snd_soc_component* %0, i32 %1, %struct.snd_soc_dai_link* %2, %struct.snd_soc_tplg_link_config* %3, %struct.snd_soc_tplg_hw_config* %4, %struct.sof_ipc_dai_config* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_dai_link*, align 8
  %11 = alloca %struct.snd_soc_tplg_link_config*, align 8
  %12 = alloca %struct.snd_soc_tplg_hw_config*, align 8
  %13 = alloca %struct.sof_ipc_dai_config*, align 8
  %14 = alloca %struct.snd_sof_dev*, align 8
  %15 = alloca %struct.snd_soc_tplg_private*, align 8
  %16 = alloca %struct.sof_ipc_reply, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.snd_soc_dai_link* %2, %struct.snd_soc_dai_link** %10, align 8
  store %struct.snd_soc_tplg_link_config* %3, %struct.snd_soc_tplg_link_config** %11, align 8
  store %struct.snd_soc_tplg_hw_config* %4, %struct.snd_soc_tplg_hw_config** %12, align 8
  store %struct.sof_ipc_dai_config* %5, %struct.sof_ipc_dai_config** %13, align 8
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %20 = call %struct.snd_sof_dev* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %19)
  store %struct.snd_sof_dev* %20, %struct.snd_sof_dev** %14, align 8
  %21 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %11, align 8
  %22 = getelementptr inbounds %struct.snd_soc_tplg_link_config, %struct.snd_soc_tplg_link_config* %21, i32 0, i32 0
  store %struct.snd_soc_tplg_private* %22, %struct.snd_soc_tplg_private** %15, align 8
  store i32 96, i32* %17, align 4
  %23 = load %struct.snd_soc_tplg_hw_config*, %struct.snd_soc_tplg_hw_config** %12, align 8
  %24 = load %struct.sof_ipc_dai_config*, %struct.sof_ipc_dai_config** %13, align 8
  %25 = call i32 @sof_dai_set_format(%struct.snd_soc_tplg_hw_config* %23, %struct.sof_ipc_dai_config* %24)
  %26 = load %struct.sof_ipc_dai_config*, %struct.sof_ipc_dai_config** %13, align 8
  %27 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %26, i32 0, i32 2
  %28 = call i32 @memset(%struct.TYPE_5__* %27, i32 0, i32 4)
  %29 = load i32, i32* %17, align 4
  %30 = load %struct.sof_ipc_dai_config*, %struct.sof_ipc_dai_config** %13, align 8
  %31 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %34 = load %struct.sof_ipc_dai_config*, %struct.sof_ipc_dai_config** %13, align 8
  %35 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %34, i32 0, i32 2
  %36 = load i32, i32* @ssp_tokens, align 4
  %37 = load i32, i32* @ssp_tokens, align 4
  %38 = call i32 @ARRAY_SIZE(i32 %37)
  %39 = load %struct.snd_soc_tplg_private*, %struct.snd_soc_tplg_private** %15, align 8
  %40 = getelementptr inbounds %struct.snd_soc_tplg_private, %struct.snd_soc_tplg_private* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.snd_soc_tplg_private*, %struct.snd_soc_tplg_private** %15, align 8
  %43 = getelementptr inbounds %struct.snd_soc_tplg_private, %struct.snd_soc_tplg_private* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @le32_to_cpu(i32 %44)
  %46 = call i32 @sof_parse_tokens(%struct.snd_soc_component* %33, %struct.TYPE_5__* %35, i32 %36, i32 %38, i32 %41, i8* %45)
  store i32 %46, i32* %18, align 4
  %47 = load i32, i32* %18, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %6
  %50 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %14, align 8
  %51 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.snd_soc_tplg_private*, %struct.snd_soc_tplg_private** %15, align 8
  %54 = getelementptr inbounds %struct.snd_soc_tplg_private, %struct.snd_soc_tplg_private* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @le32_to_cpu(i32 %55)
  %57 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %56)
  %58 = load i32, i32* %18, align 4
  store i32 %58, i32* %7, align 4
  br label %242

59:                                               ; preds = %6
  %60 = load %struct.snd_soc_tplg_hw_config*, %struct.snd_soc_tplg_hw_config** %12, align 8
  %61 = getelementptr inbounds %struct.snd_soc_tplg_hw_config, %struct.snd_soc_tplg_hw_config* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @le32_to_cpu(i32 %62)
  %64 = load %struct.sof_ipc_dai_config*, %struct.sof_ipc_dai_config** %13, align 8
  %65 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 7
  store i8* %63, i8** %66, align 8
  %67 = load %struct.snd_soc_tplg_hw_config*, %struct.snd_soc_tplg_hw_config** %12, align 8
  %68 = getelementptr inbounds %struct.snd_soc_tplg_hw_config, %struct.snd_soc_tplg_hw_config* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @le32_to_cpu(i32 %69)
  %71 = load %struct.sof_ipc_dai_config*, %struct.sof_ipc_dai_config** %13, align 8
  %72 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 6
  store i8* %70, i8** %73, align 8
  %74 = load %struct.snd_soc_tplg_hw_config*, %struct.snd_soc_tplg_hw_config** %12, align 8
  %75 = getelementptr inbounds %struct.snd_soc_tplg_hw_config, %struct.snd_soc_tplg_hw_config* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @le32_to_cpu(i32 %76)
  %78 = ptrtoint i8* %77 to i32
  %79 = load %struct.sof_ipc_dai_config*, %struct.sof_ipc_dai_config** %13, align 8
  %80 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  %82 = load %struct.snd_soc_tplg_hw_config*, %struct.snd_soc_tplg_hw_config** %12, align 8
  %83 = getelementptr inbounds %struct.snd_soc_tplg_hw_config, %struct.snd_soc_tplg_hw_config* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @le32_to_cpu(i32 %84)
  %86 = ptrtoint i8* %85 to i32
  %87 = load %struct.sof_ipc_dai_config*, %struct.sof_ipc_dai_config** %13, align 8
  %88 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  store i32 %86, i32* %89, align 4
  %90 = load %struct.snd_soc_tplg_hw_config*, %struct.snd_soc_tplg_hw_config** %12, align 8
  %91 = getelementptr inbounds %struct.snd_soc_tplg_hw_config, %struct.snd_soc_tplg_hw_config* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @le32_to_cpu(i32 %92)
  %94 = load %struct.sof_ipc_dai_config*, %struct.sof_ipc_dai_config** %13, align 8
  %95 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 4
  store i8* %93, i8** %96, align 8
  %97 = load %struct.snd_soc_tplg_hw_config*, %struct.snd_soc_tplg_hw_config** %12, align 8
  %98 = getelementptr inbounds %struct.snd_soc_tplg_hw_config, %struct.snd_soc_tplg_hw_config* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.sof_ipc_dai_config*, %struct.sof_ipc_dai_config** %13, align 8
  %101 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 10
  store i32 %99, i32* %102, align 8
  %103 = load %struct.snd_soc_tplg_hw_config*, %struct.snd_soc_tplg_hw_config** %12, align 8
  %104 = getelementptr inbounds %struct.snd_soc_tplg_hw_config, %struct.snd_soc_tplg_hw_config* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @le32_to_cpu(i32 %105)
  %107 = load %struct.sof_ipc_dai_config*, %struct.sof_ipc_dai_config** %13, align 8
  %108 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 9
  store i8* %106, i8** %109, align 8
  %110 = load %struct.snd_soc_tplg_hw_config*, %struct.snd_soc_tplg_hw_config** %12, align 8
  %111 = getelementptr inbounds %struct.snd_soc_tplg_hw_config, %struct.snd_soc_tplg_hw_config* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i8* @le32_to_cpu(i32 %112)
  %114 = load %struct.sof_ipc_dai_config*, %struct.sof_ipc_dai_config** %13, align 8
  %115 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 8
  store i8* %113, i8** %116, align 8
  %117 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %14, align 8
  %118 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.sof_ipc_dai_config*, %struct.sof_ipc_dai_config** %13, align 8
  %121 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.sof_ipc_dai_config*, %struct.sof_ipc_dai_config** %13, align 8
  %124 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.sof_ipc_dai_config*, %struct.sof_ipc_dai_config** %13, align 8
  %127 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 7
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.sof_ipc_dai_config*, %struct.sof_ipc_dai_config** %13, align 8
  %131 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 6
  %133 = load i8*, i8** %132, align 8
  %134 = load %struct.sof_ipc_dai_config*, %struct.sof_ipc_dai_config** %13, align 8
  %135 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.sof_ipc_dai_config*, %struct.sof_ipc_dai_config** %13, align 8
  %139 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.sof_ipc_dai_config*, %struct.sof_ipc_dai_config** %13, align 8
  %143 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 4
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.sof_ipc_dai_config*, %struct.sof_ipc_dai_config** %13, align 8
  %147 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.sof_ipc_dai_config*, %struct.sof_ipc_dai_config** %13, align 8
  %151 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.sof_ipc_dai_config*, %struct.sof_ipc_dai_config** %13, align 8
  %155 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @dev_dbg(i32 %119, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.1, i64 0, i64 0), i8* %122, i32 %125, i8* %129, i8* %133, i32 %137, i32 %141, i8* %145, i32 %149, i32 %153, i32 %157)
  %159 = load %struct.sof_ipc_dai_config*, %struct.sof_ipc_dai_config** %13, align 8
  %160 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp slt i32 %162, 8000
  br i1 %163, label %170, label %164

164:                                              ; preds = %59
  %165 = load %struct.sof_ipc_dai_config*, %struct.sof_ipc_dai_config** %13, align 8
  %166 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp sgt i32 %168, 192000
  br i1 %169, label %170, label %180

170:                                              ; preds = %164, %59
  %171 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %14, align 8
  %172 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.sof_ipc_dai_config*, %struct.sof_ipc_dai_config** %13, align 8
  %175 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 @dev_err(i32 %173, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %176)
  %178 = load i32, i32* @EINVAL, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %7, align 4
  br label %242

180:                                              ; preds = %164
  %181 = load %struct.sof_ipc_dai_config*, %struct.sof_ipc_dai_config** %13, align 8
  %182 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = icmp slt i32 %184, 1
  br i1 %185, label %192, label %186

186:                                              ; preds = %180
  %187 = load %struct.sof_ipc_dai_config*, %struct.sof_ipc_dai_config** %13, align 8
  %188 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = icmp sgt i32 %190, 8
  br i1 %191, label %192, label %202

192:                                              ; preds = %186, %180
  %193 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %14, align 8
  %194 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.sof_ipc_dai_config*, %struct.sof_ipc_dai_config** %13, align 8
  %197 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 @dev_err(i32 %195, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %198)
  %200 = load i32, i32* @EINVAL, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %7, align 4
  br label %242

202:                                              ; preds = %186
  %203 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %14, align 8
  %204 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.sof_ipc_dai_config*, %struct.sof_ipc_dai_config** %13, align 8
  %207 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.sof_ipc_dai_config*, %struct.sof_ipc_dai_config** %13, align 8
  %211 = load i32, i32* %17, align 4
  %212 = call i32 @sof_ipc_tx_message(i32 %205, i32 %209, %struct.sof_ipc_dai_config* %210, i32 %211, %struct.sof_ipc_reply* %16, i32 4)
  store i32 %212, i32* %18, align 4
  %213 = load i32, i32* %18, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %224

215:                                              ; preds = %202
  %216 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %14, align 8
  %217 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.sof_ipc_dai_config*, %struct.sof_ipc_dai_config** %13, align 8
  %220 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %219, i32 0, i32 0
  %221 = load i8*, i8** %220, align 8
  %222 = call i32 @dev_err(i32 %218, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i8* %221)
  %223 = load i32, i32* %18, align 4
  store i32 %223, i32* %7, align 4
  br label %242

224:                                              ; preds = %202
  %225 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %14, align 8
  %226 = load i32, i32* %17, align 4
  %227 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %10, align 8
  %228 = load %struct.sof_ipc_dai_config*, %struct.sof_ipc_dai_config** %13, align 8
  %229 = call i32 @sof_set_dai_config(%struct.snd_sof_dev* %225, i32 %226, %struct.snd_soc_dai_link* %227, %struct.sof_ipc_dai_config* %228)
  store i32 %229, i32* %18, align 4
  %230 = load i32, i32* %18, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %240

232:                                              ; preds = %224
  %233 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %14, align 8
  %234 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.sof_ipc_dai_config*, %struct.sof_ipc_dai_config** %13, align 8
  %237 = getelementptr inbounds %struct.sof_ipc_dai_config, %struct.sof_ipc_dai_config* %236, i32 0, i32 0
  %238 = load i8*, i8** %237, align 8
  %239 = call i32 @dev_err(i32 %235, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i8* %238)
  br label %240

240:                                              ; preds = %232, %224
  %241 = load i32, i32* %18, align 4
  store i32 %241, i32* %7, align 4
  br label %242

242:                                              ; preds = %240, %215, %192, %170, %49
  %243 = load i32, i32* %7, align 4
  ret i32 %243
}

declare dso_local %struct.snd_sof_dev* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @sof_dai_set_format(%struct.snd_soc_tplg_hw_config*, %struct.sof_ipc_dai_config*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @sof_parse_tokens(%struct.snd_soc_component*, %struct.TYPE_5__*, i32, i32, i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i32, i8*, i8*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @sof_ipc_tx_message(i32, i32, %struct.sof_ipc_dai_config*, i32, %struct.sof_ipc_reply*, i32) #1

declare dso_local i32 @sof_set_dai_config(%struct.snd_sof_dev*, i32, %struct.snd_soc_dai_link*, %struct.sof_ipc_dai_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
