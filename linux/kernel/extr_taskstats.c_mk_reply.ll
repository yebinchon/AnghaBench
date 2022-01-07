; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_taskstats.c_mk_reply.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_taskstats.c_mk_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.taskstats = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }

@TASKSTATS_TYPE_PID = common dso_local global i32 0, align 4
@TASKSTATS_TYPE_AGGR_PID = common dso_local global i32 0, align 4
@TASKSTATS_TYPE_AGGR_TGID = common dso_local global i32 0, align 4
@TASKSTATS_TYPE_STATS = common dso_local global i32 0, align 4
@TASKSTATS_TYPE_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.taskstats* (%struct.sk_buff*, i32, i32)* @mk_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.taskstats* @mk_reply(%struct.sk_buff* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.taskstats*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @TASKSTATS_TYPE_PID, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @TASKSTATS_TYPE_AGGR_PID, align 4
  br label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @TASKSTATS_TYPE_AGGR_TGID, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %10, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %20, i32 %21)
  store %struct.nlattr* %22, %struct.nlattr** %8, align 8
  %23 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %24 = icmp ne %struct.nlattr* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  br label %52

26:                                               ; preds = %18
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @nla_put(%struct.sk_buff* %27, i32 %28, i32 4, i32* %7)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %34 = call i32 @nla_nest_cancel(%struct.sk_buff* %32, %struct.nlattr* %33)
  br label %52

35:                                               ; preds = %26
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = load i32, i32* @TASKSTATS_TYPE_STATS, align 4
  %38 = load i32, i32* @TASKSTATS_TYPE_NULL, align 4
  %39 = call %struct.nlattr* @nla_reserve_64bit(%struct.sk_buff* %36, i32 %37, i32 4, i32 %38)
  store %struct.nlattr* %39, %struct.nlattr** %9, align 8
  %40 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %41 = icmp ne %struct.nlattr* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %35
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %45 = call i32 @nla_nest_cancel(%struct.sk_buff* %43, %struct.nlattr* %44)
  br label %52

46:                                               ; preds = %35
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %49 = call i32 @nla_nest_end(%struct.sk_buff* %47, %struct.nlattr* %48)
  %50 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %51 = call %struct.taskstats* @nla_data(%struct.nlattr* %50)
  store %struct.taskstats* %51, %struct.taskstats** %4, align 8
  br label %53

52:                                               ; preds = %42, %31, %25
  store %struct.taskstats* null, %struct.taskstats** %4, align 8
  br label %53

53:                                               ; preds = %52, %46
  %54 = load %struct.taskstats*, %struct.taskstats** %4, align 8
  ret %struct.taskstats* %54
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local %struct.nlattr* @nla_reserve_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local %struct.taskstats* @nla_data(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
