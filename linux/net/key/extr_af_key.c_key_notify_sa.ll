; ModuleID = '/home/carl/AnghaBench/linux/net/key/extr_af_key.c_key_notify_sa.c'
source_filename = "/home/carl/AnghaBench/linux/net/key/extr_af_key.c_key_notify_sa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.km_event = type { i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.sadb_msg = type { i32, i32, i64, i64, i32, i32, i32 }

@PF_KEY_V2 = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@BROADCAST_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.km_event*)* @key_notify_sa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_notify_sa(%struct.xfrm_state* %0, %struct.km_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfrm_state*, align 8
  %5 = alloca %struct.km_event*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sadb_msg*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %4, align 8
  store %struct.km_event* %1, %struct.km_event** %5, align 8
  %8 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %9 = call %struct.sk_buff* @pfkey_xfrm_state2msg(%struct.xfrm_state* %8)
  store %struct.sk_buff* %9, %struct.sk_buff** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = call i64 @IS_ERR(%struct.sk_buff* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call i32 @PTR_ERR(%struct.sk_buff* %14)
  store i32 %15, i32* %3, align 4
  br label %57

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.sadb_msg*
  store %struct.sadb_msg* %20, %struct.sadb_msg** %7, align 8
  %21 = load i32, i32* @PF_KEY_V2, align 4
  %22 = load %struct.sadb_msg*, %struct.sadb_msg** %7, align 8
  %23 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 8
  %24 = load %struct.km_event*, %struct.km_event** %5, align 8
  %25 = getelementptr inbounds %struct.km_event, %struct.km_event* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @event2keytype(i32 %26)
  %28 = load %struct.sadb_msg*, %struct.sadb_msg** %7, align 8
  %29 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  %30 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %31 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pfkey_proto2satype(i32 %33)
  %35 = load %struct.sadb_msg*, %struct.sadb_msg** %7, align 8
  %36 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load %struct.sadb_msg*, %struct.sadb_msg** %7, align 8
  %38 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  %39 = load %struct.sadb_msg*, %struct.sadb_msg** %7, align 8
  %40 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load %struct.km_event*, %struct.km_event** %5, align 8
  %42 = getelementptr inbounds %struct.km_event, %struct.km_event* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sadb_msg*, %struct.sadb_msg** %7, align 8
  %45 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.km_event*, %struct.km_event** %5, align 8
  %47 = getelementptr inbounds %struct.km_event, %struct.km_event* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.sadb_msg*, %struct.sadb_msg** %7, align 8
  %50 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = load i32, i32* @GFP_ATOMIC, align 4
  %53 = load i32, i32* @BROADCAST_ALL, align 4
  %54 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %55 = call i32 @xs_net(%struct.xfrm_state* %54)
  %56 = call i32 @pfkey_broadcast(%struct.sk_buff* %51, i32 %52, i32 %53, i32* null, i32 %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %16, %13
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.sk_buff* @pfkey_xfrm_state2msg(%struct.xfrm_state*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @event2keytype(i32) #1

declare dso_local i32 @pfkey_proto2satype(i32) #1

declare dso_local i32 @pfkey_broadcast(%struct.sk_buff*, i32, i32, i32*, i32) #1

declare dso_local i32 @xs_net(%struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
