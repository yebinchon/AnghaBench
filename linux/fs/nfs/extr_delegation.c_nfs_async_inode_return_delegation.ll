; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_delegation.c_nfs_async_inode_return_delegation.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_delegation.c_nfs_async_inode_return_delegation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs_server = type { %struct.nfs_client* }
%struct.nfs_client = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32*, i32*)* }
%struct.nfs_delegation = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_async_inode_return_delegation(%struct.inode* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfs_server*, align 8
  %7 = alloca %struct.nfs_client*, align 8
  %8 = alloca %struct.nfs_delegation*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %9)
  store %struct.nfs_server* %10, %struct.nfs_server** %6, align 8
  %11 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %12 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %11, i32 0, i32 0
  %13 = load %struct.nfs_client*, %struct.nfs_client** %12, align 8
  store %struct.nfs_client* %13, %struct.nfs_client** %7, align 8
  %14 = call i32 (...) @rcu_read_lock()
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = call %struct.TYPE_4__* @NFS_I(%struct.inode* %15)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.nfs_delegation* @rcu_dereference(i32 %18)
  store %struct.nfs_delegation* %19, %struct.nfs_delegation** %8, align 8
  %20 = load %struct.nfs_delegation*, %struct.nfs_delegation** %8, align 8
  %21 = icmp eq %struct.nfs_delegation* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %45

23:                                               ; preds = %2
  %24 = load i32*, i32** %5, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load %struct.nfs_client*, %struct.nfs_client** %7, align 8
  %28 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %30, align 8
  %32 = load %struct.nfs_delegation*, %struct.nfs_delegation** %8, align 8
  %33 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %32, i32 0, i32 0
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 %31(i32* %33, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %26
  br label %45

38:                                               ; preds = %26, %23
  %39 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %40 = load %struct.nfs_delegation*, %struct.nfs_delegation** %8, align 8
  %41 = call i32 @nfs_mark_return_delegation(%struct.nfs_server* %39, %struct.nfs_delegation* %40)
  %42 = call i32 (...) @rcu_read_unlock()
  %43 = load %struct.nfs_client*, %struct.nfs_client** %7, align 8
  %44 = call i32 @nfs_delegation_run_state_manager(%struct.nfs_client* %43)
  store i32 0, i32* %3, align 4
  br label %49

45:                                               ; preds = %37, %22
  %46 = call i32 (...) @rcu_read_unlock()
  %47 = load i32, i32* @ENOENT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %38
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nfs_delegation* @rcu_dereference(i32) #1

declare dso_local %struct.TYPE_4__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @nfs_mark_return_delegation(%struct.nfs_server*, %struct.nfs_delegation*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @nfs_delegation_run_state_manager(%struct.nfs_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
