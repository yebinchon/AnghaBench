; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6afe.c_q6afe_tdm_port_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6afe.c_q6afe_tdm_port_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.q6afe_port = type { %struct.TYPE_4__*, %union.afe_port_config }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%union.afe_port_config = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.q6afe_tdm_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@AFE_API_VERSION_TDM_CONFIG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@AFE_API_VERSION_SLOT_MAPPING_CONFIG = common dso_local global i32 0, align 4
@AFE_PORT_MAX_AUDIO_CHAN_CNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @q6afe_tdm_port_prepare(%struct.q6afe_port* %0, %struct.q6afe_tdm_cfg* %1) #0 {
  %3 = alloca %struct.q6afe_port*, align 8
  %4 = alloca %struct.q6afe_tdm_cfg*, align 8
  %5 = alloca %union.afe_port_config*, align 8
  store %struct.q6afe_port* %0, %struct.q6afe_port** %3, align 8
  store %struct.q6afe_tdm_cfg* %1, %struct.q6afe_tdm_cfg** %4, align 8
  %6 = load %struct.q6afe_port*, %struct.q6afe_port** %3, align 8
  %7 = getelementptr inbounds %struct.q6afe_port, %struct.q6afe_port* %6, i32 0, i32 1
  store %union.afe_port_config* %7, %union.afe_port_config** %5, align 8
  %8 = load i32, i32* @AFE_API_VERSION_TDM_CONFIG, align 4
  %9 = load %union.afe_port_config*, %union.afe_port_config** %5, align 8
  %10 = bitcast %union.afe_port_config* %9 to %struct.TYPE_3__*
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 9
  store i32 %8, i32* %11, align 4
  %12 = load %struct.q6afe_tdm_cfg*, %struct.q6afe_tdm_cfg** %4, align 8
  %13 = getelementptr inbounds %struct.q6afe_tdm_cfg, %struct.q6afe_tdm_cfg* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %union.afe_port_config*, %union.afe_port_config** %5, align 8
  %16 = bitcast %union.afe_port_config* %15 to %struct.TYPE_3__*
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 8
  store i32 %14, i32* %17, align 4
  %18 = load %struct.q6afe_tdm_cfg*, %struct.q6afe_tdm_cfg** %4, align 8
  %19 = getelementptr inbounds %struct.q6afe_tdm_cfg, %struct.q6afe_tdm_cfg* %18, i32 0, i32 10
  %20 = load i32, i32* %19, align 4
  %21 = load %union.afe_port_config*, %union.afe_port_config** %5, align 8
  %22 = bitcast %union.afe_port_config* %21 to %struct.TYPE_3__*
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 7
  store i32 %20, i32* %23, align 4
  %24 = load %struct.q6afe_tdm_cfg*, %struct.q6afe_tdm_cfg** %4, align 8
  %25 = getelementptr inbounds %struct.q6afe_tdm_cfg, %struct.q6afe_tdm_cfg* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %union.afe_port_config*, %union.afe_port_config** %5, align 8
  %28 = bitcast %union.afe_port_config* %27 to %struct.TYPE_3__*
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 6
  store i32 %26, i32* %29, align 4
  %30 = load %struct.q6afe_tdm_cfg*, %struct.q6afe_tdm_cfg** %4, align 8
  %31 = getelementptr inbounds %struct.q6afe_tdm_cfg, %struct.q6afe_tdm_cfg* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 4
  %33 = load %union.afe_port_config*, %union.afe_port_config** %5, align 8
  %34 = bitcast %union.afe_port_config* %33 to %struct.TYPE_3__*
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 5
  store i32 %32, i32* %35, align 4
  %36 = load %struct.q6afe_tdm_cfg*, %struct.q6afe_tdm_cfg** %4, align 8
  %37 = getelementptr inbounds %struct.q6afe_tdm_cfg, %struct.q6afe_tdm_cfg* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 4
  %39 = load %union.afe_port_config*, %union.afe_port_config** %5, align 8
  %40 = bitcast %union.afe_port_config* %39 to %struct.TYPE_3__*
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 4
  store i32 %38, i32* %41, align 4
  %42 = load %struct.q6afe_tdm_cfg*, %struct.q6afe_tdm_cfg** %4, align 8
  %43 = getelementptr inbounds %struct.q6afe_tdm_cfg, %struct.q6afe_tdm_cfg* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  %45 = load %union.afe_port_config*, %union.afe_port_config** %5, align 8
  %46 = bitcast %union.afe_port_config* %45 to %struct.TYPE_3__*
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  store i32 %44, i32* %47, align 4
  %48 = load %struct.q6afe_tdm_cfg*, %struct.q6afe_tdm_cfg** %4, align 8
  %49 = getelementptr inbounds %struct.q6afe_tdm_cfg, %struct.q6afe_tdm_cfg* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = load %union.afe_port_config*, %union.afe_port_config** %5, align 8
  %52 = bitcast %union.afe_port_config* %51 to %struct.TYPE_3__*
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 4
  %54 = load %struct.q6afe_tdm_cfg*, %struct.q6afe_tdm_cfg** %4, align 8
  %55 = getelementptr inbounds %struct.q6afe_tdm_cfg, %struct.q6afe_tdm_cfg* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load %union.afe_port_config*, %union.afe_port_config** %5, align 8
  %58 = bitcast %union.afe_port_config* %57 to %struct.TYPE_3__*
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 4
  %60 = load %struct.q6afe_tdm_cfg*, %struct.q6afe_tdm_cfg** %4, align 8
  %61 = getelementptr inbounds %struct.q6afe_tdm_cfg, %struct.q6afe_tdm_cfg* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load %union.afe_port_config*, %union.afe_port_config** %5, align 8
  %64 = bitcast %union.afe_port_config* %63 to %struct.TYPE_3__*
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call %struct.TYPE_4__* @kzalloc(i32 20, i32 %66)
  %68 = load %struct.q6afe_port*, %struct.q6afe_port** %3, align 8
  %69 = getelementptr inbounds %struct.q6afe_port, %struct.q6afe_port* %68, i32 0, i32 0
  store %struct.TYPE_4__* %67, %struct.TYPE_4__** %69, align 8
  %70 = load %struct.q6afe_port*, %struct.q6afe_port** %3, align 8
  %71 = getelementptr inbounds %struct.q6afe_port, %struct.q6afe_port* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = icmp ne %struct.TYPE_4__* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %2
  br label %115

