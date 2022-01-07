; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_proto.c_ipv4_conntrack_local.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_proto.c_ipv4_conntrack_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.nf_hook_state = type { i32 }
%struct.nf_conn = type { i32 }

@NF_ACCEPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sk_buff*, %struct.nf_hook_state*)* @ipv4_conntrack_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv4_conntrack_local(i8* %0, %struct.sk_buff* %1, %struct.nf_hook_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nf_hook_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nf_conn*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.nf_hook_state* %2, %struct.nf_hook_state** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = call i32 @ip_hdr(%struct.sk_buff* %10)
  %12 = call i64 @ip_is_fragment(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %3
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %15, i32* %8)
  store %struct.nf_conn* %16, %struct.nf_conn** %9, align 8
  %17 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %18 = icmp ne %struct.nf_conn* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %21 = call i64 @nf_ct_is_template(%struct.nf_conn* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %27 = call i32 @nf_ct_put(%struct.nf_conn* %26)
  br label %28

28:                                               ; preds = %23, %19, %14
  %29 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %29, i32* %4, align 4
  br label %34

30:                                               ; preds = %3
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %33 = call i32 @nf_conntrack_in(%struct.sk_buff* %31, %struct.nf_hook_state* %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %30, %28
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i64 @ip_is_fragment(i32) #1

declare dso_local i32 @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local i64 @nf_ct_is_template(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_put(%struct.nf_conn*) #1

declare dso_local i32 @nf_conntrack_in(%struct.sk_buff*, %struct.nf_hook_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
