; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_bpf.c_tcf_bpf_dump_bpf_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_bpf.c_tcf_bpf_dump_bpf_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_bpf = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }

@TCA_ACT_BPF_OPS_LEN = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@TCA_ACT_BPF_OPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_bpf*, %struct.sk_buff*)* @tcf_bpf_dump_bpf_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_bpf_dump_bpf_info(%struct.tcf_bpf* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcf_bpf*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlattr*, align 8
  store %struct.tcf_bpf* %0, %struct.tcf_bpf** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %8 = load i32, i32* @TCA_ACT_BPF_OPS_LEN, align 4
  %9 = load %struct.tcf_bpf*, %struct.tcf_bpf** %4, align 8
  %10 = getelementptr inbounds %struct.tcf_bpf, %struct.tcf_bpf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @nla_put_u16(%struct.sk_buff* %7, i32 %8, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EMSGSIZE, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %41

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = load i32, i32* @TCA_ACT_BPF_OPS, align 4
  %20 = load %struct.tcf_bpf*, %struct.tcf_bpf** %4, align 8
  %21 = getelementptr inbounds %struct.tcf_bpf, %struct.tcf_bpf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = trunc i64 %24 to i32
  %26 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %18, i32 %19, i32 %25)
  store %struct.nlattr* %26, %struct.nlattr** %6, align 8
  %27 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %28 = icmp eq %struct.nlattr* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %17
  %30 = load i32, i32* @EMSGSIZE, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %41

32:                                               ; preds = %17
  %33 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %34 = call i32 @nla_data(%struct.nlattr* %33)
  %35 = load %struct.tcf_bpf*, %struct.tcf_bpf** %4, align 8
  %36 = getelementptr inbounds %struct.tcf_bpf, %struct.tcf_bpf* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %39 = call i32 @nla_len(%struct.nlattr* %38)
  %40 = call i32 @memcpy(i32 %34, i32 %37, i32 %39)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %32, %29, %14
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.nlattr* @nla_reserve(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
