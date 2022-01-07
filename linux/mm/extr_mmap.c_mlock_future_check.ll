; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c_mlock_future_check.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c_mlock_future_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i64 }

@VM_LOCKED = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@CAP_IPC_LOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, i64, i64)* @mlock_future_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlock_future_check(%struct.mm_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @VM_LOCKED, align 8
  %12 = and i64 %10, %11
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @PAGE_SHIFT, align 8
  %17 = lshr i64 %15, %16
  store i64 %17, i64* %8, align 8
  %18 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %19 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %8, align 8
  %22 = add i64 %21, %20
  store i64 %22, i64* %8, align 8
  %23 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %24 = call i64 @rlimit(i32 %23)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* @PAGE_SHIFT, align 8
  %26 = load i64, i64* %9, align 8
  %27 = lshr i64 %26, %25
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %14
  %32 = load i32, i32* @CAP_IPC_LOCK, align 4
  %33 = call i32 @capable(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @EAGAIN, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %40

38:                                               ; preds = %31, %14
  br label %39

39:                                               ; preds = %38, %3
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %35
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i64 @rlimit(i32) #1

declare dso_local i32 @capable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
