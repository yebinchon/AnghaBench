; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_inode.c_ocfs2_filecheck_validate_inode_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_inode.c_ocfs2_filecheck_validate_inode_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i64, i64 }
%struct.ocfs2_dinode = type { i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Filecheck: checksum failed for dinode %llu\0A\00", align 1
@OCFS2_FILECHECK_ERR_BLOCKECC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Filecheck: invalid dinode #%llu: signature = %.*s\0A\00", align 1
@OCFS2_FILECHECK_ERR_INVALIDINO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Filecheck: invalid dinode #%llu: i_blkno is %llu\0A\00", align 1
@OCFS2_FILECHECK_ERR_BLOCKNO = common dso_local global i32 0, align 4
@OCFS2_VALID_FL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"Filecheck: invalid dinode #%llu: OCFS2_VALID_FL not set\0A\00", align 1
@OCFS2_FILECHECK_ERR_VALIDFLAG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"Filecheck: invalid dinode #%llu: fs_generation is %u\0A\00", align 1
@OCFS2_FILECHECK_ERR_GENERATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.buffer_head*)* @ocfs2_filecheck_validate_inode_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_filecheck_validate_inode_block(%struct.super_block* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %8 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %10, %struct.ocfs2_dinode** %6, align 8
  %11 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %12 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @trace_ocfs2_filecheck_validate_inode_block(i64 %13)
  %15 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %16 = call i32 @buffer_uptodate(%struct.buffer_head* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.super_block*, %struct.super_block** %3, align 8
  %22 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %23 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %6, align 8
  %26 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %25, i32 0, i32 4
  %27 = call i32 @ocfs2_validate_meta_ecc(%struct.super_block* %21, i64 %24, i32* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %2
  %31 = load i32, i32* @ML_ERROR, align 4
  %32 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %33 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 (i32, i8*, i64, ...) @mlog(i32 %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %34)
  %36 = load i32, i32* @OCFS2_FILECHECK_ERR_BLOCKECC, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %30, %2
  %39 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %6, align 8
  %40 = call i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @ML_ERROR, align 4
  %44 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %45 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %6, align 8
  %48 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32, i8*, i64, ...) @mlog(i32 %43, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %46, i32 7, i32 %49)
  %51 = load i32, i32* @OCFS2_FILECHECK_ERR_INVALIDINO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %118

53:                                               ; preds = %38
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %118

57:                                               ; preds = %53
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %6, align 8
  %60 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @le64_to_cpu(i32 %61)
  %63 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %64 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %62, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %58
  %68 = load i32, i32* @ML_ERROR, align 4
  %69 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %70 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %6, align 8
  %73 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @le64_to_cpu(i32 %74)
  %76 = call i32 (i32, i8*, i64, ...) @mlog(i32 %68, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %71, i64 %75)
  %77 = load i32, i32* @OCFS2_FILECHECK_ERR_BLOCKNO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %118

79:                                               ; preds = %58
  %80 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %6, align 8
  %81 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @OCFS2_VALID_FL, align 4
  %84 = call i32 @cpu_to_le32(i32 %83)
  %85 = and i32 %82, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %79
  %88 = load i32, i32* @ML_ERROR, align 4
  %89 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %90 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 (i32, i8*, i64, ...) @mlog(i32 %88, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i64 %91)
  %93 = load i32, i32* @OCFS2_FILECHECK_ERR_VALIDFLAG, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %5, align 4
  br label %118

95:                                               ; preds = %79
  %96 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %6, align 8
  %97 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @le32_to_cpu(i32 %98)
  %100 = load %struct.super_block*, %struct.super_block** %3, align 8
  %101 = call %struct.TYPE_2__* @OCFS2_SB(%struct.super_block* %100)
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %99, %103
  br i1 %104, label %105, label %117

105:                                              ; preds = %95
  %106 = load i32, i32* @ML_ERROR, align 4
  %107 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %108 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %6, align 8
  %111 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @le32_to_cpu(i32 %112)
  %114 = call i32 (i32, i8*, i64, ...) @mlog(i32 %106, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i64 %109, i64 %113)
  %115 = load i32, i32* @OCFS2_FILECHECK_ERR_GENERATION, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %105, %95
  br label %118

118:                                              ; preds = %117, %87, %67, %56, %42
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @trace_ocfs2_filecheck_validate_inode_block(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_validate_meta_ecc(%struct.super_block*, i64, i32*) #1

declare dso_local i32 @mlog(i32, i8*, i64, ...) #1

declare dso_local i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_2__* @OCFS2_SB(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
