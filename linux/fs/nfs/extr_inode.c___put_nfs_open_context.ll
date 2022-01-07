; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c___put_nfs_open_context.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c___put_nfs_open_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_open_context = type { i32, i32, %struct.TYPE_6__*, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_7__ = type { i32 (%struct.nfs_open_context*, i32)* }

@rcu_head = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_open_context*, i32)* @__put_nfs_open_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__put_nfs_open_context(%struct.nfs_open_context* %0, i32 %1) #0 {
  %3 = alloca %struct.nfs_open_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.super_block*, align 8
  store %struct.nfs_open_context* %0, %struct.nfs_open_context** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %8 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %7, i32 0, i32 2
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = call %struct.inode* @d_inode(%struct.TYPE_6__* %9)
  store %struct.inode* %10, %struct.inode** %5, align 8
  %11 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %12 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %11, i32 0, i32 2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.super_block*, %struct.super_block** %14, align 8
  store %struct.super_block* %15, %struct.super_block** %6, align 8
  %16 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %17 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = call i32 @refcount_dec_and_test(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %70

22:                                               ; preds = %2
  %23 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %24 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %23, i32 0, i32 4
  %25 = call i32 @list_empty(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %22
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %32 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %31, i32 0, i32 4
  %33 = call i32 @list_del_rcu(i32* %32)
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock(i32* %35)
  br label %37

37:                                               ; preds = %27, %22
  %38 = load %struct.inode*, %struct.inode** %5, align 8
  %39 = icmp ne %struct.inode* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = call %struct.TYPE_7__* @NFS_PROTO(%struct.inode* %41)
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32 (%struct.nfs_open_context*, i32)*, i32 (%struct.nfs_open_context*, i32)** %43, align 8
  %45 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 %44(%struct.nfs_open_context* %45, i32 %46)
  br label %48

48:                                               ; preds = %40, %37
  %49 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %50 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @put_cred(i32 %51)
  %53 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %54 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %53, i32 0, i32 2
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = call i32 @dput(%struct.TYPE_6__* %55)
  %57 = load %struct.super_block*, %struct.super_block** %6, align 8
  %58 = call i32 @nfs_sb_deactive(%struct.super_block* %57)
  %59 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %60 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @put_rpccred(i32 %61)
  %63 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %64 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @kfree(i32 %65)
  %67 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %68 = load i32, i32* @rcu_head, align 4
  %69 = call i32 @kfree_rcu(%struct.nfs_open_context* %67, i32 %68)
  br label %70

70:                                               ; preds = %48, %21
  ret void
}

declare dso_local %struct.inode* @d_inode(%struct.TYPE_6__*) #1

declare dso_local i32 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.TYPE_7__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i32 @put_cred(i32) #1

declare dso_local i32 @dput(%struct.TYPE_6__*) #1

declare dso_local i32 @nfs_sb_deactive(%struct.super_block*) #1

declare dso_local i32 @put_rpccred(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @kfree_rcu(%struct.nfs_open_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
