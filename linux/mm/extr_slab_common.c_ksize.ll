; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_slab_common.c_ksize.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_slab_common.c_ksize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZERO_SIZE_PTR = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ksize(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @WARN_ON_ONCE(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %31

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = load i8*, i8** @ZERO_SIZE_PTR, align 8
  %15 = icmp eq i8* %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %12
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @__kasan_check_read(i8* %20, i32 1)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19, %12
  store i64 0, i64* %2, align 8
  br label %31

24:                                               ; preds = %19
  %25 = load i8*, i8** %3, align 8
  %26 = call i64 @__ksize(i8* %25)
  store i64 %26, i64* %4, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @kasan_unpoison_shadow(i8* %27, i64 %28)
  %30 = load i64, i64* %4, align 8
  store i64 %30, i64* %2, align 8
  br label %31

31:                                               ; preds = %24, %23, %11
  %32 = load i64, i64* %2, align 8
  ret i64 %32
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__kasan_check_read(i8*, i32) #1

declare dso_local i64 @__ksize(i8*) #1

declare dso_local i32 @kasan_unpoison_shadow(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
