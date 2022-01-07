; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_execute_check_pkt_len.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_execute_check_pkt_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.datapath = type { i32 }
%struct.sk_buff = type { i64 }
%struct.sw_flow_key = type { i32 }
%struct.nlattr = type { i32 }
%struct.check_pkt_len_arg = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.datapath*, %struct.sk_buff*, %struct.sw_flow_key*, %struct.nlattr*, i32)* @execute_check_pkt_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @execute_check_pkt_len(%struct.datapath* %0, %struct.sk_buff* %1, %struct.sw_flow_key* %2, %struct.nlattr* %3, i32 %4) #0 {
  %6 = alloca %struct.datapath*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sw_flow_key*, align 8
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nlattr*, align 8
  %12 = alloca %struct.nlattr*, align 8
  %13 = alloca %struct.check_pkt_len_arg*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.datapath* %0, %struct.datapath** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.sw_flow_key* %2, %struct.sw_flow_key** %8, align 8
  store %struct.nlattr* %3, %struct.nlattr** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %17 = call i32 @nla_len(%struct.nlattr* %16)
  store i32 %17, i32* %14, align 4
  %18 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %19 = call i8* @nla_data(%struct.nlattr* %18)
  %20 = bitcast i8* %19 to %struct.nlattr*
  store %struct.nlattr* %20, %struct.nlattr** %12, align 8
  %21 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %22 = call i8* @nla_data(%struct.nlattr* %21)
  %23 = bitcast i8* %22 to %struct.check_pkt_len_arg*
  store %struct.check_pkt_len_arg* %23, %struct.check_pkt_len_arg** %13, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.check_pkt_len_arg*, %struct.check_pkt_len_arg** %13, align 8
  %28 = getelementptr inbounds %struct.check_pkt_len_arg, %struct.check_pkt_len_arg* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sle i64 %26, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %5
  %32 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %33 = call %struct.nlattr* @nla_next(%struct.nlattr* %32, i32* %14)
  store %struct.nlattr* %33, %struct.nlattr** %11, align 8
  %34 = load %struct.check_pkt_len_arg*, %struct.check_pkt_len_arg** %13, align 8
  %35 = getelementptr inbounds %struct.check_pkt_len_arg, %struct.check_pkt_len_arg* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %15, align 4
  br label %51

40:                                               ; preds = %5
  %41 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %42 = call %struct.nlattr* @nla_next(%struct.nlattr* %41, i32* %14)
  store %struct.nlattr* %42, %struct.nlattr** %11, align 8
  %43 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %44 = call %struct.nlattr* @nla_next(%struct.nlattr* %43, i32* %14)
  store %struct.nlattr* %44, %struct.nlattr** %11, align 8
  %45 = load %struct.check_pkt_len_arg*, %struct.check_pkt_len_arg** %13, align 8
  %46 = getelementptr inbounds %struct.check_pkt_len_arg, %struct.check_pkt_len_arg* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %15, align 4
  br label %51

51:                                               ; preds = %40, %31
  %52 = load %struct.datapath*, %struct.datapath** %6, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %54 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %55 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %56 = call i8* @nla_data(%struct.nlattr* %55)
  %57 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %58 = call i32 @nla_len(%struct.nlattr* %57)
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @clone_execute(%struct.datapath* %52, %struct.sk_buff* %53, %struct.sw_flow_key* %54, i32 0, i8* %56, i32 %58, i32 %59, i32 %60)
  ret i32 %61
}

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local %struct.nlattr* @nla_next(%struct.nlattr*, i32*) #1

declare dso_local i32 @clone_execute(%struct.datapath*, %struct.sk_buff*, %struct.sw_flow_key*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
