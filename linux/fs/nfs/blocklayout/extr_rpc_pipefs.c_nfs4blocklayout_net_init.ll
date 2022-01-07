; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_rpc_pipefs.c_nfs4blocklayout_net_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_rpc_pipefs.c_nfs4blocklayout_net_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nfs_net = type { %struct.dentry*, i32, i32 }
%struct.dentry = type { %struct.dentry* }

@nfs_net_id = common dso_local global i32 0, align 4
@bl_upcall_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*)* @nfs4blocklayout_net_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4blocklayout_net_init(%struct.net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.nfs_net*, align 8
  %5 = alloca %struct.dentry*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  %6 = load %struct.net*, %struct.net** %3, align 8
  %7 = load i32, i32* @nfs_net_id, align 4
  %8 = call %struct.nfs_net* @net_generic(%struct.net* %6, i32 %7)
  store %struct.nfs_net* %8, %struct.nfs_net** %4, align 8
  %9 = load %struct.nfs_net*, %struct.nfs_net** %4, align 8
  %10 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %9, i32 0, i32 2
  %11 = call i32 @mutex_init(i32* %10)
  %12 = load %struct.nfs_net*, %struct.nfs_net** %4, align 8
  %13 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %12, i32 0, i32 1
  %14 = call i32 @init_waitqueue_head(i32* %13)
  %15 = call %struct.dentry* @rpc_mkpipe_data(i32* @bl_upcall_ops, i32 0)
  %16 = load %struct.nfs_net*, %struct.nfs_net** %4, align 8
  %17 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %16, i32 0, i32 0
  store %struct.dentry* %15, %struct.dentry** %17, align 8
  %18 = load %struct.nfs_net*, %struct.nfs_net** %4, align 8
  %19 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %18, i32 0, i32 0
  %20 = load %struct.dentry*, %struct.dentry** %19, align 8
  %21 = call i64 @IS_ERR(%struct.dentry* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.nfs_net*, %struct.nfs_net** %4, align 8
  %25 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %24, i32 0, i32 0
  %26 = load %struct.dentry*, %struct.dentry** %25, align 8
  %27 = call i32 @PTR_ERR(%struct.dentry* %26)
  store i32 %27, i32* %2, align 4
  br label %50

28:                                               ; preds = %1
  %29 = load %struct.net*, %struct.net** %3, align 8
  %30 = load %struct.nfs_net*, %struct.nfs_net** %4, align 8
  %31 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %30, i32 0, i32 0
  %32 = load %struct.dentry*, %struct.dentry** %31, align 8
  %33 = call %struct.dentry* @nfs4blocklayout_register_net(%struct.net* %29, %struct.dentry* %32)
  store %struct.dentry* %33, %struct.dentry** %5, align 8
  %34 = load %struct.dentry*, %struct.dentry** %5, align 8
  %35 = call i64 @IS_ERR(%struct.dentry* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %28
  %38 = load %struct.nfs_net*, %struct.nfs_net** %4, align 8
  %39 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %38, i32 0, i32 0
  %40 = load %struct.dentry*, %struct.dentry** %39, align 8
  %41 = call i32 @rpc_destroy_pipe_data(%struct.dentry* %40)
  %42 = load %struct.dentry*, %struct.dentry** %5, align 8
  %43 = call i32 @PTR_ERR(%struct.dentry* %42)
  store i32 %43, i32* %2, align 4
  br label %50

44:                                               ; preds = %28
  %45 = load %struct.dentry*, %struct.dentry** %5, align 8
  %46 = load %struct.nfs_net*, %struct.nfs_net** %4, align 8
  %47 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %46, i32 0, i32 0
  %48 = load %struct.dentry*, %struct.dentry** %47, align 8
  %49 = getelementptr inbounds %struct.dentry, %struct.dentry* %48, i32 0, i32 0
  store %struct.dentry* %45, %struct.dentry** %49, align 8
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %44, %37, %23
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.nfs_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local %struct.dentry* @rpc_mkpipe_data(i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local %struct.dentry* @nfs4blocklayout_register_net(%struct.net*, %struct.dentry*) #1

declare dso_local i32 @rpc_destroy_pipe_data(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
