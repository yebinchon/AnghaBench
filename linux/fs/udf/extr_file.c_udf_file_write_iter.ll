; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_file.c_udf_file_write_iter.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_file.c_udf_file_write_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i64, %struct.file* }
%struct.file = type { i32 }
%struct.iov_iter = type { i32 }
%struct.inode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.udf_inode_info = type { i64, i32, i32 }

@ICBTAG_FLAG_AD_IN_ICB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"udf_expand_adinicb: err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kiocb*, %struct.iov_iter*)* @udf_file_write_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @udf_file_write_iter(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.udf_inode_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %12 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %13 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %12, i32 0, i32 1
  %14 = load %struct.file*, %struct.file** %13, align 8
  store %struct.file* %14, %struct.file** %7, align 8
  %15 = load %struct.file*, %struct.file** %7, align 8
  %16 = call %struct.inode* @file_inode(%struct.file* %15)
  store %struct.inode* %16, %struct.inode** %8, align 8
  %17 = load %struct.inode*, %struct.inode** %8, align 8
  %18 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %17)
  store %struct.udf_inode_info* %18, %struct.udf_inode_info** %9, align 8
  %19 = load %struct.inode*, %struct.inode** %8, align 8
  %20 = call i32 @inode_lock(%struct.inode* %19)
  %21 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %22 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %23 = call i64 @generic_write_checks(%struct.kiocb* %21, %struct.iov_iter* %22)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp sle i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %86

27:                                               ; preds = %2
  %28 = load %struct.udf_inode_info*, %struct.udf_inode_info** %9, align 8
  %29 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %28, i32 0, i32 1
  %30 = call i32 @down_write(i32* %29)
  %31 = load %struct.udf_inode_info*, %struct.udf_inode_info** %9, align 8
  %32 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %78

36:                                               ; preds = %27
  %37 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %38 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %41 = call i64 @iov_iter_count(%struct.iov_iter* %40)
  %42 = add nsw i64 %39, %41
  store i64 %42, i64* %11, align 8
  %43 = load %struct.inode*, %struct.inode** %8, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.inode*, %struct.inode** %8, align 8
  %49 = call i64 @udf_file_entry_alloc_offset(%struct.inode* %48)
  %50 = load i64, i64* %11, align 8
  %51 = add nsw i64 %49, %50
  %52 = icmp slt i64 %47, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %36
  %54 = load %struct.inode*, %struct.inode** %8, align 8
  %55 = call i32 @udf_expand_file_adinicb(%struct.inode* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load %struct.inode*, %struct.inode** %8, align 8
  %60 = call i32 @inode_unlock(%struct.inode* %59)
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @udf_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %3, align 8
  br label %99

65:                                               ; preds = %53
  br label %77

66:                                               ; preds = %36
  %67 = load i64, i64* %11, align 8
  %68 = load %struct.inode*, %struct.inode** %8, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @max(i64 %67, i32 %70)
  %72 = load %struct.udf_inode_info*, %struct.udf_inode_info** %9, align 8
  %73 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  %74 = load %struct.udf_inode_info*, %struct.udf_inode_info** %9, align 8
  %75 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %74, i32 0, i32 1
  %76 = call i32 @up_write(i32* %75)
  br label %77

77:                                               ; preds = %66, %65
  br label %82

78:                                               ; preds = %27
  %79 = load %struct.udf_inode_info*, %struct.udf_inode_info** %9, align 8
  %80 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %79, i32 0, i32 1
  %81 = call i32 @up_write(i32* %80)
  br label %82

82:                                               ; preds = %78, %77
  %83 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %84 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %85 = call i64 @__generic_file_write_iter(%struct.kiocb* %83, %struct.iov_iter* %84)
  store i64 %85, i64* %6, align 8
  br label %86

86:                                               ; preds = %82, %26
  %87 = load %struct.inode*, %struct.inode** %8, align 8
  %88 = call i32 @inode_unlock(%struct.inode* %87)
  %89 = load i64, i64* %6, align 8
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load %struct.inode*, %struct.inode** %8, align 8
  %93 = call i32 @mark_inode_dirty(%struct.inode* %92)
  %94 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %95 = load i64, i64* %6, align 8
  %96 = call i64 @generic_write_sync(%struct.kiocb* %94, i64 %95)
  store i64 %96, i64* %6, align 8
  br label %97

97:                                               ; preds = %91, %86
  %98 = load i64, i64* %6, align 8
  store i64 %98, i64* %3, align 8
  br label %99

99:                                               ; preds = %97, %58
  %100 = load i64, i64* %3, align 8
  ret i64 %100
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i64 @generic_write_checks(%struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i64 @udf_file_entry_alloc_offset(%struct.inode*) #1

declare dso_local i32 @udf_expand_file_adinicb(%struct.inode*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @udf_debug(i8*, i32) #1

declare dso_local i32 @max(i64, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i64 @__generic_file_write_iter(%struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i64 @generic_write_sync(%struct.kiocb*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
