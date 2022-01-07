; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_connmark.c_tcf_connmark_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_connmark.c_tcf_connmark_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_connmark_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.tc_connmark = type { i32, i32, i32, i32, i32 }
%struct.tcf_t = type { i32 }

@TCA_CONNMARK_PARMS = common dso_local global i32 0, align 4
@TCA_CONNMARK_TM = common dso_local global i32 0, align 4
@TCA_CONNMARK_PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, i32, i32)* @tcf_connmark_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_connmark_dump(%struct.sk_buff* %0, %struct.tc_action* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tc_action*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tcf_connmark_info*, align 8
  %12 = alloca %struct.tc_connmark, align 4
  %13 = alloca %struct.tcf_t, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.tc_action* %1, %struct.tc_action** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call i8* @skb_tail_pointer(%struct.sk_buff* %14)
  store i8* %15, i8** %10, align 8
  %16 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %17 = call %struct.tcf_connmark_info* @to_connmark(%struct.tc_action* %16)
  store %struct.tcf_connmark_info* %17, %struct.tcf_connmark_info** %11, align 8
  %18 = getelementptr inbounds %struct.tc_connmark, %struct.tc_connmark* %12, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.tc_connmark, %struct.tc_connmark* %12, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.tc_connmark, %struct.tc_connmark* %12, i32 0, i32 2
  %21 = load %struct.tcf_connmark_info*, %struct.tcf_connmark_info** %11, align 8
  %22 = getelementptr inbounds %struct.tcf_connmark_info, %struct.tcf_connmark_info* %21, i32 0, i32 4
  %23 = call i32 @atomic_read(i32* %22)
  %24 = load i32, i32* %8, align 4
  %25 = sub nsw i32 %23, %24
  store i32 %25, i32* %20, align 4
  %26 = getelementptr inbounds %struct.tc_connmark, %struct.tc_connmark* %12, i32 0, i32 3
  %27 = load %struct.tcf_connmark_info*, %struct.tcf_connmark_info** %11, align 8
  %28 = getelementptr inbounds %struct.tcf_connmark_info, %struct.tcf_connmark_info* %27, i32 0, i32 5
  %29 = call i32 @refcount_read(i32* %28)
  %30 = load i32, i32* %9, align 4
  %31 = sub nsw i32 %29, %30
  store i32 %31, i32* %26, align 4
  %32 = getelementptr inbounds %struct.tc_connmark, %struct.tc_connmark* %12, i32 0, i32 4
  %33 = load %struct.tcf_connmark_info*, %struct.tcf_connmark_info** %11, align 8
  %34 = getelementptr inbounds %struct.tcf_connmark_info, %struct.tcf_connmark_info* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %32, align 4
  %36 = load %struct.tcf_connmark_info*, %struct.tcf_connmark_info** %11, align 8
  %37 = getelementptr inbounds %struct.tcf_connmark_info, %struct.tcf_connmark_info* %36, i32 0, i32 0
  %38 = call i32 @spin_lock_bh(i32* %37)
  %39 = load %struct.tcf_connmark_info*, %struct.tcf_connmark_info** %11, align 8
  %40 = getelementptr inbounds %struct.tcf_connmark_info, %struct.tcf_connmark_info* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.tc_connmark, %struct.tc_connmark* %12, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = load %struct.tcf_connmark_info*, %struct.tcf_connmark_info** %11, align 8
  %44 = getelementptr inbounds %struct.tcf_connmark_info, %struct.tcf_connmark_info* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.tc_connmark, %struct.tc_connmark* %12, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = load i32, i32* @TCA_CONNMARK_PARMS, align 4
  %49 = call i64 @nla_put(%struct.sk_buff* %47, i32 %48, i32 20, %struct.tc_connmark* %12)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %4
  br label %69

52:                                               ; preds = %4
  %53 = load %struct.tcf_connmark_info*, %struct.tcf_connmark_info** %11, align 8
  %54 = getelementptr inbounds %struct.tcf_connmark_info, %struct.tcf_connmark_info* %53, i32 0, i32 1
  %55 = call i32 @tcf_tm_dump(%struct.tcf_t* %13, i32* %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = load i32, i32* @TCA_CONNMARK_TM, align 4
  %58 = load i32, i32* @TCA_CONNMARK_PAD, align 4
  %59 = call i64 @nla_put_64bit(%struct.sk_buff* %56, i32 %57, i32 4, %struct.tcf_t* %13, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %69

62:                                               ; preds = %52
  %63 = load %struct.tcf_connmark_info*, %struct.tcf_connmark_info** %11, align 8
  %64 = getelementptr inbounds %struct.tcf_connmark_info, %struct.tcf_connmark_info* %63, i32 0, i32 0
  %65 = call i32 @spin_unlock_bh(i32* %64)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %5, align 4
  br label %76

69:                                               ; preds = %61, %51
  %70 = load %struct.tcf_connmark_info*, %struct.tcf_connmark_info** %11, align 8
  %71 = getelementptr inbounds %struct.tcf_connmark_info, %struct.tcf_connmark_info* %70, i32 0, i32 0
  %72 = call i32 @spin_unlock_bh(i32* %71)
  %73 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = call i32 @nlmsg_trim(%struct.sk_buff* %73, i8* %74)
  store i32 -1, i32* %5, align 4
  br label %76

76:                                               ; preds = %69, %62
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local %struct.tcf_connmark_info* @to_connmark(%struct.tc_action*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.tc_connmark*) #1

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
