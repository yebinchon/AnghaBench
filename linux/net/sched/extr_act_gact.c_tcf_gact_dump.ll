; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_gact.c_tcf_gact_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_gact.c_tcf_gact_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_gact = type { i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.tc_gact = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.tcf_t = type { i32 }
%struct.tc_gact_p = type { i64, i32, i32, i32, i32, i32, i32 }

@TCA_GACT_PARMS = common dso_local global i32 0, align 4
@TCA_GACT_TM = common dso_local global i32 0, align 4
@TCA_GACT_PAD = common dso_local global i32 0, align 4
@TCA_GACT_PROB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, i32, i32)* @tcf_gact_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_gact_dump(%struct.sk_buff* %0, %struct.tc_action* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tc_action*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tcf_gact*, align 8
  %12 = alloca %struct.tc_gact, align 8
  %13 = alloca %struct.tcf_t, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.tc_action* %1, %struct.tc_action** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call i8* @skb_tail_pointer(%struct.sk_buff* %14)
  store i8* %15, i8** %10, align 8
  %16 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %17 = call %struct.tcf_gact* @to_gact(%struct.tc_action* %16)
  store %struct.tcf_gact* %17, %struct.tcf_gact** %11, align 8
  %18 = getelementptr inbounds %struct.tc_gact, %struct.tc_gact* %12, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.tc_gact, %struct.tc_gact* %12, i32 0, i32 1
  store i32 0, i32* %19, align 8
  %20 = getelementptr inbounds %struct.tc_gact, %struct.tc_gact* %12, i32 0, i32 2
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.tc_gact, %struct.tc_gact* %12, i32 0, i32 3
  store i32 0, i32* %21, align 8
  %22 = getelementptr inbounds %struct.tc_gact, %struct.tc_gact* %12, i32 0, i32 4
  %23 = load %struct.tcf_gact*, %struct.tcf_gact** %11, align 8
  %24 = getelementptr inbounds %struct.tcf_gact, %struct.tcf_gact* %23, i32 0, i32 6
  %25 = call i32 @atomic_read(i32* %24)
  %26 = load i32, i32* %8, align 4
  %27 = sub nsw i32 %25, %26
  store i32 %27, i32* %22, align 4
  %28 = getelementptr inbounds %struct.tc_gact, %struct.tc_gact* %12, i32 0, i32 5
  %29 = load %struct.tcf_gact*, %struct.tcf_gact** %11, align 8
  %30 = getelementptr inbounds %struct.tcf_gact, %struct.tcf_gact* %29, i32 0, i32 7
  %31 = call i32 @refcount_read(i32* %30)
  %32 = load i32, i32* %9, align 4
  %33 = sub nsw i32 %31, %32
  store i32 %33, i32* %28, align 8
  %34 = getelementptr inbounds %struct.tc_gact, %struct.tc_gact* %12, i32 0, i32 6
  %35 = load %struct.tcf_gact*, %struct.tcf_gact** %11, align 8
  %36 = getelementptr inbounds %struct.tcf_gact, %struct.tcf_gact* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %34, align 4
  %38 = load %struct.tcf_gact*, %struct.tcf_gact** %11, align 8
  %39 = getelementptr inbounds %struct.tcf_gact, %struct.tcf_gact* %38, i32 0, i32 0
  %40 = call i32 @spin_lock_bh(i32* %39)
  %41 = load %struct.tcf_gact*, %struct.tcf_gact** %11, align 8
  %42 = getelementptr inbounds %struct.tcf_gact, %struct.tcf_gact* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.tc_gact, %struct.tc_gact* %12, i32 0, i32 3
  store i32 %43, i32* %44, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = load i32, i32* @TCA_GACT_PARMS, align 4
  %47 = bitcast %struct.tc_gact* %12 to %struct.tc_gact_p*
  %48 = call i64 @nla_put(%struct.sk_buff* %45, i32 %46, i32 32, %struct.tc_gact_p* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %4
  br label %68

51:                                               ; preds = %4
  %52 = load %struct.tcf_gact*, %struct.tcf_gact** %11, align 8
  %53 = getelementptr inbounds %struct.tcf_gact, %struct.tcf_gact* %52, i32 0, i32 1
  %54 = call i32 @tcf_tm_dump(%struct.tcf_t* %13, i32* %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = load i32, i32* @TCA_GACT_TM, align 4
  %57 = load i32, i32* @TCA_GACT_PAD, align 4
  %58 = call i64 @nla_put_64bit(%struct.sk_buff* %55, i32 %56, i32 4, %struct.tcf_t* %13, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %68

61:                                               ; preds = %51
  %62 = load %struct.tcf_gact*, %struct.tcf_gact** %11, align 8
  %63 = getelementptr inbounds %struct.tcf_gact, %struct.tcf_gact* %62, i32 0, i32 0
  %64 = call i32 @spin_unlock_bh(i32* %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %5, align 4
  br label %75

68:                                               ; preds = %60, %50
  %69 = load %struct.tcf_gact*, %struct.tcf_gact** %11, align 8
  %70 = getelementptr inbounds %struct.tcf_gact, %struct.tcf_gact* %69, i32 0, i32 0
  %71 = call i32 @spin_unlock_bh(i32* %70)
  %72 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = call i32 @nlmsg_trim(%struct.sk_buff* %72, i8* %73)
  store i32 -1, i32* %5, align 4
  br label %75

75:                                               ; preds = %68, %61
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local %struct.tcf_gact* @to_gact(%struct.tc_action*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.tc_gact_p*) #1

declare dso_local i32 @tcf_tm_dump(%struct.tcf_t*, i32*) #1

declare dso_local i64 @nla_put_64bit(%struct.sk_buff*, i32, i32, %struct.tcf_t*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
