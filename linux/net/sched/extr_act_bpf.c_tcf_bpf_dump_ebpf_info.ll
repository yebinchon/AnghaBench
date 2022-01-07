; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_bpf.c_tcf_bpf_dump_ebpf_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_bpf.c_tcf_bpf_dump_ebpf_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_bpf = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }

@TCA_ACT_BPF_NAME = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@TCA_ACT_BPF_ID = common dso_local global i32 0, align 4
@TCA_ACT_BPF_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_bpf*, %struct.sk_buff*)* @tcf_bpf_dump_ebpf_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_bpf_dump_ebpf_info(%struct.tcf_bpf* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcf_bpf*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlattr*, align 8
  store %struct.tcf_bpf* %0, %struct.tcf_bpf** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.tcf_bpf*, %struct.tcf_bpf** %4, align 8
  %8 = getelementptr inbounds %struct.tcf_bpf, %struct.tcf_bpf* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = load i32, i32* @TCA_ACT_BPF_NAME, align 4
  %14 = load %struct.tcf_bpf*, %struct.tcf_bpf** %4, align 8
  %15 = getelementptr inbounds %struct.tcf_bpf, %struct.tcf_bpf* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @nla_put_string(%struct.sk_buff* %12, i32 %13, i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load i32, i32* @EMSGSIZE, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %57

22:                                               ; preds = %11, %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = load i32, i32* @TCA_ACT_BPF_ID, align 4
  %25 = load %struct.tcf_bpf*, %struct.tcf_bpf** %4, align 8
  %26 = getelementptr inbounds %struct.tcf_bpf, %struct.tcf_bpf* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @nla_put_u32(%struct.sk_buff* %23, i32 %24, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load i32, i32* @EMSGSIZE, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %57

37:                                               ; preds = %22
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = load i32, i32* @TCA_ACT_BPF_TAG, align 4
  %40 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %38, i32 %39, i32 4)
  store %struct.nlattr* %40, %struct.nlattr** %6, align 8
  %41 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %42 = icmp eq %struct.nlattr* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @EMSGSIZE, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %57

46:                                               ; preds = %37
  %47 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %48 = call i32 @nla_data(%struct.nlattr* %47)
  %49 = load %struct.tcf_bpf*, %struct.tcf_bpf** %4, align 8
  %50 = getelementptr inbounds %struct.tcf_bpf, %struct.tcf_bpf* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %55 = call i32 @nla_len(%struct.nlattr* %54)
  %56 = call i32 @memcpy(i32 %48, i32 %53, i32 %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %46, %43, %34, %19
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

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
