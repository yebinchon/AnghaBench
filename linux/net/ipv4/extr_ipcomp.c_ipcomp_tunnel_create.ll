; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ipcomp.c_ipcomp_tunnel_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ipcomp.c_ipcomp_tunnel_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_10__, i32, i32, %struct.TYPE_9__, i32, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.net = type { i32 }

@IPPROTO_IPIP = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@XFRM_STATE_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfrm_state* (%struct.xfrm_state*)* @ipcomp_tunnel_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfrm_state* @ipcomp_tunnel_create(%struct.xfrm_state* %0) #0 {
  %2 = alloca %struct.xfrm_state*, align 8
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.xfrm_state*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %2, align 8
  %5 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %6 = call %struct.net* @xs_net(%struct.xfrm_state* %5)
  store %struct.net* %6, %struct.net** %3, align 8
  %7 = load %struct.net*, %struct.net** %3, align 8
  %8 = call %struct.xfrm_state* @xfrm_state_alloc(%struct.net* %7)
  store %struct.xfrm_state* %8, %struct.xfrm_state** %4, align 8
  %9 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %10 = icmp ne %struct.xfrm_state* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %86

12:                                               ; preds = %1
  %13 = load i32, i32* @IPPROTO_IPIP, align 4
  %14 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %15 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  store i32 %13, i32* %16, align 4
  %17 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %18 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %23 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  %25 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %26 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %31 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 4
  %34 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %35 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %34, i32 0, i32 4
  %36 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %37 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %36, i32 0, i32 4
  %38 = call i32 @memcpy(i32* %35, i32* %37, i32 4)
  %39 = load i32, i32* @AF_INET, align 4
  %40 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %41 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 4
  store i32 %39, i32* %42, align 4
  %43 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %44 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %48 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 3
  store i32 %46, i32* %49, align 4
  %50 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %51 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %56 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store i32 %54, i32* %58, align 4
  %59 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %60 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %64 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  %66 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %67 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %71 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 4
  %73 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %74 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %73, i32 0, i32 2
  %75 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %76 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %75, i32 0, i32 2
  %77 = call i32 @memcpy(i32* %74, i32* %76, i32 4)
  %78 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %79 = call i64 @xfrm_init_state(%struct.xfrm_state* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %12
  br label %88

82:                                               ; preds = %12
  %83 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %84 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %83, i32 0, i32 1
  %85 = call i32 @atomic_set(i32* %84, i32 1)
  br label %86

86:                                               ; preds = %88, %82, %11
  %87 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  ret %struct.xfrm_state* %87

88:                                               ; preds = %81
  %89 = load i32, i32* @XFRM_STATE_DEAD, align 4
  %90 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %91 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 4
  %93 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %94 = call i32 @xfrm_state_put(%struct.xfrm_state* %93)
  store %struct.xfrm_state* null, %struct.xfrm_state** %4, align 8
  br label %86
}

declare dso_local %struct.net* @xs_net(%struct.xfrm_state*) #1

declare dso_local %struct.xfrm_state* @xfrm_state_alloc(%struct.net*) #1

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
