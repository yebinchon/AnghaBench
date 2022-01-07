; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_ibody_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_ibody_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_xattr_set_ctxt = type { i32 }
%struct.ocfs2_inode_info = type { i32, i32 }
%struct.ocfs2_dinode = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ocfs2_extent_list, %struct.ocfs2_inline_data }
%struct.ocfs2_extent_list = type { i32 }
%struct.ocfs2_inline_data = type { i32 }
%struct.ocfs2_super = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@OCFS2_INLINE_XATTR_FL = common dso_local global i32 0, align 4
@OCFS2_HAS_XATTR_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, %struct.ocfs2_xattr_set_ctxt*)* @ocfs2_xattr_ibody_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_ibody_init(%struct.inode* %0, %struct.buffer_head* %1, %struct.ocfs2_xattr_set_ctxt* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.ocfs2_xattr_set_ctxt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_inode_info*, align 8
  %9 = alloca %struct.ocfs2_dinode*, align 8
  %10 = alloca %struct.ocfs2_super*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_inline_data*, align 8
  %13 = alloca %struct.ocfs2_extent_list*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  store %struct.ocfs2_xattr_set_ctxt* %2, %struct.ocfs2_xattr_set_ctxt** %6, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %14)
  store %struct.ocfs2_inode_info* %15, %struct.ocfs2_inode_info** %8, align 8
  %16 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %17 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %19, %struct.ocfs2_dinode** %9, align 8
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.ocfs2_super* @OCFS2_SB(i32 %22)
  store %struct.ocfs2_super* %23, %struct.ocfs2_super** %10, align 8
  %24 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %25 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %29 = call i32 @ocfs2_xattr_has_space_inline(%struct.inode* %27, %struct.ocfs2_dinode* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %3
  %32 = load i32, i32* @ENOSPC, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %110

34:                                               ; preds = %3
  %35 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %6, align 8
  %36 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = call i32 @INODE_CACHE(%struct.inode* %38)
  %40 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %41 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %42 = call i32 @ocfs2_journal_access_di(i32 %37, i32 %39, %struct.buffer_head* %40, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @mlog_errno(i32 %46)
  br label %110

48:                                               ; preds = %34
  %49 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %8, align 8
  %50 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %57 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store %struct.ocfs2_inline_data* %58, %struct.ocfs2_inline_data** %12, align 8
  %59 = load %struct.ocfs2_inline_data*, %struct.ocfs2_inline_data** %12, align 8
  %60 = getelementptr inbounds %struct.ocfs2_inline_data, %struct.ocfs2_inline_data* %59, i32 0, i32 0
  %61 = load i32, i32* %11, align 4
  %62 = sub i32 0, %61
  %63 = call i32 @le16_add_cpu(i32* %60, i32 %62)
  br label %81

64:                                               ; preds = %48
  %65 = load %struct.inode*, %struct.inode** %4, align 8
  %66 = call i32 @ocfs2_inode_is_fast_symlink(%struct.inode* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %64
  %69 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %70 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store %struct.ocfs2_extent_list* %71, %struct.ocfs2_extent_list** %13, align 8
  %72 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %13, align 8
  %73 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %72, i32 0, i32 0
  %74 = load i32, i32* %11, align 4
  %75 = zext i32 %74 to i64
  %76 = udiv i64 %75, 4
  %77 = sub i64 0, %76
  %78 = trunc i64 %77 to i32
  %79 = call i32 @le16_add_cpu(i32* %73, i32 %78)
  br label %80

80:                                               ; preds = %68, %64
  br label %81

81:                                               ; preds = %80, %55
  %82 = load i32, i32* %11, align 4
  %83 = call i8* @cpu_to_le16(i32 %82)
  %84 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %85 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  %86 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %8, align 8
  %87 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %86, i32 0, i32 1
  %88 = call i32 @spin_lock(i32* %87)
  %89 = load i32, i32* @OCFS2_INLINE_XATTR_FL, align 4
  %90 = load i32, i32* @OCFS2_HAS_XATTR_FL, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %8, align 8
  %93 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %8, align 8
  %97 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @cpu_to_le16(i32 %98)
  %100 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %101 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  %102 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %8, align 8
  %103 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %102, i32 0, i32 1
  %104 = call i32 @spin_unlock(i32* %103)
  %105 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %6, align 8
  %106 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %109 = call i32 @ocfs2_journal_dirty(i32 %107, %struct.buffer_head* %108)
  br label %110

110:                                              ; preds = %81, %45, %31
  %111 = load i32, i32* %7, align 4
  ret i32 %111
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_xattr_has_space_inline(%struct.inode*, %struct.ocfs2_dinode*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @ocfs2_inode_is_fast_symlink(%struct.inode*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
