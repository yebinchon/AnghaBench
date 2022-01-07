; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ipcomp6.c_ipcomp6_tunnel_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ipcomp6.c_ipcomp6_tunnel_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_10__, i32, i32, %struct.TYPE_9__, i32, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.net = type { i32 }

@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@XFRM_STATE_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfrm_state* (%struct.xfrm_state*)* @ipcomp6_tunnel_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfrm_state* @ipcomp6_tunnel_create(%struct.xfrm_state* %0) #0 {
  %2 = alloca %struct.xfrm_state*, align 8
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.xfrm_state*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %2, align 8
  %5 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %6 = call %struct.net* @xs_net(%struct.xfrm_state* %5)
  store %struct.net* %6, %struct.net** %3, align 8
  store %struct.xfrm_state* null, %struct.xfrm_state** %4, align 8
  %7 = load %struct.net*, %struct.net** %3, align 8
  %8 = call %struct.xfrm_state* @xfrm_state_alloc(%struct.net* %7)
  store %struct.xfrm_state* %8, %struct.xfrm_state** %4, align 8
  %9 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %10 = icmp ne %struct.xfrm_state* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %84

12:                                               ; preds = %1
  %13 = load i32, i32* @IPPROTO_IPV6, align 4
  %14 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %15 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  store i32 %13, i32* %16, align 4
  %17 = load %struct.net*, %struct.net** %3, align 8
  %18 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %19 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = bitcast %struct.TYPE_8__* %20 to i32*
  %22 = call i32 @xfrm6_tunnel_alloc_spi(%struct.net* %17, i32* %21)
  %23 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %24 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 8
  %26 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %27 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %12
  br label %86

32:                                               ; preds = %12
  %33 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %34 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %39 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @memcpy(i32* %37, i32* %42, i32 4)
  %44 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %45 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %44, i32 0, i32 4
  %46 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %47 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %46, i32 0, i32 4
  %48 = call i32 @memcpy(i32* %45, i32* %47, i32 4)
  %49 = load i32, i32* @AF_INET6, align 4
  %50 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %51 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 4
  %53 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %54 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %58 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 8
  %60 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %61 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %66 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @memcpy(i32* %64, i32* %69, i32 4)
  %71 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %72 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %71, i32 0, i32 2
  %73 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %74 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %73, i32 0, i32 2
  %75 = call i32 @memcpy(i32* %72, i32* %74, i32 4)
  %76 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %77 = call i64 @xfrm_init_state(%struct.xfrm_state* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %32
  br label %86

80:                                               ; preds = %32
  %81 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %82 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %81, i32 0, i32 1
  %83 = call i32 @atomic_set(i32* %82, i32 1)
  br label %84

84:                                               ; preds = %86, %80, %11
  %85 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  ret %struct.xfrm_state* %85

86:                                               ; preds = %79, %31
  %87 = load i32, i32* @XFRM_STATE_DEAD, align 4
  %88 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %89 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  %91 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %92 = call i32 @xfrm_state_put(%struct.xfrm_state* %91)
  store %struct.xfrm_state* null, %struct.xfrm_state** %4, align 8
  br label %84
}

declare dso_local %struct.net* @xs_net(%struct.xfrm_state*) #1

declare dso_local %struct.xfrm_state* @xfrm_state_alloc(%struct.net*) #1

declare dso_local i32 @xfrm6_tunnel_alloc_spi(%struct.net*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @xfrm_init_state(%struct.xfrm_state*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @xfrm_state_put(%struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
