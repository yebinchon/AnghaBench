; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_vmalloc.c_random_size_alloc_test.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_vmalloc.c_random_size_alloc_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_loop_count = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @random_size_alloc_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @random_size_alloc_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %26, %0
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @test_loop_count, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %29

9:                                                ; preds = %5
  %10 = call i32 @get_random_bytes(i32* %2, i32 4)
  %11 = load i32, i32* %2, align 4
  %12 = urem i32 %11, 100
  %13 = add i32 %12, 1
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = mul i32 %14, %15
  %17 = call i8* @vmalloc(i32 %16)
  store i8* %17, i8** %3, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %9
  store i32 -1, i32* %1, align 4
  br label %30

21:                                               ; preds = %9
  %22 = load i8*, i8** %3, align 8
  %23 = bitcast i8* %22 to i32*
  store i32 1, i32* %23, align 4
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @vfree(i8* %24)
  br label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %5

29:                                               ; preds = %5
  store i32 0, i32* %1, align 4
  br label %30

30:                                               ; preds = %29, %20
  %31 = load i32, i32* %1, align 4
  ret i32 %31
}

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i8* @vmalloc(i32) #1

declare dso_local i32 @vfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
