; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_commit_list.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_commit_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.list_head = type { i32 }
%struct.nfs_commit_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nfs_commit_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.list_head*, i32, %struct.nfs_commit_info*)* @nfs_commit_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_commit_list(%struct.inode* %0, %struct.list_head* %1, i32 %2, %struct.nfs_commit_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfs_commit_info*, align 8
  %10 = alloca %struct.nfs_commit_data*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.list_head* %1, %struct.list_head** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nfs_commit_info* %3, %struct.nfs_commit_info** %9, align 8
  %11 = load %struct.list_head*, %struct.list_head** %7, align 8
  %12 = call i64 @list_empty(%struct.list_head* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %36

15:                                               ; preds = %4
  %16 = call %struct.nfs_commit_data* @nfs_commitdata_alloc(i32 1)
  store %struct.nfs_commit_data* %16, %struct.nfs_commit_data** %10, align 8
  %17 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %10, align 8
  %18 = load %struct.list_head*, %struct.list_head** %7, align 8
  %19 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %9, align 8
  %20 = call i32 @nfs_init_commit(%struct.nfs_commit_data* %17, %struct.list_head* %18, i32* null, %struct.nfs_commit_info* %19)
  %21 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %9, align 8
  %22 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @atomic_inc(i32* %24)
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = call i32 @NFS_CLIENT(%struct.inode* %26)
  %28 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %10, align 8
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = call i32 @NFS_PROTO(%struct.inode* %29)
  %31 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %10, align 8
  %32 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @nfs_initiate_commit(i32 %27, %struct.nfs_commit_data* %28, i32 %30, i32 %33, i32 %34, i32 0)
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %15, %14
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i64 @list_empty(%struct.list_head*) #1

declare dso_local %struct.nfs_commit_data* @nfs_commitdata_alloc(i32) #1

declare dso_local i32 @nfs_init_commit(%struct.nfs_commit_data*, %struct.list_head*, i32*, %struct.nfs_commit_info*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @nfs_initiate_commit(i32, %struct.nfs_commit_data*, i32, i32, i32, i32) #1

declare dso_local i32 @NFS_CLIENT(%struct.inode*) #1

declare dso_local i32 @NFS_PROTO(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
