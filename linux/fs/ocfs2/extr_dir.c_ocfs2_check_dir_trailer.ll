; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_check_dir_trailer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_check_dir_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dir_block_trailer = type { i64, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [42 x i8] c"Invalid dirblock #%llu: signature = %.*s\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Directory block #%llu has an invalid db_blkno of %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"Directory block #%llu on dinode #%llu has an invalid parent_dinode of %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*)* @ocfs2_check_dir_trailer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_check_dir_trailer(%struct.inode* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_dir_block_trailer*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.ocfs2_dir_block_trailer* @ocfs2_trailer_from_bh(%struct.buffer_head* %7, i32 %10)
  store %struct.ocfs2_dir_block_trailer* %11, %struct.ocfs2_dir_block_trailer** %6, align 8
  %12 = load %struct.ocfs2_dir_block_trailer*, %struct.ocfs2_dir_block_trailer** %6, align 8
  %13 = call i32 @OCFS2_IS_VALID_DIR_TRAILER(%struct.ocfs2_dir_block_trailer* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %2
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %20 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ocfs2_dir_block_trailer*, %struct.ocfs2_dir_block_trailer** %6, align 8
  %23 = getelementptr inbounds %struct.ocfs2_dir_block_trailer, %struct.ocfs2_dir_block_trailer* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 (i32, i8*, i64, i64, ...) @ocfs2_error(i32 %18, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %21, i64 7, i64 %24)
  store i32 %25, i32* %5, align 4
  br label %74

26:                                               ; preds = %2
  %27 = load %struct.ocfs2_dir_block_trailer*, %struct.ocfs2_dir_block_trailer** %6, align 8
  %28 = getelementptr inbounds %struct.ocfs2_dir_block_trailer, %struct.ocfs2_dir_block_trailer* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @le64_to_cpu(i32 %29)
  %31 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %32 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %26
  %36 = load %struct.inode*, %struct.inode** %3, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %40 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ocfs2_dir_block_trailer*, %struct.ocfs2_dir_block_trailer** %6, align 8
  %43 = getelementptr inbounds %struct.ocfs2_dir_block_trailer, %struct.ocfs2_dir_block_trailer* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @le64_to_cpu(i32 %44)
  %46 = call i32 (i32, i8*, i64, i64, ...) @ocfs2_error(i32 %38, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %41, i64 %45)
  store i32 %46, i32* %5, align 4
  br label %74

47:                                               ; preds = %26
  %48 = load %struct.ocfs2_dir_block_trailer*, %struct.ocfs2_dir_block_trailer** %6, align 8
  %49 = getelementptr inbounds %struct.ocfs2_dir_block_trailer, %struct.ocfs2_dir_block_trailer* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @le64_to_cpu(i32 %50)
  %52 = load %struct.inode*, %struct.inode** %3, align 8
  %53 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %52)
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %51, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %47
  %58 = load %struct.inode*, %struct.inode** %3, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %62 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.inode*, %struct.inode** %3, align 8
  %65 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %64)
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.ocfs2_dir_block_trailer*, %struct.ocfs2_dir_block_trailer** %6, align 8
  %69 = getelementptr inbounds %struct.ocfs2_dir_block_trailer, %struct.ocfs2_dir_block_trailer* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @le64_to_cpu(i32 %70)
  %72 = call i32 (i32, i8*, i64, i64, ...) @ocfs2_error(i32 %60, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), i64 %63, i64 %67, i64 %71)
  store i32 %72, i32* %5, align 4
  br label %74

73:                                               ; preds = %47
  br label %74

74:                                               ; preds = %73, %57, %35, %15
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local %struct.ocfs2_dir_block_trailer* @ocfs2_trailer_from_bh(%struct.buffer_head*, i32) #1

declare dso_local i32 @OCFS2_IS_VALID_DIR_TRAILER(%struct.ocfs2_dir_block_trailer*) #1

declare dso_local i32 @ocfs2_error(i32, i8*, i64, i64, ...) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
