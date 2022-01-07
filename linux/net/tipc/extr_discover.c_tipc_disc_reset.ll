; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_discover.c_tipc_disc_reset.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_discover.c_tipc_disc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_bearer = type { i32, i32, %struct.tipc_discoverer* }
%struct.tipc_discoverer = type { i32, i32, i64, i32, i32, i64, i32, i32, %struct.net* }
%struct.tipc_media_addr = type { i32 }
%struct.sk_buff = type { i32 }

@DSC_REQ_MSG = common dso_local global i32 0, align 4
@TIPC_DISC_INIT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_disc_reset(%struct.net* %0, %struct.tipc_bearer* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.tipc_bearer*, align 8
  %5 = alloca %struct.tipc_discoverer*, align 8
  %6 = alloca %struct.tipc_media_addr, align 4
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store %struct.tipc_bearer* %1, %struct.tipc_bearer** %4, align 8
  %8 = load %struct.tipc_bearer*, %struct.tipc_bearer** %4, align 8
  %9 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %8, i32 0, i32 2
  %10 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %9, align 8
  store %struct.tipc_discoverer* %10, %struct.tipc_discoverer** %5, align 8
  %11 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %5, align 8
  %12 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_bh(i32* %12)
  %14 = load %struct.net*, %struct.net** %3, align 8
  %15 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %5, align 8
  %16 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @DSC_REQ_MSG, align 4
  %19 = load %struct.tipc_bearer*, %struct.tipc_bearer** %4, align 8
  %20 = call i32 @tipc_disc_init_msg(%struct.net* %14, i32 %17, i32 %18, %struct.tipc_bearer* %19)
  %21 = load %struct.net*, %struct.net** %3, align 8
  %22 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %5, align 8
  %23 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %22, i32 0, i32 8
  store %struct.net* %21, %struct.net** %23, align 8
  %24 = load %struct.tipc_bearer*, %struct.tipc_bearer** %4, align 8
  %25 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %5, align 8
  %28 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %27, i32 0, i32 7
  store i32 %26, i32* %28, align 4
  %29 = load %struct.tipc_bearer*, %struct.tipc_bearer** %4, align 8
  %30 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %5, align 8
  %33 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 8
  %34 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %5, align 8
  %35 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %34, i32 0, i32 5
  store i64 0, i64* %35, align 8
  %36 = load i64, i64* @TIPC_DISC_INIT, align 8
  %37 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %5, align 8
  %38 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %37, i32 0, i32 2
  store i64 %36, i64* %38, align 8
  %39 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %5, align 8
  %40 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %39, i32 0, i32 4
  %41 = call i32 @memcpy(%struct.tipc_media_addr* %6, i32* %40, i32 4)
  %42 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %5, align 8
  %43 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %42, i32 0, i32 3
  %44 = load i64, i64* @jiffies, align 8
  %45 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %5, align 8
  %46 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = call i32 @mod_timer(i32* %43, i64 %48)
  %50 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %5, align 8
  %51 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @GFP_ATOMIC, align 4
  %54 = call %struct.sk_buff* @skb_clone(i32 %52, i32 %53)
  store %struct.sk_buff* %54, %struct.sk_buff** %7, align 8
  %55 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %5, align 8
  %56 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %55, i32 0, i32 0
  %57 = call i32 @spin_unlock_bh(i32* %56)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %59 = icmp ne %struct.sk_buff* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %2
  %61 = load %struct.net*, %struct.net** %3, align 8
  %62 = load %struct.tipc_bearer*, %struct.tipc_bearer** %4, align 8
  %63 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %66 = call i32 @tipc_bearer_xmit_skb(%struct.net* %61, i32 %64, %struct.sk_buff* %65, %struct.tipc_media_addr* %6)
  br label %67

67:                                               ; preds = %60, %2
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @tipc_disc_init_msg(%struct.net*, i32, i32, %struct.tipc_bearer*) #1

declare dso_local i32 @memcpy(%struct.tipc_media_addr*, i32*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local %struct.sk_buff* @skb_clone(i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @tipc_bearer_xmit_skb(%struct.net*, i32, %struct.sk_buff*, %struct.tipc_media_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
