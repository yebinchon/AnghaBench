; ModuleID = '/home/carl/AnghaBench/linux/net/key/extr_af_key.c_key_notify_sa_flush.c'
source_filename = "/home/carl/AnghaBench/linux/net/key/extr_af_key.c_key_notify_sa_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.km_event = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sadb_msg = type { i32, i64, i64, i32, i32, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@SADB_FLUSH = common dso_local global i32 0, align 4
@PF_KEY_V2 = common dso_local global i32 0, align 4
@BROADCAST_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.km_event*)* @key_notify_sa_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_notify_sa_flush(%struct.km_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.km_event*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sadb_msg*, align 8
  store %struct.km_event* %0, %struct.km_event** %3, align 8
  %6 = load i32, i32* @GFP_ATOMIC, align 4
  %7 = call %struct.sk_buff* @alloc_skb(i32 64, i32 %6)
  store %struct.sk_buff* %7, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = icmp ne %struct.sk_buff* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOBUFS, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %52

13:                                               ; preds = %1
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call %struct.sadb_msg* @skb_put(%struct.sk_buff* %14, i32 48)
  store %struct.sadb_msg* %15, %struct.sadb_msg** %5, align 8
  %16 = load %struct.km_event*, %struct.km_event** %3, align 8
  %17 = getelementptr inbounds %struct.km_event, %struct.km_event* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pfkey_proto2satype(i32 %19)
  %21 = load %struct.sadb_msg*, %struct.sadb_msg** %5, align 8
  %22 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %21, i32 0, i32 7
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @SADB_FLUSH, align 4
  %24 = load %struct.sadb_msg*, %struct.sadb_msg** %5, align 8
  %25 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 4
  %26 = load %struct.km_event*, %struct.km_event** %3, align 8
  %27 = getelementptr inbounds %struct.km_event, %struct.km_event* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sadb_msg*, %struct.sadb_msg** %5, align 8
  %30 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 8
  %31 = load %struct.km_event*, %struct.km_event** %3, align 8
  %32 = getelementptr inbounds %struct.km_event, %struct.km_event* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sadb_msg*, %struct.sadb_msg** %5, align 8
  %35 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @PF_KEY_V2, align 4
  %37 = load %struct.sadb_msg*, %struct.sadb_msg** %5, align 8
  %38 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load %struct.sadb_msg*, %struct.sadb_msg** %5, align 8
  %40 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load %struct.sadb_msg*, %struct.sadb_msg** %5, align 8
  %42 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %41, i32 0, i32 0
  store i32 12, i32* %42, align 8
  %43 = load %struct.sadb_msg*, %struct.sadb_msg** %5, align 8
  %44 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = load i32, i32* @GFP_ATOMIC, align 4
  %47 = load i32, i32* @BROADCAST_ALL, align 4
  %48 = load %struct.km_event*, %struct.km_event** %3, align 8
  %49 = getelementptr inbounds %struct.km_event, %struct.km_event* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @pfkey_broadcast(%struct.sk_buff* %45, i32 %46, i32 %47, i32* null, i32 %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %13, %10
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local %struct.sadb_msg* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @pfkey_proto2satype(i32) #1

declare dso_local i32 @pfkey_broadcast(%struct.sk_buff*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
