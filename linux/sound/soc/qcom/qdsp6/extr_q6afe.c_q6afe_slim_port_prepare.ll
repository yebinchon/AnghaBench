; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6afe.c_q6afe_slim_port_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6afe.c_q6afe_slim_port_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.q6afe_port = type { %union.afe_port_config }
%union.afe_port_config = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32, i32, i32, i32, i32 }
%struct.q6afe_slim_cfg = type { i32*, i32, i32, i32, i32 }

@AFE_API_VERSION_SLIMBUS_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @q6afe_slim_port_prepare(%struct.q6afe_port* %0, %struct.q6afe_slim_cfg* %1) #0 {
  %3 = alloca %struct.q6afe_port*, align 8
  %4 = alloca %struct.q6afe_slim_cfg*, align 8
  %5 = alloca %union.afe_port_config*, align 8
  store %struct.q6afe_port* %0, %struct.q6afe_port** %3, align 8
  store %struct.q6afe_slim_cfg* %1, %struct.q6afe_slim_cfg** %4, align 8
  %6 = load %struct.q6afe_port*, %struct.q6afe_port** %3, align 8
  %7 = getelementptr inbounds %struct.q6afe_port, %struct.q6afe_port* %6, i32 0, i32 0
  store %union.afe_port_config* %7, %union.afe_port_config** %5, align 8
  %8 = load i32, i32* @AFE_API_VERSION_SLIMBUS_CONFIG, align 4
  %9 = load %union.afe_port_config*, %union.afe_port_config** %5, align 8
  %10 = bitcast %union.afe_port_config* %9 to %struct.TYPE_2__*
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 5
  store i32 %8, i32* %11, align 8
  %12 = load %struct.q6afe_slim_cfg*, %struct.q6afe_slim_cfg** %4, align 8
  %13 = getelementptr inbounds %struct.q6afe_slim_cfg, %struct.q6afe_slim_cfg* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load %union.afe_port_config*, %union.afe_port_config** %5, align 8
  %16 = bitcast %union.afe_port_config* %15 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 4
  store i32 %14, i32* %17, align 4
  %18 = load %struct.q6afe_slim_cfg*, %struct.q6afe_slim_cfg** %4, align 8
  %19 = getelementptr inbounds %struct.q6afe_slim_cfg, %struct.q6afe_slim_cfg* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %union.afe_port_config*, %union.afe_port_config** %5, align 8
  %22 = bitcast %union.afe_port_config* %21 to %struct.TYPE_2__*
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  store i32 %20, i32* %23, align 8
  %24 = load %struct.q6afe_slim_cfg*, %struct.q6afe_slim_cfg** %4, align 8
  %25 = getelementptr inbounds %struct.q6afe_slim_cfg, %struct.q6afe_slim_cfg* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %union.afe_port_config*, %union.afe_port_config** %5, align 8
  %28 = bitcast %union.afe_port_config* %27 to %struct.TYPE_2__*
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 4
  %30 = load %struct.q6afe_slim_cfg*, %struct.q6afe_slim_cfg** %4, align 8
  %31 = getelementptr inbounds %struct.q6afe_slim_cfg, %struct.q6afe_slim_cfg* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %union.afe_port_config*, %union.afe_port_config** %5, align 8
  %34 = bitcast %union.afe_port_config* %33 to %struct.TYPE_2__*
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 8
  %36 = load %struct.q6afe_slim_cfg*, %struct.q6afe_slim_cfg** %4, align 8
  %37 = getelementptr inbounds %struct.q6afe_slim_cfg, %struct.q6afe_slim_cfg* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load %union.afe_port_config*, %union.afe_port_config** %5, align 8
  %42 = bitcast %union.afe_port_config* %41 to %struct.TYPE_2__*
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %40, i32* %45, align 4
  %46 = load %struct.q6afe_slim_cfg*, %struct.q6afe_slim_cfg** %4, align 8
  %47 = getelementptr inbounds %struct.q6afe_slim_cfg, %struct.q6afe_slim_cfg* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = load %union.afe_port_config*, %union.afe_port_config** %5, align 8
  %52 = bitcast %union.afe_port_config* %51 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 %50, i32* %55, align 4
  %56 = load %struct.q6afe_slim_cfg*, %struct.q6afe_slim_cfg** %4, align 8
  %57 = getelementptr inbounds %struct.q6afe_slim_cfg, %struct.q6afe_slim_cfg* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i32, i32* %59, align 4
  %61 = load %union.afe_port_config*, %union.afe_port_config** %5, align 8
  %62 = bitcast %union.afe_port_config* %61 to %struct.TYPE_2__*
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  store i32 %60, i32* %65, align 4
  %66 = load %struct.q6afe_slim_cfg*, %struct.q6afe_slim_cfg** %4, align 8
  %67 = getelementptr inbounds %struct.q6afe_slim_cfg, %struct.q6afe_slim_cfg* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  %70 = load i32, i32* %69, align 4
  %71 = load %union.afe_port_config*, %union.afe_port_config** %5, align 8
  %72 = bitcast %union.afe_port_config* %71 to %struct.TYPE_2__*
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 3
  store i32 %70, i32* %75, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
