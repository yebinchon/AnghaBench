; ModuleID = '/home/carl/AnghaBench/linux/fs/ntfs/extr_malloc.h___ntfs_malloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ntfs/extr_malloc.h___ntfs_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i64 0, align 8
@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i32)* @__ntfs_malloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__ntfs_malloc(i64 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @PAGE_SIZE, align 8
  %8 = icmp ule i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i64 @likely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = icmp ne i64 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load i64, i64* @PAGE_SIZE, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @__GFP_HIGHMEM, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = call i8* @kmalloc(i64 %18, i32 %22)
  store i8* %23, i8** %3, align 8
  br label %39

24:                                               ; preds = %2
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @PAGE_SHIFT, align 8
  %27 = lshr i64 %25, %26
  %28 = call i64 (...) @totalram_pages()
  %29 = icmp ult i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @likely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load i64, i64* %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @PAGE_KERNEL, align 4
  %37 = call i8* @__vmalloc(i64 %34, i32 %35, i32 %36)
  store i8* %37, i8** %3, align 8
  br label %39

38:                                               ; preds = %24
  store i8* null, i8** %3, align 8
  br label %39

39:                                               ; preds = %38, %33, %12
  %40 = load i8*, i8** %3, align 8
  ret i8* %40
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i64 @totalram_pages(...) #1

declare dso_local i8* @__vmalloc(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
