; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_csum.c_tcf_csum_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_csum.c_tcf_csum_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_csum = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.tcf_csum_params = type { i32 }
%struct.tc_csum = type { i32, i32, i32, i32, i32 }
%struct.tcf_t = type { i32 }

@TCA_CSUM_PARMS = common dso_local global i32 0, align 4
@TCA_CSUM_TM = common dso_local global i32 0, align 4
@TCA_CSUM_PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, i32, i32)* @tcf_csum_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_csum_dump(%struct.sk_buff* %0, %struct.tc_action* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tc_action*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tcf_csum*, align 8
  %12 = alloca %struct.tcf_csum_params*, align 8
  %13 = alloca %struct.tc_csum, align 4
  %14 = alloca %struct.tcf_t, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.tc_action* %1, %struct.tc_action** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call i8* @skb_tail_pointer(%struct.sk_buff* %15)
  store i8* %16, i8** %10, align 8
  %17 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %18 = call %struct.tcf_csum* @to_tcf_csum(%struct.tc_action* %17)
  store %struct.tcf_csum* %18, %struct.tcf_csum** %11, align 8
  %19 = getelementptr inbounds %struct.tc_csum, %struct.tc_csum* %13, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.tc_csum, %struct.tc_csum* %13, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.tc_csum, %struct.tc_csum* %13, i32 0, i32 2
  %22 = load %struct.tcf_csum*, %struct.tcf_csum** %11, align 8
  %23 = getelementptr inbounds %struct.tcf_csum, %struct.tcf_csum* %22, i32 0, i32 4
  %24 = call i32 @atomic_read(i32* %23)
  %25 = load i32, i32* %8, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* %21, align 4
  %27 = getelementptr inbounds %struct.tc_csum, %struct.tc_csum* %13, i32 0, i32 3
  %28 = load %struct.tcf_csum*, %struct.tcf_csum** %11, align 8
  %29 = getelementptr inbounds %struct.tcf_csum, %struct.tcf_csum* %28, i32 0, i32 5
  %30 = call i32 @refcount_read(i32* %29)
  %31 = load i32, i32* %9, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %27, align 4
  %33 = getelementptr inbounds %struct.tc_csum, %struct.tc_csum* %13, i32 0, i32 4
  %34 = load %struct.tcf_csum*, %struct.tcf_csum** %11, align 8
  %35 = getelementptr inbounds %struct.tcf_csum, %struct.tcf_csum* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %33, align 4
  %37 = load %struct.tcf_csum*, %struct.tcf_csum** %11, align 8
  %38 = getelementptr inbounds %struct.tcf_csum, %struct.tcf_csum* %37, i32 0, i32 0
  %39 = call i32 @spin_lock_bh(i32* %38)
  %40 = load %struct.tcf_csum*, %struct.tcf_csum** %11, align 8
  %41 = getelementptr inbounds %struct.tcf_csum, %struct.tcf_csum* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.tcf_csum*, %struct.tcf_csum** %11, align 8
  %44 = getelementptr inbounds %struct.tcf_csum, %struct.tcf_csum* %43, i32 0, i32 0
  %45 = call i32 @lockdep_is_held(i32* %44)
  %46 = call %struct.tcf_csum_params* @rcu_dereference_protected(i32 %42, i32 %45)
  store %struct.tcf_csum_params* %46, %struct.tcf_csum_params** %12, align 8
  %47 = load %struct.tcf_csum*, %struct.tcf_csum** %11, align 8
  %48 = getelementptr inbounds %struct.tcf_csum, %struct.tcf_csum* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.tc_csum, %struct.tc_csum* %13, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = load %struct.tcf_csum_params*, %struct.tcf_csum_params** %12, align 8
  %52 = getelementptr inbounds %struct.tcf_csum_params, %struct.tcf_csum_params* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.tc_csum, %struct.tc_csum* %13, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = load i32, i32* @TCA_CSUM_PARMS, align 4
  %57 = call i64 @nla_put(%struct.sk_buff* %55, i32 %56, i32 20, %struct.tc_csum* %13)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %4
  br label %77

60:                                               ; preds = %4
  %61 = load %struct.tcf_csum*, %struct.tcf_csum** %11, align 8
  %62 = getelementptr inbounds %struct.tcf_csum, %struct.tcf_csum* %61, i32 0, i32 1
  %63 = call i32 @tcf_tm_dump(%struct.tcf_t* %14, i32* %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = load i32, i32* @TCA_CSUM_TM, align 4
  %66 = load i32, i32* @TCA_CSUM_PAD, align 4
  %67 = call i64 @nla_put_64bit(%struct.sk_buff* %64, i32 %65, i32 4, %struct.tcf_t* %14, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %77

70:                                               ; preds = %60
  %71 = load %struct.tcf_csum*, %struct.tcf_csum** %11, align 8
  %72 = getelementptr inbounds %struct.tcf_csum, %struct.tcf_csum* %71, i32 0, i32 0
  %73 = call i32 @spin_unlock_bh(i32* %72)
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %5, align 4
  br label %84

77:                                               ; preds = %69, %59
  %78 = load %struct.tcf_csum*, %struct.tcf_csum** %11, align 8
  %79 = getelementptr inbounds %struct.tcf_csum, %struct.tcf_csum* %78, i32 0, i32 0
  %80 = call i32 @spin_unlock_bh(i32* %79)
  %81 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = call i32 @nlmsg_trim(%struct.sk_buff* %81, i8* %82)
  store i32 -1, i32* %5, align 4
  br label %84

84:                                               ; preds = %77, %70
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local %struct.tcf_csum* @to_tcf_csum(%struct.tc_action*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.tcf_csum_params* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.tc_csum*) #1

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
