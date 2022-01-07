; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_dump_entry.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_dump_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sched_entry = type { i32, i32, i32, i32 }
%struct.nlattr = type { i32 }

@TCA_TAPRIO_SCHED_ENTRY = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@TCA_TAPRIO_SCHED_ENTRY_INDEX = common dso_local global i32 0, align 4
@TCA_TAPRIO_SCHED_ENTRY_CMD = common dso_local global i32 0, align 4
@TCA_TAPRIO_SCHED_ENTRY_GATE_MASK = common dso_local global i32 0, align 4
@TCA_TAPRIO_SCHED_ENTRY_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.sched_entry*)* @dump_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_entry(%struct.sk_buff* %0, %struct.sched_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sched_entry*, align 8
  %6 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.sched_entry* %1, %struct.sched_entry** %5, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = load i32, i32* @TCA_TAPRIO_SCHED_ENTRY, align 4
  %9 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %7, i32 %8)
  store %struct.nlattr* %9, %struct.nlattr** %6, align 8
  %10 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %11 = icmp ne %struct.nlattr* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOSPC, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %59

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = load i32, i32* @TCA_TAPRIO_SCHED_ENTRY_INDEX, align 4
  %18 = load %struct.sched_entry*, %struct.sched_entry** %5, align 8
  %19 = getelementptr inbounds %struct.sched_entry, %struct.sched_entry* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @nla_put_u32(%struct.sk_buff* %16, i32 %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %55

24:                                               ; preds = %15
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = load i32, i32* @TCA_TAPRIO_SCHED_ENTRY_CMD, align 4
  %27 = load %struct.sched_entry*, %struct.sched_entry** %5, align 8
  %28 = getelementptr inbounds %struct.sched_entry, %struct.sched_entry* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @nla_put_u8(%struct.sk_buff* %25, i32 %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %55

33:                                               ; preds = %24
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = load i32, i32* @TCA_TAPRIO_SCHED_ENTRY_GATE_MASK, align 4
  %36 = load %struct.sched_entry*, %struct.sched_entry** %5, align 8
  %37 = getelementptr inbounds %struct.sched_entry, %struct.sched_entry* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @nla_put_u32(%struct.sk_buff* %34, i32 %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %55

42:                                               ; preds = %33
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = load i32, i32* @TCA_TAPRIO_SCHED_ENTRY_INTERVAL, align 4
  %45 = load %struct.sched_entry*, %struct.sched_entry** %5, align 8
  %46 = getelementptr inbounds %struct.sched_entry, %struct.sched_entry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @nla_put_u32(%struct.sk_buff* %43, i32 %44, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %55

51:                                               ; preds = %42
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %54 = call i32 @nla_nest_end(%struct.sk_buff* %52, %struct.nlattr* %53)
  store i32 %54, i32* %3, align 4
  br label %59

55:                                               ; preds = %50, %41, %32, %23
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %58 = call i32 @nla_nest_cancel(%struct.sk_buff* %56, %struct.nlattr* %57)
  store i32 -1, i32* %3, align 4
  br label %59

59:                                               ; preds = %55, %51, %12
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
