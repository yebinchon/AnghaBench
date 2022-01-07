; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_file.c_ovl_read_iter.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_file.c_ovl_read_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32, %struct.file* }
%struct.file = type { i32 }
%struct.iov_iter = type { i32 }
%struct.fd = type { i32 }
%struct.cred = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kiocb*, %struct.iov_iter*)* @ovl_read_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ovl_read_iter(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.fd, align 4
  %8 = alloca %struct.cred*, align 8
  %9 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %10 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %11 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %10, i32 0, i32 1
  %12 = load %struct.file*, %struct.file** %11, align 8
  store %struct.file* %12, %struct.file** %6, align 8
  %13 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %14 = call i32 @iov_iter_count(%struct.iov_iter* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %46

17:                                               ; preds = %2
  %18 = load %struct.file*, %struct.file** %6, align 8
  %19 = call i64 @ovl_real_fdget(%struct.file* %18, %struct.fd* %7)
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i64, i64* %9, align 8
  store i64 %23, i64* %3, align 8
  br label %46

24:                                               ; preds = %17
  %25 = load %struct.file*, %struct.file** %6, align 8
  %26 = call %struct.TYPE_2__* @file_inode(%struct.file* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.cred* @ovl_override_creds(i32 %28)
  store %struct.cred* %29, %struct.cred** %8, align 8
  %30 = getelementptr inbounds %struct.fd, %struct.fd* %7, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %33 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %34 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %33, i32 0, i32 0
  %35 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %36 = call i32 @ovl_iocb_to_rwf(%struct.kiocb* %35)
  %37 = call i64 @vfs_iter_read(i32 %31, %struct.iov_iter* %32, i32* %34, i32 %36)
  store i64 %37, i64* %9, align 8
  %38 = load %struct.cred*, %struct.cred** %8, align 8
  %39 = call i32 @revert_creds(%struct.cred* %38)
  %40 = load %struct.file*, %struct.file** %6, align 8
  %41 = call i32 @ovl_file_accessed(%struct.file* %40)
  %42 = getelementptr inbounds %struct.fd, %struct.fd* %7, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @fdput(i32 %43)
  %45 = load i64, i64* %9, align 8
  store i64 %45, i64* %3, align 8
  br label %46

46:                                               ; preds = %24, %22, %16
  %47 = load i64, i64* %3, align 8
  ret i64 %47
}

declare dso_local i32 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i64 @ovl_real_fdget(%struct.file*, %struct.fd*) #1

declare dso_local %struct.cred* @ovl_override_creds(i32) #1

declare dso_local %struct.TYPE_2__* @file_inode(%struct.file*) #1

declare dso_local i64 @vfs_iter_read(i32, %struct.iov_iter*, i32*, i32) #1

declare dso_local i32 @ovl_iocb_to_rwf(%struct.kiocb*) #1

declare dso_local i32 @revert_creds(%struct.cred*) #1

declare dso_local i32 @ovl_file_accessed(%struct.file*) #1

declare dso_local i32 @fdput(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
