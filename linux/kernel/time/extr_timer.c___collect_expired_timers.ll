; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timer.c___collect_expired_timers.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timer.c___collect_expired_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_base = type { i64, %struct.hlist_head*, i32 }
%struct.hlist_head = type { i32 }

@LVL_DEPTH = common dso_local global i32 0, align 4
@LVL_MASK = common dso_local global i64 0, align 8
@LVL_SIZE = common dso_local global i32 0, align 4
@LVL_CLK_MASK = common dso_local global i64 0, align 8
@LVL_CLK_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timer_base*, %struct.hlist_head*)* @__collect_expired_timers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__collect_expired_timers(%struct.timer_base* %0, %struct.hlist_head* %1) #0 {
  %3 = alloca %struct.timer_base*, align 8
  %4 = alloca %struct.hlist_head*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hlist_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.timer_base* %0, %struct.timer_base** %3, align 8
  store %struct.hlist_head* %1, %struct.hlist_head** %4, align 8
  %10 = load %struct.timer_base*, %struct.timer_base** %3, align 8
  %11 = getelementptr inbounds %struct.timer_base, %struct.timer_base* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %57, %2
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @LVL_DEPTH, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %60

17:                                               ; preds = %13
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @LVL_MASK, align 8
  %20 = and i64 %18, %19
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @LVL_SIZE, align 4
  %23 = mul nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = add i64 %20, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.timer_base*, %struct.timer_base** %3, align 8
  %29 = getelementptr inbounds %struct.timer_base, %struct.timer_base* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @__test_and_clear_bit(i32 %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %17
  %34 = load %struct.timer_base*, %struct.timer_base** %3, align 8
  %35 = getelementptr inbounds %struct.timer_base, %struct.timer_base* %34, i32 0, i32 1
  %36 = load %struct.hlist_head*, %struct.hlist_head** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %36, i64 %38
  store %struct.hlist_head* %39, %struct.hlist_head** %6, align 8
  %40 = load %struct.hlist_head*, %struct.hlist_head** %6, align 8
  %41 = load %struct.hlist_head*, %struct.hlist_head** %4, align 8
  %42 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %41, i32 1
  store %struct.hlist_head* %42, %struct.hlist_head** %4, align 8
  %43 = ptrtoint %struct.hlist_head* %41 to i32
  %44 = call i32 @hlist_move_list(%struct.hlist_head* %40, i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %33, %17
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* @LVL_CLK_MASK, align 8
  %50 = and i64 %48, %49
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %60

53:                                               ; preds = %47
  %54 = load i64, i64* @LVL_CLK_SHIFT, align 8
  %55 = load i64, i64* %5, align 8
  %56 = lshr i64 %55, %54
  store i64 %56, i64* %5, align 8
  br label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %13

60:                                               ; preds = %52, %13
  %61 = load i32, i32* %8, align 4
  ret i32 %61
}

declare dso_local i64 @__test_and_clear_bit(i32, i32) #1

declare dso_local i32 @hlist_move_list(%struct.hlist_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
