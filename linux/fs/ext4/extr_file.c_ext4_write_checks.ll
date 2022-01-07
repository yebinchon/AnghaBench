; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_file.c_ext4_write_checks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_file.c_ext4_write_checks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i64, i32 }
%struct.iov_iter = type { i32 }
%struct.inode = type { i32 }
%struct.ext4_sb_info = type { i64 }

@EPERM = common dso_local global i64 0, align 8
@EXT4_INODE_EXTENTS = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kiocb*, %struct.iov_iter*)* @ext4_write_checks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ext4_write_checks(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ext4_sb_info*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %9 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %10 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.inode* @file_inode(i32 %11)
  store %struct.inode* %12, %struct.inode** %6, align 8
  %13 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %14 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %15 = call i64 @generic_write_checks(%struct.kiocb* %13, %struct.iov_iter* %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp sle i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i64, i64* %7, align 8
  store i64 %19, i64* %3, align 8
  br label %61

20:                                               ; preds = %2
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = call i32 @IS_IMMUTABLE(%struct.inode* %21)
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i64, i64* @EPERM, align 8
  %27 = sub nsw i64 0, %26
  store i64 %27, i64* %3, align 8
  br label %61

28:                                               ; preds = %20
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = load i32, i32* @EXT4_INODE_EXTENTS, align 4
  %31 = call i32 @ext4_test_inode_flag(%struct.inode* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %58, label %33

33:                                               ; preds = %28
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.ext4_sb_info* @EXT4_SB(i32 %36)
  store %struct.ext4_sb_info* %37, %struct.ext4_sb_info** %8, align 8
  %38 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %39 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %42 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sge i64 %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %33
  %46 = load i64, i64* @EFBIG, align 8
  %47 = sub nsw i64 0, %46
  store i64 %47, i64* %3, align 8
  br label %61

48:                                               ; preds = %33
  %49 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %50 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %51 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %54 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %52, %55
  %57 = call i32 @iov_iter_truncate(%struct.iov_iter* %49, i64 %56)
  br label %58

58:                                               ; preds = %48, %28
  %59 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %60 = call i64 @iov_iter_count(%struct.iov_iter* %59)
  store i64 %60, i64* %3, align 8
  br label %61

61:                                               ; preds = %58, %45, %25, %18
  %62 = load i64, i64* %3, align 8
  ret i64 %62
}

declare dso_local %struct.inode* @file_inode(i32) #1

declare dso_local i64 @generic_write_checks(%struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IS_IMMUTABLE(%struct.inode*) #1

declare dso_local i32 @ext4_test_inode_flag(%struct.inode*, i32) #1

declare dso_local %struct.ext4_sb_info* @EXT4_SB(i32) #1

declare dso_local i32 @iov_iter_truncate(%struct.iov_iter*, i64) #1

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
