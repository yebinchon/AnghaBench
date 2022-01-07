; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_get_suballoc_slot_bit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_get_suballoc_slot_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i32, i32, i32 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"read block %llu failed %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"invalid inode %llu requested\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@OCFS2_INVALID_SLOT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"inode %llu has invalid suballoc slot %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, i64, i64*, i64*, i64*)* @ocfs2_get_suballoc_slot_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_get_suballoc_slot_bit(%struct.ocfs2_super* %0, i64 %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca %struct.ocfs2_super*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @trace_ocfs2_get_suballoc_slot_bit(i64 %14)
  %16 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @ocfs2_read_blocks_sync(%struct.ocfs2_super* %16, i64 %17, i32 1, %struct.buffer_head** %12)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %5
  %22 = load i32, i32* @ML_ERROR, align 4
  %23 = load i64, i64* %7, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i32 (i32, i8*, i64, ...) @mlog(i32 %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %23, i32 %24)
  br label %97

26:                                               ; preds = %5
  %27 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %28 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %30, %struct.ocfs2_dinode** %13, align 8
  %31 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %13, align 8
  %32 = call i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %26
  %35 = load i32, i32* @ML_ERROR, align 4
  %36 = load i64, i64* %7, align 8
  %37 = call i32 (i32, i8*, i64, ...) @mlog(i32 %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %11, align 4
  br label %97

40:                                               ; preds = %26
  %41 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %13, align 8
  %42 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @le16_to_cpu(i32 %43)
  %45 = load i64, i64* @OCFS2_INVALID_SLOT, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %69

47:                                               ; preds = %40
  %48 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %13, align 8
  %49 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @le16_to_cpu(i32 %50)
  %52 = trunc i64 %51 to i32
  %53 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %54 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %55, 1
  %57 = icmp sgt i32 %52, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %47
  %59 = load i32, i32* @ML_ERROR, align 4
  %60 = load i64, i64* %7, align 8
  %61 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %13, align 8
  %62 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @le16_to_cpu(i32 %63)
  %65 = trunc i64 %64 to i32
  %66 = call i32 (i32, i8*, i64, ...) @mlog(i32 %59, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %60, i32 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %11, align 4
  br label %97

69:                                               ; preds = %47, %40
  %70 = load i64*, i64** %8, align 8
  %71 = icmp ne i64* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %13, align 8
  %74 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @le16_to_cpu(i32 %75)
  %77 = load i64*, i64** %8, align 8
  store i64 %76, i64* %77, align 8
  br label %78

78:                                               ; preds = %72, %69
  %79 = load i64*, i64** %10, align 8
  %80 = icmp ne i64* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %13, align 8
  %83 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @le16_to_cpu(i32 %84)
  %86 = load i64*, i64** %10, align 8
  store i64 %85, i64* %86, align 8
  br label %87

87:                                               ; preds = %81, %78
  %88 = load i64*, i64** %9, align 8
  %89 = icmp ne i64* %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %13, align 8
  %92 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @le64_to_cpu(i32 %93)
  %95 = load i64*, i64** %9, align 8
  store i64 %94, i64* %95, align 8
  br label %96

96:                                               ; preds = %90, %87
  br label %97

97:                                               ; preds = %96, %58, %34, %21
  %98 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %99 = call i32 @brelse(%struct.buffer_head* %98)
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @mlog_errno(i32 %103)
  br label %105

105:                                              ; preds = %102, %97
  %106 = load i32, i32* %11, align 4
  ret i32 %106
}

declare dso_local i32 @trace_ocfs2_get_suballoc_slot_bit(i64) #1

declare dso_local i32 @ocfs2_read_blocks_sync(%struct.ocfs2_super*, i64, i32, %struct.buffer_head**) #1

declare dso_local i32 @mlog(i32, i8*, i64, ...) #1

declare dso_local i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @mlog_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
