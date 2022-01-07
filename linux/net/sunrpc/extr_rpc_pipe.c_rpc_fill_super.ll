; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c_rpc_fill_super.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c_rpc_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, %struct.dentry*, i32*, i32*, i32, i32, i32, %struct.net* }
%struct.dentry = type { i32 }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.fs_context = type { i32 }
%struct.inode = type { i32 }
%struct.sunrpc_net = type { i32, %struct.super_block*, i32 }

@sunrpc_net_id = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@RPCAUTH_GSSMAGIC = common dso_local global i32 0, align 4
@s_ops = common dso_local global i32 0, align 4
@simple_dentry_operations = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@files = common dso_local global i32 0, align 4
@RPCAUTH_lockd = common dso_local global i32 0, align 4
@RPCAUTH_RootEOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"RPC:       sending pipefs MOUNT notification for net %x%s\0A\00", align 1
@rpc_pipefs_notifier_list = common dso_local global i32 0, align 4
@RPC_PIPEFS_MOUNT = common dso_local global i32 0, align 4
@RPC_PIPEFS_UMOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.fs_context*)* @rpc_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpc_fill_super(%struct.super_block* %0, %struct.fs_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.fs_context*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.sunrpc_net*, align 8
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.fs_context* %1, %struct.fs_context** %5, align 8
  %12 = load %struct.super_block*, %struct.super_block** %4, align 8
  %13 = getelementptr inbounds %struct.super_block, %struct.super_block* %12, i32 0, i32 7
  %14 = load %struct.net*, %struct.net** %13, align 8
  store %struct.net* %14, %struct.net** %9, align 8
  %15 = load %struct.net*, %struct.net** %9, align 8
  %16 = load i32, i32* @sunrpc_net_id, align 4
  %17 = call %struct.sunrpc_net* @net_generic(%struct.net* %15, i32 %16)
  store %struct.sunrpc_net* %17, %struct.sunrpc_net** %10, align 8
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = load %struct.super_block*, %struct.super_block** %4, align 8
  %20 = getelementptr inbounds %struct.super_block, %struct.super_block* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @PAGE_SHIFT, align 4
  %22 = load %struct.super_block*, %struct.super_block** %4, align 8
  %23 = getelementptr inbounds %struct.super_block, %struct.super_block* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @RPCAUTH_GSSMAGIC, align 4
  %25 = load %struct.super_block*, %struct.super_block** %4, align 8
  %26 = getelementptr inbounds %struct.super_block, %struct.super_block* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 8
  %27 = load %struct.super_block*, %struct.super_block** %4, align 8
  %28 = getelementptr inbounds %struct.super_block, %struct.super_block* %27, i32 0, i32 3
  store i32* @s_ops, i32** %28, align 8
  %29 = load %struct.super_block*, %struct.super_block** %4, align 8
  %30 = getelementptr inbounds %struct.super_block, %struct.super_block* %29, i32 0, i32 2
  store i32* @simple_dentry_operations, i32** %30, align 8
  %31 = load %struct.super_block*, %struct.super_block** %4, align 8
  %32 = getelementptr inbounds %struct.super_block, %struct.super_block* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.super_block*, %struct.super_block** %4, align 8
  %34 = load i32, i32* @S_IFDIR, align 4
  %35 = or i32 %34, 365
  %36 = call %struct.inode* @rpc_get_inode(%struct.super_block* %33, i32 %35)
  store %struct.inode* %36, %struct.inode** %6, align 8
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = call %struct.dentry* @d_make_root(%struct.inode* %37)
  store %struct.dentry* %38, %struct.dentry** %7, align 8
  %39 = load %struct.super_block*, %struct.super_block** %4, align 8
  %40 = getelementptr inbounds %struct.super_block, %struct.super_block* %39, i32 0, i32 1
  store %struct.dentry* %38, %struct.dentry** %40, align 8
  %41 = load %struct.dentry*, %struct.dentry** %7, align 8
  %42 = icmp ne %struct.dentry* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %2
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %114

46:                                               ; preds = %2
  %47 = load %struct.dentry*, %struct.dentry** %7, align 8
  %48 = load i32, i32* @files, align 4
  %49 = load i32, i32* @RPCAUTH_lockd, align 4
  %50 = load i32, i32* @RPCAUTH_RootEOF, align 4
  %51 = call i64 @rpc_populate(%struct.dentry* %47, i32 %48, i32 %49, i32 %50, i32* null)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %114

56:                                               ; preds = %46
  %57 = load %struct.dentry*, %struct.dentry** %7, align 8
  %58 = load %struct.sunrpc_net*, %struct.sunrpc_net** %10, align 8
  %59 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call %struct.dentry* @rpc_gssd_dummy_populate(%struct.dentry* %57, i32 %60)
  store %struct.dentry* %61, %struct.dentry** %8, align 8
  %62 = load %struct.dentry*, %struct.dentry** %8, align 8
  %63 = call i64 @IS_ERR(%struct.dentry* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %56
  %66 = load %struct.dentry*, %struct.dentry** %7, align 8
  %67 = load i32, i32* @files, align 4
  %68 = load i32, i32* @RPCAUTH_lockd, align 4
  %69 = load i32, i32* @RPCAUTH_RootEOF, align 4
  %70 = call i32 @__rpc_depopulate(%struct.dentry* %66, i32 %67, i32 %68, i32 %69)
  %71 = load %struct.dentry*, %struct.dentry** %8, align 8
  %72 = call i32 @PTR_ERR(%struct.dentry* %71)
  store i32 %72, i32* %3, align 4
  br label %114

73:                                               ; preds = %56
  %74 = load %struct.net*, %struct.net** %9, align 8
  %75 = getelementptr inbounds %struct.net, %struct.net* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.net*, %struct.net** %9, align 8
  %79 = call i32 @NET_NAME(%struct.net* %78)
  %80 = call i32 @dprintk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %79)
  %81 = load %struct.sunrpc_net*, %struct.sunrpc_net** %10, align 8
  %82 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %81, i32 0, i32 0
  %83 = call i32 @mutex_lock(i32* %82)
  %84 = load %struct.super_block*, %struct.super_block** %4, align 8
  %85 = load %struct.sunrpc_net*, %struct.sunrpc_net** %10, align 8
  %86 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %85, i32 0, i32 1
  store %struct.super_block* %84, %struct.super_block** %86, align 8
  %87 = load i32, i32* @RPC_PIPEFS_MOUNT, align 4
  %88 = load %struct.super_block*, %struct.super_block** %4, align 8
  %89 = call i32 @blocking_notifier_call_chain(i32* @rpc_pipefs_notifier_list, i32 %87, %struct.super_block* %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %73
  br label %97

93:                                               ; preds = %73
  %94 = load %struct.sunrpc_net*, %struct.sunrpc_net** %10, align 8
  %95 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %94, i32 0, i32 0
  %96 = call i32 @mutex_unlock(i32* %95)
  store i32 0, i32* %3, align 4
  br label %114

97:                                               ; preds = %92
  %98 = load %struct.dentry*, %struct.dentry** %8, align 8
  %99 = call i32 @rpc_gssd_dummy_depopulate(%struct.dentry* %98)
  %100 = load i32, i32* @RPC_PIPEFS_UMOUNT, align 4
  %101 = load %struct.super_block*, %struct.super_block** %4, align 8
  %102 = call i32 @blocking_notifier_call_chain(i32* @rpc_pipefs_notifier_list, i32 %100, %struct.super_block* %101)
  %103 = load %struct.sunrpc_net*, %struct.sunrpc_net** %10, align 8
  %104 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %103, i32 0, i32 1
  store %struct.super_block* null, %struct.super_block** %104, align 8
  %105 = load %struct.dentry*, %struct.dentry** %7, align 8
  %106 = load i32, i32* @files, align 4
  %107 = load i32, i32* @RPCAUTH_lockd, align 4
  %108 = load i32, i32* @RPCAUTH_RootEOF, align 4
  %109 = call i32 @__rpc_depopulate(%struct.dentry* %105, i32 %106, i32 %107, i32 %108)
  %110 = load %struct.sunrpc_net*, %struct.sunrpc_net** %10, align 8
  %111 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %110, i32 0, i32 0
  %112 = call i32 @mutex_unlock(i32* %111)
  %113 = load i32, i32* %11, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %97, %93, %65, %53, %43
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.sunrpc_net* @net_generic(%struct.net*, i32) #1

declare dso_local %struct.inode* @rpc_get_inode(%struct.super_block*, i32) #1

declare dso_local %struct.dentry* @d_make_root(%struct.inode*) #1

declare dso_local i64 @rpc_populate(%struct.dentry*, i32, i32, i32, i32*) #1

declare dso_local %struct.dentry* @rpc_gssd_dummy_populate(%struct.dentry*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @__rpc_depopulate(%struct.dentry*, i32, i32, i32) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @dprintk(i8*, i32, i32) #1

declare dso_local i32 @NET_NAME(%struct.net*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, %struct.super_block*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rpc_gssd_dummy_depopulate(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
