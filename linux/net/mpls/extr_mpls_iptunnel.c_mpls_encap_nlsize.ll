; ModuleID = '/home/carl/AnghaBench/linux/net/mpls/extr_mpls_iptunnel.c_mpls_encap_nlsize.c'
source_filename = "/home/carl/AnghaBench/linux/net/mpls/extr_mpls_iptunnel.c_mpls_encap_nlsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwtunnel_state = type { i32 }
%struct.mpls_iptunnel_encap = type { i32, i64 }

@MPLS_TTL_PROP_DEFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lwtunnel_state*)* @mpls_encap_nlsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpls_encap_nlsize(%struct.lwtunnel_state* %0) #0 {
  %2 = alloca %struct.lwtunnel_state*, align 8
  %3 = alloca %struct.mpls_iptunnel_encap*, align 8
  %4 = alloca i32, align 4
  store %struct.lwtunnel_state* %0, %struct.lwtunnel_state** %2, align 8
  %5 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %2, align 8
  %6 = call %struct.mpls_iptunnel_encap* @mpls_lwtunnel_encap(%struct.lwtunnel_state* %5)
  store %struct.mpls_iptunnel_encap* %6, %struct.mpls_iptunnel_encap** %3, align 8
  %7 = load %struct.mpls_iptunnel_encap*, %struct.mpls_iptunnel_encap** %3, align 8
  %8 = getelementptr inbounds %struct.mpls_iptunnel_encap, %struct.mpls_iptunnel_encap* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = mul nsw i32 %9, 4
  %11 = call i32 @nla_total_size(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.mpls_iptunnel_encap*, %struct.mpls_iptunnel_encap** %3, align 8
  %13 = getelementptr inbounds %struct.mpls_iptunnel_encap, %struct.mpls_iptunnel_encap* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MPLS_TTL_PROP_DEFAULT, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = call i32 @nla_total_size(i32 1)
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, %18
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %17, %1
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local %struct.mpls_iptunnel_encap* @mpls_lwtunnel_encap(%struct.lwtunnel_state*) #1

declare dso_local i32 @nla_total_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
