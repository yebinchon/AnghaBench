; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_dio_end_io.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_dio_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.inode = type { i32 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Direct IO failed, bytes = %lld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, i32, i64, i8*)* @ocfs2_dio_end_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_dio_end_io(%struct.kiocb* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.kiocb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %13 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.inode* @file_inode(i32 %14)
  store %struct.inode* %15, %struct.inode** %9, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %17 = call i32 @ocfs2_iocb_is_rw_locked(%struct.kiocb* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load i64, i64* %7, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load i32, i32* @ML_ERROR, align 4
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @mlog_ratelimited(i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %26)
  br label %28

28:                                               ; preds = %24, %4
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = load i64, i64* %7, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load %struct.inode*, %struct.inode** %9, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @ocfs2_dio_end_io_write(%struct.inode* %35, i8* %36, i32 %37, i64 %38)
  store i32 %39, i32* %11, align 4
  br label %44

40:                                               ; preds = %31
  %41 = load %struct.inode*, %struct.inode** %9, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @ocfs2_dio_free_write_ctx(%struct.inode* %41, i8* %42)
  br label %44

44:                                               ; preds = %40, %34
  br label %45

45:                                               ; preds = %44, %28
  %46 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %47 = call i32 @ocfs2_iocb_clear_rw_locked(%struct.kiocb* %46)
  %48 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %49 = call i32 @ocfs2_iocb_rw_locked_level(%struct.kiocb* %48)
  store i32 %49, i32* %10, align 4
  %50 = load %struct.inode*, %struct.inode** %9, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @ocfs2_rw_unlock(%struct.inode* %50, i32 %51)
  %53 = load i32, i32* %11, align 4
  ret i32 %53
}

declare dso_local %struct.inode* @file_inode(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_iocb_is_rw_locked(%struct.kiocb*) #1

declare dso_local i32 @mlog_ratelimited(i32, i8*, i64) #1

declare dso_local i32 @ocfs2_dio_end_io_write(%struct.inode*, i8*, i32, i64) #1

declare dso_local i32 @ocfs2_dio_free_write_ctx(%struct.inode*, i8*) #1

declare dso_local i32 @ocfs2_iocb_clear_rw_locked(%struct.kiocb*) #1

declare dso_local i32 @ocfs2_iocb_rw_locked_level(%struct.kiocb*) #1

declare dso_local i32 @ocfs2_rw_unlock(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
