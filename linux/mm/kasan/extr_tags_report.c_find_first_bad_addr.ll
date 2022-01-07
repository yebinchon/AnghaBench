; ModuleID = '/home/carl/AnghaBench/linux/mm/kasan/extr_tags_report.c_find_first_bad_addr.c'
source_filename = "/home/carl/AnghaBench/linux/mm/kasan/extr_tags_report.c_find_first_bad_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KASAN_SHADOW_SCALE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @find_first_bad_addr(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @get_tag(i8* %8)
  store i64 %9, i64* %5, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i8* @reset_tag(i8* %10)
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i64, i64* %4, align 8
  %14 = getelementptr i8, i8* %12, i64 %13
  store i8* %14, i8** %7, align 8
  br label %15

15:                                               ; preds = %28, %2
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ult i8* %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i64, i64* %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @kasan_mem_to_shadow(i8* %21)
  %23 = inttoptr i64 %22 to i64*
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %20, %24
  br label %26

26:                                               ; preds = %19, %15
  %27 = phi i1 [ false, %15 ], [ %25, %19 ]
  br i1 %27, label %28, label %33

28:                                               ; preds = %26
  %29 = load i32, i32* @KASAN_SHADOW_SCALE_SIZE, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = sext i32 %29 to i64
  %32 = getelementptr i8, i8* %30, i64 %31
  store i8* %32, i8** %6, align 8
  br label %15

33:                                               ; preds = %26
  %34 = load i8*, i8** %6, align 8
  ret i8* %34
}

declare dso_local i64 @get_tag(i8*) #1

declare dso_local i8* @reset_tag(i8*) #1

declare dso_local i64 @kasan_mem_to_shadow(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
