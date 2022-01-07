; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_metrics.c___tcp_get_metrics.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_metrics.c___tcp_get_metrics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.tcp_metrics_block = type { i32, i32, i32 }
%struct.inetpeer_addr = type { i32 }
%struct.net = type { i32 }

@tcp_metrics_hash = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tcp_metrics_block* (%struct.inetpeer_addr*, %struct.inetpeer_addr*, %struct.net*, i32)* @__tcp_get_metrics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tcp_metrics_block* @__tcp_get_metrics(%struct.inetpeer_addr* %0, %struct.inetpeer_addr* %1, %struct.net* %2, i32 %3) #0 {
  %5 = alloca %struct.inetpeer_addr*, align 8
  %6 = alloca %struct.inetpeer_addr*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tcp_metrics_block*, align 8
  %10 = alloca i32, align 4
  store %struct.inetpeer_addr* %0, %struct.inetpeer_addr** %5, align 8
  store %struct.inetpeer_addr* %1, %struct.inetpeer_addr** %6, align 8
  store %struct.net* %2, %struct.net** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tcp_metrics_hash, align 8
  %12 = load i32, i32* %8, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.tcp_metrics_block* @rcu_dereference(i32 %16)
  store %struct.tcp_metrics_block* %17, %struct.tcp_metrics_block** %9, align 8
  br label %18

18:                                               ; preds = %43, %4
  %19 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %9, align 8
  %20 = icmp ne %struct.tcp_metrics_block* %19, null
  br i1 %20, label %21, label %48

21:                                               ; preds = %18
  %22 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %9, align 8
  %23 = getelementptr inbounds %struct.tcp_metrics_block, %struct.tcp_metrics_block* %22, i32 0, i32 1
  %24 = load %struct.inetpeer_addr*, %struct.inetpeer_addr** %5, align 8
  %25 = call i64 @addr_same(i32* %23, %struct.inetpeer_addr* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %21
  %28 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %9, align 8
  %29 = getelementptr inbounds %struct.tcp_metrics_block, %struct.tcp_metrics_block* %28, i32 0, i32 0
  %30 = load %struct.inetpeer_addr*, %struct.inetpeer_addr** %6, align 8
  %31 = call i64 @addr_same(i32* %29, %struct.inetpeer_addr* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %9, align 8
  %35 = call i32 @tm_net(%struct.tcp_metrics_block* %34)
  %36 = load %struct.net*, %struct.net** %7, align 8
  %37 = call i64 @net_eq(i32 %35, %struct.net* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %48

40:                                               ; preds = %33, %27, %21
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %40
  %44 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %9, align 8
  %45 = getelementptr inbounds %struct.tcp_metrics_block, %struct.tcp_metrics_block* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.tcp_metrics_block* @rcu_dereference(i32 %46)
  store %struct.tcp_metrics_block* %47, %struct.tcp_metrics_block** %9, align 8
  br label %18

48:                                               ; preds = %39, %18
  %49 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call %struct.tcp_metrics_block* @tcp_get_encode(%struct.tcp_metrics_block* %49, i32 %50)
  ret %struct.tcp_metrics_block* %51
}

declare dso_local %struct.tcp_metrics_block* @rcu_dereference(i32) #1

declare dso_local i64 @addr_same(i32*, %struct.inetpeer_addr*) #1

declare dso_local i64 @net_eq(i32, %struct.net*) #1

declare dso_local i32 @tm_net(%struct.tcp_metrics_block*) #1

declare dso_local %struct.tcp_metrics_block* @tcp_get_encode(%struct.tcp_metrics_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
