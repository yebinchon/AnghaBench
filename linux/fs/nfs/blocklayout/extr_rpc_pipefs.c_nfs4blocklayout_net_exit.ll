; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_rpc_pipefs.c_nfs4blocklayout_net_exit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_rpc_pipefs.c_nfs4blocklayout_net_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nfs_net = type { i32* }

@nfs_net_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*)* @nfs4blocklayout_net_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4blocklayout_net_exit(%struct.net* %0) #0 {
  %2 = alloca %struct.net*, align 8
  %3 = alloca %struct.nfs_net*, align 8
  store %struct.net* %0, %struct.net** %2, align 8
  %4 = load %struct.net*, %struct.net** %2, align 8
  %5 = load i32, i32* @nfs_net_id, align 4
  %6 = call %struct.nfs_net* @net_generic(%struct.net* %4, i32 %5)
  store %struct.nfs_net* %6, %struct.nfs_net** %3, align 8
  %7 = load %struct.net*, %struct.net** %2, align 8
  %8 = load %struct.nfs_net*, %struct.nfs_net** %3, align 8
  %9 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @nfs4blocklayout_unregister_net(%struct.net* %7, i32* %10)
  %12 = load %struct.nfs_net*, %struct.nfs_net** %3, align 8
  %13 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @rpc_destroy_pipe_data(i32* %14)
  %16 = load %struct.nfs_net*, %struct.nfs_net** %3, align 8
  %17 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %16, i32 0, i32 0
  store i32* null, i32** %17, align 8
  ret void
}

declare dso_local %struct.nfs_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @nfs4blocklayout_unregister_net(%struct.net*, i32*) #1

declare dso_local i32 @rpc_destroy_pipe_data(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
