; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_ip_rt_get_source.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_ip_rt_get_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.rtable = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.fib_result = type { i32 }
%struct.iphdr = type { i32, i32, i32 }
%struct.flowi4 = type { i32, i32, i32, i32, i32, i32 }

@RT_SCOPE_UNIVERSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_rt_get_source(i32* %0, %struct.sk_buff* %1, %struct.rtable* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.rtable*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fib_result, align 4
  %9 = alloca %struct.iphdr*, align 8
  %10 = alloca %struct.flowi4, align 4
  store i32* %0, i32** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.rtable* %2, %struct.rtable** %6, align 8
  %11 = load %struct.rtable*, %struct.rtable** %6, align 8
  %12 = call i64 @rt_is_output_route(%struct.rtable* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %15)
  %17 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  br label %81

19:                                               ; preds = %3
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %20)
  store %struct.iphdr* %21, %struct.iphdr** %9, align 8
  %22 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %10, i32 0, i32 0
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %22, align 4
  %26 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %10, i32 0, i32 1
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %26, align 4
  %32 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %10, i32 0, i32 2
  %33 = load %struct.rtable*, %struct.rtable** %6, align 8
  %34 = getelementptr inbounds %struct.rtable, %struct.rtable* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %32, align 4
  %39 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %10, i32 0, i32 3
  %40 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %41 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @RT_TOS(i32 %42)
  store i32 %43, i32* %39, align 4
  %44 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %10, i32 0, i32 4
  %45 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %46 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %44, align 4
  %48 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %10, i32 0, i32 5
  %49 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %50 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %48, align 4
  %52 = call i32 (...) @rcu_read_lock()
  %53 = load %struct.rtable*, %struct.rtable** %6, align 8
  %54 = getelementptr inbounds %struct.rtable, %struct.rtable* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = call i32 @dev_net(%struct.TYPE_7__* %56)
  %58 = call i64 @fib_lookup(i32 %57, %struct.flowi4* %10, %struct.fib_result* %8, i32 0)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %19
  %61 = load %struct.rtable*, %struct.rtable** %6, align 8
  %62 = getelementptr inbounds %struct.rtable, %struct.rtable* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = call i32 @dev_net(%struct.TYPE_7__* %64)
  %66 = call i32 @fib_result_prefsrc(i32 %65, %struct.fib_result* %8)
  store i32 %66, i32* %7, align 4
  br label %79

67:                                               ; preds = %19
  %68 = load %struct.rtable*, %struct.rtable** %6, align 8
  %69 = getelementptr inbounds %struct.rtable, %struct.rtable* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = load %struct.rtable*, %struct.rtable** %6, align 8
  %73 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %74 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @rt_nexthop(%struct.rtable* %72, i32 %75)
  %77 = load i32, i32* @RT_SCOPE_UNIVERSE, align 4
  %78 = call i32 @inet_select_addr(%struct.TYPE_7__* %71, i32 %76, i32 %77)
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %67, %60
  %80 = call i32 (...) @rcu_read_unlock()
  br label %81

81:                                               ; preds = %79, %14
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @memcpy(i32* %82, i32* %7, i32 4)
  ret void
}

declare dso_local i64 @rt_is_output_route(%struct.rtable*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @RT_TOS(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @fib_lookup(i32, %struct.flowi4*, %struct.fib_result*, i32) #1

declare dso_local i32 @dev_net(%struct.TYPE_7__*) #1

declare dso_local i32 @fib_result_prefsrc(i32, %struct.fib_result*) #1

declare dso_local i32 @inet_select_addr(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @rt_nexthop(%struct.rtable*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
