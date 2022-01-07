; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_free_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_free_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_xattr_block = type { i32, i64, i32, i64 }
%struct.ocfs2_super = type { i32 }

@EXTENT_ALLOC_SYSTEM_INODE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCFS2_SUBALLOC_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.ocfs2_caching_info*, %struct.buffer_head*)* @ocfs2_xattr_free_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_free_block(%struct.inode* %0, i32 %1, %struct.ocfs2_caching_info* %2, %struct.buffer_head* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_caching_info*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.ocfs2_xattr_block*, align 8
  %13 = alloca %struct.ocfs2_super*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ocfs2_caching_info* %2, %struct.ocfs2_caching_info** %7, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %10, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %11, align 8
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.ocfs2_super* @OCFS2_SB(i32 %21)
  store %struct.ocfs2_super* %22, %struct.ocfs2_super** %13, align 8
  store i32 0, i32* %15, align 4
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @ocfs2_read_xattr_block(%struct.inode* %23, i32 %24, %struct.buffer_head** %11)
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %15, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* %15, align 4
  %30 = call i32 @mlog_errno(i32 %29)
  br label %131

31:                                               ; preds = %4
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %34 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %35 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %36 = call i32 @ocfs2_xattr_block_remove(%struct.inode* %32, %struct.buffer_head* %33, %struct.ocfs2_caching_info* %34, %struct.buffer_head* %35)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* %15, align 4
  %41 = call i32 @mlog_errno(i32 %40)
  br label %131

42:                                               ; preds = %31
  %43 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %44 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.ocfs2_xattr_block*
  store %struct.ocfs2_xattr_block* %46, %struct.ocfs2_xattr_block** %12, align 8
  %47 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %12, align 8
  %48 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @le64_to_cpu(i64 %49)
  store i32 %50, i32* %16, align 4
  %51 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %12, align 8
  %52 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @le16_to_cpu(i32 %53)
  store i32 %54, i32* %18, align 4
  %55 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %12, align 8
  %56 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %42
  %60 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %12, align 8
  %61 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @le64_to_cpu(i64 %62)
  store i32 %63, i32* %17, align 4
  br label %68

64:                                               ; preds = %42
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %18, align 4
  %67 = call i32 @ocfs2_which_suballoc_group(i32 %65, i32 %66)
  store i32 %67, i32* %17, align 4
  br label %68

68:                                               ; preds = %64, %59
  %69 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %70 = load i32, i32* @EXTENT_ALLOC_SYSTEM_INODE, align 4
  %71 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %12, align 8
  %72 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @le16_to_cpu(i32 %73)
  %75 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %69, i32 %70, i32 %74)
  store %struct.inode* %75, %struct.inode** %9, align 8
  %76 = load %struct.inode*, %struct.inode** %9, align 8
  %77 = icmp ne %struct.inode* %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %68
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = call i32 @mlog_errno(i32 %81)
  br label %131

83:                                               ; preds = %68
  %84 = load %struct.inode*, %struct.inode** %9, align 8
  %85 = call i32 @inode_lock(%struct.inode* %84)
  %86 = load %struct.inode*, %struct.inode** %9, align 8
  %87 = call i32 @ocfs2_inode_lock(%struct.inode* %86, %struct.buffer_head** %10, i32 1)
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %15, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load i32, i32* %15, align 4
  %92 = call i32 @mlog_errno(i32 %91)
  br label %126

93:                                               ; preds = %83
  %94 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %95 = load i32, i32* @OCFS2_SUBALLOC_FREE, align 4
  %96 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %94, i32 %95)
  store i32* %96, i32** %14, align 8
  %97 = load i32*, i32** %14, align 8
  %98 = call i64 @IS_ERR(i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %93
  %101 = load i32*, i32** %14, align 8
  %102 = call i32 @PTR_ERR(i32* %101)
  store i32 %102, i32* %15, align 4
  %103 = load i32, i32* %15, align 4
  %104 = call i32 @mlog_errno(i32 %103)
  br label %121

105:                                              ; preds = %93
  %106 = load i32*, i32** %14, align 8
  %107 = load %struct.inode*, %struct.inode** %9, align 8
  %108 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %109 = load i32, i32* %18, align 4
  %110 = load i32, i32* %17, align 4
  %111 = call i32 @ocfs2_free_suballoc_bits(i32* %106, %struct.inode* %107, %struct.buffer_head* %108, i32 %109, i32 %110, i32 1)
  store i32 %111, i32* %15, align 4
  %112 = load i32, i32* %15, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %105
  %115 = load i32, i32* %15, align 4
  %116 = call i32 @mlog_errno(i32 %115)
  br label %117

117:                                              ; preds = %114, %105
  %118 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %119 = load i32*, i32** %14, align 8
  %120 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %118, i32* %119)
  br label %121

121:                                              ; preds = %117, %100
  %122 = load %struct.inode*, %struct.inode** %9, align 8
  %123 = call i32 @ocfs2_inode_unlock(%struct.inode* %122, i32 1)
  %124 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %125 = call i32 @brelse(%struct.buffer_head* %124)
  br label %126

126:                                              ; preds = %121, %90
  %127 = load %struct.inode*, %struct.inode** %9, align 8
  %128 = call i32 @inode_unlock(%struct.inode* %127)
  %129 = load %struct.inode*, %struct.inode** %9, align 8
  %130 = call i32 @iput(%struct.inode* %129)
  br label %131

131:                                              ; preds = %126, %78, %39, %28
  %132 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %133 = call i32 @brelse(%struct.buffer_head* %132)
  %134 = load i32, i32* %15, align 4
  ret i32 %134
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_read_xattr_block(%struct.inode*, i32, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_xattr_block_remove(%struct.inode*, %struct.buffer_head*, %struct.ocfs2_caching_info*, %struct.buffer_head*) #1

declare dso_local i32 @le64_to_cpu(i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_which_suballoc_group(i32, i32) #1

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_free_suballoc_bits(i32*, %struct.inode*, %struct.buffer_head*, i32, i32, i32) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

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
