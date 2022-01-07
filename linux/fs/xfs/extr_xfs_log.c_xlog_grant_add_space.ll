; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_log.c_xlog_grant_add_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_log.c_xlog_grant_add_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlog = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlog*, i32*, i32)* @xlog_grant_add_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlog_grant_add_space(%struct.xlog* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.xlog*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.xlog* %0, %struct.xlog** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = call i64 @atomic64_read(i32* %13)
  store i64 %14, i64* %7, align 8
  br label %15

15:                                               ; preds = %45, %3
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @xlog_crack_grant_head_val(i64 %16, i32* %11, i32* %12)
  %18 = load %struct.xlog*, %struct.xlog** %4, align 8
  %19 = getelementptr inbounds %struct.xlog, %struct.xlog* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %12, align 4
  %22 = sub nsw i32 %20, %21
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %15
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %12, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %12, align 4
  br label %36

30:                                               ; preds = %15
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %10, align 4
  %33 = sub nsw i32 %31, %32
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %30, %26
  %37 = load i64, i64* %7, align 8
  store i64 %37, i64* %9, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i64 @xlog_assign_grant_head_val(i32 %38, i32 %39)
  store i64 %40, i64* %8, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i64 @atomic64_cmpxchg(i32* %41, i64 %42, i64 %43)
  store i64 %44, i64* %7, align 8
  br label %45

45:                                               ; preds = %36
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %9, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %15, label %49

49:                                               ; preds = %45
  ret void
}

declare dso_local i64 @atomic64_read(i32*) #1

declare dso_local i32 @xlog_crack_grant_head_val(i64, i32*, i32*) #1

declare dso_local i64 @xlog_assign_grant_head_val(i32, i32) #1

declare dso_local i64 @atomic64_cmpxchg(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
