; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_6lowpan.c_send_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_6lowpan.c_send_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { %struct.sk_buff* }
%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.msghdr = type { i32 }
%struct.kvec = type { i32, i32 }

@WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_chan*, %struct.sk_buff*, %struct.net_device*)* @send_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_pkt(%struct.l2cap_chan* %0, %struct.sk_buff* %1, %struct.net_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.l2cap_chan*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.msghdr, align 4
  %9 = alloca %struct.kvec, align 4
  %10 = alloca i32, align 4
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %13 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %12, i32 0, i32 0
  store %struct.sk_buff* %11, %struct.sk_buff** %13, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.kvec, %struct.kvec* %9, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.kvec, %struct.kvec* %9, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = call i32 @memset(%struct.msghdr* %8, i32 0, i32 4)
  %23 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 0
  %24 = load i32, i32* @WRITE, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @iov_iter_kvec(i32* %23, i32 %24, %struct.kvec* %9, i32 1, i32 %27)
  %29 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @l2cap_chan_send(%struct.l2cap_chan* %29, %struct.msghdr* %8, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %3
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.net_device*, %struct.net_device** %7, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, %37
  store i32 %42, i32* %40, align 4
  %43 = load %struct.net_device*, %struct.net_device** %7, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  store i32 0, i32* %4, align 4
  br label %59

48:                                               ; preds = %3
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load %struct.net_device*, %struct.net_device** %7, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %51, %48
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %36
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @memset(%struct.msghdr*, i32, i32) #1

declare dso_local i32 @iov_iter_kvec(i32*, i32, %struct.kvec*, i32, i32) #1

declare dso_local i32 @l2cap_chan_send(%struct.l2cap_chan*, %struct.msghdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
