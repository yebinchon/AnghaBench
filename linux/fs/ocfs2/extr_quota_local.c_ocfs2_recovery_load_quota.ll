; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_local.c_ocfs2_recovery_load_quota.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_local.c_ocfs2_recovery_load_quota.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.ocfs2_local_disk_dqinfo = type { i32 }
%struct.list_head = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_local_disk_chunk = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_local_disk_dqinfo*, i32, %struct.list_head*)* @ocfs2_recovery_load_quota to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_recovery_load_quota(%struct.inode* %0, %struct.ocfs2_local_disk_dqinfo* %1, i32 %2, %struct.list_head* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ocfs2_local_disk_dqinfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.ocfs2_local_disk_chunk*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ocfs2_local_disk_dqinfo* %1, %struct.ocfs2_local_disk_dqinfo** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.list_head* %3, %struct.list_head** %8, align 8
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load %struct.super_block*, %struct.super_block** %16, align 8
  store %struct.super_block* %17, %struct.super_block** %9, align 8
  %18 = load %struct.ocfs2_local_disk_dqinfo*, %struct.ocfs2_local_disk_dqinfo** %6, align 8
  %19 = getelementptr inbounds %struct.ocfs2_local_disk_dqinfo, %struct.ocfs2_local_disk_dqinfo* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @le32_to_cpu(i32 %20)
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %63, %4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %66

27:                                               ; preds = %23
  store %struct.buffer_head* null, %struct.buffer_head** %10, align 8
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = load %struct.super_block*, %struct.super_block** %9, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @ol_quota_chunk_block(%struct.super_block* %29, i32 %30)
  %32 = call i32 @ocfs2_read_quota_block(%struct.inode* %28, i32 %31, %struct.buffer_head** %10)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* %14, align 4
  %37 = call i32 @mlog_errno(i32 %36)
  br label %66

38:                                               ; preds = %27
  %39 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %40 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.ocfs2_local_disk_chunk*
  store %struct.ocfs2_local_disk_chunk* %42, %struct.ocfs2_local_disk_chunk** %11, align 8
  %43 = load %struct.ocfs2_local_disk_chunk*, %struct.ocfs2_local_disk_chunk** %11, align 8
  %44 = getelementptr inbounds %struct.ocfs2_local_disk_chunk, %struct.ocfs2_local_disk_chunk* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @le32_to_cpu(i32 %45)
  %47 = load %struct.super_block*, %struct.super_block** %9, align 8
  %48 = call i64 @ol_chunk_entries(%struct.super_block* %47)
  %49 = icmp slt i64 %46, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %38
  %51 = load %struct.super_block*, %struct.super_block** %9, align 8
  %52 = load %struct.ocfs2_local_disk_chunk*, %struct.ocfs2_local_disk_chunk** %11, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.list_head*, %struct.list_head** %8, align 8
  %55 = call i32 @ocfs2_add_recovery_chunk(%struct.super_block* %51, %struct.ocfs2_local_disk_chunk* %52, i32 %53, %struct.list_head* %54)
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %50, %38
  %57 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %58 = call i32 @brelse(%struct.buffer_head* %57)
  %59 = load i32, i32* %14, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %66

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  br label %23

66:                                               ; preds = %61, %35, %23
  %67 = load i32, i32* %14, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load %struct.list_head*, %struct.list_head** %8, align 8
  %71 = call i32 @free_recovery_list(%struct.list_head* %70)
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i32, i32* %14, align 4
  ret i32 %73
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_read_quota_block(%struct.inode*, i32, %struct.buffer_head**) #1

declare dso_local i32 @ol_quota_chunk_block(%struct.super_block*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @ol_chunk_entries(%struct.super_block*) #1

declare dso_local i32 @ocfs2_add_recovery_chunk(%struct.super_block*, %struct.ocfs2_local_disk_chunk*, i32, %struct.list_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @free_recovery_list(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
