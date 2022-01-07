; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_allow_outplace_dio.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_allow_outplace_dio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.kiocb = type { i32 }
%struct.iov_iter = type { i32 }
%struct.f2fs_sb_info = type { i32 }

@LFS = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.kiocb*, %struct.iov_iter*)* @allow_outplace_dio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allow_outplace_dio(%struct.inode* %0, %struct.kiocb* %1, %struct.iov_iter* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.kiocb*, align 8
  %6 = alloca %struct.iov_iter*, align 8
  %7 = alloca %struct.f2fs_sb_info*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.kiocb* %1, %struct.kiocb** %5, align 8
  store %struct.iov_iter* %2, %struct.iov_iter** %6, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %9)
  store %struct.f2fs_sb_info* %10, %struct.f2fs_sb_info** %7, align 8
  %11 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %12 = call i32 @iov_iter_rw(%struct.iov_iter* %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %14 = load i32, i32* @LFS, align 4
  %15 = call i64 @test_opt(%struct.f2fs_sb_info* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @WRITE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %24 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %25 = call i32 @block_unaligned_IO(%struct.inode* %22, %struct.kiocb* %23, %struct.iov_iter* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %21, %17, %3
  %29 = phi i1 [ false, %17 ], [ false, %3 ], [ %27, %21 ]
  %30 = zext i1 %29 to i32
  ret i32 %30
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @iov_iter_rw(%struct.iov_iter*) #1

declare dso_local i64 @test_opt(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @block_unaligned_IO(%struct.inode*, %struct.kiocb*, %struct.iov_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
