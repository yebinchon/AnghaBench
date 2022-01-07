; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_block_insert.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_block_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_block = type { i32 }
%struct.net = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.tcf_net = type { i32, i32 }

@tcf_net_id = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_block*, %struct.net*, %struct.netlink_ext_ack*)* @tcf_block_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_block_insert(%struct.tcf_block* %0, %struct.net* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.tcf_block*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.netlink_ext_ack*, align 8
  %7 = alloca %struct.tcf_net*, align 8
  %8 = alloca i32, align 4
  store %struct.tcf_block* %0, %struct.tcf_block** %4, align 8
  store %struct.net* %1, %struct.net** %5, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %6, align 8
  %9 = load %struct.net*, %struct.net** %5, align 8
  %10 = load i32, i32* @tcf_net_id, align 4
  %11 = call %struct.tcf_net* @net_generic(%struct.net* %9, i32 %10)
  store %struct.tcf_net* %11, %struct.tcf_net** %7, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i32 @idr_preload(i32 %12)
  %14 = load %struct.tcf_net*, %struct.tcf_net** %7, align 8
  %15 = getelementptr inbounds %struct.tcf_net, %struct.tcf_net* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.tcf_net*, %struct.tcf_net** %7, align 8
  %18 = getelementptr inbounds %struct.tcf_net, %struct.tcf_net* %17, i32 0, i32 1
  %19 = load %struct.tcf_block*, %struct.tcf_block** %4, align 8
  %20 = load %struct.tcf_block*, %struct.tcf_block** %4, align 8
  %21 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %20, i32 0, i32 0
  %22 = load %struct.tcf_block*, %struct.tcf_block** %4, align 8
  %23 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @GFP_NOWAIT, align 4
  %26 = call i32 @idr_alloc_u32(i32* %18, %struct.tcf_block* %19, i32* %21, i32 %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.tcf_net*, %struct.tcf_net** %7, align 8
  %28 = getelementptr inbounds %struct.tcf_net, %struct.tcf_net* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock(i32* %28)
  %30 = call i32 (...) @idr_preload_end()
  %31 = load i32, i32* %8, align 4
  ret i32 %31
}

declare dso_local %struct.tcf_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @idr_preload(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_alloc_u32(i32*, %struct.tcf_block*, i32*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @idr_preload_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
