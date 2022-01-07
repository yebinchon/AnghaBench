; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_rpc_pipefs.c_rpc_pipefs_event.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_rpc_pipefs.c_rpc_pipefs_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.super_block = type { %struct.net* }
%struct.net = type { i32 }
%struct.nfs_net = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.dentry* }
%struct.dentry = type { i32 }

@nfs_net_id = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @rpc_pipefs_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpc_pipefs_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.nfs_net*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.super_block*
  store %struct.super_block* %14, %struct.super_block** %8, align 8
  %15 = load %struct.super_block*, %struct.super_block** %8, align 8
  %16 = getelementptr inbounds %struct.super_block, %struct.super_block* %15, i32 0, i32 0
  %17 = load %struct.net*, %struct.net** %16, align 8
  store %struct.net* %17, %struct.net** %9, align 8
  %18 = load %struct.net*, %struct.net** %9, align 8
  %19 = load i32, i32* @nfs_net_id, align 4
  %20 = call %struct.nfs_net* @net_generic(%struct.net* %18, i32 %19)
  store %struct.nfs_net* %20, %struct.nfs_net** %10, align 8
  store i32 0, i32* %12, align 4
  %21 = load i32, i32* @THIS_MODULE, align 4
  %22 = call i32 @try_module_get(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %74

25:                                               ; preds = %3
  %26 = load %struct.nfs_net*, %struct.nfs_net** %10, align 8
  %27 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = icmp eq %struct.TYPE_3__* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @THIS_MODULE, align 4
  %32 = call i32 @module_put(i32 %31)
  store i32 0, i32* %4, align 4
  br label %74

33:                                               ; preds = %25
  %34 = load i64, i64* %6, align 8
  switch i64 %34, label %67 [
    i64 129, label %35
    i64 128, label %53
  ]

35:                                               ; preds = %33
  %36 = load %struct.super_block*, %struct.super_block** %8, align 8
  %37 = load %struct.nfs_net*, %struct.nfs_net** %10, align 8
  %38 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = call %struct.dentry* @nfs4blocklayout_register_sb(%struct.super_block* %36, %struct.TYPE_3__* %39)
  store %struct.dentry* %40, %struct.dentry** %11, align 8
  %41 = load %struct.dentry*, %struct.dentry** %11, align 8
  %42 = call i32 @IS_ERR(%struct.dentry* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load %struct.dentry*, %struct.dentry** %11, align 8
  %46 = call i32 @PTR_ERR(%struct.dentry* %45)
  store i32 %46, i32* %12, align 4
  br label %70

47:                                               ; preds = %35
  %48 = load %struct.dentry*, %struct.dentry** %11, align 8
  %49 = load %struct.nfs_net*, %struct.nfs_net** %10, align 8
  %50 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store %struct.dentry* %48, %struct.dentry** %52, align 8
  br label %70

53:                                               ; preds = %33
  %54 = load %struct.nfs_net*, %struct.nfs_net** %10, align 8
  %55 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load %struct.dentry*, %struct.dentry** %57, align 8
  %59 = icmp ne %struct.dentry* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load %struct.super_block*, %struct.super_block** %8, align 8
  %62 = load %struct.nfs_net*, %struct.nfs_net** %10, align 8
  %63 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = call i32 @nfs4blocklayout_unregister_sb(%struct.super_block* %61, %struct.TYPE_3__* %64)
  br label %66

66:                                               ; preds = %60, %53
  br label %70

67:                                               ; preds = %33
  %68 = load i32, i32* @ENOTSUPP, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %12, align 4
  br label %70

70:                                               ; preds = %67, %66, %47, %44
  %71 = load i32, i32* @THIS_MODULE, align 4
  %72 = call i32 @module_put(i32 %71)
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %70, %30, %24
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.nfs_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local %struct.dentry* @nfs4blocklayout_register_sb(%struct.super_block*, %struct.TYPE_3__*) #1

declare dso_local i32 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @nfs4blocklayout_unregister_sb(%struct.super_block*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
