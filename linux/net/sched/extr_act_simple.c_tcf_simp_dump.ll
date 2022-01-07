; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_simple.c_tcf_simp_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_simple.c_tcf_simp_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_defact = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.tc_defact = type { i32, i32, i32, i32 }
%struct.tcf_t = type { i32 }

@TCA_DEF_PARMS = common dso_local global i32 0, align 4
@TCA_DEF_DATA = common dso_local global i32 0, align 4
@TCA_DEF_TM = common dso_local global i32 0, align 4
@TCA_DEF_PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, i32, i32)* @tcf_simp_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_simp_dump(%struct.sk_buff* %0, %struct.tc_action* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tc_action*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tcf_defact*, align 8
  %12 = alloca %struct.tc_defact, align 4
  %13 = alloca %struct.tcf_t, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.tc_action* %1, %struct.tc_action** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call i8* @skb_tail_pointer(%struct.sk_buff* %14)
  store i8* %15, i8** %10, align 8
  %16 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %17 = call %struct.tcf_defact* @to_defact(%struct.tc_action* %16)
  store %struct.tcf_defact* %17, %struct.tcf_defact** %11, align 8
  %18 = getelementptr inbounds %struct.tc_defact, %struct.tc_defact* %12, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.tc_defact, %struct.tc_defact* %12, i32 0, i32 1
  %20 = load %struct.tcf_defact*, %struct.tcf_defact** %11, align 8
  %21 = getelementptr inbounds %struct.tcf_defact, %struct.tcf_defact* %20, i32 0, i32 4
  %22 = call i32 @atomic_read(i32* %21)
  %23 = load i32, i32* %8, align 4
  %24 = sub nsw i32 %22, %23
  store i32 %24, i32* %19, align 4
  %25 = getelementptr inbounds %struct.tc_defact, %struct.tc_defact* %12, i32 0, i32 2
  %26 = load %struct.tcf_defact*, %struct.tcf_defact** %11, align 8
  %27 = getelementptr inbounds %struct.tcf_defact, %struct.tcf_defact* %26, i32 0, i32 5
  %28 = call i32 @refcount_read(i32* %27)
  %29 = load i32, i32* %9, align 4
  %30 = sub nsw i32 %28, %29
  store i32 %30, i32* %25, align 4
  %31 = getelementptr inbounds %struct.tc_defact, %struct.tc_defact* %12, i32 0, i32 3
  %32 = load %struct.tcf_defact*, %struct.tcf_defact** %11, align 8
  %33 = getelementptr inbounds %struct.tcf_defact, %struct.tcf_defact* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %31, align 4
  %35 = load %struct.tcf_defact*, %struct.tcf_defact** %11, align 8
  %36 = getelementptr inbounds %struct.tcf_defact, %struct.tcf_defact* %35, i32 0, i32 0
  %37 = call i32 @spin_lock_bh(i32* %36)
  %38 = load %struct.tcf_defact*, %struct.tcf_defact** %11, align 8
  %39 = getelementptr inbounds %struct.tcf_defact, %struct.tcf_defact* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.tc_defact, %struct.tc_defact* %12, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = load i32, i32* @TCA_DEF_PARMS, align 4
  %44 = call i64 @nla_put(%struct.sk_buff* %42, i32 %43, i32 16, %struct.tc_defact* %12)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = load i32, i32* @TCA_DEF_DATA, align 4
  %49 = load %struct.tcf_defact*, %struct.tcf_defact** %11, align 8
  %50 = getelementptr inbounds %struct.tcf_defact, %struct.tcf_defact* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @nla_put_string(%struct.sk_buff* %47, i32 %48, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46, %4
  br label %72

55:                                               ; preds = %46
  %56 = load %struct.tcf_defact*, %struct.tcf_defact** %11, align 8
  %57 = getelementptr inbounds %struct.tcf_defact, %struct.tcf_defact* %56, i32 0, i32 1
  %58 = call i32 @tcf_tm_dump(%struct.tcf_t* %13, i32* %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = load i32, i32* @TCA_DEF_TM, align 4
  %61 = load i32, i32* @TCA_DEF_PAD, align 4
  %62 = call i64 @nla_put_64bit(%struct.sk_buff* %59, i32 %60, i32 4, %struct.tcf_t* %13, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %72

65:                                               ; preds = %55
  %66 = load %struct.tcf_defact*, %struct.tcf_defact** %11, align 8
  %67 = getelementptr inbounds %struct.tcf_defact, %struct.tcf_defact* %66, i32 0, i32 0
  %68 = call i32 @spin_unlock_bh(i32* %67)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %5, align 4
  br label %79

72:                                               ; preds = %64, %54
  %73 = load %struct.tcf_defact*, %struct.tcf_defact** %11, align 8
  %74 = getelementptr inbounds %struct.tcf_defact, %struct.tcf_defact* %73, i32 0, i32 0
  %75 = call i32 @spin_unlock_bh(i32* %74)
  %76 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = call i32 @nlmsg_trim(%struct.sk_buff* %76, i8* %77)
  store i32 -1, i32* %5, align 4
  br label %79

79:                                               ; preds = %72, %65
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local %struct.tcf_defact* @to_defact(%struct.tc_action*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.tc_defact*) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

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
