; ModuleID = '/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_alloc_one_pg_vec_page.c'
source_filename = "/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_alloc_one_pg_vec_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_COMP = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @alloc_one_pg_vec_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @alloc_one_pg_vec_page(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = load i32, i32* @__GFP_COMP, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @__GFP_ZERO, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @__GFP_NOWARN, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @__GFP_NORETRY, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i64, i64* %3, align 8
  %17 = call i64 @__get_free_pages(i32 %15, i64 %16)
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %4, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i8*, i8** %4, align 8
  store i8* %22, i8** %2, align 8
  br label %48

23:                                               ; preds = %1
  %24 = load i64, i64* %3, align 8
  %25 = trunc i64 %24 to i32
  %26 = shl i32 1, %25
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = call i32 @array_size(i32 %26, i32 %27)
  %29 = call i8* @vzalloc(i32 %28)
  store i8* %29, i8** %4, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i8*, i8** %4, align 8
  store i8* %33, i8** %2, align 8
  br label %48

34:                                               ; preds = %23
  %35 = load i32, i32* @__GFP_NORETRY, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i64, i64* %3, align 8
  %41 = call i64 @__get_free_pages(i32 %39, i64 %40)
  %42 = inttoptr i64 %41 to i8*
  store i8* %42, i8** %4, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load i8*, i8** %4, align 8
  store i8* %46, i8** %2, align 8
  br label %48

47:                                               ; preds = %34
  store i8* null, i8** %2, align 8
  br label %48

48:                                               ; preds = %47, %45, %32, %21
  %49 = load i8*, i8** %2, align 8
  ret i8* %49
}

declare dso_local i64 @__get_free_pages(i32, i64) #1

declare dso_local i8* @vzalloc(i32) #1

declare dso_local i32 @array_size(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
