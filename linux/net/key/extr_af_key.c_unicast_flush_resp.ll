; ModuleID = '/home/carl/AnghaBench/linux/net/key/extr_af_key.c_unicast_flush_resp.c'
source_filename = "/home/carl/AnghaBench/linux/net/key/extr_af_key.c_unicast_flush_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sadb_msg = type { i32, i64 }
%struct.sk_buff = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@BROADCAST_ONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sadb_msg*)* @unicast_flush_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unicast_flush_resp(%struct.sock* %0, %struct.sadb_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sadb_msg*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sadb_msg*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sadb_msg* %1, %struct.sadb_msg** %5, align 8
  %8 = load i32, i32* @GFP_ATOMIC, align 4
  %9 = call %struct.sk_buff* @alloc_skb(i32 32, i32 %8)
  store %struct.sk_buff* %9, %struct.sk_buff** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOBUFS, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %30

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = load %struct.sadb_msg*, %struct.sadb_msg** %5, align 8
  %18 = call %struct.sadb_msg* @skb_put_data(%struct.sk_buff* %16, %struct.sadb_msg* %17, i32 16)
  store %struct.sadb_msg* %18, %struct.sadb_msg** %7, align 8
  %19 = load %struct.sadb_msg*, %struct.sadb_msg** %7, align 8
  %20 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.sadb_msg*, %struct.sadb_msg** %7, align 8
  %22 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %21, i32 0, i32 0
  store i32 4, i32* %22, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = load i32, i32* @GFP_ATOMIC, align 4
  %25 = load i32, i32* @BROADCAST_ONE, align 4
  %26 = load %struct.sock*, %struct.sock** %4, align 8
  %27 = load %struct.sock*, %struct.sock** %4, align 8
  %28 = call i32 @sock_net(%struct.sock* %27)
  %29 = call i32 @pfkey_broadcast(%struct.sk_buff* %23, i32 %24, i32 %25, %struct.sock* %26, i32 %28)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %15, %12
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local %struct.sadb_msg* @skb_put_data(%struct.sk_buff*, %struct.sadb_msg*, i32) #1

declare dso_local i32 @pfkey_broadcast(%struct.sk_buff*, i32, i32, %struct.sock*, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
