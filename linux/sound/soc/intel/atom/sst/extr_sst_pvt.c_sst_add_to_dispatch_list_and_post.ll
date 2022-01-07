; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_pvt.c_sst_add_to_dispatch_list_and_post.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_pvt.c_sst_add_to_dispatch_list_and_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sst_drv = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.intel_sst_drv*, i32*, i32)* }
%struct.ipc_post = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sst_add_to_dispatch_list_and_post(%struct.intel_sst_drv* %0, %struct.ipc_post* %1) #0 {
  %3 = alloca %struct.intel_sst_drv*, align 8
  %4 = alloca %struct.ipc_post*, align 8
  %5 = alloca i64, align 8
  store %struct.intel_sst_drv* %0, %struct.intel_sst_drv** %3, align 8
  store %struct.ipc_post* %1, %struct.ipc_post** %4, align 8
  %6 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %7 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %6, i32 0, i32 1
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.ipc_post*, %struct.ipc_post** %4, align 8
  %11 = getelementptr inbounds %struct.ipc_post, %struct.ipc_post* %10, i32 0, i32 0
  %12 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %13 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %12, i32 0, i32 2
  %14 = call i32 @list_add_tail(i32* %11, i32* %13)
  %15 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %16 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %15, i32 0, i32 1
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @spin_unlock_irqrestore(i32* %16, i64 %17)
  %19 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %20 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.intel_sst_drv*, i32*, i32)*, i32 (%struct.intel_sst_drv*, i32*, i32)** %22, align 8
  %24 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %25 = call i32 %23(%struct.intel_sst_drv* %24, i32* null, i32 0)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
