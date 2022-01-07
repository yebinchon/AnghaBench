; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_genl_find_service.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_genl_find_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_service = type { i32 }
%struct.netns_ipvs = type { i32 }
%struct.nlattr = type { i32 }
%struct.ip_vs_service_user_kern = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip_vs_service* (%struct.netns_ipvs*, %struct.nlattr*)* @ip_vs_genl_find_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip_vs_service* @ip_vs_genl_find_service(%struct.netns_ipvs* %0, %struct.nlattr* %1) #0 {
  %3 = alloca %struct.netns_ipvs*, align 8
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca %struct.ip_vs_service_user_kern, align 4
  %6 = alloca %struct.ip_vs_service*, align 8
  %7 = alloca i32, align 4
  store %struct.netns_ipvs* %0, %struct.netns_ipvs** %3, align 8
  store %struct.nlattr* %1, %struct.nlattr** %4, align 8
  %8 = load %struct.netns_ipvs*, %struct.netns_ipvs** %3, align 8
  %9 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %10 = call i32 @ip_vs_genl_parse_service(%struct.netns_ipvs* %8, %struct.ip_vs_service_user_kern* %5, %struct.nlattr* %9, i32 0, %struct.ip_vs_service** %6)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.ip_vs_service* @ERR_PTR(i32 %14)
  br label %18

16:                                               ; preds = %2
  %17 = load %struct.ip_vs_service*, %struct.ip_vs_service** %6, align 8
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi %struct.ip_vs_service* [ %15, %13 ], [ %17, %16 ]
  ret %struct.ip_vs_service* %19
}

declare dso_local i32 @ip_vs_genl_parse_service(%struct.netns_ipvs*, %struct.ip_vs_service_user_kern*, %struct.nlattr*, i32, %struct.ip_vs_service**) #1

declare dso_local %struct.ip_vs_service* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
