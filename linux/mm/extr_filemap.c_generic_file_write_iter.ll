; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_filemap.c_generic_file_write_iter.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_filemap.c_generic_file_write_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.file* }
%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.iov_iter = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @generic_file_write_iter(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca %struct.kiocb*, align 8
  %4 = alloca %struct.iov_iter*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %3, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %4, align 8
  %8 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %9 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %8, i32 0, i32 0
  %10 = load %struct.file*, %struct.file** %9, align 8
  store %struct.file* %10, %struct.file** %5, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %6, align 8
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = call i32 @inode_lock(%struct.inode* %16)
  %18 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %19 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %20 = call i64 @generic_write_checks(%struct.kiocb* %18, %struct.iov_iter* %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %25 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %26 = call i64 @__generic_file_write_iter(%struct.kiocb* %24, %struct.iov_iter* %25)
  store i64 %26, i64* %7, align 8
  br label %27

27:                                               ; preds = %23, %2
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = call i32 @inode_unlock(%struct.inode* %28)
  %30 = load i64, i64* %7, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i64 @generic_write_sync(%struct.kiocb* %33, i64 %34)
  store i64 %35, i64* %7, align 8
  br label %36

36:                                               ; preds = %32, %27
  %37 = load i64, i64* %7, align 8
  ret i64 %37
}

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i64 @generic_write_checks(%struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i64 @__generic_file_write_iter(%struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i64 @generic_write_sync(%struct.kiocb*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
