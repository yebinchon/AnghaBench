; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_app.c_ip_vs_app_inc_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_app.c_ip_vs_app_inc_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netns_ipvs = type { i32 }
%struct.ip_vs_app = type { i32, i32, i32, i32, i32 }
%struct.ip_vs_protocol = type { i32, i32 (%struct.netns_ipvs*, %struct.ip_vs_app.0*)* }
%struct.ip_vs_app.0 = type opaque

@.str = private unnamed_addr constant [27 x i8] c"%s App %s:%u unregistered\0A\00", align 1
@ip_vs_app_inc_rcu_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netns_ipvs*, %struct.ip_vs_app*)* @ip_vs_app_inc_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_vs_app_inc_release(%struct.netns_ipvs* %0, %struct.ip_vs_app* %1) #0 {
  %3 = alloca %struct.netns_ipvs*, align 8
  %4 = alloca %struct.ip_vs_app*, align 8
  %5 = alloca %struct.ip_vs_protocol*, align 8
  store %struct.netns_ipvs* %0, %struct.netns_ipvs** %3, align 8
  store %struct.ip_vs_app* %1, %struct.ip_vs_app** %4, align 8
  %6 = load %struct.ip_vs_app*, %struct.ip_vs_app** %4, align 8
  %7 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.ip_vs_protocol* @ip_vs_proto_get(i32 %8)
  store %struct.ip_vs_protocol* %9, %struct.ip_vs_protocol** %5, align 8
  %10 = icmp ne %struct.ip_vs_protocol* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %44

12:                                               ; preds = %2
  %13 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %5, align 8
  %14 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %13, i32 0, i32 1
  %15 = load i32 (%struct.netns_ipvs*, %struct.ip_vs_app.0*)*, i32 (%struct.netns_ipvs*, %struct.ip_vs_app.0*)** %14, align 8
  %16 = icmp ne i32 (%struct.netns_ipvs*, %struct.ip_vs_app.0*)* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %5, align 8
  %19 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %18, i32 0, i32 1
  %20 = load i32 (%struct.netns_ipvs*, %struct.ip_vs_app.0*)*, i32 (%struct.netns_ipvs*, %struct.ip_vs_app.0*)** %19, align 8
  %21 = load %struct.netns_ipvs*, %struct.netns_ipvs** %3, align 8
  %22 = load %struct.ip_vs_app*, %struct.ip_vs_app** %4, align 8
  %23 = bitcast %struct.ip_vs_app* %22 to %struct.ip_vs_app.0*
  %24 = call i32 %20(%struct.netns_ipvs* %21, %struct.ip_vs_app.0* %23)
  br label %25

25:                                               ; preds = %17, %12
  %26 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %5, align 8
  %27 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ip_vs_app*, %struct.ip_vs_app** %4, align 8
  %30 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ip_vs_app*, %struct.ip_vs_app** %4, align 8
  %33 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ntohs(i32 %34)
  %36 = call i32 @IP_VS_DBG(i32 9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31, i32 %35)
  %37 = load %struct.ip_vs_app*, %struct.ip_vs_app** %4, align 8
  %38 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %37, i32 0, i32 1
  %39 = call i32 @list_del(i32* %38)
  %40 = load %struct.ip_vs_app*, %struct.ip_vs_app** %4, align 8
  %41 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %40, i32 0, i32 0
  %42 = load i32, i32* @ip_vs_app_inc_rcu_free, align 4
  %43 = call i32 @call_rcu(i32* %41, i32 %42)
  br label %44

44:                                               ; preds = %25, %11
  ret void
}

declare dso_local %struct.ip_vs_protocol* @ip_vs_proto_get(i32) #1

declare dso_local i32 @IP_VS_DBG(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
