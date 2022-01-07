; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_app.c_ip_vs_unbind_app.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_app.c_ip_vs_unbind_app.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { %struct.ip_vs_app* }
%struct.ip_vs_app = type { i32 (%struct.ip_vs_app*, %struct.ip_vs_conn*)*, i32 (%struct.ip_vs_app*, %struct.ip_vs_conn*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_vs_unbind_app(%struct.ip_vs_conn* %0) #0 {
  %2 = alloca %struct.ip_vs_conn*, align 8
  %3 = alloca %struct.ip_vs_app*, align 8
  store %struct.ip_vs_conn* %0, %struct.ip_vs_conn** %2, align 8
  %4 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %5 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %4, i32 0, i32 0
  %6 = load %struct.ip_vs_app*, %struct.ip_vs_app** %5, align 8
  store %struct.ip_vs_app* %6, %struct.ip_vs_app** %3, align 8
  %7 = load %struct.ip_vs_app*, %struct.ip_vs_app** %3, align 8
  %8 = icmp ne %struct.ip_vs_app* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %39

10:                                               ; preds = %1
  %11 = load %struct.ip_vs_app*, %struct.ip_vs_app** %3, align 8
  %12 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %11, i32 0, i32 1
  %13 = load i32 (%struct.ip_vs_app*, %struct.ip_vs_conn*)*, i32 (%struct.ip_vs_app*, %struct.ip_vs_conn*)** %12, align 8
  %14 = icmp ne i32 (%struct.ip_vs_app*, %struct.ip_vs_conn*)* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load %struct.ip_vs_app*, %struct.ip_vs_app** %3, align 8
  %17 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %16, i32 0, i32 1
  %18 = load i32 (%struct.ip_vs_app*, %struct.ip_vs_conn*)*, i32 (%struct.ip_vs_app*, %struct.ip_vs_conn*)** %17, align 8
  %19 = load %struct.ip_vs_app*, %struct.ip_vs_app** %3, align 8
  %20 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %21 = call i32 %18(%struct.ip_vs_app* %19, %struct.ip_vs_conn* %20)
  br label %22

22:                                               ; preds = %15, %10
  %23 = load %struct.ip_vs_app*, %struct.ip_vs_app** %3, align 8
  %24 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %23, i32 0, i32 0
  %25 = load i32 (%struct.ip_vs_app*, %struct.ip_vs_conn*)*, i32 (%struct.ip_vs_app*, %struct.ip_vs_conn*)** %24, align 8
  %26 = icmp ne i32 (%struct.ip_vs_app*, %struct.ip_vs_conn*)* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.ip_vs_app*, %struct.ip_vs_app** %3, align 8
  %29 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %28, i32 0, i32 0
  %30 = load i32 (%struct.ip_vs_app*, %struct.ip_vs_conn*)*, i32 (%struct.ip_vs_app*, %struct.ip_vs_conn*)** %29, align 8
  %31 = load %struct.ip_vs_app*, %struct.ip_vs_app** %3, align 8
  %32 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %33 = call i32 %30(%struct.ip_vs_app* %31, %struct.ip_vs_conn* %32)
  br label %34

34:                                               ; preds = %27, %22
  %35 = load %struct.ip_vs_app*, %struct.ip_vs_app** %3, align 8
  %36 = call i32 @ip_vs_app_inc_put(%struct.ip_vs_app* %35)
  %37 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %38 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %37, i32 0, i32 0
  store %struct.ip_vs_app* null, %struct.ip_vs_app** %38, align 8
  br label %39

39:                                               ; preds = %34, %9
  ret void
}

declare dso_local i32 @ip_vs_app_inc_put(%struct.ip_vs_app*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
