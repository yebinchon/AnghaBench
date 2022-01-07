; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timer.c_add_timer_on.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timer.c_add_timer_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_list = type { i32, i32 }
%struct.timer_base = type { i32 }

@TIMER_MIGRATING = common dso_local global i32 0, align 4
@TIMER_BASEMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_timer_on(%struct.timer_list* %0, i32 %1) #0 {
  %3 = alloca %struct.timer_list*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.timer_base*, align 8
  %6 = alloca %struct.timer_base*, align 8
  %7 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.timer_list*, %struct.timer_list** %3, align 8
  %9 = call i64 @timer_pending(%struct.timer_list* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.timer_list*, %struct.timer_list** %3, align 8
  %13 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %11, %2
  %18 = phi i1 [ true, %2 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.timer_list*, %struct.timer_list** %3, align 8
  %22 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call %struct.timer_base* @get_timer_cpu_base(i32 %23, i32 %24)
  store %struct.timer_base* %25, %struct.timer_base** %5, align 8
  %26 = load %struct.timer_list*, %struct.timer_list** %3, align 8
  %27 = call %struct.timer_base* @lock_timer_base(%struct.timer_list* %26, i64* %7)
  store %struct.timer_base* %27, %struct.timer_base** %6, align 8
  %28 = load %struct.timer_base*, %struct.timer_base** %6, align 8
  %29 = load %struct.timer_base*, %struct.timer_base** %5, align 8
  %30 = icmp ne %struct.timer_base* %28, %29
  br i1 %30, label %31, label %56

31:                                               ; preds = %17
  %32 = load i32, i32* @TIMER_MIGRATING, align 4
  %33 = load %struct.timer_list*, %struct.timer_list** %3, align 8
  %34 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.timer_base*, %struct.timer_base** %6, align 8
  %38 = getelementptr inbounds %struct.timer_base, %struct.timer_base* %37, i32 0, i32 0
  %39 = call i32 @raw_spin_unlock(i32* %38)
  %40 = load %struct.timer_base*, %struct.timer_base** %5, align 8
  store %struct.timer_base* %40, %struct.timer_base** %6, align 8
  %41 = load %struct.timer_base*, %struct.timer_base** %6, align 8
  %42 = getelementptr inbounds %struct.timer_base, %struct.timer_base* %41, i32 0, i32 0
  %43 = call i32 @raw_spin_lock(i32* %42)
  %44 = load %struct.timer_list*, %struct.timer_list** %3, align 8
  %45 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.timer_list*, %struct.timer_list** %3, align 8
  %48 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @TIMER_BASEMASK, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  %53 = load i32, i32* %4, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @WRITE_ONCE(i32 %46, i32 %54)
  br label %56

56:                                               ; preds = %31, %17
  %57 = load %struct.timer_base*, %struct.timer_base** %6, align 8
  %58 = call i32 @forward_timer_base(%struct.timer_base* %57)
  %59 = load %struct.timer_list*, %struct.timer_list** %3, align 8
  %60 = call i32 @debug_timer_activate(%struct.timer_list* %59)
  %61 = load %struct.timer_base*, %struct.timer_base** %6, align 8
  %62 = load %struct.timer_list*, %struct.timer_list** %3, align 8
  %63 = call i32 @internal_add_timer(%struct.timer_base* %61, %struct.timer_list* %62)
  %64 = load %struct.timer_base*, %struct.timer_base** %6, align 8
  %65 = getelementptr inbounds %struct.timer_base, %struct.timer_base* %64, i32 0, i32 0
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @raw_spin_unlock_irqrestore(i32* %65, i64 %66)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @timer_pending(%struct.timer_list*) #1

declare dso_local %struct.timer_base* @get_timer_cpu_base(i32, i32) #1

declare dso_local %struct.timer_base* @lock_timer_base(%struct.timer_list*, i64*) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @forward_timer_base(%struct.timer_base*) #1

declare dso_local i32 @debug_timer_activate(%struct.timer_list*) #1

declare dso_local i32 @internal_add_timer(%struct.timer_base*, %struct.timer_list*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
