; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_block_remove.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_block_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_xattr_block = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.ocfs2_xattr_header }
%struct.ocfs2_xattr_header = type { i32 }
%struct.ocfs2_xattr_value_buf = type { i32, %struct.buffer_head* }
%struct.ocfs2_rm_xattr_bucket_para = type { %struct.buffer_head*, %struct.ocfs2_caching_info* }

@ocfs2_journal_access_xb = common dso_local global i32 0, align 4
@OCFS2_XATTR_INDEXED = common dso_local global i32 0, align 4
@ocfs2_rm_xattr_cluster = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, %struct.ocfs2_caching_info*, %struct.buffer_head*)* @ocfs2_xattr_block_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_block_remove(%struct.inode* %0, %struct.buffer_head* %1, %struct.ocfs2_caching_info* %2, %struct.buffer_head* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.ocfs2_caching_info*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.ocfs2_xattr_block*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ocfs2_xattr_value_buf, align 8
  %12 = alloca %struct.ocfs2_rm_xattr_bucket_para, align 8
  %13 = alloca %struct.ocfs2_xattr_header*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %6, align 8
  store %struct.ocfs2_caching_info* %2, %struct.ocfs2_caching_info** %7, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %11, i32 0, i32 0
  %15 = load i32, i32* @ocfs2_journal_access_xb, align 4
  store i32 %15, i32* %14, align 8
  %16 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %11, i32 0, i32 1
  %17 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  store %struct.buffer_head* %17, %struct.buffer_head** %16, align 8
  %18 = getelementptr inbounds %struct.ocfs2_rm_xattr_bucket_para, %struct.ocfs2_rm_xattr_bucket_para* %12, i32 0, i32 0
  %19 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* %19, %struct.buffer_head** %18, align 8
  %20 = getelementptr inbounds %struct.ocfs2_rm_xattr_bucket_para, %struct.ocfs2_rm_xattr_bucket_para* %12, i32 0, i32 1
  %21 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  store %struct.ocfs2_caching_info* %21, %struct.ocfs2_caching_info** %20, align 8
  %22 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %23 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.ocfs2_xattr_block*
  store %struct.ocfs2_xattr_block* %25, %struct.ocfs2_xattr_block** %9, align 8
  %26 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %9, align 8
  %27 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le16_to_cpu(i32 %28)
  %30 = load i32, i32* @OCFS2_XATTR_INDEXED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %4
  %34 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %9, align 8
  %35 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store %struct.ocfs2_xattr_header* %36, %struct.ocfs2_xattr_header** %13, align 8
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %13, align 8
  %39 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %40 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %41 = call i32 @ocfs2_remove_value_outside(%struct.inode* %37, %struct.ocfs2_xattr_value_buf* %11, %struct.ocfs2_xattr_header* %38, %struct.ocfs2_caching_info* %39, %struct.buffer_head* %40)
  store i32 %41, i32* %10, align 4
  br label %47

42:                                               ; preds = %4
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %45 = load i32, i32* @ocfs2_rm_xattr_cluster, align 4
  %46 = call i32 @ocfs2_iterate_xattr_index_block(%struct.inode* %43, %struct.buffer_head* %44, i32 %45, %struct.ocfs2_rm_xattr_bucket_para* %12)
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %42, %33
  %48 = load i32, i32* %10, align 4
  ret i32 %48
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_remove_value_outside(%struct.inode*, %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_header*, %struct.ocfs2_caching_info*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_iterate_xattr_index_block(%struct.inode*, %struct.buffer_head*, i32, %struct.ocfs2_rm_xattr_bucket_para*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
