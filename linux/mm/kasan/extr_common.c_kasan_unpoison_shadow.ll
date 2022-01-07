; ModuleID = '/home/carl/AnghaBench/linux/mm/kasan/extr_common.c_kasan_unpoison_shadow.c'
source_filename = "/home/carl/AnghaBench/linux/mm/kasan/extr_common.c_kasan_unpoison_shadow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KASAN_SHADOW_MASK = common dso_local global i64 0, align 8
@CONFIG_KASAN_SW_TAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kasan_unpoison_shadow(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @get_tag(i8* %7)
  store i64 %8, i64* %5, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i8* @reset_tag(i8* %9)
  store i8* %10, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @kasan_poison_shadow(i8* %11, i64 %12, i64 %13)
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @KASAN_SHADOW_MASK, align 8
  %17 = and i64 %15, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %2
  %20 = load i8*, i8** %3, align 8
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr i8, i8* %20, i64 %21
  %23 = call i64 @kasan_mem_to_shadow(i8* %22)
  %24 = inttoptr i64 %23 to i64*
  store i64* %24, i64** %6, align 8
  %25 = load i32, i32* @CONFIG_KASAN_SW_TAGS, align 4
  %26 = call i64 @IS_ENABLED(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i64, i64* %5, align 8
  %30 = load i64*, i64** %6, align 8
  store i64 %29, i64* %30, align 8
  br label %36

31:                                               ; preds = %19
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @KASAN_SHADOW_MASK, align 8
  %34 = and i64 %32, %33
  %35 = load i64*, i64** %6, align 8
  store i64 %34, i64* %35, align 8
  br label %36

36:                                               ; preds = %31, %28
  br label %37

37:                                               ; preds = %36, %2
  ret void
}

declare dso_local i64 @get_tag(i8*) #1

declare dso_local i8* @reset_tag(i8*) #1

declare dso_local i32 @kasan_poison_shadow(i8*, i64, i64) #1

declare dso_local i64 @kasan_mem_to_shadow(i8*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
