; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_local.c_ocfs2_load_local_quota_bitmaps.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_local.c_ocfs2_load_local_quota_bitmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_local_disk_dqinfo = type { i32 }
%struct.list_head = type { i32 }
%struct.ocfs2_quota_chunk = type { i32, i32, i32* }

@ocfs2_qf_chunk_cachep = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_local_disk_dqinfo*, %struct.list_head*)* @ocfs2_load_local_quota_bitmaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_load_local_quota_bitmaps(%struct.inode* %0, %struct.ocfs2_local_disk_dqinfo* %1, %struct.list_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ocfs2_local_disk_dqinfo*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.ocfs2_quota_chunk*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ocfs2_local_disk_dqinfo* %1, %struct.ocfs2_local_disk_dqinfo** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  %11 = load %struct.list_head*, %struct.list_head** %7, align 8
  %12 = call i32 @INIT_LIST_HEAD(%struct.list_head* %11)
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %62, %3
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.ocfs2_local_disk_dqinfo*, %struct.ocfs2_local_disk_dqinfo** %6, align 8
  %16 = getelementptr inbounds %struct.ocfs2_local_disk_dqinfo, %struct.ocfs2_local_disk_dqinfo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le32_to_cpu(i32 %17)
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %65

20:                                               ; preds = %13
  %21 = load i32, i32* @ocfs2_qf_chunk_cachep, align 4
  %22 = load i32, i32* @GFP_NOFS, align 4
  %23 = call %struct.ocfs2_quota_chunk* @kmem_cache_alloc(i32 %21, i32 %22)
  store %struct.ocfs2_quota_chunk* %23, %struct.ocfs2_quota_chunk** %8, align 8
  %24 = load %struct.ocfs2_quota_chunk*, %struct.ocfs2_quota_chunk** %8, align 8
  %25 = icmp ne %struct.ocfs2_quota_chunk* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  %27 = load %struct.list_head*, %struct.list_head** %7, align 8
  %28 = call i32 @ocfs2_release_local_quota_bitmaps(%struct.list_head* %27)
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %66

31:                                               ; preds = %20
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.ocfs2_quota_chunk*, %struct.ocfs2_quota_chunk** %8, align 8
  %34 = getelementptr inbounds %struct.ocfs2_quota_chunk, %struct.ocfs2_quota_chunk* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.ocfs2_quota_chunk*, %struct.ocfs2_quota_chunk** %8, align 8
  %36 = getelementptr inbounds %struct.ocfs2_quota_chunk, %struct.ocfs2_quota_chunk* %35, i32 0, i32 2
  store i32* null, i32** %36, align 8
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = load %struct.inode*, %struct.inode** %5, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @ol_quota_chunk_block(i32 %40, i32 %41)
  %43 = load %struct.ocfs2_quota_chunk*, %struct.ocfs2_quota_chunk** %8, align 8
  %44 = getelementptr inbounds %struct.ocfs2_quota_chunk, %struct.ocfs2_quota_chunk* %43, i32 0, i32 2
  %45 = call i32 @ocfs2_read_quota_block(%struct.inode* %37, i32 %42, i32** %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %31
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @mlog_errno(i32 %49)
  %51 = load i32, i32* @ocfs2_qf_chunk_cachep, align 4
  %52 = load %struct.ocfs2_quota_chunk*, %struct.ocfs2_quota_chunk** %8, align 8
  %53 = call i32 @kmem_cache_free(i32 %51, %struct.ocfs2_quota_chunk* %52)
  %54 = load %struct.list_head*, %struct.list_head** %7, align 8
  %55 = call i32 @ocfs2_release_local_quota_bitmaps(%struct.list_head* %54)
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %4, align 4
  br label %66

57:                                               ; preds = %31
  %58 = load %struct.ocfs2_quota_chunk*, %struct.ocfs2_quota_chunk** %8, align 8
  %59 = getelementptr inbounds %struct.ocfs2_quota_chunk, %struct.ocfs2_quota_chunk* %58, i32 0, i32 1
  %60 = load %struct.list_head*, %struct.list_head** %7, align 8
  %61 = call i32 @list_add_tail(i32* %59, %struct.list_head* %60)
  br label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %13

65:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %48, %26
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.ocfs2_quota_chunk* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @ocfs2_release_local_quota_bitmaps(%struct.list_head*) #1

declare dso_local i32 @ocfs2_read_quota_block(%struct.inode*, i32, i32**) #1

declare dso_local i32 @ol_quota_chunk_block(i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.ocfs2_quota_chunk*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
