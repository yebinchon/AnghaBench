; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_sockex3_kern.c_parse_eth_proto.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_sockex3_kern.c_parse_eth_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__sk_buff = type { i32 }

@jmp_table = common dso_local global i32 0, align 4
@PARSE_VLAN = common dso_local global i32 0, align 4
@PARSE_MPLS = common dso_local global i32 0, align 4
@PARSE_IP = common dso_local global i32 0, align 4
@PARSE_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.__sk_buff*, i32)* @parse_eth_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_eth_proto(%struct.__sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.__sk_buff*, align 8
  %4 = alloca i32, align 4
  store %struct.__sk_buff* %0, %struct.__sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %22 [
    i32 132, label %6
    i32 133, label %6
    i32 128, label %10
    i32 129, label %10
    i32 131, label %14
    i32 130, label %18
  ]

6:                                                ; preds = %2, %2
  %7 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %8 = load i32, i32* @PARSE_VLAN, align 4
  %9 = call i32 @bpf_tail_call(%struct.__sk_buff* %7, i32* @jmp_table, i32 %8)
  br label %22

10:                                               ; preds = %2, %2
  %11 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %12 = load i32, i32* @PARSE_MPLS, align 4
  %13 = call i32 @bpf_tail_call(%struct.__sk_buff* %11, i32* @jmp_table, i32 %12)
  br label %22

14:                                               ; preds = %2
  %15 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %16 = load i32, i32* @PARSE_IP, align 4
  %17 = call i32 @bpf_tail_call(%struct.__sk_buff* %15, i32* @jmp_table, i32 %16)
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %20 = load i32, i32* @PARSE_IPV6, align 4
  %21 = call i32 @bpf_tail_call(%struct.__sk_buff* %19, i32* @jmp_table, i32 %20)
  br label %22

22:                                               ; preds = %2, %18, %14, %10, %6
  ret void
}

declare dso_local i32 @bpf_tail_call(%struct.__sk_buff*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
