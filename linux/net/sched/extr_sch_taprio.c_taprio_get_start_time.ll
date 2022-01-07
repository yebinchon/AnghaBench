; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_taprio_get_start_time.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_taprio_get_start_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.sched_gate_list = type { i32 }
%struct.taprio_sched = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.sched_gate_list*, i32*)* @taprio_get_start_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @taprio_get_start_time(%struct.Qdisc* %0, %struct.sched_gate_list* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.sched_gate_list*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.taprio_sched*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store %struct.sched_gate_list* %1, %struct.sched_gate_list** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %14 = call %struct.taprio_sched* @qdisc_priv(%struct.Qdisc* %13)
  store %struct.taprio_sched* %14, %struct.taprio_sched** %8, align 8
  %15 = load %struct.sched_gate_list*, %struct.sched_gate_list** %6, align 8
  %16 = call i32 @sched_base_time(%struct.sched_gate_list* %15)
  store i32 %16, i32* %10, align 4
  %17 = load %struct.taprio_sched*, %struct.taprio_sched** %8, align 8
  %18 = call i32 @taprio_get_time(%struct.taprio_sched* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i64 @ktime_after(i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* %10, align 4
  %25 = load i32*, i32** %7, align 8
  store i32 %24, i32* %25, align 4
  store i32 0, i32* %4, align 4
  br label %52

26:                                               ; preds = %3
  %27 = load %struct.sched_gate_list*, %struct.sched_gate_list** %6, align 8
  %28 = getelementptr inbounds %struct.sched_gate_list, %struct.sched_gate_list* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @WARN_ON(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load i32, i32* @EFAULT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %52

39:                                               ; preds = %26
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @ktime_sub_ns(i32 %40, i32 %41)
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @div64_s64(i32 %42, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %12, align 4
  %47 = add nsw i32 %46, 1
  %48 = load i32, i32* %11, align 4
  %49 = mul nsw i32 %47, %48
  %50 = call i32 @ktime_add_ns(i32 %45, i32 %49)
  %51 = load i32*, i32** %7, align 8
  store i32 %50, i32* %51, align 4
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %39, %36, %23
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.taprio_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @sched_base_time(%struct.sched_gate_list*) #1

declare dso_local i32 @taprio_get_time(%struct.taprio_sched*) #1

declare dso_local i64 @ktime_after(i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @div64_s64(i32, i32) #1

declare dso_local i32 @ktime_sub_ns(i32, i32) #1

declare dso_local i32 @ktime_add_ns(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
