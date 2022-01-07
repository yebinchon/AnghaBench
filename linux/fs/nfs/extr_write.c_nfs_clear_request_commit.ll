; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_clear_request_commit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_clear_request_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page = type { i32, i32 }
%struct.nfs_open_context = type { i32 }
%struct.inode = type { i32 }
%struct.nfs_commit_info = type { i32 }
%struct.TYPE_2__ = type { i32 }

@PG_CLEAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_page*)* @nfs_clear_request_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_clear_request_commit(%struct.nfs_page* %0) #0 {
  %2 = alloca %struct.nfs_page*, align 8
  %3 = alloca %struct.nfs_open_context*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.nfs_commit_info, align 4
  store %struct.nfs_page* %0, %struct.nfs_page** %2, align 8
  %6 = load i32, i32* @PG_CLEAN, align 4
  %7 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %8 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %7, i32 0, i32 1
  %9 = call i64 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %1
  %12 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %13 = call %struct.nfs_open_context* @nfs_req_openctx(%struct.nfs_page* %12)
  store %struct.nfs_open_context* %13, %struct.nfs_open_context** %3, align 8
  %14 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %15 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.inode* @d_inode(i32 %16)
  store %struct.inode* %17, %struct.inode** %4, align 8
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = call i32 @nfs_init_cinfo_from_inode(%struct.nfs_commit_info* %5, %struct.inode* %18)
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = call %struct.TYPE_2__* @NFS_I(%struct.inode* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %25 = call i32 @pnfs_clear_request_commit(%struct.nfs_page* %24, %struct.nfs_commit_info* %5)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %11
  %28 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %29 = call i32 @nfs_request_remove_commit_list(%struct.nfs_page* %28, %struct.nfs_commit_info* %5)
  br label %30

30:                                               ; preds = %27, %11
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = call %struct.TYPE_2__* @NFS_I(%struct.inode* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %36 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @nfs_clear_page_commit(i32 %37)
  br label %39

39:                                               ; preds = %30, %1
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.nfs_open_context* @nfs_req_openctx(%struct.nfs_page*) #1

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i32 @nfs_init_cinfo_from_inode(%struct.nfs_commit_info*, %struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @pnfs_clear_request_commit(%struct.nfs_page*, %struct.nfs_commit_info*) #1

declare dso_local i32 @nfs_request_remove_commit_list(%struct.nfs_page*, %struct.nfs_commit_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nfs_clear_page_commit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
