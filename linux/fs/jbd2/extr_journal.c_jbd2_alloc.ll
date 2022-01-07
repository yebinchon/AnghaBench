; ModuleID = '/home/carl/AnghaBench/linux/fs/jbd2/extr_journal.c_jbd2_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jbd2/extr_journal.c_jbd2_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @jbd2_alloc(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = sub i64 %7, 1
  %9 = and i64 %6, %8
  %10 = call i32 @BUG_ON(i64 %9)
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @PAGE_SIZE, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @get_slab(i64 %15)
  %17 = load i32, i32* %4, align 4
  %18 = call i8* @kmem_cache_alloc(i32 %16, i32 %17)
  store i8* %18, i8** %5, align 8
  br label %25

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @get_order(i64 %21)
  %23 = call i64 @__get_free_pages(i32 %20, i32 %22)
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %5, align 8
  br label %25

25:                                               ; preds = %19, %14
  %26 = load i8*, i8** %5, align 8
  %27 = ptrtoint i8* %26 to i64
  %28 = load i64, i64* %3, align 8
  %29 = sub i64 %28, 1
  %30 = and i64 %27, %29
  %31 = call i32 @BUG_ON(i64 %30)
  %32 = load i8*, i8** %5, align 8
  ret i8* %32
}

declare dso_local i32 @BUG_ON(i64) #1

declare dso_local i8* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @get_slab(i64) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @get_order(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
