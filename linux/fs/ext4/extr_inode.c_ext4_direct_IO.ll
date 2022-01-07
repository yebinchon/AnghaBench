; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_direct_IO.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_direct_IO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32, %struct.file* }
%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.iov_iter = type { i32 }

@READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iov_iter*)* @ext4_direct_IO to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_direct_IO(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %11 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %12 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %11, i32 0, i32 1
  %13 = load %struct.file*, %struct.file** %12, align 8
  store %struct.file* %13, %struct.file** %6, align 8
  %14 = load %struct.file*, %struct.file** %6, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %7, align 8
  %19 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %20 = call i64 @iov_iter_count(%struct.iov_iter* %19)
  store i64 %20, i64* %8, align 8
  %21 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %22 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %9, align 4
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = call i64 @fsverity_active(%struct.inode* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

28:                                               ; preds = %2
  %29 = load %struct.inode*, %struct.inode** %7, align 8
  %30 = call i64 @ext4_should_journal_data(%struct.inode* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %66

33:                                               ; preds = %28
  %34 = load %struct.inode*, %struct.inode** %7, align 8
  %35 = call i64 @ext4_has_inline_data(%struct.inode* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %66

38:                                               ; preds = %33
  %39 = load %struct.inode*, %struct.inode** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %43 = call i64 @iov_iter_rw(%struct.iov_iter* %42)
  %44 = call i32 @trace_ext4_direct_IO_enter(%struct.inode* %39, i32 %40, i64 %41, i64 %43)
  %45 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %46 = call i64 @iov_iter_rw(%struct.iov_iter* %45)
  %47 = load i64, i64* @READ, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %38
  %50 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %51 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %52 = call i32 @ext4_direct_IO_read(%struct.kiocb* %50, %struct.iov_iter* %51)
  store i32 %52, i32* %10, align 4
  br label %57

53:                                               ; preds = %38
  %54 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %55 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %56 = call i32 @ext4_direct_IO_write(%struct.kiocb* %54, %struct.iov_iter* %55)
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %53, %49
  %58 = load %struct.inode*, %struct.inode** %7, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %62 = call i64 @iov_iter_rw(%struct.iov_iter* %61)
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @trace_ext4_direct_IO_exit(%struct.inode* %58, i32 %59, i64 %60, i64 %62, i32 %63)
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %57, %37, %32, %27
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i64 @fsverity_active(%struct.inode*) #1

declare dso_local i64 @ext4_should_journal_data(%struct.inode*) #1

declare dso_local i64 @ext4_has_inline_data(%struct.inode*) #1

declare dso_local i32 @trace_ext4_direct_IO_enter(%struct.inode*, i32, i64, i64) #1

declare dso_local i64 @iov_iter_rw(%struct.iov_iter*) #1

declare dso_local i32 @ext4_direct_IO_read(%struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i32 @ext4_direct_IO_write(%struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i32 @trace_ext4_direct_IO_exit(%struct.inode*, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
