; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c___vm_munmap.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c___vm_munmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@uf = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32)* @__vm_munmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__vm_munmap(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mm_struct*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  store %struct.mm_struct* %12, %struct.mm_struct** %9, align 8
  %13 = load i32, i32* @uf, align 4
  %14 = call i32 @LIST_HEAD(i32 %13)
  %15 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %16 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %15, i32 0, i32 0
  %17 = call i64 @down_write_killable(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINTR, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %42

22:                                               ; preds = %3
  %23 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @__do_munmap(%struct.mm_struct* %23, i64 %24, i64 %25, i32* @uf, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %32 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %31, i32 0, i32 0
  %33 = call i32 @up_read(i32* %32)
  store i32 0, i32* %8, align 4
  br label %38

34:                                               ; preds = %22
  %35 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %36 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %35, i32 0, i32 0
  %37 = call i32 @up_write(i32* %36)
  br label %38

38:                                               ; preds = %34, %30
  %39 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %40 = call i32 @userfaultfd_unmap_complete(%struct.mm_struct* %39, i32* @uf)
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %38, %19
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i64 @down_write_killable(i32*) #1

declare dso_local i32 @__do_munmap(%struct.mm_struct*, i64, i64, i32*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @userfaultfd_unmap_complete(%struct.mm_struct*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
