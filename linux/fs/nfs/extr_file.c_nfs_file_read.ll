; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_file.c_nfs_file_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_file.c_nfs_file_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.iov_iter = type { i32 }
%struct.inode = type { i32 }

@IOCB_DIRECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"NFS: read(%pD2, %zu@%lu)\0A\00", align 1
@NFSIOS_NORMALREADBYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfs_file_read(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %8 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %9 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = call %struct.inode* @file_inode(%struct.TYPE_3__* %10)
  store %struct.inode* %11, %struct.inode** %6, align 8
  %12 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %13 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @IOCB_DIRECT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %20 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %21 = call i64 @nfs_file_direct_read(%struct.kiocb* %19, %struct.iov_iter* %20)
  store i64 %21, i64* %3, align 8
  br label %59

22:                                               ; preds = %2
  %23 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %24 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %27 = call i32 @iov_iter_count(%struct.iov_iter* %26)
  %28 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %29 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @dprintk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.TYPE_3__* %25, i32 %27, i64 %30)
  %32 = load %struct.inode*, %struct.inode** %6, align 8
  %33 = call i32 @nfs_start_io_read(%struct.inode* %32)
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %36 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @nfs_revalidate_mapping(%struct.inode* %34, i32 %39)
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %22
  %44 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %45 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %46 = call i64 @generic_file_read_iter(%struct.kiocb* %44, %struct.iov_iter* %45)
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.inode*, %struct.inode** %6, align 8
  %51 = load i32, i32* @NFSIOS_NORMALREADBYTES, align 4
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @nfs_add_stats(%struct.inode* %50, i32 %51, i64 %52)
  br label %54

54:                                               ; preds = %49, %43
  br label %55

55:                                               ; preds = %54, %22
  %56 = load %struct.inode*, %struct.inode** %6, align 8
  %57 = call i32 @nfs_end_io_read(%struct.inode* %56)
  %58 = load i64, i64* %7, align 8
  store i64 %58, i64* %3, align 8
  br label %59

59:                                               ; preds = %55, %18
  %60 = load i64, i64* %3, align 8
  ret i64 %60
}

declare dso_local %struct.inode* @file_inode(%struct.TYPE_3__*) #1

declare dso_local i64 @nfs_file_direct_read(%struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i32 @dprintk(i8*, %struct.TYPE_3__*, i32, i64) #1

declare dso_local i32 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i32 @nfs_start_io_read(%struct.inode*) #1

declare dso_local i64 @nfs_revalidate_mapping(%struct.inode*, i32) #1

declare dso_local i64 @generic_file_read_iter(%struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i32 @nfs_add_stats(%struct.inode*, i32, i64) #1

declare dso_local i32 @nfs_end_io_read(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
