; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_direct_IO_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_direct_IO_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.address_space* }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.iov_iter = type { i32 }

@ext4_dio_get_block = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kiocb*, %struct.iov_iter*)* @ext4_direct_IO_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ext4_direct_IO_read(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca %struct.kiocb*, align 8
  %4 = alloca %struct.iov_iter*, align 8
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %3, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %4, align 8
  %9 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %10 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.address_space*, %struct.address_space** %12, align 8
  store %struct.address_space* %13, %struct.address_space** %5, align 8
  %14 = load %struct.address_space*, %struct.address_space** %5, align 8
  %15 = getelementptr inbounds %struct.address_space, %struct.address_space* %14, i32 0, i32 0
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %16, %struct.inode** %6, align 8
  %17 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %18 = call i64 @iov_iter_count(%struct.iov_iter* %17)
  store i64 %18, i64* %7, align 8
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = call i32 @inode_lock_shared(%struct.inode* %19)
  %21 = load %struct.address_space*, %struct.address_space** %5, align 8
  %22 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %23 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %26 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = add i64 %27, %28
  %30 = sub i64 %29, 1
  %31 = call i64 @filemap_write_and_wait_range(%struct.address_space* %21, i64 %24, i64 %30)
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  br label %46

35:                                               ; preds = %2
  %36 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %44 = load i32, i32* @ext4_dio_get_block, align 4
  %45 = call i64 @__blockdev_direct_IO(%struct.kiocb* %36, %struct.inode* %37, i32 %42, %struct.iov_iter* %43, i32 %44, i32* null, i32* null, i32 0)
  store i64 %45, i64* %8, align 8
  br label %46

46:                                               ; preds = %35, %34
  %47 = load %struct.inode*, %struct.inode** %6, align 8
  %48 = call i32 @inode_unlock_shared(%struct.inode* %47)
  %49 = load i64, i64* %8, align 8
  ret i64 %49
}

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i32 @inode_lock_shared(%struct.inode*) #1

declare dso_local i64 @filemap_write_and_wait_range(%struct.address_space*, i64, i64) #1

declare dso_local i64 @__blockdev_direct_IO(%struct.kiocb*, %struct.inode*, i32, %struct.iov_iter*, i32, i32*, i32*, i32) #1

declare dso_local i32 @inode_unlock_shared(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
