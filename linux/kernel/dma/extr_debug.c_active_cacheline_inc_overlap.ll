; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_debug.c_active_cacheline_inc_overlap.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_debug.c_active_cacheline_inc_overlap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACTIVE_CACHELINE_MAX_OVERLAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"exceeded %d overlapping mappings of cacheline %pa\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @active_cacheline_inc_overlap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @active_cacheline_inc_overlap(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @active_cacheline_read_overlap(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* %3, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %3, align 4
  %9 = call i32 @active_cacheline_set_overlap(i32 %6, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @ACTIVE_CACHELINE_MAX_OVERLAP, align 4
  %12 = icmp sgt i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @pr_fmt(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ACTIVE_CACHELINE_MAX_OVERLAP, align 4
  %16 = call i32 @WARN_ONCE(i32 %13, i32 %14, i32 %15, i32* %2)
  ret void
}

declare dso_local i32 @active_cacheline_read_overlap(i32) #1

declare dso_local i32 @active_cacheline_set_overlap(i32, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i32, i32, i32*) #1

declare dso_local i32 @pr_fmt(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
