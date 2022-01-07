; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_inode_attach_open_context.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_inode_attach_open_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_open_context = type { i32, i32 }
%struct.inode = type { i32 }
%struct.nfs_inode = type { i32, i32 }

@NFS_INO_DATA_INVAL_DEFER = common dso_local global i32 0, align 4
@NFS_INO_INVALID_DATA = common dso_local global i32 0, align 4
@NFS_INO_REVAL_FORCED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_inode_attach_open_context(%struct.nfs_open_context* %0) #0 {
  %2 = alloca %struct.nfs_open_context*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.nfs_inode*, align 8
  store %struct.nfs_open_context* %0, %struct.nfs_open_context** %2, align 8
  %5 = load %struct.nfs_open_context*, %struct.nfs_open_context** %2, align 8
  %6 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.inode* @d_inode(i32 %7)
  store %struct.inode* %8, %struct.inode** %3, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = call %struct.nfs_inode* @NFS_I(%struct.inode* %9)
  store %struct.nfs_inode* %10, %struct.nfs_inode** %4, align 8
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.nfs_inode*, %struct.nfs_inode** %4, align 8
  %15 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %14, i32 0, i32 1
  %16 = call i64 @list_empty(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %1
  %19 = load %struct.nfs_inode*, %struct.nfs_inode** %4, align 8
  %20 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @NFS_INO_DATA_INVAL_DEFER, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %18
  %26 = load i32, i32* @NFS_INO_INVALID_DATA, align 4
  %27 = load i32, i32* @NFS_INO_REVAL_FORCED, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.nfs_inode*, %struct.nfs_inode** %4, align 8
  %30 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %25, %18, %1
  %34 = load %struct.nfs_open_context*, %struct.nfs_open_context** %2, align 8
  %35 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %34, i32 0, i32 0
  %36 = load %struct.nfs_inode*, %struct.nfs_inode** %4, align 8
  %37 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %36, i32 0, i32 1
  %38 = call i32 @list_add_tail_rcu(i32* %35, i32* %37)
  %39 = load %struct.inode*, %struct.inode** %3, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = call i32 @spin_unlock(i32* %40)
  ret void
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
