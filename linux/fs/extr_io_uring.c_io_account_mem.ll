; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_account_mem.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_account_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_struct = type { i32 }

@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.user_struct*, i64)* @io_account_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_account_mem(%struct.user_struct* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.user_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.user_struct* %0, %struct.user_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %10 = call i64 @rlimit(i32 %9)
  %11 = load i64, i64* @PAGE_SHIFT, align 8
  %12 = lshr i64 %10, %11
  store i64 %12, i64* %6, align 8
  br label %13

13:                                               ; preds = %27, %2
  %14 = load %struct.user_struct*, %struct.user_struct** %4, align 8
  %15 = getelementptr inbounds %struct.user_struct, %struct.user_struct* %14, i32 0, i32 0
  %16 = call i64 @atomic_long_read(i32* %15)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %5, align 8
  %19 = add i64 %17, %18
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %13
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %36

26:                                               ; preds = %13
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.user_struct*, %struct.user_struct** %4, align 8
  %29 = getelementptr inbounds %struct.user_struct, %struct.user_struct* %28, i32 0, i32 0
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i64 @atomic_long_cmpxchg(i32* %29, i64 %30, i64 %31)
  %33 = load i64, i64* %7, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %13, label %35

35:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %23
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @rlimit(i32) #1

declare dso_local i64 @atomic_long_read(i32*) #1

declare dso_local i64 @atomic_long_cmpxchg(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
