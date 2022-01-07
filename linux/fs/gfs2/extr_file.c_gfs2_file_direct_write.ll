; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_file.c_gfs2_file_direct_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_file.c_gfs2_file_direct_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i64, %struct.file* }
%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.iov_iter = type { i32 }
%struct.gfs2_inode = type { i32, i32 }
%struct.gfs2_holder = type { i32 }

@LM_ST_DEFERRED = common dso_local global i32 0, align 4
@gfs2_iomap_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kiocb*, %struct.iov_iter*)* @gfs2_file_direct_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gfs2_file_direct_write(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca %struct.kiocb*, align 8
  %4 = alloca %struct.iov_iter*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.gfs2_inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.gfs2_holder, align 4
  %11 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %3, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %4, align 8
  %12 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %13 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %12, i32 0, i32 1
  %14 = load %struct.file*, %struct.file** %13, align 8
  store %struct.file* %14, %struct.file** %5, align 8
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  store %struct.inode* %19, %struct.inode** %6, align 8
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %20)
  store %struct.gfs2_inode* %21, %struct.gfs2_inode** %7, align 8
  %22 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %23 = call i64 @iov_iter_count(%struct.iov_iter* %22)
  store i64 %23, i64* %8, align 8
  %24 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %25 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %9, align 8
  %27 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %28 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @LM_ST_DEFERRED, align 4
  %31 = call i32 @gfs2_holder_init(i32 %29, i32 %30, i32 0, %struct.gfs2_holder* %10)
  %32 = call i64 @gfs2_glock_nq(%struct.gfs2_holder* %10)
  store i64 %32, i64* %11, align 8
  %33 = load i64, i64* %11, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  br label %51

36:                                               ; preds = %2
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %8, align 8
  %39 = add i64 %37, %38
  %40 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %41 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %40, i32 0, i32 0
  %42 = call i64 @i_size_read(i32* %41)
  %43 = icmp ugt i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %49

45:                                               ; preds = %36
  %46 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %47 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %48 = call i64 @iomap_dio_rw(%struct.kiocb* %46, %struct.iov_iter* %47, i32* @gfs2_iomap_ops, i32* null)
  store i64 %48, i64* %11, align 8
  br label %49

49:                                               ; preds = %45, %44
  %50 = call i32 @gfs2_glock_dq(%struct.gfs2_holder* %10)
  br label %51

51:                                               ; preds = %49, %35
  %52 = call i32 @gfs2_holder_uninit(%struct.gfs2_holder* %10)
  %53 = load i64, i64* %11, align 8
  ret i64 %53
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i32 @gfs2_holder_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i64 @gfs2_glock_nq(%struct.gfs2_holder*) #1

declare dso_local i64 @i_size_read(i32*) #1

declare dso_local i64 @iomap_dio_rw(%struct.kiocb*, %struct.iov_iter*, i32*, i32*) #1

declare dso_local i32 @gfs2_glock_dq(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_holder_uninit(%struct.gfs2_holder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
