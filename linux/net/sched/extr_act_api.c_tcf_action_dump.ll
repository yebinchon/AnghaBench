; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tcf_action_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tcf_action_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { i32 }
%struct.nlattr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TCA_ACT_MAX_PRIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcf_action_dump(%struct.sk_buff* %0, %struct.tc_action** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tc_action**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tc_action*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.tc_action** %1, %struct.tc_action*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %55, %4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* @TCA_ACT_MAX_PRIO, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load %struct.tc_action**, %struct.tc_action*** %7, align 8
  %22 = load i32, i32* %12, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.tc_action*, %struct.tc_action** %21, i64 %23
  %25 = load %struct.tc_action*, %struct.tc_action** %24, align 8
  %26 = icmp ne %struct.tc_action* %25, null
  br label %27

27:                                               ; preds = %20, %16
  %28 = phi i1 [ false, %16 ], [ %26, %20 ]
  br i1 %28, label %29, label %58

29:                                               ; preds = %27
  %30 = load %struct.tc_action**, %struct.tc_action*** %7, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.tc_action*, %struct.tc_action** %30, i64 %32
  %34 = load %struct.tc_action*, %struct.tc_action** %33, align 8
  store %struct.tc_action* %34, %struct.tc_action** %10, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %36, 1
  %38 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %35, i32 %37)
  store %struct.nlattr* %38, %struct.nlattr** %13, align 8
  %39 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %40 = icmp eq %struct.nlattr* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  br label %59

42:                                               ; preds = %29
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = load %struct.tc_action*, %struct.tc_action** %10, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @tcf_action_dump_1(%struct.sk_buff* %43, %struct.tc_action* %44, i32 %45, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %62

51:                                               ; preds = %42
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %54 = call i32 @nla_nest_end(%struct.sk_buff* %52, %struct.nlattr* %53)
  br label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  br label %16

58:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %67

59:                                               ; preds = %41
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %59, %50
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %65 = call i32 @nla_nest_cancel(%struct.sk_buff* %63, %struct.nlattr* %64)
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %62, %58
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i32 @tcf_action_dump_1(%struct.sk_buff*, %struct.tc_action*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
