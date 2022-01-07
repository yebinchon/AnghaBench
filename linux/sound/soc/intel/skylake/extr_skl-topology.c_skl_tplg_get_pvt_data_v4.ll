; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_get_pvt_data_v4.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_get_pvt_data_v4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_tplg_dapm_widget = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.skl_dev = type { i32 }
%struct.device = type { i32 }
%struct.skl_module_cfg = type { %struct.TYPE_13__, %struct.TYPE_12__*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__, i64 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__*, %struct.TYPE_10__*, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.skl_dfw_v4_module = type { i32, %struct.TYPE_14__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"Parsing Skylake v4 widget topology data\0A\00", align 1
@MAX_IN_QUEUE = common dso_local global i32 0, align 4
@MAX_OUT_QUEUE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_tplg_dapm_widget*, %struct.skl_dev*, %struct.device*, %struct.skl_module_cfg*)* @skl_tplg_get_pvt_data_v4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_tplg_get_pvt_data_v4(%struct.snd_soc_tplg_dapm_widget* %0, %struct.skl_dev* %1, %struct.device* %2, %struct.skl_module_cfg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_tplg_dapm_widget*, align 8
  %7 = alloca %struct.skl_dev*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.skl_module_cfg*, align 8
  %10 = alloca %struct.skl_dfw_v4_module*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_soc_tplg_dapm_widget* %0, %struct.snd_soc_tplg_dapm_widget** %6, align 8
  store %struct.skl_dev* %1, %struct.skl_dev** %7, align 8
  store %struct.device* %2, %struct.device** %8, align 8
  store %struct.skl_module_cfg* %3, %struct.skl_module_cfg** %9, align 8
  %12 = load %struct.snd_soc_tplg_dapm_widget*, %struct.snd_soc_tplg_dapm_widget** %6, align 8
  %13 = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, %struct.snd_soc_tplg_dapm_widget* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.skl_dfw_v4_module*
  store %struct.skl_dfw_v4_module* %16, %struct.skl_dfw_v4_module** %10, align 8
  %17 = load %struct.device*, %struct.device** %8, align 8
  %18 = call i32 @dev_dbg(%struct.device* %17, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.skl_dfw_v4_module*, %struct.skl_dfw_v4_module** %10, align 8
  %20 = getelementptr inbounds %struct.skl_dfw_v4_module, %struct.skl_dfw_v4_module* %19, i32 0, i32 24
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %23 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %22, i32 0, i32 13
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  %26 = call i32 @guid_parse(i32 %21, i32* %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %5, align 4
  br label %298

31:                                               ; preds = %4
  %32 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %33 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %32, i32 0, i32 12
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  store i32 -1, i32* %34, align 8
  %35 = load %struct.skl_dfw_v4_module*, %struct.skl_dfw_v4_module** %10, align 8
  %36 = getelementptr inbounds %struct.skl_dfw_v4_module, %struct.skl_dfw_v4_module* %35, i32 0, i32 23
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %39 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %38, i32 0, i32 12
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load %struct.skl_dfw_v4_module*, %struct.skl_dfw_v4_module** %10, align 8
  %42 = getelementptr inbounds %struct.skl_dfw_v4_module, %struct.skl_dfw_v4_module* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sdiv i32 %43, 1000
  %45 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %46 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %45, i32 0, i32 1
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  store i32 %44, i32* %51, align 4
  %52 = load %struct.skl_dfw_v4_module*, %struct.skl_dfw_v4_module** %10, align 8
  %53 = getelementptr inbounds %struct.skl_dfw_v4_module, %struct.skl_dfw_v4_module* %52, i32 0, i32 22
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %56 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %55, i32 0, i32 1
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 3
  store i32 %54, i32* %61, align 4
  %62 = load %struct.skl_dfw_v4_module*, %struct.skl_dfw_v4_module** %10, align 8
  %63 = getelementptr inbounds %struct.skl_dfw_v4_module, %struct.skl_dfw_v4_module* %62, i32 0, i32 21
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %66 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %65, i32 0, i32 1
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 2
  store i32 %64, i32* %71, align 4
  %72 = load %struct.skl_dfw_v4_module*, %struct.skl_dfw_v4_module** %10, align 8
  %73 = getelementptr inbounds %struct.skl_dfw_v4_module, %struct.skl_dfw_v4_module* %72, i32 0, i32 20
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %76 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %75, i32 0, i32 11
  store i32 %74, i32* %76, align 4
  %77 = load %struct.skl_dfw_v4_module*, %struct.skl_dfw_v4_module** %10, align 8
  %78 = getelementptr inbounds %struct.skl_dfw_v4_module, %struct.skl_dfw_v4_module* %77, i32 0, i32 19
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %81 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %80, i32 0, i32 1
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  store i32 %79, i32* %83, align 4
  %84 = load %struct.skl_dfw_v4_module*, %struct.skl_dfw_v4_module** %10, align 8
  %85 = getelementptr inbounds %struct.skl_dfw_v4_module, %struct.skl_dfw_v4_module* %84, i32 0, i32 18
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %88 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %87, i32 0, i32 1
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  store i32 %86, i32* %90, align 8
  %91 = load %struct.skl_dfw_v4_module*, %struct.skl_dfw_v4_module** %10, align 8
  %92 = getelementptr inbounds %struct.skl_dfw_v4_module, %struct.skl_dfw_v4_module* %91, i32 0, i32 17
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %95 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %94, i32 0, i32 1
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 4
  store i32 %93, i32* %97, align 8
  %98 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %99 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %98, i32 0, i32 1
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i64 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.skl_dfw_v4_module*, %struct.skl_dfw_v4_module** %10, align 8
  %107 = getelementptr inbounds %struct.skl_dfw_v4_module, %struct.skl_dfw_v4_module* %106, i32 0, i32 16
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @MAX_IN_QUEUE, align 4
  %110 = call i32 @skl_tplg_fill_fmt_v4(i32 %105, i32 %108, i32 %109)
  %111 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %112 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %111, i32 0, i32 1
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 3
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i64 0
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.skl_dfw_v4_module*, %struct.skl_dfw_v4_module** %10, align 8
  %120 = getelementptr inbounds %struct.skl_dfw_v4_module, %struct.skl_dfw_v4_module* %119, i32 0, i32 15
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @MAX_OUT_QUEUE, align 4
  %123 = call i32 @skl_tplg_fill_fmt_v4(i32 %118, i32 %121, i32 %122)
  %124 = load %struct.skl_dfw_v4_module*, %struct.skl_dfw_v4_module** %10, align 8
  %125 = getelementptr inbounds %struct.skl_dfw_v4_module, %struct.skl_dfw_v4_module* %124, i32 0, i32 14
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %128 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %127, i32 0, i32 10
  store i32 %126, i32* %128, align 8
  %129 = load %struct.skl_dfw_v4_module*, %struct.skl_dfw_v4_module** %10, align 8
  %130 = getelementptr inbounds %struct.skl_dfw_v4_module, %struct.skl_dfw_v4_module* %129, i32 0, i32 13
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %133 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %132, i32 0, i32 9
  store i32 %131, i32* %133, align 4
  %134 = load %struct.skl_dfw_v4_module*, %struct.skl_dfw_v4_module** %10, align 8
  %135 = getelementptr inbounds %struct.skl_dfw_v4_module, %struct.skl_dfw_v4_module* %134, i32 0, i32 12
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %138 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %137, i32 0, i32 8
  store i32 %136, i32* %138, align 8
  %139 = load %struct.skl_dfw_v4_module*, %struct.skl_dfw_v4_module** %10, align 8
  %140 = getelementptr inbounds %struct.skl_dfw_v4_module, %struct.skl_dfw_v4_module* %139, i32 0, i32 11
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %143 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %142, i32 0, i32 7
  store i32 %141, i32* %143, align 4
  %144 = load %struct.skl_dfw_v4_module*, %struct.skl_dfw_v4_module** %10, align 8
  %145 = getelementptr inbounds %struct.skl_dfw_v4_module, %struct.skl_dfw_v4_module* %144, i32 0, i32 10
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %148 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %147, i32 0, i32 1
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i64 0
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 1
  store i32 %146, i32* %153, align 4
  %154 = load %struct.device*, %struct.device** %8, align 8
  %155 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %156 = load %struct.skl_dev*, %struct.skl_dev** %7, align 8
  %157 = load %struct.skl_dfw_v4_module*, %struct.skl_dfw_v4_module** %10, align 8
  %158 = getelementptr inbounds %struct.skl_dfw_v4_module, %struct.skl_dfw_v4_module* %157, i32 0, i32 9
  %159 = call i32 @skl_tplg_add_pipe_v4(%struct.device* %154, %struct.skl_module_cfg* %155, %struct.skl_dev* %156, i32* %158)
  store i32 %159, i32* %11, align 4
  %160 = load i32, i32* %11, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %31
  %163 = load i32, i32* %11, align 4
  store i32 %163, i32* %5, align 4
  br label %298

164:                                              ; preds = %31
  %165 = load %struct.skl_dfw_v4_module*, %struct.skl_dfw_v4_module** %10, align 8
  %166 = getelementptr inbounds %struct.skl_dfw_v4_module, %struct.skl_dfw_v4_module* %165, i32 0, i32 8
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %169 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %168, i32 0, i32 6
  store i32 %167, i32* %169, align 8
  %170 = load %struct.skl_dfw_v4_module*, %struct.skl_dfw_v4_module** %10, align 8
  %171 = getelementptr inbounds %struct.skl_dfw_v4_module, %struct.skl_dfw_v4_module* %170, i32 0, i32 7
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %174 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %173, i32 0, i32 5
  store i32 %172, i32* %174, align 4
  %175 = load %struct.skl_dfw_v4_module*, %struct.skl_dfw_v4_module** %10, align 8
  %176 = getelementptr inbounds %struct.skl_dfw_v4_module, %struct.skl_dfw_v4_module* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %179 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %178, i32 0, i32 4
  store i32 %177, i32* %179, align 8
  %180 = load %struct.skl_dfw_v4_module*, %struct.skl_dfw_v4_module** %10, align 8
  %181 = getelementptr inbounds %struct.skl_dfw_v4_module, %struct.skl_dfw_v4_module* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %185 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 1
  store i32 %183, i32* %186, align 4
  %187 = load %struct.device*, %struct.device** %8, align 8
  %188 = load i32, i32* @MAX_IN_QUEUE, align 4
  %189 = load i32, i32* @GFP_KERNEL, align 4
  %190 = call i8* @devm_kcalloc(%struct.device* %187, i32 %188, i32 1, i32 %189)
  %191 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %192 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %191, i32 0, i32 3
  store i8* %190, i8** %192, align 8
  %193 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %194 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %193, i32 0, i32 3
  %195 = load i8*, i8** %194, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %200, label %197

197:                                              ; preds = %164
  %198 = load i32, i32* @ENOMEM, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %5, align 4
  br label %298

200:                                              ; preds = %164
  %201 = load %struct.device*, %struct.device** %8, align 8
  %202 = load i32, i32* @MAX_OUT_QUEUE, align 4
  %203 = load i32, i32* @GFP_KERNEL, align 4
  %204 = call i8* @devm_kcalloc(%struct.device* %201, i32 %202, i32 1, i32 %203)
  %205 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %206 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %205, i32 0, i32 2
  store i8* %204, i8** %206, align 8
  %207 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %208 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %207, i32 0, i32 2
  %209 = load i8*, i8** %208, align 8
  %210 = icmp ne i8* %209, null
  br i1 %210, label %214, label %211

211:                                              ; preds = %200
  %212 = load i32, i32* @ENOMEM, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %5, align 4
  br label %298

214:                                              ; preds = %200
  %215 = load %struct.skl_dfw_v4_module*, %struct.skl_dfw_v4_module** %10, align 8
  %216 = getelementptr inbounds %struct.skl_dfw_v4_module, %struct.skl_dfw_v4_module* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %219 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %218, i32 0, i32 3
  %220 = load i8*, i8** %219, align 8
  %221 = load %struct.skl_dfw_v4_module*, %struct.skl_dfw_v4_module** %10, align 8
  %222 = getelementptr inbounds %struct.skl_dfw_v4_module, %struct.skl_dfw_v4_module* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %225 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %224, i32 0, i32 1
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @skl_fill_module_pin_info_v4(i32 %217, i8* %220, i32 %223, i32 %228)
  %230 = load %struct.skl_dfw_v4_module*, %struct.skl_dfw_v4_module** %10, align 8
  %231 = getelementptr inbounds %struct.skl_dfw_v4_module, %struct.skl_dfw_v4_module* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %234 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %233, i32 0, i32 2
  %235 = load i8*, i8** %234, align 8
  %236 = load %struct.skl_dfw_v4_module*, %struct.skl_dfw_v4_module** %10, align 8
  %237 = getelementptr inbounds %struct.skl_dfw_v4_module, %struct.skl_dfw_v4_module* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %240 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %239, i32 0, i32 1
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @skl_fill_module_pin_info_v4(i32 %232, i8* %235, i32 %238, i32 %243)
  %245 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %246 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %297

250:                                              ; preds = %214
  %251 = load %struct.skl_dfw_v4_module*, %struct.skl_dfw_v4_module** %10, align 8
  %252 = getelementptr inbounds %struct.skl_dfw_v4_module, %struct.skl_dfw_v4_module* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %256 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i32 0, i32 3
  store i32 %254, i32* %257, align 4
  %258 = load %struct.skl_dfw_v4_module*, %struct.skl_dfw_v4_module** %10, align 8
  %259 = getelementptr inbounds %struct.skl_dfw_v4_module, %struct.skl_dfw_v4_module* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %263 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i32 0, i32 2
  store i32 %261, i32* %264, align 8
  %265 = load %struct.device*, %struct.device** %8, align 8
  %266 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %267 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @GFP_KERNEL, align 4
  %271 = call i32 @devm_kzalloc(%struct.device* %265, i32 %269, i32 %270)
  %272 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %273 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 0
  store i32 %271, i32* %274, align 8
  %275 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %276 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %283, label %280

280:                                              ; preds = %250
  %281 = load i32, i32* @ENOMEM, align 4
  %282 = sub nsw i32 0, %281
  store i32 %282, i32* %5, align 4
  br label %298

283:                                              ; preds = %250
  %284 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %285 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.skl_dfw_v4_module*, %struct.skl_dfw_v4_module** %10, align 8
  %289 = getelementptr inbounds %struct.skl_dfw_v4_module, %struct.skl_dfw_v4_module* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.skl_dfw_v4_module*, %struct.skl_dfw_v4_module** %10, align 8
  %293 = getelementptr inbounds %struct.skl_dfw_v4_module, %struct.skl_dfw_v4_module* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @memcpy(i32 %287, i32 %291, i32 %295)
  br label %297

297:                                              ; preds = %283, %214
  store i32 0, i32* %5, align 4
  br label %298

298:                                              ; preds = %297, %280, %211, %197, %162, %29
  %299 = load i32, i32* %5, align 4
  ret i32 %299
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @guid_parse(i32, i32*) #1

declare dso_local i32 @skl_tplg_fill_fmt_v4(i32, i32, i32) #1

declare dso_local i32 @skl_tplg_add_pipe_v4(%struct.device*, %struct.skl_module_cfg*, %struct.skl_dev*, i32*) #1

declare dso_local i8* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @skl_fill_module_pin_info_v4(i32, i8*, i32, i32) #1

declare dso_local i32 @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
