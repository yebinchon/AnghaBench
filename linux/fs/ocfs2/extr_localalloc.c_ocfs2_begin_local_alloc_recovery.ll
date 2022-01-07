; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_localalloc.c_ocfs2_begin_local_alloc_recovery.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_localalloc.c_ocfs2_begin_local_alloc_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_dinode = type { i32 }
%struct.buffer_head = type { i64, i32 }
%struct.inode = type { i32 }

@LOCAL_ALLOC_SYSTEM_INODE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OCFS2_BH_IGNORE_CACHE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_begin_local_alloc_recovery(%struct.ocfs2_super* %0, i32 %1, %struct.ocfs2_dinode** %2) #0 {
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_dinode**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ocfs2_dinode** %2, %struct.ocfs2_dinode*** %6, align 8
  store i32 0, i32* %7, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %8, align 8
  store %struct.inode* null, %struct.inode** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @trace_ocfs2_begin_local_alloc_recovery(i32 %11)
  %13 = load %struct.ocfs2_dinode**, %struct.ocfs2_dinode*** %6, align 8
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %13, align 8
  %14 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %15 = load i32, i32* @LOCAL_ALLOC_SYSTEM_INODE, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %14, i32 %15, i32 %16)
  store %struct.inode* %17, %struct.inode** %9, align 8
  %18 = load %struct.inode*, %struct.inode** %9, align 8
  %19 = icmp ne %struct.inode* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @mlog_errno(i32 %23)
  br label %85

25:                                               ; preds = %3
  %26 = load %struct.inode*, %struct.inode** %9, align 8
  %27 = call i32 @inode_lock(%struct.inode* %26)
  %28 = load %struct.inode*, %struct.inode** %9, align 8
  %29 = load i32, i32* @OCFS2_BH_IGNORE_CACHE, align 4
  %30 = call i32 @ocfs2_read_inode_block_full(%struct.inode* %28, %struct.buffer_head** %8, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @mlog_errno(i32 %34)
  br label %85

36:                                               ; preds = %25
  %37 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %38 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.ocfs2_dinode* @kmalloc(i32 %39, i32 %40)
  %42 = load %struct.ocfs2_dinode**, %struct.ocfs2_dinode*** %6, align 8
  store %struct.ocfs2_dinode* %41, %struct.ocfs2_dinode** %42, align 8
  %43 = load %struct.ocfs2_dinode**, %struct.ocfs2_dinode*** %6, align 8
  %44 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %43, align 8
  %45 = icmp ne %struct.ocfs2_dinode* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %36
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %85

49:                                               ; preds = %36
  %50 = load %struct.ocfs2_dinode**, %struct.ocfs2_dinode*** %6, align 8
  %51 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %50, align 8
  %52 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %53 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %56 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @memcpy(%struct.ocfs2_dinode* %51, i64 %54, i32 %57)
  %59 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %60 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %62, %struct.ocfs2_dinode** %10, align 8
  %63 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %64 = call i32 @ocfs2_clear_local_alloc(%struct.ocfs2_dinode* %63)
  %65 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %66 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %69 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %72 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %71, i32 0, i32 0
  %73 = call i32 @ocfs2_compute_meta_ecc(i32 %67, i64 %70, i32* %72)
  %74 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %75 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %76 = load %struct.inode*, %struct.inode** %9, align 8
  %77 = call i32 @INODE_CACHE(%struct.inode* %76)
  %78 = call i32 @ocfs2_write_block(%struct.ocfs2_super* %74, %struct.buffer_head* %75, i32 %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %49
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @mlog_errno(i32 %82)
  br label %84

84:                                               ; preds = %81, %49
  br label %85

85:                                               ; preds = %84, %46, %33, %20
  %86 = load i32, i32* %7, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load %struct.ocfs2_dinode**, %struct.ocfs2_dinode*** %6, align 8
  %90 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %89, align 8
  %91 = call i32 @kfree(%struct.ocfs2_dinode* %90)
  %92 = load %struct.ocfs2_dinode**, %struct.ocfs2_dinode*** %6, align 8
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %92, align 8
  br label %93

93:                                               ; preds = %88, %85
  %94 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %95 = call i32 @brelse(%struct.buffer_head* %94)
  %96 = load %struct.inode*, %struct.inode** %9, align 8
  %97 = icmp ne %struct.inode* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.inode*, %struct.inode** %9, align 8
  %100 = call i32 @inode_unlock(%struct.inode* %99)
  %101 = load %struct.inode*, %struct.inode** %9, align 8
  %102 = call i32 @iput(%struct.inode* %101)
  br label %103

103:                                              ; preds = %98, %93
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @mlog_errno(i32 %107)
  br label %109

109:                                              ; preds = %106, %103
  %110 = load i32, i32* %7, align 4
  ret i32 %110
}

declare dso_local i32 @trace_ocfs2_begin_local_alloc_recovery(i32) #1

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @ocfs2_read_inode_block_full(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local %struct.ocfs2_dinode* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.ocfs2_dinode*, i64, i32) #1

declare dso_local i32 @ocfs2_clear_local_alloc(%struct.ocfs2_dinode*) #1

declare dso_local i32 @ocfs2_compute_meta_ecc(i32, i64, i32*) #1

declare dso_local i32 @ocfs2_write_block(%struct.ocfs2_super*, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @kfree(%struct.ocfs2_dinode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
