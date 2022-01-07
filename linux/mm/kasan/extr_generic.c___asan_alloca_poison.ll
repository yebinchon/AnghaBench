; ModuleID = '/home/carl/AnghaBench/linux/mm/kasan/extr_generic.c___asan_alloca_poison.c'
source_filename = "/home/carl/AnghaBench/linux/mm/kasan/extr_generic.c___asan_alloca_poison.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KASAN_SHADOW_SCALE_SIZE = common dso_local global i64 0, align 8
@KASAN_ALLOCA_REDZONE_SIZE = common dso_local global i64 0, align 8
@KASAN_ALLOCA_LEFT = common dso_local global i32 0, align 4
@KASAN_ALLOCA_RIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__asan_alloca_poison(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @KASAN_SHADOW_SCALE_SIZE, align 8
  %12 = call i64 @round_up(i64 %10, i64 %11)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @KASAN_ALLOCA_REDZONE_SIZE, align 8
  %15 = call i64 @round_up(i64 %13, i64 %14)
  %16 = load i64, i64* %5, align 8
  %17 = sub i64 %15, %16
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @KASAN_SHADOW_SCALE_SIZE, align 8
  %20 = call i64 @round_down(i64 %18, i64 %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @KASAN_ALLOCA_REDZONE_SIZE, align 8
  %23 = sub i64 %21, %22
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %8, align 8
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* %5, align 8
  %27 = add i64 %25, %26
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %9, align 8
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* @KASAN_ALLOCA_REDZONE_SIZE, align 8
  %31 = call i32 @IS_ALIGNED(i64 %29, i64 %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @WARN_ON(i32 %34)
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* %7, align 8
  %38 = add i64 %36, %37
  %39 = inttoptr i64 %38 to i8*
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* %7, align 8
  %42 = sub i64 %40, %41
  %43 = call i32 @kasan_unpoison_shadow(i8* %39, i64 %42)
  %44 = load i8*, i8** %8, align 8
  %45 = load i64, i64* @KASAN_ALLOCA_REDZONE_SIZE, align 8
  %46 = load i32, i32* @KASAN_ALLOCA_LEFT, align 4
  %47 = call i32 @kasan_poison_shadow(i8* %44, i64 %45, i32 %46)
  %48 = load i8*, i8** %9, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @KASAN_ALLOCA_REDZONE_SIZE, align 8
  %51 = add i64 %49, %50
  %52 = load i32, i32* @KASAN_ALLOCA_RIGHT, align 4
  %53 = call i32 @kasan_poison_shadow(i8* %48, i64 %51, i32 %52)
  ret void
}

declare dso_local i64 @round_up(i64, i64) #1

declare dso_local i64 @round_down(i64, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @IS_ALIGNED(i64, i64) #1

declare dso_local i32 @kasan_unpoison_shadow(i8*, i64) #1

declare dso_local i32 @kasan_poison_shadow(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
