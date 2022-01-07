; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_bpf.c_tcf_bpf_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_bpf.c_tcf_bpf_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_bpf = type { i32, i32, i32, i32, i32, i32 }
%struct.tc_act_bpf = type { i32, i32, i32, i32 }
%struct.tcf_t = type { i32 }

@TCA_ACT_BPF_PARMS = common dso_local global i32 0, align 4
@TCA_ACT_BPF_TM = common dso_local global i32 0, align 4
@TCA_ACT_BPF_PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, i32, i32)* @tcf_bpf_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_bpf_dump(%struct.sk_buff* %0, %struct.tc_action* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tc_action*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tcf_bpf*, align 8
  %12 = alloca %struct.tc_act_bpf, align 4
  %13 = alloca %struct.tcf_t, align 4
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.tc_action* %1, %struct.tc_action** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call i8* @skb_tail_pointer(%struct.sk_buff* %15)
  store i8* %16, i8** %10, align 8
  %17 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %18 = call %struct.tcf_bpf* @to_bpf(%struct.tc_action* %17)
  store %struct.tcf_bpf* %18, %struct.tcf_bpf** %11, align 8
  %19 = getelementptr inbounds %struct.tc_act_bpf, %struct.tc_act_bpf* %12, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.tc_act_bpf, %struct.tc_act_bpf* %12, i32 0, i32 1
  %21 = load %struct.tcf_bpf*, %struct.tcf_bpf** %11, align 8
  %22 = getelementptr inbounds %struct.tcf_bpf, %struct.tcf_bpf* %21, i32 0, i32 3
  %23 = call i32 @atomic_read(i32* %22)
  %24 = load i32, i32* %8, align 4
  %25 = sub nsw i32 %23, %24
  store i32 %25, i32* %20, align 4
  %26 = getelementptr inbounds %struct.tc_act_bpf, %struct.tc_act_bpf* %12, i32 0, i32 2
  %27 = load %struct.tcf_bpf*, %struct.tcf_bpf** %11, align 8
  %28 = getelementptr inbounds %struct.tcf_bpf, %struct.tcf_bpf* %27, i32 0, i32 4
  %29 = call i32 @refcount_read(i32* %28)
  %30 = load i32, i32* %9, align 4
  %31 = sub nsw i32 %29, %30
  store i32 %31, i32* %26, align 4
  %32 = getelementptr inbounds %struct.tc_act_bpf, %struct.tc_act_bpf* %12, i32 0, i32 3
  %33 = load %struct.tcf_bpf*, %struct.tcf_bpf** %11, align 8
  %34 = getelementptr inbounds %struct.tcf_bpf, %struct.tcf_bpf* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %32, align 4
  %36 = load %struct.tcf_bpf*, %struct.tcf_bpf** %11, align 8
  %37 = getelementptr inbounds %struct.tcf_bpf, %struct.tcf_bpf* %36, i32 0, i32 0
  %38 = call i32 @spin_lock_bh(i32* %37)
  %39 = load %struct.tcf_bpf*, %struct.tcf_bpf** %11, align 8
  %40 = getelementptr inbounds %struct.tcf_bpf, %struct.tcf_bpf* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.tc_act_bpf, %struct.tc_act_bpf* %12, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = load i32, i32* @TCA_ACT_BPF_PARMS, align 4
  %45 = call i64 @nla_put(%struct.sk_buff* %43, i32 %44, i32 16, %struct.tc_act_bpf* %12)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %4
  br label %81

48:                                               ; preds = %4
  %49 = load %struct.tcf_bpf*, %struct.tcf_bpf** %11, align 8
  %50 = call i64 @tcf_bpf_is_ebpf(%struct.tcf_bpf* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load %struct.tcf_bpf*, %struct.tcf_bpf** %11, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = call i32 @tcf_bpf_dump_ebpf_info(%struct.tcf_bpf* %53, %struct.sk_buff* %54)
  store i32 %55, i32* %14, align 4
  br label %60

56:                                               ; preds = %48
  %57 = load %struct.tcf_bpf*, %struct.tcf_bpf** %11, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = call i32 @tcf_bpf_dump_bpf_info(%struct.tcf_bpf* %57, %struct.sk_buff* %58)
  store i32 %59, i32* %14, align 4
  br label %60

60:                                               ; preds = %56, %52
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %81

64:                                               ; preds = %60
  %65 = load %struct.tcf_bpf*, %struct.tcf_bpf** %11, align 8
  %66 = getelementptr inbounds %struct.tcf_bpf, %struct.tcf_bpf* %65, i32 0, i32 1
  %67 = call i32 @tcf_tm_dump(%struct.tcf_t* %13, i32* %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %69 = load i32, i32* @TCA_ACT_BPF_TM, align 4
  %70 = load i32, i32* @TCA_ACT_BPF_PAD, align 4
  %71 = call i64 @nla_put_64bit(%struct.sk_buff* %68, i32 %69, i32 4, %struct.tcf_t* %13, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %81

74:                                               ; preds = %64
  %75 = load %struct.tcf_bpf*, %struct.tcf_bpf** %11, align 8
  %76 = getelementptr inbounds %struct.tcf_bpf, %struct.tcf_bpf* %75, i32 0, i32 0
  %77 = call i32 @spin_unlock_bh(i32* %76)
  %78 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %5, align 4
  br label %88

81:                                               ; preds = %73, %63, %47
  %82 = load %struct.tcf_bpf*, %struct.tcf_bpf** %11, align 8
  %83 = getelementptr inbounds %struct.tcf_bpf, %struct.tcf_bpf* %82, i32 0, i32 0
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

declare dso_local %struct.tcf_bpf* @to_bpf(%struct.tc_action*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.tc_act_bpf*) #1

declare dso_local i64 @tcf_bpf_is_ebpf(%struct.tcf_bpf*) #1

declare dso_local i32 @tcf_bpf_dump_ebpf_info(%struct.tcf_bpf*, %struct.sk_buff*) #1

declare dso_local i32 @tcf_bpf_dump_bpf_info(%struct.tcf_bpf*, %struct.sk_buff*) #1

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
