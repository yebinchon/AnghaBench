; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_input.c_xfrm_prepare_input.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_input.c_xfrm_prepare_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.xfrm_mode }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.xfrm_mode = type { i32 }
%struct.sk_buff = type { i8* }
%struct.xfrm_state_afinfo = type { i32 (%struct.xfrm_state.0*, %struct.sk_buff.1*)* }
%struct.xfrm_state.0 = type opaque
%struct.sk_buff.1 = type opaque
%struct.TYPE_6__ = type { i32 }

@EAFNOSUPPORT = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.sk_buff*)* @xfrm_prepare_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_prepare_input(%struct.xfrm_state* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfrm_state*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.xfrm_mode*, align 8
  %7 = alloca %struct.xfrm_state_afinfo*, align 8
  %8 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %10 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %9, i32 0, i32 2
  store %struct.xfrm_mode* %10, %struct.xfrm_mode** %6, align 8
  %11 = load i32, i32* @EAFNOSUPPORT, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = call i32 (...) @rcu_read_lock()
  %14 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %15 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.xfrm_state_afinfo* @xfrm_state_afinfo_get_rcu(i32 %17)
  store %struct.xfrm_state_afinfo* %18, %struct.xfrm_state_afinfo** %7, align 8
  %19 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %7, align 8
  %20 = call i64 @likely(%struct.xfrm_state_afinfo* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %7, align 8
  %24 = getelementptr inbounds %struct.xfrm_state_afinfo, %struct.xfrm_state_afinfo* %23, i32 0, i32 0
  %25 = load i32 (%struct.xfrm_state.0*, %struct.sk_buff.1*)*, i32 (%struct.xfrm_state.0*, %struct.sk_buff.1*)** %24, align 8
  %26 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %27 = bitcast %struct.xfrm_state* %26 to %struct.xfrm_state.0*
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = bitcast %struct.sk_buff* %28 to %struct.sk_buff.1*
  %30 = call i32 %25(%struct.xfrm_state.0* %27, %struct.sk_buff.1* %29)
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %22, %2
  %32 = call i32 (...) @rcu_read_unlock()
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %3, align 4
  br label %78

37:                                               ; preds = %31
  %38 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %39 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @AF_UNSPEC, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %37
  %45 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = call %struct.TYPE_6__* @XFRM_MODE_SKB_CB(%struct.sk_buff* %46)
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.xfrm_mode* @xfrm_ip2inner_mode(%struct.xfrm_state* %45, i32 %49)
  store %struct.xfrm_mode* %50, %struct.xfrm_mode** %6, align 8
  %51 = load %struct.xfrm_mode*, %struct.xfrm_mode** %6, align 8
  %52 = icmp ne %struct.xfrm_mode* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %44
  %54 = load i32, i32* @EAFNOSUPPORT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %78

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %56, %37
  %58 = load %struct.xfrm_mode*, %struct.xfrm_mode** %6, align 8
  %59 = getelementptr inbounds %struct.xfrm_mode, %struct.xfrm_mode* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  switch i32 %60, label %71 [
    i32 129, label %61
    i32 128, label %66
  ]

61:                                               ; preds = %57
  %62 = load i32, i32* @ETH_P_IP, align 4
  %63 = call i8* @htons(i32 %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  br label %73

66:                                               ; preds = %57
  %67 = load i32, i32* @ETH_P_IPV6, align 4
  %68 = call i8* @htons(i32 %67)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  br label %73

71:                                               ; preds = %57
  %72 = call i32 @WARN_ON_ONCE(i32 1)
  br label %73

73:                                               ; preds = %71, %66, %61
  %74 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %75 = load %struct.xfrm_mode*, %struct.xfrm_mode** %6, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = call i32 @xfrm_inner_mode_encap_remove(%struct.xfrm_state* %74, %struct.xfrm_mode* %75, %struct.sk_buff* %76)
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %73, %53, %35
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.xfrm_state_afinfo* @xfrm_state_afinfo_get_rcu(i32) #1

declare dso_local i64 @likely(%struct.xfrm_state_afinfo*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.xfrm_mode* @xfrm_ip2inner_mode(%struct.xfrm_state*, i32) #1

declare dso_local %struct.TYPE_6__* @XFRM_MODE_SKB_CB(%struct.sk_buff*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @xfrm_inner_mode_encap_remove(%struct.xfrm_state*, %struct.xfrm_mode*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
