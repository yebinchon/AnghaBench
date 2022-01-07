; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_file.c_gfs2_file_direct_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_file.c_gfs2_file_direct_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.file* }
%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iov_iter = type { i32 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_holder = type { i32 }

@LM_ST_DEFERRED = common dso_local global i32 0, align 4
@gfs2_iomap_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kiocb*, %struct.iov_iter*)* @gfs2_file_direct_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gfs2_file_direct_read(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.gfs2_inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.gfs2_holder, align 4
  %10 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %11 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %12 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %11, i32 0, i32 0
  %13 = load %struct.file*, %struct.file** %12, align 8
  store %struct.file* %13, %struct.file** %6, align 8
  %14 = load %struct.file*, %struct.file** %6, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.gfs2_inode* @GFS2_I(i32 %18)
  store %struct.gfs2_inode* %19, %struct.gfs2_inode** %7, align 8
  %20 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %21 = call i64 @iov_iter_count(%struct.iov_iter* %20)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %43

25:                                               ; preds = %2
  %26 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %27 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @LM_ST_DEFERRED, align 4
  %30 = call i32 @gfs2_holder_init(i32 %28, i32 %29, i32 0, %struct.gfs2_holder* %9)
  %31 = call i64 @gfs2_glock_nq(%struct.gfs2_holder* %9)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %40

35:                                               ; preds = %25
  %36 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %37 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %38 = call i64 @iomap_dio_rw(%struct.kiocb* %36, %struct.iov_iter* %37, i32* @gfs2_iomap_ops, i32* null)
  store i64 %38, i64* %10, align 8
  %39 = call i32 @gfs2_glock_dq(%struct.gfs2_holder* %9)
  br label %40

40:                                               ; preds = %35, %34
  %41 = call i32 @gfs2_holder_uninit(%struct.gfs2_holder* %9)
  %42 = load i64, i64* %10, align 8
  store i64 %42, i64* %3, align 8
  br label %43

43:                                               ; preds = %40, %24
  %44 = load i64, i64* %3, align 8
  ret i64 %44
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i32 @gfs2_holder_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i64 @gfs2_glock_nq(%struct.gfs2_holder*) #1

declare dso_local i64 @iomap_dio_rw(%struct.kiocb*, %struct.iov_iter*, i32*, i32*) #1

declare dso_local i32 @gfs2_glock_dq(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_holder_uninit(%struct.gfs2_holder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
