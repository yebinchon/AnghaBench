; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ipcomp6.c_ipcomp6_tunnel_attach.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ipcomp6.c_ipcomp6_tunnel_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32, %struct.xfrm_state*, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.net = type { i32 }

@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*)* @ipcomp6_tunnel_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipcomp6_tunnel_attach(%struct.xfrm_state* %0) #0 {
  %2 = alloca %struct.xfrm_state*, align 8
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %2, align 8
  %8 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %9 = call %struct.net* @xs_net(%struct.xfrm_state* %8)
  store %struct.net* %9, %struct.net** %3, align 8
  store i32 0, i32* %4, align 4
  store %struct.xfrm_state* null, %struct.xfrm_state** %5, align 8
  %10 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %11 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %15 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %13, %17
  store i32 %18, i32* %7, align 4
  %19 = load %struct.net*, %struct.net** %3, align 8
  %20 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %21 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = call i64 @xfrm6_tunnel_spi_lookup(%struct.net* %19, i32* %22)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %1
  %27 = load %struct.net*, %struct.net** %3, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %30 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %6, align 8
  %33 = load i32, i32* @IPPROTO_IPV6, align 4
  %34 = load i32, i32* @AF_INET6, align 4
  %35 = call %struct.xfrm_state* @xfrm_state_lookup(%struct.net* %27, i32 %28, i32* %31, i64 %32, i32 %33, i32 %34)
  store %struct.xfrm_state* %35, %struct.xfrm_state** %5, align 8
  br label %36

36:                                               ; preds = %26, %1
  %37 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %38 = icmp ne %struct.xfrm_state* %37, null
  br i1 %38, label %52, label %39

39:                                               ; preds = %36
  %40 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %41 = call %struct.xfrm_state* @ipcomp6_tunnel_create(%struct.xfrm_state* %40)
  store %struct.xfrm_state* %41, %struct.xfrm_state** %5, align 8
  %42 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %43 = icmp ne %struct.xfrm_state* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %59

47:                                               ; preds = %39
  %48 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %49 = call i32 @xfrm_state_insert(%struct.xfrm_state* %48)
  %50 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %51 = call i32 @xfrm_state_hold(%struct.xfrm_state* %50)
  br label %52

52:                                               ; preds = %47, %36
  %53 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %54 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %55 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %54, i32 0, i32 1
  store %struct.xfrm_state* %53, %struct.xfrm_state** %55, align 8
  %56 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %57 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %56, i32 0, i32 0
  %58 = call i32 @atomic_inc(i32* %57)
  br label %59

59:                                               ; preds = %52, %44
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.net* @xs_net(%struct.xfrm_state*) #1

declare dso_local i64 @xfrm6_tunnel_spi_lookup(%struct.net*, i32*) #1

declare dso_local %struct.xfrm_state* @xfrm_state_lookup(%struct.net*, i32, i32*, i64, i32, i32) #1

declare dso_local %struct.xfrm_state* @ipcomp6_tunnel_create(%struct.xfrm_state*) #1

declare dso_local i32 @xfrm_state_insert(%struct.xfrm_state*) #1

declare dso_local i32 @xfrm_state_hold(%struct.xfrm_state*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
