; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c___ip_vs_svc_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c___ip_vs_svc_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_service = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Removing service %u/%s:%u\0A\00", align 1
@ip_vs_service_rcu_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_vs_service*, i32)* @__ip_vs_svc_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ip_vs_svc_put(%struct.ip_vs_service* %0, i32 %1) #0 {
  %3 = alloca %struct.ip_vs_service*, align 8
  %4 = alloca i32, align 4
  store %struct.ip_vs_service* %0, %struct.ip_vs_service** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ip_vs_service*, %struct.ip_vs_service** %3, align 8
  %6 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %5, i32 0, i32 5
  %7 = call i64 @atomic_dec_and_test(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %35

9:                                                ; preds = %2
  %10 = load %struct.ip_vs_service*, %struct.ip_vs_service** %3, align 8
  %11 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ip_vs_service*, %struct.ip_vs_service** %3, align 8
  %14 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ip_vs_service*, %struct.ip_vs_service** %3, align 8
  %17 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %16, i32 0, i32 2
  %18 = call i32 @IP_VS_DBG_ADDR(i32 %15, i32* %17)
  %19 = load %struct.ip_vs_service*, %struct.ip_vs_service** %3, align 8
  %20 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ntohs(i32 %21)
  %23 = call i32 @IP_VS_DBG_BUF(i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %18, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %9
  %27 = load %struct.ip_vs_service*, %struct.ip_vs_service** %3, align 8
  %28 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %27, i32 0, i32 0
  %29 = load i32, i32* @ip_vs_service_rcu_free, align 4
  %30 = call i32 @call_rcu(i32* %28, i32 %29)
  br label %34

31:                                               ; preds = %9
  %32 = load %struct.ip_vs_service*, %struct.ip_vs_service** %3, align 8
  %33 = call i32 @ip_vs_service_free(%struct.ip_vs_service* %32)
  br label %34

34:                                               ; preds = %31, %26
  br label %35

35:                                               ; preds = %34, %2
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @IP_VS_DBG_BUF(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @IP_VS_DBG_ADDR(i32, i32*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

declare dso_local i32 @ip_vs_service_free(%struct.ip_vs_service*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
