; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_test_inode_bit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_test_inode_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"get alloc slot and bit failed %d\0A\00", align 1
@INODE_ALLOC_SYSTEM_INODE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"unable to get alloc inode in slot %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"lock on alloc inode on slot %u failed %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"test suballoc bit failed %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_test_inode_bit(%struct.ocfs2_super* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @trace_ocfs2_test_inode_bit(i64 %13)
  %15 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @ocfs2_get_suballoc_slot_bit(%struct.ocfs2_super* %15, i64 %16, i64* %10, i64* %8, i64* %9)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i32, i32* @ML_ERROR, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 (i32, i8*, i32, ...) @mlog(i32 %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %79

24:                                               ; preds = %3
  %25 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %26 = load i32, i32* @INODE_ALLOC_SYSTEM_INODE, align 4
  %27 = load i64, i64* %10, align 8
  %28 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %25, i32 %26, i64 %27)
  store %struct.inode* %28, %struct.inode** %11, align 8
  %29 = load %struct.inode*, %struct.inode** %11, align 8
  %30 = icmp ne %struct.inode* %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* @ML_ERROR, align 4
  %35 = load i64, i64* %10, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 (i32, i8*, i32, ...) @mlog(i32 %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %79

38:                                               ; preds = %24
  %39 = load %struct.inode*, %struct.inode** %11, align 8
  %40 = call i32 @inode_lock(%struct.inode* %39)
  %41 = load %struct.inode*, %struct.inode** %11, align 8
  %42 = call i32 @ocfs2_inode_lock(%struct.inode* %41, %struct.buffer_head** %12, i32 0)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %38
  %46 = load %struct.inode*, %struct.inode** %11, align 8
  %47 = call i32 @inode_unlock(%struct.inode* %46)
  %48 = load %struct.inode*, %struct.inode** %11, align 8
  %49 = call i32 @iput(%struct.inode* %48)
  %50 = load i32, i32* @ML_ERROR, align 4
  %51 = load i64, i64* %10, align 8
  %52 = trunc i64 %51 to i32
  %53 = load i32, i32* %7, align 4
  %54 = call i32 (i32, i8*, i32, ...) @mlog(i32 %50, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %53)
  br label %79

55:                                               ; preds = %38
  %56 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %57 = load %struct.inode*, %struct.inode** %11, align 8
  %58 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @ocfs2_test_suballoc_bit(%struct.ocfs2_super* %56, %struct.inode* %57, %struct.buffer_head* %58, i64 %59, i64 %60, i64 %61, i32* %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %55
  %67 = load i32, i32* @ML_ERROR, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 (i32, i8*, i32, ...) @mlog(i32 %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %66, %55
  %71 = load %struct.inode*, %struct.inode** %11, align 8
  %72 = call i32 @ocfs2_inode_unlock(%struct.inode* %71, i32 0)
  %73 = load %struct.inode*, %struct.inode** %11, align 8
  %74 = call i32 @inode_unlock(%struct.inode* %73)
  %75 = load %struct.inode*, %struct.inode** %11, align 8
  %76 = call i32 @iput(%struct.inode* %75)
  %77 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %78 = call i32 @brelse(%struct.buffer_head* %77)
  br label %79

79:                                               ; preds = %70, %45, %31, %20
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @mlog_errno(i32 %83)
  br label %85

85:                                               ; preds = %82, %79
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

declare dso_local i32 @trace_ocfs2_test_inode_bit(i64) #1

declare dso_local i32 @ocfs2_get_suballoc_slot_bit(%struct.ocfs2_super*, i64, i64*, i64*, i64*) #1

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i64) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @ocfs2_test_suballoc_bit(%struct.ocfs2_super*, %struct.inode*, %struct.buffer_head*, i64, i64, i64, i32*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @mlog_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
