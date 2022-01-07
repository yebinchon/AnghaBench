; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-messages.c_skl_get_node_id.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-messages.c_skl_get_node_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_dev = type { i32 }
%struct.skl_module_cfg = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.skl_pipe_params* }
%struct.skl_pipe_params = type { i32, i32 }
%union.skl_connector_node_id = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i8* }
%union.skl_ssp_dma_node = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@__const.skl_get_node_id.node_id = private unnamed_addr constant { i32, [12 x i8] } { i32 0, [12 x i8] undef }, align 8
@__const.skl_get_node_id.ssp_node = private unnamed_addr constant { i32, [4 x i8] } { i32 0, [4 x i8] undef }, align 4
@SKL_CONN_SOURCE = common dso_local global i32 0, align 4
@SKL_DMA_I2S_LINK_OUTPUT_CLASS = common dso_local global i8* null, align 8
@SKL_DMA_I2S_LINK_INPUT_CLASS = common dso_local global i8* null, align 8
@SKL_DMA_DMIC_LINK_INPUT_CLASS = common dso_local global i8* null, align 8
@SKL_DMA_HDA_LINK_OUTPUT_CLASS = common dso_local global i8* null, align 8
@SKL_DMA_HDA_LINK_INPUT_CLASS = common dso_local global i8* null, align 8
@SKL_DMA_HDA_HOST_OUTPUT_CLASS = common dso_local global i8* null, align 8
@SKL_DMA_HDA_HOST_INPUT_CLASS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skl_dev*, %struct.skl_module_cfg*)* @skl_get_node_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_get_node_id(%struct.skl_dev* %0, %struct.skl_module_cfg* %1) #0 {
  %3 = alloca %struct.skl_dev*, align 8
  %4 = alloca %struct.skl_module_cfg*, align 8
  %5 = alloca %union.skl_connector_node_id, align 8
  %6 = alloca %union.skl_ssp_dma_node, align 4
  %7 = alloca %struct.skl_pipe_params*, align 8
  store %struct.skl_dev* %0, %struct.skl_dev** %3, align 8
  store %struct.skl_module_cfg* %1, %struct.skl_module_cfg** %4, align 8
  %8 = bitcast %union.skl_connector_node_id* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast ({ i32, [12 x i8] }* @__const.skl_get_node_id.node_id to i8*), i64 16, i1 false)
  %9 = bitcast %union.skl_ssp_dma_node* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast ({ i32, [4 x i8] }* @__const.skl_get_node_id.ssp_node to i8*), i64 8, i1 false)
  %10 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %4, align 8
  %11 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %10, i32 0, i32 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %13, align 8
  store %struct.skl_pipe_params* %14, %struct.skl_pipe_params** %7, align 8
  %15 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %4, align 8
  %16 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %121 [
    i32 132, label %18
    i32 128, label %42
    i32 131, label %70
    i32 129, label %83
    i32 130, label %102
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* @SKL_CONN_SOURCE, align 4
  %20 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %4, align 8
  %21 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i8*, i8** @SKL_DMA_I2S_LINK_OUTPUT_CLASS, align 8
  br label %28

26:                                               ; preds = %18
  %27 = load i8*, i8** @SKL_DMA_I2S_LINK_INPUT_CLASS, align 8
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i8* [ %25, %24 ], [ %27, %26 ]
  %30 = bitcast %union.skl_connector_node_id* %5 to %struct.TYPE_6__*
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %7, align 8
  %33 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %4, align 8
  %36 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 3
  %39 = add nsw i32 %34, %38
  %40 = bitcast %union.skl_connector_node_id* %5 to %struct.TYPE_6__*
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %123

42:                                               ; preds = %2
  %43 = load i32, i32* @SKL_CONN_SOURCE, align 4
  %44 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %4, align 8
  %45 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %43, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i8*, i8** @SKL_DMA_I2S_LINK_OUTPUT_CLASS, align 8
  br label %52

50:                                               ; preds = %42
  %51 = load i8*, i8** @SKL_DMA_I2S_LINK_INPUT_CLASS, align 8
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i8* [ %49, %48 ], [ %51, %50 ]
  %54 = bitcast %union.skl_connector_node_id* %5 to %struct.TYPE_6__*
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %4, align 8
  %57 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = bitcast %union.skl_ssp_dma_node* %6 to %struct.TYPE_5__*
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %4, align 8
  %62 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = bitcast %union.skl_ssp_dma_node* %6 to %struct.TYPE_5__*
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = bitcast %union.skl_ssp_dma_node* %6 to i32*
  %67 = load i32, i32* %66, align 4
  %68 = bitcast %union.skl_connector_node_id* %5 to %struct.TYPE_6__*
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %123

70:                                               ; preds = %2
  %71 = load i8*, i8** @SKL_DMA_DMIC_LINK_INPUT_CLASS, align 8
  %72 = bitcast %union.skl_connector_node_id* %5 to %struct.TYPE_6__*
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %4, align 8
  %75 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %4, align 8
  %78 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %76, %79
  %81 = bitcast %union.skl_connector_node_id* %5 to %struct.TYPE_6__*
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  br label %123

83:                                               ; preds = %2
  %84 = load i32, i32* @SKL_CONN_SOURCE, align 4
  %85 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %4, align 8
  %86 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %84, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i8*, i8** @SKL_DMA_HDA_LINK_OUTPUT_CLASS, align 8
  br label %93

91:                                               ; preds = %83
  %92 = load i8*, i8** @SKL_DMA_HDA_LINK_INPUT_CLASS, align 8
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i8* [ %90, %89 ], [ %92, %91 ]
  %95 = bitcast %union.skl_connector_node_id* %5 to %struct.TYPE_6__*
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %7, align 8
  %98 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = bitcast %union.skl_connector_node_id* %5 to %struct.TYPE_6__*
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  br label %123

102:                                              ; preds = %2
  %103 = load i32, i32* @SKL_CONN_SOURCE, align 4
  %104 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %4, align 8
  %105 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %103, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = load i8*, i8** @SKL_DMA_HDA_HOST_OUTPUT_CLASS, align 8
  br label %112

110:                                              ; preds = %102
  %111 = load i8*, i8** @SKL_DMA_HDA_HOST_INPUT_CLASS, align 8
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i8* [ %109, %108 ], [ %111, %110 ]
  %114 = bitcast %union.skl_connector_node_id* %5 to %struct.TYPE_6__*
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  store i8* %113, i8** %115, align 8
  %116 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %7, align 8
  %117 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = bitcast %union.skl_connector_node_id* %5 to %struct.TYPE_6__*
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  br label %123

121:                                              ; preds = %2
  %122 = bitcast %union.skl_connector_node_id* %5 to i32*
  store i32 -1, i32* %122, align 8
  br label %123

123:                                              ; preds = %121, %112, %93, %70, %52, %28
  %124 = bitcast %union.skl_connector_node_id* %5 to i32*
  %125 = load i32, i32* %124, align 8
  ret i32 %125
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
