; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_free_cached_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_free_cached_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_cached_block_free = type { %struct.ocfs2_cached_block_free*, i32, i64, i64 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@OCFS2_SUBALLOC_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, i32, i32, %struct.ocfs2_cached_block_free*)* @ocfs2_free_cached_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_free_cached_blocks(%struct.ocfs2_super* %0, i32 %1, i32 %2, %struct.ocfs2_cached_block_free* %3) #0 {
  %5 = alloca %struct.ocfs2_super*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_cached_block_free*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca %struct.ocfs2_cached_block_free*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.ocfs2_cached_block_free* %3, %struct.ocfs2_cached_block_free** %8, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %13, align 8
  %15 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %15, i32 %16, i32 %17)
  store %struct.inode* %18, %struct.inode** %12, align 8
  %19 = load %struct.inode*, %struct.inode** %12, align 8
  %20 = icmp ne %struct.inode* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @mlog_errno(i32 %24)
  br label %111

26:                                               ; preds = %4
  %27 = load %struct.inode*, %struct.inode** %12, align 8
  %28 = call i32 @inode_lock(%struct.inode* %27)
  %29 = load %struct.inode*, %struct.inode** %12, align 8
  %30 = call i32 @ocfs2_inode_lock(%struct.inode* %29, %struct.buffer_head** %13, i32 1)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @mlog_errno(i32 %34)
  br label %106

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %90, %36
  %38 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %8, align 8
  %39 = icmp ne %struct.ocfs2_cached_block_free* %38, null
  br i1 %39, label %40, label %100

40:                                               ; preds = %37
  %41 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %8, align 8
  %42 = getelementptr inbounds %struct.ocfs2_cached_block_free, %struct.ocfs2_cached_block_free* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %8, align 8
  %47 = getelementptr inbounds %struct.ocfs2_cached_block_free, %struct.ocfs2_cached_block_free* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %10, align 8
  br label %57

49:                                               ; preds = %40
  %50 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %8, align 8
  %51 = getelementptr inbounds %struct.ocfs2_cached_block_free, %struct.ocfs2_cached_block_free* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %8, align 8
  %54 = getelementptr inbounds %struct.ocfs2_cached_block_free, %struct.ocfs2_cached_block_free* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @ocfs2_which_suballoc_group(i64 %52, i32 %55)
  store i64 %56, i64* %10, align 8
  br label %57

57:                                               ; preds = %49, %45
  %58 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %59 = load i32, i32* @OCFS2_SUBALLOC_FREE, align 4
  %60 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %58, i32 %59)
  store i32* %60, i32** %11, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = call i64 @IS_ERR(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load i32*, i32** %11, align 8
  %66 = call i32 @PTR_ERR(i32* %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @mlog_errno(i32 %67)
  br label %101

69:                                               ; preds = %57
  %70 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %8, align 8
  %71 = getelementptr inbounds %struct.ocfs2_cached_block_free, %struct.ocfs2_cached_block_free* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %8, align 8
  %74 = getelementptr inbounds %struct.ocfs2_cached_block_free, %struct.ocfs2_cached_block_free* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @trace_ocfs2_free_cached_blocks(i64 %72, i32 %75)
  %77 = load i32*, i32** %11, align 8
  %78 = load %struct.inode*, %struct.inode** %12, align 8
  %79 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %80 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %8, align 8
  %81 = getelementptr inbounds %struct.ocfs2_cached_block_free, %struct.ocfs2_cached_block_free* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i64, i64* %10, align 8
  %84 = call i32 @ocfs2_free_suballoc_bits(i32* %77, %struct.inode* %78, %struct.buffer_head* %79, i32 %82, i64 %83, i32 1)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %69
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @mlog_errno(i32 %88)
  br label %90

90:                                               ; preds = %87, %69
  %91 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %91, i32* %92)
  %94 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %8, align 8
  store %struct.ocfs2_cached_block_free* %94, %struct.ocfs2_cached_block_free** %14, align 8
  %95 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %8, align 8
  %96 = getelementptr inbounds %struct.ocfs2_cached_block_free, %struct.ocfs2_cached_block_free* %95, i32 0, i32 0
  %97 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %96, align 8
  store %struct.ocfs2_cached_block_free* %97, %struct.ocfs2_cached_block_free** %8, align 8
  %98 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %14, align 8
  %99 = call i32 @kfree(%struct.ocfs2_cached_block_free* %98)
  br label %37

100:                                              ; preds = %37
  br label %101

101:                                              ; preds = %100, %64
  %102 = load %struct.inode*, %struct.inode** %12, align 8
  %103 = call i32 @ocfs2_inode_unlock(%struct.inode* %102, i32 1)
  %104 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %105 = call i32 @brelse(%struct.buffer_head* %104)
  br label %106

106:                                              ; preds = %101, %33
  %107 = load %struct.inode*, %struct.inode** %12, align 8
  %108 = call i32 @inode_unlock(%struct.inode* %107)
  %109 = load %struct.inode*, %struct.inode** %12, align 8
  %110 = call i32 @iput(%struct.inode* %109)
  br label %111

111:                                              ; preds = %106, %21
  br label %112

112:                                              ; preds = %115, %111
  %113 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %8, align 8
  %114 = icmp ne %struct.ocfs2_cached_block_free* %113, null
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %8, align 8
  store %struct.ocfs2_cached_block_free* %116, %struct.ocfs2_cached_block_free** %14, align 8
  %117 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %8, align 8
  %118 = getelementptr inbounds %struct.ocfs2_cached_block_free, %struct.ocfs2_cached_block_free* %117, i32 0, i32 0
  %119 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %118, align 8
  store %struct.ocfs2_cached_block_free* %119, %struct.ocfs2_cached_block_free** %8, align 8
  %120 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %14, align 8
  %121 = call i32 @kfree(%struct.ocfs2_cached_block_free* %120)
  br label %112

122:                                              ; preds = %112
  %123 = load i32, i32* %9, align 4
  ret i32 %123
}

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i64 @ocfs2_which_suballoc_group(i64, i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @trace_ocfs2_free_cached_blocks(i64, i32) #1

declare dso_local i32 @ocfs2_free_suballoc_bits(i32*, %struct.inode*, %struct.buffer_head*, i32, i64, i32) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @kfree(%struct.ocfs2_cached_block_free*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
