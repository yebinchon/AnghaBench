; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ipcomp.c_ipcomp_tunnel_attach.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ipcomp.c_ipcomp_tunnel_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32, %struct.xfrm_state*, %struct.TYPE_9__, %struct.TYPE_7__, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.net = type { i32 }

@IPPROTO_IPIP = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*)* @ipcomp_tunnel_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipcomp_tunnel_attach(%struct.xfrm_state* %0) #0 {
  %2 = alloca %struct.xfrm_state*, align 8
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_state*, align 8
  %6 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %2, align 8
  %7 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %8 = call %struct.net* @xs_net(%struct.xfrm_state* %7)
  store %struct.net* %8, %struct.net** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %10 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %14 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %12, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.net*, %struct.net** %3, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %21 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %25 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @IPPROTO_IPIP, align 4
  %30 = load i32, i32* @AF_INET, align 4
  %31 = call %struct.xfrm_state* @xfrm_state_lookup(%struct.net* %18, i32 %19, i32* %23, i32 %28, i32 %29, i32 %30)
  store %struct.xfrm_state* %31, %struct.xfrm_state** %5, align 8
  %32 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %33 = icmp ne %struct.xfrm_state* %32, null
  br i1 %33, label %47, label %34

34:                                               ; preds = %1
  %35 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %36 = call %struct.xfrm_state* @ipcomp_tunnel_create(%struct.xfrm_state* %35)
  store %struct.xfrm_state* %36, %struct.xfrm_state** %5, align 8
  %37 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %38 = icmp ne %struct.xfrm_state* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %54

42:                                               ; preds = %34
  %43 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %44 = call i32 @xfrm_state_insert(%struct.xfrm_state* %43)
  %45 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %46 = call i32 @xfrm_state_hold(%struct.xfrm_state* %45)
  br label %47

47:                                               ; preds = %42, %1
  %48 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %49 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %50 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %49, i32 0, i32 1
  store %struct.xfrm_state* %48, %struct.xfrm_state** %50, align 8
  %51 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %52 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %51, i32 0, i32 0
  %53 = call i32 @atomic_inc(i32* %52)
  br label %54

54:                                               ; preds = %47, %39
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.net* @xs_net(%struct.xfrm_state*) #1

declare dso_local %struct.xfrm_state* @xfrm_state_lookup(%struct.net*, i32, i32*, i32, i32, i32) #1

declare dso_local %struct.xfrm_state* @ipcomp_tunnel_create(%struct.xfrm_state*) #1

declare dso_local i32 @xfrm_state_insert(%struct.xfrm_state*) #1

declare dso_local i32 @xfrm_state_hold(%struct.xfrm_state*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
