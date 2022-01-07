; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c_vm_brk_flags.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c_vm_brk_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32, i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@uf = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@VM_LOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_brk_flags(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mm_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  store %struct.mm_struct* %14, %struct.mm_struct** %8, align 8
  %15 = load i32, i32* @uf, align 4
  %16 = call i32 @LIST_HEAD(i32 %15)
  %17 = load i64, i64* %6, align 8
  %18 = call i64 @PAGE_ALIGN(i64 %17)
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %65

25:                                               ; preds = %3
  %26 = load i64, i64* %9, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %65

29:                                               ; preds = %25
  %30 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %31 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %30, i32 0, i32 1
  %32 = call i64 @down_write_killable(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EINTR, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %65

37:                                               ; preds = %29
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @do_brk_flags(i64 %38, i64 %39, i64 %40, i32* @uf)
  store i32 %41, i32* %10, align 4
  %42 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %43 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @VM_LOCKED, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %11, align 4
  %49 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %50 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %49, i32 0, i32 1
  %51 = call i32 @up_write(i32* %50)
  %52 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %53 = call i32 @userfaultfd_unmap_complete(%struct.mm_struct* %52, i32* @uf)
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %37
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* %9, align 8
  %62 = call i32 @mm_populate(i64 %60, i64 %61)
  br label %63

63:                                               ; preds = %59, %56, %37
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %34, %28, %22
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i64 @down_write_killable(i32*) #1

declare dso_local i32 @do_brk_flags(i64, i64, i64, i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @userfaultfd_unmap_complete(%struct.mm_struct*, i32*) #1

declare dso_local i32 @mm_populate(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
