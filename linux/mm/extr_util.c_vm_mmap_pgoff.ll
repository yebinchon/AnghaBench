; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_util.c_vm_mmap_pgoff.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_util.c_vm_mmap_pgoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.file = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@uf = common dso_local global i32 0, align 4
@EINTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vm_mmap_pgoff(%struct.file* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.mm_struct*, align 8
  %16 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.mm_struct*, %struct.mm_struct** %18, align 8
  store %struct.mm_struct* %19, %struct.mm_struct** %15, align 8
  %20 = load i32, i32* @uf, align 4
  %21 = call i32 @LIST_HEAD(i32 %20)
  %22 = load %struct.file*, %struct.file** %8, align 8
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* %12, align 8
  %25 = call i64 @security_mmap_file(%struct.file* %22, i64 %23, i64 %24)
  store i64 %25, i64* %14, align 8
  %26 = load i64, i64* %14, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %56, label %28

28:                                               ; preds = %6
  %29 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %30 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %29, i32 0, i32 0
  %31 = call i64 @down_write_killable(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i64, i64* @EINTR, align 8
  %35 = sub i64 0, %34
  store i64 %35, i64* %7, align 8
  br label %58

36:                                               ; preds = %28
  %37 = load %struct.file*, %struct.file** %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* %13, align 8
  %43 = call i64 @do_mmap_pgoff(%struct.file* %37, i64 %38, i64 %39, i64 %40, i64 %41, i64 %42, i64* %16, i32* @uf)
  store i64 %43, i64* %14, align 8
  %44 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %45 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %44, i32 0, i32 0
  %46 = call i32 @up_write(i32* %45)
  %47 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %48 = call i32 @userfaultfd_unmap_complete(%struct.mm_struct* %47, i32* @uf)
  %49 = load i64, i64* %16, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %36
  %52 = load i64, i64* %14, align 8
  %53 = load i64, i64* %16, align 8
  %54 = call i32 @mm_populate(i64 %52, i64 %53)
  br label %55

55:                                               ; preds = %51, %36
  br label %56

56:                                               ; preds = %55, %6
  %57 = load i64, i64* %14, align 8
  store i64 %57, i64* %7, align 8
  br label %58

58:                                               ; preds = %56, %33
  %59 = load i64, i64* %7, align 8
  ret i64 %59
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i64 @security_mmap_file(%struct.file*, i64, i64) #1

declare dso_local i64 @down_write_killable(i32*) #1

declare dso_local i64 @do_mmap_pgoff(%struct.file*, i64, i64, i64, i64, i64, i64*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @userfaultfd_unmap_complete(%struct.mm_struct*, i32*) #1

declare dso_local i32 @mm_populate(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
