; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_iptunnel.c_seg6_encap_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_iptunnel.c_seg6_encap_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwtunnel_state = type { i32 }
%struct.seg6_iptunnel_encap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lwtunnel_state*, %struct.lwtunnel_state*)* @seg6_encap_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seg6_encap_cmp(%struct.lwtunnel_state* %0, %struct.lwtunnel_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lwtunnel_state*, align 8
  %5 = alloca %struct.lwtunnel_state*, align 8
  %6 = alloca %struct.seg6_iptunnel_encap*, align 8
  %7 = alloca %struct.seg6_iptunnel_encap*, align 8
  %8 = alloca i32, align 4
  store %struct.lwtunnel_state* %0, %struct.lwtunnel_state** %4, align 8
  store %struct.lwtunnel_state* %1, %struct.lwtunnel_state** %5, align 8
  %9 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %4, align 8
  %10 = call %struct.seg6_iptunnel_encap* @seg6_encap_lwtunnel(%struct.lwtunnel_state* %9)
  store %struct.seg6_iptunnel_encap* %10, %struct.seg6_iptunnel_encap** %6, align 8
  %11 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %5, align 8
  %12 = call %struct.seg6_iptunnel_encap* @seg6_encap_lwtunnel(%struct.lwtunnel_state* %11)
  store %struct.seg6_iptunnel_encap* %12, %struct.seg6_iptunnel_encap** %7, align 8
  %13 = load %struct.seg6_iptunnel_encap*, %struct.seg6_iptunnel_encap** %6, align 8
  %14 = call i32 @SEG6_IPTUN_ENCAP_SIZE(%struct.seg6_iptunnel_encap* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.seg6_iptunnel_encap*, %struct.seg6_iptunnel_encap** %7, align 8
  %17 = call i32 @SEG6_IPTUN_ENCAP_SIZE(%struct.seg6_iptunnel_encap* %16)
  %18 = icmp ne i32 %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %25

20:                                               ; preds = %2
  %21 = load %struct.seg6_iptunnel_encap*, %struct.seg6_iptunnel_encap** %6, align 8
  %22 = load %struct.seg6_iptunnel_encap*, %struct.seg6_iptunnel_encap** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @memcmp(%struct.seg6_iptunnel_encap* %21, %struct.seg6_iptunnel_encap* %22, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %20, %19
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local %struct.seg6_iptunnel_encap* @seg6_encap_lwtunnel(%struct.lwtunnel_state*) #1

declare dso_local i32 @SEG6_IPTUN_ENCAP_SIZE(%struct.seg6_iptunnel_encap*) #1

declare dso_local i32 @memcmp(%struct.seg6_iptunnel_encap*, %struct.seg6_iptunnel_encap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
