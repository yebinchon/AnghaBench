; ModuleID = '/home/carl/AnghaBench/linux/fs/hugetlbfs/extr_inode.c_hugetlbfs_read_actor.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hugetlbfs/extr_inode.c_hugetlbfs_read_actor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.iov_iter = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.page*, i64, %struct.iov_iter*, i64)* @hugetlbfs_read_actor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hugetlbfs_read_actor(%struct.page* %0, i64 %1, %struct.iov_iter* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.iov_iter*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.iov_iter* %2, %struct.iov_iter** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @PAGE_SHIFT, align 8
  %16 = lshr i64 %14, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %11, align 4
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @PAGE_MASK, align 8
  %20 = xor i64 %19, -1
  %21 = and i64 %18, %20
  store i64 %21, i64* %7, align 8
  br label %22

22:                                               ; preds = %61, %4
  %23 = load i64, i64* %9, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %68

25:                                               ; preds = %22
  %26 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %26, i32* %12, align 4
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i64, i64* %7, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = sub i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %29, %25
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %9, align 8
  %39 = icmp ugt i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i64, i64* %9, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %40, %35
  %44 = load %struct.page*, %struct.page** %6, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.page, %struct.page* %44, i64 %46
  %48 = load i64, i64* %7, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.iov_iter*, %struct.iov_iter** %8, align 8
  %51 = call i64 @copy_page_to_iter(%struct.page* %47, i64 %48, i32 %49, %struct.iov_iter* %50)
  store i64 %51, i64* %13, align 8
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* %10, align 8
  %54 = add i64 %53, %52
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %13, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = icmp ne i64 %55, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %43
  %60 = load i64, i64* %10, align 8
  store i64 %60, i64* %5, align 8
  br label %70

61:                                               ; preds = %43
  store i64 0, i64* %7, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %9, align 8
  %65 = sub i64 %64, %63
  store i64 %65, i64* %9, align 8
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %11, align 4
  br label %22

68:                                               ; preds = %22
  %69 = load i64, i64* %10, align 8
  store i64 %69, i64* %5, align 8
  br label %70

70:                                               ; preds = %68, %59
  %71 = load i64, i64* %5, align 8
  ret i64 %71
}

declare dso_local i64 @copy_page_to_iter(%struct.page*, i64, i32, %struct.iov_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
