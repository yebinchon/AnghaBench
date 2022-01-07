; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dax.c_dax_iomap_rw.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dax.c_dax_iomap_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.address_space* }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.iov_iter = type { i32 }
%struct.iomap_ops = type { i32 }

@WRITE = common dso_local global i64 0, align 8
@IOMAP_WRITE = common dso_local global i32 0, align 4
@dax_iomap_actor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dax_iomap_rw(%struct.kiocb* %0, %struct.iov_iter* %1, %struct.iomap_ops* %2) #0 {
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca %struct.iomap_ops*, align 8
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  store %struct.iomap_ops* %2, %struct.iomap_ops** %6, align 8
  %13 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %14 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.address_space*, %struct.address_space** %16, align 8
  store %struct.address_space* %17, %struct.address_space** %7, align 8
  %18 = load %struct.address_space*, %struct.address_space** %7, align 8
  %19 = getelementptr inbounds %struct.address_space, %struct.address_space* %18, i32 0, i32 0
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %8, align 8
  %21 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %22 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %24 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %25 = call i64 @iov_iter_rw(%struct.iov_iter* %24)
  %26 = load i64, i64* @WRITE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %3
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = call i32 @lockdep_assert_held_write(i32* %30)
  %32 = load i32, i32* @IOMAP_WRITE, align 4
  %33 = load i32, i32* %12, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %12, align 4
  br label %39

35:                                               ; preds = %3
  %36 = load %struct.inode*, %struct.inode** %8, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = call i32 @lockdep_assert_held(i32* %37)
  br label %39

39:                                               ; preds = %35, %28
  br label %40

40:                                               ; preds = %57, %39
  %41 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %42 = call i64 @iov_iter_count(%struct.iov_iter* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %40
  %45 = load %struct.inode*, %struct.inode** %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %48 = call i64 @iov_iter_count(%struct.iov_iter* %47)
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.iomap_ops*, %struct.iomap_ops** %6, align 8
  %51 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %52 = load i32, i32* @dax_iomap_actor, align 4
  %53 = call i64 @iomap_apply(%struct.inode* %45, i64 %46, i64 %48, i32 %49, %struct.iomap_ops* %50, %struct.iov_iter* %51, i32 %52)
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* %10, align 8
  %55 = icmp sle i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  br label %64

57:                                               ; preds = %44
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* %9, align 8
  %60 = add nsw i64 %59, %58
  store i64 %60, i64* %9, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* %11, align 8
  %63 = add nsw i64 %62, %61
  store i64 %63, i64* %11, align 8
  br label %40

64:                                               ; preds = %56, %40
  %65 = load i64, i64* %11, align 8
  %66 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %67 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, %65
  store i64 %69, i64* %67, align 8
  %70 = load i64, i64* %11, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i64, i64* %11, align 8
  br label %76

74:                                               ; preds = %64
  %75 = load i64, i64* %10, align 8
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i64 [ %73, %72 ], [ %75, %74 ]
  ret i64 %77
}

declare dso_local i64 @iov_iter_rw(%struct.iov_iter*) #1

declare dso_local i32 @lockdep_assert_held_write(i32*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i64 @iomap_apply(%struct.inode*, i64, i64, i32, %struct.iomap_ops*, %struct.iov_iter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
