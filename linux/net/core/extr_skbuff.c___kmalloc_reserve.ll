; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c___kmalloc_reserve.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c___kmalloc_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__GFP_NOMEMALLOC = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i32, i32, i64, i32*)* @__kmalloc_reserve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__kmalloc_reserve(i64 %0, i32 %1, i32 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %12, align 4
  %13 = load i64, i64* %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @__GFP_NOMEMALLOC, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @__GFP_NOWARN, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* %8, align 4
  %20 = call i8* @kmalloc_node_track_caller(i64 %13, i32 %18, i32 %19)
  store i8* %20, i8** %11, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @gfp_pfmemalloc_allowed(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23, %5
  br label %33

28:                                               ; preds = %23
  store i32 1, i32* %12, align 4
  %29 = load i64, i64* %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i8* @kmalloc_node_track_caller(i64 %29, i32 %30, i32 %31)
  store i8* %32, i8** %11, align 8
  br label %33

33:                                               ; preds = %28, %27
  %34 = load i32*, i32** %10, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %12, align 4
  %38 = load i32*, i32** %10, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i8*, i8** %11, align 8
  ret i8* %40
}

declare dso_local i8* @kmalloc_node_track_caller(i64, i32, i32) #1

declare dso_local i32 @gfp_pfmemalloc_allowed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
