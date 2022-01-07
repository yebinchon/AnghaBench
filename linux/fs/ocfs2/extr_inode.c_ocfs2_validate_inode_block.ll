; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_inode.c_ocfs2_validate_inode_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_inode.c_ocfs2_validate_inode_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i64, i64 }
%struct.ocfs2_dinode = type { i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Checksum failed for dinode %llu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Invalid dinode #%llu: signature = %.*s\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Invalid dinode #%llu: i_blkno is %llu\0A\00", align 1
@OCFS2_VALID_FL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Invalid dinode #%llu: OCFS2_VALID_FL not set\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Invalid dinode #%llu: fs_generation is %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_validate_inode_block(%struct.super_block* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %7 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %8 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %10, %struct.ocfs2_dinode** %6, align 8
  %11 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %12 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @trace_ocfs2_validate_inode_block(i64 %13)
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
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load i32, i32* @ML_ERROR, align 4
  %32 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %33 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @mlog(i32 %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %34)
  br label %105

36:                                               ; preds = %2
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  %39 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %6, align 8
  %40 = call i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %36
  %43 = load %struct.super_block*, %struct.super_block** %3, align 8
  %44 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %45 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %6, align 8
  %48 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (%struct.super_block*, i8*, i64, ...) @ocfs2_error(%struct.super_block* %43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %46, i32 7, i32 %49)
  store i32 %50, i32* %5, align 4
  br label %105

51:                                               ; preds = %36
  %52 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %6, align 8
  %53 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @le64_to_cpu(i32 %54)
  %56 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %57 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %55, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %51
  %61 = load %struct.super_block*, %struct.super_block** %3, align 8
  %62 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %63 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %6, align 8
  %66 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @le64_to_cpu(i32 %67)
  %69 = call i32 (%struct.super_block*, i8*, i64, ...) @ocfs2_error(%struct.super_block* %61, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %64, i64 %68)
  store i32 %69, i32* %5, align 4
  br label %105

70:                                               ; preds = %51
  %71 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %6, align 8
  %72 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @OCFS2_VALID_FL, align 4
  %75 = call i32 @cpu_to_le32(i32 %74)
  %76 = and i32 %73, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %70
  %79 = load %struct.super_block*, %struct.super_block** %3, align 8
  %80 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %81 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 (%struct.super_block*, i8*, i64, ...) @ocfs2_error(%struct.super_block* %79, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %82)
  store i32 %83, i32* %5, align 4
  br label %105

84:                                               ; preds = %70
  %85 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %6, align 8
  %86 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @le32_to_cpu(i32 %87)
  %89 = load %struct.super_block*, %struct.super_block** %3, align 8
  %90 = call %struct.TYPE_2__* @OCFS2_SB(%struct.super_block* %89)
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %88, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %84
  %95 = load %struct.super_block*, %struct.super_block** %3, align 8
  %96 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %97 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %6, align 8
  %100 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @le32_to_cpu(i32 %101)
  %103 = call i32 (%struct.super_block*, i8*, i64, ...) @ocfs2_error(%struct.super_block* %95, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i64 %98, i64 %102)
  store i32 %103, i32* %5, align 4
  br label %105

104:                                              ; preds = %84
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %104, %94, %78, %60, %42, %30
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @trace_ocfs2_validate_inode_block(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_validate_meta_ecc(%struct.super_block*, i64, i32*) #1

declare dso_local i32 @mlog(i32, i8*, i64) #1

declare dso_local i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode*) #1

declare dso_local i32 @ocfs2_error(%struct.super_block*, i8*, i64, ...) #1

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
