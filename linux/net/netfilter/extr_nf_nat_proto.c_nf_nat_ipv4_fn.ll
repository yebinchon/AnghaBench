; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_proto.c_nf_nat_ipv4_fn.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_proto.c_nf_nat_ipv4_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_hook_state = type { i32 }
%struct.nf_conn = type { i32 }
%struct.TYPE_2__ = type { i64 }

@NF_ACCEPT = common dso_local global i32 0, align 4
@IP_CT_RELATED = common dso_local global i32 0, align 4
@IP_CT_RELATED_REPLY = common dso_local global i32 0, align 4
@IPPROTO_ICMP = common dso_local global i64 0, align 8
@NF_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sk_buff*, %struct.nf_hook_state*)* @nf_nat_ipv4_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_nat_ipv4_fn(i8* %0, %struct.sk_buff* %1, %struct.nf_hook_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nf_hook_state*, align 8
  %8 = alloca %struct.nf_conn*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.nf_hook_state* %2, %struct.nf_hook_state** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %10, i32* %9)
  store %struct.nf_conn* %11, %struct.nf_conn** %8, align 8
  %12 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %13 = icmp ne %struct.nf_conn* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %15, i32* %4, align 4
  br label %50

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @IP_CT_RELATED, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @IP_CT_RELATED_REPLY, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %20, %16
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IPPROTO_ICMP, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %24
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %36 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @nf_nat_icmp_reply_translation(%struct.sk_buff* %32, %struct.nf_conn* %33, i32 %34, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %31
  %41 = load i32, i32* @NF_DROP, align 4
  store i32 %41, i32* %4, align 4
  br label %50

42:                                               ; preds = %31
  %43 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %43, i32* %4, align 4
  br label %50

44:                                               ; preds = %24
  br label %45

45:                                               ; preds = %44, %20
  %46 = load i8*, i8** %5, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %49 = call i32 @nf_nat_inet_fn(i8* %46, %struct.sk_buff* %47, %struct.nf_hook_state* %48)
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %45, %42, %40, %14
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local %struct.TYPE_2__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @nf_nat_icmp_reply_translation(%struct.sk_buff*, %struct.nf_conn*, i32, i32) #1

declare dso_local i32 @nf_nat_inet_fn(i8*, %struct.sk_buff*, %struct.nf_hook_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
