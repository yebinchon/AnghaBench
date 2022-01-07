; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_file.c_ovl_write_iter.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_file.c_ovl_write_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32, %struct.file* }
%struct.file = type { i32 }
%struct.iov_iter = type { i32 }
%struct.inode = type { i32 }
%struct.fd = type { i32 }
%struct.cred = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kiocb*, %struct.iov_iter*)* @ovl_write_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ovl_write_iter(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.fd, align 4
  %9 = alloca %struct.cred*, align 8
  %10 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %11 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %12 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %11, i32 0, i32 1
  %13 = load %struct.file*, %struct.file** %12, align 8
  store %struct.file* %13, %struct.file** %6, align 8
  %14 = load %struct.file*, %struct.file** %6, align 8
  %15 = call %struct.inode* @file_inode(%struct.file* %14)
  store %struct.inode* %15, %struct.inode** %7, align 8
  %16 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %17 = call i32 @iov_iter_count(%struct.iov_iter* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %71

20:                                               ; preds = %2
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = call i32 @inode_lock(%struct.inode* %21)
  %23 = load %struct.inode*, %struct.inode** %7, align 8
  %24 = call i32 @ovl_inode_real(%struct.inode* %23)
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = call i32 @ovl_copyattr(i32 %24, %struct.inode* %25)
  %27 = load %struct.file*, %struct.file** %6, align 8
  %28 = call i64 @file_remove_privs(%struct.file* %27)
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %67

32:                                               ; preds = %20
  %33 = load %struct.file*, %struct.file** %6, align 8
  %34 = call i64 @ovl_real_fdget(%struct.file* %33, %struct.fd* %8)
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %67

38:                                               ; preds = %32
  %39 = load %struct.file*, %struct.file** %6, align 8
  %40 = call %struct.inode* @file_inode(%struct.file* %39)
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.cred* @ovl_override_creds(i32 %42)
  store %struct.cred* %43, %struct.cred** %9, align 8
  %44 = getelementptr inbounds %struct.fd, %struct.fd* %8, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @file_start_write(i32 %45)
  %47 = getelementptr inbounds %struct.fd, %struct.fd* %8, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %50 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %51 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %50, i32 0, i32 0
  %52 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %53 = call i32 @ovl_iocb_to_rwf(%struct.kiocb* %52)
  %54 = call i64 @vfs_iter_write(i32 %48, %struct.iov_iter* %49, i32* %51, i32 %53)
  store i64 %54, i64* %10, align 8
  %55 = getelementptr inbounds %struct.fd, %struct.fd* %8, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @file_end_write(i32 %56)
  %58 = load %struct.cred*, %struct.cred** %9, align 8
  %59 = call i32 @revert_creds(%struct.cred* %58)
  %60 = load %struct.inode*, %struct.inode** %7, align 8
  %61 = call i32 @ovl_inode_real(%struct.inode* %60)
  %62 = load %struct.inode*, %struct.inode** %7, align 8
  %63 = call i32 @ovl_copyattr(i32 %61, %struct.inode* %62)
  %64 = getelementptr inbounds %struct.fd, %struct.fd* %8, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @fdput(i32 %65)
  br label %67

67:                                               ; preds = %38, %37, %31
  %68 = load %struct.inode*, %struct.inode** %7, align 8
  %69 = call i32 @inode_unlock(%struct.inode* %68)
  %70 = load i64, i64* %10, align 8
  store i64 %70, i64* %3, align 8
  br label %71

71:                                               ; preds = %67, %19
  %72 = load i64, i64* %3, align 8
  ret i64 %72
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @ovl_copyattr(i32, %struct.inode*) #1

declare dso_local i32 @ovl_inode_real(%struct.inode*) #1

declare dso_local i64 @file_remove_privs(%struct.file*) #1

declare dso_local i64 @ovl_real_fdget(%struct.file*, %struct.fd*) #1

declare dso_local %struct.cred* @ovl_override_creds(i32) #1

declare dso_local i32 @file_start_write(i32) #1

declare dso_local i64 @vfs_iter_write(i32, %struct.iov_iter*, i32*, i32) #1

declare dso_local i32 @ovl_iocb_to_rwf(%struct.kiocb*) #1

declare dso_local i32 @file_end_write(i32) #1

declare dso_local i32 @revert_creds(%struct.cred*) #1

declare dso_local i32 @fdput(i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
