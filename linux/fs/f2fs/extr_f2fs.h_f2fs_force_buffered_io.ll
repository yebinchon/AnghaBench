; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_f2fs_force_buffered_io.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_f2fs_force_buffered_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.kiocb = type { i32 }
%struct.iov_iter = type { i32 }
%struct.f2fs_sb_info = type { i32 }

@LFS = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@SBI_CP_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.kiocb*, %struct.iov_iter*)* @f2fs_force_buffered_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_force_buffered_io(%struct.inode* %0, %struct.kiocb* %1, %struct.iov_iter* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.iov_iter*, align 8
  %8 = alloca %struct.f2fs_sb_info*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.kiocb* %1, %struct.kiocb** %6, align 8
  store %struct.iov_iter* %2, %struct.iov_iter** %7, align 8
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %10)
  store %struct.f2fs_sb_info* %11, %struct.f2fs_sb_info** %8, align 8
  %12 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %13 = call i32 @iov_iter_rw(%struct.iov_iter* %12)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = call i64 @f2fs_post_read_required(%struct.inode* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %62

18:                                               ; preds = %3
  %19 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %20 = call i64 @f2fs_is_multi_device(%struct.f2fs_sb_info* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 1, i32* %4, align 4
  br label %62

23:                                               ; preds = %18
  %24 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %25 = call i64 @f2fs_sb_has_blkzoned(%struct.f2fs_sb_info* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 1, i32* %4, align 4
  br label %62

28:                                               ; preds = %23
  %29 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %30 = load i32, i32* @LFS, align 4
  %31 = call i64 @test_opt(%struct.f2fs_sb_info* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %28
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @WRITE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load %struct.inode*, %struct.inode** %5, align 8
  %39 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %40 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %41 = call i64 @block_unaligned_IO(%struct.inode* %38, %struct.kiocb* %39, %struct.iov_iter* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 1, i32* %4, align 4
  br label %62

44:                                               ; preds = %37
  %45 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %46 = call i64 @F2FS_IO_ALIGNED(%struct.f2fs_sb_info* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 1, i32* %4, align 4
  br label %62

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %49, %33, %28
  %51 = load %struct.inode*, %struct.inode** %5, align 8
  %52 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %51)
  %53 = load i32, i32* @SBI_CP_DISABLED, align 4
  %54 = call i64 @is_sbi_flag_set(%struct.f2fs_sb_info* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load %struct.inode*, %struct.inode** %5, align 8
  %58 = call i32 @IS_SWAPFILE(%struct.inode* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  store i32 1, i32* %4, align 4
  br label %62

61:                                               ; preds = %56, %50
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %60, %48, %43, %27, %22, %17
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @iov_iter_rw(%struct.iov_iter*) #1

declare dso_local i64 @f2fs_post_read_required(%struct.inode*) #1

declare dso_local i64 @f2fs_is_multi_device(%struct.f2fs_sb_info*) #1

declare dso_local i64 @f2fs_sb_has_blkzoned(%struct.f2fs_sb_info*) #1

declare dso_local i64 @test_opt(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @block_unaligned_IO(%struct.inode*, %struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i64 @F2FS_IO_ALIGNED(%struct.f2fs_sb_info*) #1

declare dso_local i64 @is_sbi_flag_set(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @IS_SWAPFILE(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
