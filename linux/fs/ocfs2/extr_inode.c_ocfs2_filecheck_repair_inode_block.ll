; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_inode.c_ocfs2_filecheck_repair_inode_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_inode.c_ocfs2_filecheck_repair_inode_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i64, i64 }
%struct.ocfs2_dinode = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Filecheck: cannot repair dinode #%llu on readonly filesystem\0A\00", align 1
@OCFS2_FILECHECK_ERR_READONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"Filecheck: cannot repair dinode #%llu, its buffer is in jbd\0A\00", align 1
@OCFS2_FILECHECK_ERR_INJBD = common dso_local global i32 0, align 4
@OCFS2_FILECHECK_ERR_INVALIDINO = common dso_local global i32 0, align 4
@OCFS2_VALID_FL = common dso_local global i32 0, align 4
@OCFS2_FILECHECK_ERR_VALIDFLAG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"Filecheck: reset dinode #%llu: i_blkno to %llu\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Filecheck: reset dinode #%llu: fs_generation to %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"Filecheck: reset dinode #%llu: compute meta ecc\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.buffer_head*)* @ocfs2_filecheck_repair_inode_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_filecheck_repair_inode_block(%struct.super_block* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %9 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %11, %struct.ocfs2_dinode** %7, align 8
  %12 = load %struct.super_block*, %struct.super_block** %4, align 8
  %13 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %14 = call i32 @ocfs2_filecheck_validate_inode_block(%struct.super_block* %12, %struct.buffer_head* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %149

17:                                               ; preds = %2
  %18 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %19 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @trace_ocfs2_filecheck_repair_inode_block(i64 %20)
  %22 = load %struct.super_block*, %struct.super_block** %4, align 8
  %23 = call %struct.TYPE_4__* @OCFS2_SB(%struct.super_block* %22)
  %24 = call i64 @ocfs2_is_hard_readonly(%struct.TYPE_4__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %17
  %27 = load %struct.super_block*, %struct.super_block** %4, align 8
  %28 = call %struct.TYPE_4__* @OCFS2_SB(%struct.super_block* %27)
  %29 = call i64 @ocfs2_is_soft_readonly(%struct.TYPE_4__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26, %17
  %32 = load i32, i32* @ML_ERROR, align 4
  %33 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %34 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 (i32, i8*, i64, ...) @mlog(i32 %32, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load i32, i32* @OCFS2_FILECHECK_ERR_READONLY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %149

39:                                               ; preds = %26
  %40 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %41 = call i64 @buffer_jbd(%struct.buffer_head* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i32, i32* @ML_ERROR, align 4
  %45 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %46 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (i32, i8*, i64, ...) @mlog(i32 %44, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %47)
  %49 = load i32, i32* @OCFS2_FILECHECK_ERR_INJBD, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %149

51:                                               ; preds = %39
  %52 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %53 = call i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* @OCFS2_FILECHECK_ERR_INVALIDINO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %149

58:                                               ; preds = %51
  %59 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %60 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @OCFS2_VALID_FL, align 4
  %63 = call i32 @cpu_to_le32(i32 %62)
  %64 = and i32 %61, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %58
  %67 = load i32, i32* @OCFS2_FILECHECK_ERR_VALIDFLAG, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %149

69:                                               ; preds = %58
  %70 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %71 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @le64_to_cpu(i32 %72)
  %74 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %75 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %73, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %69
  %79 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %80 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @cpu_to_le64(i64 %81)
  %83 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %84 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  store i32 1, i32* %6, align 4
  %85 = load i32, i32* @ML_ERROR, align 4
  %86 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %87 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %90 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @le64_to_cpu(i32 %91)
  %93 = call i32 (i32, i8*, i64, ...) @mlog(i32 %85, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i64 %88, i64 %92)
  br label %94

94:                                               ; preds = %78, %69
  %95 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %96 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @le32_to_cpu(i32 %97)
  %99 = load %struct.super_block*, %struct.super_block** %4, align 8
  %100 = call %struct.TYPE_4__* @OCFS2_SB(%struct.super_block* %99)
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %98, %102
  br i1 %103, label %104, label %121

104:                                              ; preds = %94
  %105 = load %struct.super_block*, %struct.super_block** %4, align 8
  %106 = call %struct.TYPE_4__* @OCFS2_SB(%struct.super_block* %105)
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @cpu_to_le32(i32 %108)
  %110 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %111 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  store i32 1, i32* %6, align 4
  %112 = load i32, i32* @ML_ERROR, align 4
  %113 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %114 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %117 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @le32_to_cpu(i32 %118)
  %120 = call i32 (i32, i8*, i64, ...) @mlog(i32 %112, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i64 %115, i32 %119)
  br label %121

121:                                              ; preds = %104, %94
  %122 = load i32, i32* %6, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %133, label %124

124:                                              ; preds = %121
  %125 = load %struct.super_block*, %struct.super_block** %4, align 8
  %126 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %127 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %130 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %129, i32 0, i32 2
  %131 = call i64 @ocfs2_validate_meta_ecc(%struct.super_block* %125, i64 %128, i32* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %148

133:                                              ; preds = %124, %121
  %134 = load %struct.super_block*, %struct.super_block** %4, align 8
  %135 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %136 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %139 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %138, i32 0, i32 2
  %140 = call i32 @ocfs2_compute_meta_ecc(%struct.super_block* %134, i64 %137, i32* %139)
  %141 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %142 = call i32 @mark_buffer_dirty(%struct.buffer_head* %141)
  %143 = load i32, i32* @ML_ERROR, align 4
  %144 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %145 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call i32 (i32, i8*, i64, ...) @mlog(i32 %143, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i64 %146)
  br label %148

148:                                              ; preds = %133, %124
  store i32 0, i32* %3, align 4
  br label %149

149:                                              ; preds = %148, %66, %55, %43, %31, %16
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i32 @ocfs2_filecheck_validate_inode_block(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local i32 @trace_ocfs2_filecheck_repair_inode_block(i64) #1

declare dso_local i64 @ocfs2_is_hard_readonly(%struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_4__* @OCFS2_SB(%struct.super_block*) #1

declare dso_local i64 @ocfs2_is_soft_readonly(%struct.TYPE_4__*) #1

declare dso_local i32 @mlog(i32, i8*, i64, ...) #1

declare dso_local i64 @buffer_jbd(%struct.buffer_head*) #1

declare dso_local i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @ocfs2_validate_meta_ecc(%struct.super_block*, i64, i32*) #1

declare dso_local i32 @ocfs2_compute_meta_ecc(%struct.super_block*, i64, i32*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
