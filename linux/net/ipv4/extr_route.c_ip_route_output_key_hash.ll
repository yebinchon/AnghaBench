; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_ip_route_output_key_hash.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_ip_route_output_key_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtable = type { i32 }
%struct.net = type { i32 }
%struct.flowi4 = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.fib_result = type { i32, i32*, i32*, i32 }

@RTN_UNSPEC = common dso_local global i32 0, align 4
@LOOPBACK_IFINDEX = common dso_local global i32 0, align 4
@IPTOS_RT_MASK = common dso_local global i32 0, align 4
@RTO_ONLINK = common dso_local global i32 0, align 4
@RT_SCOPE_LINK = common dso_local global i32 0, align 4
@RT_SCOPE_UNIVERSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rtable* @ip_route_output_key_hash(%struct.net* %0, %struct.flowi4* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.flowi4*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fib_result, align 8
  %9 = alloca %struct.rtable*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.flowi4* %1, %struct.flowi4** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %10 = load %struct.flowi4*, %struct.flowi4** %5, align 8
  %11 = call i32 @RT_FL_TOS(%struct.flowi4* %10)
  store i32 %11, i32* %7, align 4
  %12 = bitcast %struct.fib_result* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 32, i1 false)
  %13 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %8, i32 0, i32 3
  %14 = load i32, i32* @RTN_UNSPEC, align 4
  store i32 %14, i32* %13, align 8
  %15 = load i32, i32* @LOOPBACK_IFINDEX, align 4
  %16 = load %struct.flowi4*, %struct.flowi4** %5, align 8
  %17 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @IPTOS_RT_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load %struct.flowi4*, %struct.flowi4** %5, align 8
  %22 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @RTO_ONLINK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @RT_SCOPE_LINK, align 4
  br label %31

29:                                               ; preds = %3
  %30 = load i32, i32* @RT_SCOPE_UNIVERSE, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = load %struct.flowi4*, %struct.flowi4** %5, align 8
  %34 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = call i32 (...) @rcu_read_lock()
  %36 = load %struct.net*, %struct.net** %4, align 8
  %37 = load %struct.flowi4*, %struct.flowi4** %5, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = call %struct.rtable* @ip_route_output_key_hash_rcu(%struct.net* %36, %struct.flowi4* %37, %struct.fib_result* %8, %struct.sk_buff* %38)
  store %struct.rtable* %39, %struct.rtable** %9, align 8
  %40 = call i32 (...) @rcu_read_unlock()
  %41 = load %struct.rtable*, %struct.rtable** %9, align 8
  ret %struct.rtable* %41
}

declare dso_local i32 @RT_FL_TOS(%struct.flowi4*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.rtable* @ip_route_output_key_hash_rcu(%struct.net*, %struct.flowi4*, %struct.fib_result*, %struct.sk_buff*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
