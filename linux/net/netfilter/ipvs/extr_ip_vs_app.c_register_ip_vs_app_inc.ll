; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_app.c_register_ip_vs_app_inc.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_app.c_register_ip_vs_app_inc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netns_ipvs = type { i32 }
%struct.ip_vs_app = type { i32 }

@__ip_vs_app_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_ip_vs_app_inc(%struct.netns_ipvs* %0, %struct.ip_vs_app* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.netns_ipvs*, align 8
  %6 = alloca %struct.ip_vs_app*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.netns_ipvs* %0, %struct.netns_ipvs** %5, align 8
  store %struct.ip_vs_app* %1, %struct.ip_vs_app** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = call i32 @mutex_lock(i32* @__ip_vs_app_mutex)
  %11 = load %struct.netns_ipvs*, %struct.netns_ipvs** %5, align 8
  %12 = load %struct.ip_vs_app*, %struct.ip_vs_app** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @ip_vs_app_inc_new(%struct.netns_ipvs* %11, %struct.ip_vs_app* %12, i32 %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = call i32 @mutex_unlock(i32* @__ip_vs_app_mutex)
  %17 = load i32, i32* %9, align 4
  ret i32 %17
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ip_vs_app_inc_new(%struct.netns_ipvs*, %struct.ip_vs_app*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
