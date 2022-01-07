; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_output.c_xfrm_local_error.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_output.c_xfrm_local_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.xfrm_state_afinfo = type { i32 (%struct.sk_buff.0*, i32)* }
%struct.sk_buff.0 = type opaque

@ETH_P_IP = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfrm_local_error(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfrm_state_afinfo*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i32, i32* @ETH_P_IP, align 4
  %11 = call i64 @htons(i32 %10)
  %12 = icmp eq i64 %9, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @AF_INET, align 4
  store i32 %14, i32* %5, align 4
  br label %26

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @ETH_P_IPV6, align 4
  %20 = call i64 @htons(i32 %19)
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @AF_INET6, align 4
  store i32 %23, i32* %5, align 4
  br label %25

24:                                               ; preds = %15
  br label %40

25:                                               ; preds = %22
  br label %26

26:                                               ; preds = %25, %13
  %27 = load i32, i32* %5, align 4
  %28 = call %struct.xfrm_state_afinfo* @xfrm_state_get_afinfo(i32 %27)
  store %struct.xfrm_state_afinfo* %28, %struct.xfrm_state_afinfo** %6, align 8
  %29 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %6, align 8
  %30 = icmp ne %struct.xfrm_state_afinfo* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %6, align 8
  %33 = getelementptr inbounds %struct.xfrm_state_afinfo, %struct.xfrm_state_afinfo* %32, i32 0, i32 0
  %34 = load i32 (%struct.sk_buff.0*, i32)*, i32 (%struct.sk_buff.0*, i32)** %33, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %36 = bitcast %struct.sk_buff* %35 to %struct.sk_buff.0*
  %37 = load i32, i32* %4, align 4
  %38 = call i32 %34(%struct.sk_buff.0* %36, i32 %37)
  %39 = call i32 (...) @rcu_read_unlock()
  br label %40

40:                                               ; preds = %24, %31, %26
  ret void
}

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.xfrm_state_afinfo* @xfrm_state_get_afinfo(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