75:                                               ; preds = %2
  %76 = load i32, i32* @AFE_API_VERSION_SLOT_MAPPING_CONFIG, align 4
  %77 = load %struct.q6afe_port*, %struct.q6afe_port** %3, align 8
  %78 = getelementptr inbounds %struct.q6afe_port, %struct.q6afe_port* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 4
  store i32 %76, i32* %80, align 4
  %81 = load %struct.q6afe_tdm_cfg*, %struct.q6afe_tdm_cfg** %4, align 8
  %82 = getelementptr inbounds %struct.q6afe_tdm_cfg, %struct.q6afe_tdm_cfg* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.q6afe_port*, %struct.q6afe_port** %3, align 8
  %85 = getelementptr inbounds %struct.q6afe_port, %struct.q6afe_port* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 3
  store i32 %83, i32* %87, align 4
  %88 = load %struct.q6afe_tdm_cfg*, %struct.q6afe_tdm_cfg** %4, align 8
  %89 = getelementptr inbounds %struct.q6afe_tdm_cfg, %struct.q6afe_tdm_cfg* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.q6afe_port*, %struct.q6afe_port** %3, align 8
  %92 = getelementptr inbounds %struct.q6afe_port, %struct.q6afe_port* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  store i32 %90, i32* %94, align 4
  %95 = load %struct.q6afe_tdm_cfg*, %struct.q6afe_tdm_cfg** %4, align 8
  %96 = getelementptr inbounds %struct.q6afe_tdm_cfg, %struct.q6afe_tdm_cfg* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.q6afe_port*, %struct.q6afe_port** %3, align 8
  %99 = getelementptr inbounds %struct.q6afe_port, %struct.q6afe_port* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  store i32 %97, i32* %101, align 4
  %102 = load %struct.q6afe_port*, %struct.q6afe_port** %3, align 8
  %103 = getelementptr inbounds %struct.q6afe_port, %struct.q6afe_port* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.q6afe_tdm_cfg*, %struct.q6afe_tdm_cfg** %4, align 8
  %108 = getelementptr inbounds %struct.q6afe_tdm_cfg, %struct.q6afe_tdm_cfg* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @AFE_PORT_MAX_AUDIO_CHAN_CNT, align 4
  %111 = sext i32 %110 to i64
  %112 = mul i64 4, %111
  %113 = trunc i64 %112 to i32
  %114 = call i32 @memcpy(i32 %106, i32 %109, i32 %113)
  br label %115

115:                                              ; preds = %75, %74
  ret void
}

declare dso_local %struct.TYPE_4__* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
