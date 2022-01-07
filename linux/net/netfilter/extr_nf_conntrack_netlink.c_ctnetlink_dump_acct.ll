; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_dump_acct.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_dump_acct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32 }
%struct.nf_conn_acct = type { i32 }

@IP_CT_DIR_ORIGINAL = common dso_local global i32 0, align 4
@IP_CT_DIR_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conn*, i32)* @ctnetlink_dump_acct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_dump_acct(%struct.sk_buff* %0, %struct.nf_conn* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nf_conn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nf_conn_acct*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %10 = call %struct.nf_conn_acct* @nf_conn_acct_find(%struct.nf_conn* %9)
  store %struct.nf_conn_acct* %10, %struct.nf_conn_acct** %8, align 8
  %11 = load %struct.nf_conn_acct*, %struct.nf_conn_acct** %8, align 8
  %12 = icmp ne %struct.nf_conn_acct* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %31

14:                                               ; preds = %3
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = load %struct.nf_conn_acct*, %struct.nf_conn_acct** %8, align 8
  %17 = load i32, i32* @IP_CT_DIR_ORIGINAL, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @dump_counters(%struct.sk_buff* %15, %struct.nf_conn_acct* %16, i32 %17, i32 %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 -1, i32* %4, align 4
  br label %31

22:                                               ; preds = %14
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = load %struct.nf_conn_acct*, %struct.nf_conn_acct** %8, align 8
  %25 = load i32, i32* @IP_CT_DIR_REPLY, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @dump_counters(%struct.sk_buff* %23, %struct.nf_conn_acct* %24, i32 %25, i32 %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 -1, i32* %4, align 4
  br label %31

30:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %29, %21, %13
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.nf_conn_acct* @nf_conn_acct_find(%struct.nf_conn*) #1

declare dso_local i64 @dump_counters(%struct.sk_buff*, %struct.nf_conn_acct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
