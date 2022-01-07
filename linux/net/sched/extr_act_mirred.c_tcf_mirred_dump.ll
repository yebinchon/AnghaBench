; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_mirred.c_tcf_mirred_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_mirred.c_tcf_mirred_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_mirred = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.tc_mirred = type { i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.tcf_t = type { i32 }

@TCA_MIRRED_PARMS = common dso_local global i32 0, align 4
@TCA_MIRRED_TM = common dso_local global i32 0, align 4
@TCA_MIRRED_PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, i32, i32)* @tcf_mirred_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_mirred_dump(%struct.sk_buff* %0, %struct.tc_action* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tc_action*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tcf_mirred*, align 8
  %12 = alloca %struct.tc_mirred, align 4
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca %struct.tcf_t, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.tc_action* %1, %struct.tc_action** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call i8* @skb_tail_pointer(%struct.sk_buff* %15)
  store i8* %16, i8** %10, align 8
  %17 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %18 = call %struct.tcf_mirred* @to_mirred(%struct.tc_action* %17)
  store %struct.tcf_mirred* %18, %struct.tcf_mirred** %11, align 8
  %19 = getelementptr inbounds %struct.tc_mirred, %struct.tc_mirred* %12, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.tc_mirred, %struct.tc_mirred* %12, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.tc_mirred, %struct.tc_mirred* %12, i32 0, i32 2
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.tc_mirred, %struct.tc_mirred* %12, i32 0, i32 3
  %23 = load %struct.tcf_mirred*, %struct.tcf_mirred** %11, align 8
  %24 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %23, i32 0, i32 4
  %25 = call i32 @atomic_read(i32* %24)
  %26 = load i32, i32* %8, align 4
  %27 = sub nsw i32 %25, %26
  store i32 %27, i32* %22, align 4
  %28 = getelementptr inbounds %struct.tc_mirred, %struct.tc_mirred* %12, i32 0, i32 4
  %29 = load %struct.tcf_mirred*, %struct.tcf_mirred** %11, align 8
  %30 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %29, i32 0, i32 5
  %31 = call i32 @refcount_read(i32* %30)
  %32 = load i32, i32* %9, align 4
  %33 = sub nsw i32 %31, %32
  store i32 %33, i32* %28, align 4
  %34 = getelementptr inbounds %struct.tc_mirred, %struct.tc_mirred* %12, i32 0, i32 5
  %35 = load %struct.tcf_mirred*, %struct.tcf_mirred** %11, align 8
  %36 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %34, align 4
  %38 = load %struct.tcf_mirred*, %struct.tcf_mirred** %11, align 8
  %39 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %38, i32 0, i32 0
  %40 = call i32 @spin_lock_bh(i32* %39)
  %41 = load %struct.tcf_mirred*, %struct.tcf_mirred** %11, align 8
  %42 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.tc_mirred, %struct.tc_mirred* %12, i32 0, i32 2
  store i32 %43, i32* %44, align 4
  %45 = load %struct.tcf_mirred*, %struct.tcf_mirred** %11, align 8
  %46 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.tc_mirred, %struct.tc_mirred* %12, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = load %struct.tcf_mirred*, %struct.tcf_mirred** %11, align 8
  %50 = call %struct.net_device* @tcf_mirred_dev_dereference(%struct.tcf_mirred* %49)
  store %struct.net_device* %50, %struct.net_device** %13, align 8
  %51 = load %struct.net_device*, %struct.net_device** %13, align 8
  %52 = icmp ne %struct.net_device* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %4
  %54 = load %struct.net_device*, %struct.net_device** %13, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.tc_mirred, %struct.tc_mirred* %12, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %53, %4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = load i32, i32* @TCA_MIRRED_PARMS, align 4
  %61 = call i64 @nla_put(%struct.sk_buff* %59, i32 %60, i32 24, %struct.tc_mirred* %12)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %81

64:                                               ; preds = %58
  %65 = load %struct.tcf_mirred*, %struct.tcf_mirred** %11, align 8
  %66 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %65, i32 0, i32 1
  %67 = call i32 @tcf_tm_dump(%struct.tcf_t* %14, i32* %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %69 = load i32, i32* @TCA_MIRRED_TM, align 4
  %70 = load i32, i32* @TCA_MIRRED_PAD, align 4
  %71 = call i64 @nla_put_64bit(%struct.sk_buff* %68, i32 %69, i32 4, %struct.tcf_t* %14, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %81

74:                                               ; preds = %64
  %75 = load %struct.tcf_mirred*, %struct.tcf_mirred** %11, align 8
  %76 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %75, i32 0, i32 0
  %77 = call i32 @spin_unlock_bh(i32* %76)
  %78 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %5, align 4
  br label %88

81:                                               ; preds = %73, %63
  %82 = load %struct.tcf_mirred*, %struct.tcf_mirred** %11, align 8
  %83 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %82, i32 0, i32 0
  %84 = call i32 @spin_unlock_bh(i32* %83)
  %85 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = call i32 @nlmsg_trim(%struct.sk_buff* %85, i8* %86)
  store i32 -1, i32* %5, align 4
  br label %88

88:                                               ; preds = %81, %74
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local %struct.tcf_mirred* @to_mirred(%struct.tc_action*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.net_device* @tcf_mirred_dev_dereference(%struct.tcf_mirred*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.tc_mirred*) #1

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
