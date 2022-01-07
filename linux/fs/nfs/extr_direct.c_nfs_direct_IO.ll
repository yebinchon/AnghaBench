; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_direct.c_nfs_direct_IO.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_direct.c_nfs_direct_IO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.iov_iter = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@READ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_direct_IO(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca %struct.inode*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %7 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %8 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %6, align 8
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = call i32 @IS_SWAPFILE(%struct.inode* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

18:                                               ; preds = %2
  %19 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %20 = call i64 @iov_iter_count(%struct.iov_iter* %19)
  %21 = load i64, i64* @PAGE_SIZE, align 8
  %22 = icmp ne i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @VM_BUG_ON(i32 %23)
  %25 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %26 = call i64 @iov_iter_rw(%struct.iov_iter* %25)
  %27 = load i64, i64* @READ, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %18
  %30 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %31 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %32 = call i32 @nfs_file_direct_read(%struct.kiocb* %30, %struct.iov_iter* %31)
  store i32 %32, i32* %3, align 4
  br label %37

33:                                               ; preds = %18
  %34 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %35 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %36 = call i32 @nfs_file_direct_write(%struct.kiocb* %34, %struct.iov_iter* %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %29, %17
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @IS_SWAPFILE(%struct.inode*) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i64 @iov_iter_rw(%struct.iov_iter*) #1

declare dso_local i32 @nfs_file_direct_read(%struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i32 @nfs_file_direct_write(%struct.kiocb*, %struct.iov_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
