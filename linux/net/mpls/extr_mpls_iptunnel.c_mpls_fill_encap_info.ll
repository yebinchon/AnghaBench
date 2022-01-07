; ModuleID = '/home/carl/AnghaBench/linux/net/mpls/extr_mpls_iptunnel.c_mpls_fill_encap_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/mpls/extr_mpls_iptunnel.c_mpls_fill_encap_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.lwtunnel_state = type { i32 }
%struct.mpls_iptunnel_encap = type { i64, i32, i32, i32 }

@MPLS_IPTUNNEL_DST = common dso_local global i32 0, align 4
@MPLS_TTL_PROP_DEFAULT = common dso_local global i64 0, align 8
@MPLS_IPTUNNEL_TTL = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.lwtunnel_state*)* @mpls_fill_encap_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpls_fill_encap_info(%struct.sk_buff* %0, %struct.lwtunnel_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.lwtunnel_state*, align 8
  %6 = alloca %struct.mpls_iptunnel_encap*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.lwtunnel_state* %1, %struct.lwtunnel_state** %5, align 8
  %7 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %5, align 8
  %8 = call %struct.mpls_iptunnel_encap* @mpls_lwtunnel_encap(%struct.lwtunnel_state* %7)
  store %struct.mpls_iptunnel_encap* %8, %struct.mpls_iptunnel_encap** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = load i32, i32* @MPLS_IPTUNNEL_DST, align 4
  %11 = load %struct.mpls_iptunnel_encap*, %struct.mpls_iptunnel_encap** %6, align 8
  %12 = getelementptr inbounds %struct.mpls_iptunnel_encap, %struct.mpls_iptunnel_encap* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.mpls_iptunnel_encap*, %struct.mpls_iptunnel_encap** %6, align 8
  %15 = getelementptr inbounds %struct.mpls_iptunnel_encap, %struct.mpls_iptunnel_encap* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @nla_put_labels(%struct.sk_buff* %9, i32 %10, i32 %13, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %36

20:                                               ; preds = %2
  %21 = load %struct.mpls_iptunnel_encap*, %struct.mpls_iptunnel_encap** %6, align 8
  %22 = getelementptr inbounds %struct.mpls_iptunnel_encap, %struct.mpls_iptunnel_encap* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MPLS_TTL_PROP_DEFAULT, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = load i32, i32* @MPLS_IPTUNNEL_TTL, align 4
  %29 = load %struct.mpls_iptunnel_encap*, %struct.mpls_iptunnel_encap** %6, align 8
  %30 = getelementptr inbounds %struct.mpls_iptunnel_encap, %struct.mpls_iptunnel_encap* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @nla_put_u8(%struct.sk_buff* %27, i32 %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %36

35:                                               ; preds = %26, %20
  store i32 0, i32* %3, align 4
  br label %39

36:                                               ; preds = %34, %19
  %37 = load i32, i32* @EMSGSIZE, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %36, %35
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.mpls_iptunnel_encap* @mpls_lwtunnel_encap(%struct.lwtunnel_state*) #1

declare dso_local i64 @nla_put_labels(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
