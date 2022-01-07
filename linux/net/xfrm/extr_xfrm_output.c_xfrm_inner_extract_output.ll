; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_output.c_xfrm_inner_extract_output.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_output.c_xfrm_inner_extract_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.xfrm_mode, %struct.TYPE_4__ }
%struct.xfrm_mode = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.xfrm_state_afinfo = type { i32 (%struct.xfrm_state.0*, %struct.sk_buff.1*)* }
%struct.xfrm_state.0 = type opaque
%struct.sk_buff.1 = type opaque
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@EAFNOSUPPORT = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.sk_buff*)* @xfrm_inner_extract_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_inner_extract_output(%struct.xfrm_state* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfrm_state*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.xfrm_state_afinfo*, align 8
  %7 = alloca %struct.xfrm_mode*, align 8
  %8 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load i32, i32* @EAFNOSUPPORT, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %12 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AF_UNSPEC, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call %struct.TYPE_6__* @skb_dst(%struct.sk_buff* %19)
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @xfrm_af2proto(i32 %24)
  %26 = call %struct.xfrm_mode* @xfrm_ip2inner_mode(%struct.xfrm_state* %18, i32 %25)
  store %struct.xfrm_mode* %26, %struct.xfrm_mode** %7, align 8
  br label %30

27:                                               ; preds = %2
  %28 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %29 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %28, i32 0, i32 0
  store %struct.xfrm_mode* %29, %struct.xfrm_mode** %7, align 8
  br label %30

30:                                               ; preds = %27, %17
  %31 = load %struct.xfrm_mode*, %struct.xfrm_mode** %7, align 8
  %32 = icmp eq %struct.xfrm_mode* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @EAFNOSUPPORT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %57

36:                                               ; preds = %30
  %37 = call i32 (...) @rcu_read_lock()
  %38 = load %struct.xfrm_mode*, %struct.xfrm_mode** %7, align 8
  %39 = getelementptr inbounds %struct.xfrm_mode, %struct.xfrm_mode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.xfrm_state_afinfo* @xfrm_state_afinfo_get_rcu(i32 %40)
  store %struct.xfrm_state_afinfo* %41, %struct.xfrm_state_afinfo** %6, align 8
  %42 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %6, align 8
  %43 = call i64 @likely(%struct.xfrm_state_afinfo* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %36
  %46 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %6, align 8
  %47 = getelementptr inbounds %struct.xfrm_state_afinfo, %struct.xfrm_state_afinfo* %46, i32 0, i32 0
  %48 = load i32 (%struct.xfrm_state.0*, %struct.sk_buff.1*)*, i32 (%struct.xfrm_state.0*, %struct.sk_buff.1*)** %47, align 8
  %49 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %50 = bitcast %struct.xfrm_state* %49 to %struct.xfrm_state.0*
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = bitcast %struct.sk_buff* %51 to %struct.sk_buff.1*
  %53 = call i32 %48(%struct.xfrm_state.0* %50, %struct.sk_buff.1* %52)
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %45, %36
  %55 = call i32 (...) @rcu_read_unlock()
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %54, %33
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.xfrm_mode* @xfrm_ip2inner_mode(%struct.xfrm_state*, i32) #1

declare dso_local i32 @xfrm_af2proto(i32) #1

declare dso_local %struct.TYPE_6__* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.xfrm_state_afinfo* @xfrm_state_afinfo_get_rcu(i32) #1

declare dso_local i64 @likely(%struct.xfrm_state_afinfo*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
