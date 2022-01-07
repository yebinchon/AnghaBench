; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_poison.c_page_poisoning_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_poison.c_page_poisoning_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@want_page_poisoning = common dso_local global i64 0, align 8
@CONFIG_ARCH_SUPPORTS_DEBUG_PAGEALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @page_poisoning_enabled() #0 {
  %1 = load i64, i64* @want_page_poisoning, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %12, label %3

3:                                                ; preds = %0
  %4 = load i32, i32* @CONFIG_ARCH_SUPPORTS_DEBUG_PAGEALLOC, align 4
  %5 = call i32 @IS_ENABLED(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = call i64 (...) @debug_pagealloc_enabled()
  %9 = icmp ne i64 %8, 0
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i1 [ false, %3 ], [ %9, %7 ]
  br label %12

12:                                               ; preds = %10, %0
  %13 = phi i1 [ true, %0 ], [ %11, %10 ]
  %14 = zext i1 %13 to i32
  ret i32 %14
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i64 @debug_pagealloc_enabled(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
