; ModuleID = '/home/carl/AnghaBench/linux/mm/kasan/extr_tags.c_random_tag.c'
source_filename = "/home/carl/AnghaBench/linux/mm/kasan/extr_tags.c_random_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prng_state = common dso_local global i32 0, align 4
@KASAN_TAG_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @random_tag() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @prng_state, align 4
  %3 = call i32 @this_cpu_read(i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = mul nsw i32 1664525, %4
  %6 = add nsw i32 %5, 1013904223
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* @prng_state, align 4
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @this_cpu_write(i32 %7, i32 %8)
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @KASAN_TAG_MAX, align 4
  %12 = add nsw i32 %11, 1
  %13 = srem i32 %10, %12
  ret i32 %13
}

declare dso_local i32 @this_cpu_read(i32) #1

declare dso_local i32 @this_cpu_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
