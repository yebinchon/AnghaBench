; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c_rpc_kill_sb.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c_rpc_kill_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.net* }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sunrpc_net = type { i32, %struct.super_block* }

@sunrpc_net_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"RPC:       sending pipefs UMOUNT notification for net %x%s\0A\00", align 1
@rpc_pipefs_notifier_list = common dso_local global i32 0, align 4
@RPC_PIPEFS_UMOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @rpc_kill_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpc_kill_sb(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.sunrpc_net*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %5 = load %struct.super_block*, %struct.super_block** %2, align 8
  %6 = getelementptr inbounds %struct.super_block, %struct.super_block* %5, i32 0, i32 0
  %7 = load %struct.net*, %struct.net** %6, align 8
  store %struct.net* %7, %struct.net** %3, align 8
  %8 = load %struct.net*, %struct.net** %3, align 8
  %9 = load i32, i32* @sunrpc_net_id, align 4
  %10 = call %struct.sunrpc_net* @net_generic(%struct.net* %8, i32 %9)
  store %struct.sunrpc_net* %10, %struct.sunrpc_net** %4, align 8
  %11 = load %struct.sunrpc_net*, %struct.sunrpc_net** %4, align 8
  %12 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.sunrpc_net*, %struct.sunrpc_net** %4, align 8
  %15 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %14, i32 0, i32 1
  %16 = load %struct.super_block*, %struct.super_block** %15, align 8
  %17 = load %struct.super_block*, %struct.super_block** %2, align 8
  %18 = icmp ne %struct.super_block* %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.sunrpc_net*, %struct.sunrpc_net** %4, align 8
  %21 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %20, i32 0, i32 0
  %22 = call i32 @mutex_unlock(i32* %21)
  br label %39

23:                                               ; preds = %1
  %24 = load %struct.sunrpc_net*, %struct.sunrpc_net** %4, align 8
  %25 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %24, i32 0, i32 1
  store %struct.super_block* null, %struct.super_block** %25, align 8
  %26 = load %struct.net*, %struct.net** %3, align 8
  %27 = getelementptr inbounds %struct.net, %struct.net* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.net*, %struct.net** %3, align 8
  %31 = call i32 @NET_NAME(%struct.net* %30)
  %32 = call i32 @dprintk(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %31)
  %33 = load i32, i32* @RPC_PIPEFS_UMOUNT, align 4
  %34 = load %struct.super_block*, %struct.super_block** %2, align 8
  %35 = call i32 @blocking_notifier_call_chain(i32* @rpc_pipefs_notifier_list, i32 %33, %struct.super_block* %34)
  %36 = load %struct.sunrpc_net*, %struct.sunrpc_net** %4, align 8
  %37 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  br label %39

39:                                               ; preds = %23, %19
  %40 = load %struct.super_block*, %struct.super_block** %2, align 8
  %41 = call i32 @kill_litter_super(%struct.super_block* %40)
  %42 = load %struct.net*, %struct.net** %3, align 8
  %43 = call i32 @put_net(%struct.net* %42)
  ret void
}

declare dso_local %struct.sunrpc_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dprintk(i8*, i32, i32) #1

declare dso_local i32 @NET_NAME(%struct.net*) #1

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, %struct.super_block*) #1

declare dso_local i32 @kill_litter_super(%struct.super_block*) #1

declare dso_local i32 @put_net(%struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
