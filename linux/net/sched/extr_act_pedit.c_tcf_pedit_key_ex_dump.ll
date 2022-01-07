; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_pedit.c_tcf_pedit_key_ex_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_pedit.c_tcf_pedit_key_ex_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tcf_pedit_key_ex = type { i32, i32 }
%struct.nlattr = type { i32 }

@TCA_PEDIT_KEYS_EX = common dso_local global i32 0, align 4
@TCA_PEDIT_KEY_EX = common dso_local global i32 0, align 4
@TCA_PEDIT_KEY_EX_HTYPE = common dso_local global i32 0, align 4
@TCA_PEDIT_KEY_EX_CMD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tcf_pedit_key_ex*, i32)* @tcf_pedit_key_ex_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_pedit_key_ex_dump(%struct.sk_buff* %0, %struct.tcf_pedit_key_ex* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tcf_pedit_key_ex*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tcf_pedit_key_ex* %1, %struct.tcf_pedit_key_ex** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = load i32, i32* @TCA_PEDIT_KEYS_EX, align 4
  %12 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %10, i32 %11)
  store %struct.nlattr* %12, %struct.nlattr** %8, align 8
  %13 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %14 = icmp ne %struct.nlattr* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %57

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %50, %16
  %18 = load i32, i32* %7, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %53

20:                                               ; preds = %17
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = load i32, i32* @TCA_PEDIT_KEY_EX, align 4
  %23 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %21, i32 %22)
  store %struct.nlattr* %23, %struct.nlattr** %9, align 8
  %24 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %25 = icmp ne %struct.nlattr* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %57

27:                                               ; preds = %20
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = load i32, i32* @TCA_PEDIT_KEY_EX_HTYPE, align 4
  %30 = load %struct.tcf_pedit_key_ex*, %struct.tcf_pedit_key_ex** %6, align 8
  %31 = getelementptr inbounds %struct.tcf_pedit_key_ex, %struct.tcf_pedit_key_ex* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @nla_put_u16(%struct.sk_buff* %28, i32 %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %27
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = load i32, i32* @TCA_PEDIT_KEY_EX_CMD, align 4
  %38 = load %struct.tcf_pedit_key_ex*, %struct.tcf_pedit_key_ex** %6, align 8
  %39 = getelementptr inbounds %struct.tcf_pedit_key_ex, %struct.tcf_pedit_key_ex* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @nla_put_u16(%struct.sk_buff* %36, i32 %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35, %27
  br label %57

44:                                               ; preds = %35
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %47 = call i32 @nla_nest_end(%struct.sk_buff* %45, %struct.nlattr* %46)
  %48 = load %struct.tcf_pedit_key_ex*, %struct.tcf_pedit_key_ex** %6, align 8
  %49 = getelementptr inbounds %struct.tcf_pedit_key_ex, %struct.tcf_pedit_key_ex* %48, i32 1
  store %struct.tcf_pedit_key_ex* %49, %struct.tcf_pedit_key_ex** %6, align 8
  br label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %7, align 4
  br label %17

53:                                               ; preds = %17
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %56 = call i32 @nla_nest_end(%struct.sk_buff* %54, %struct.nlattr* %55)
  store i32 0, i32* %4, align 4
  br label %63

57:                                               ; preds = %43, %26, %15
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %60 = call i32 @nla_nest_cancel(%struct.sk_buff* %58, %struct.nlattr* %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %57, %53
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
