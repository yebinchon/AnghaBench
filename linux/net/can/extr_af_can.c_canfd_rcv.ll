; ModuleID = '/home/carl/AnghaBench/linux/net/can/extr_af_can.c_canfd_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/extr_af_can.c_canfd_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.packet_type = type { i32 }
%struct.net_device = type { i64 }
%struct.canfd_frame = type { i64 }

@ARPHRD_CAN = common dso_local global i64 0, align 8
@CANFD_MTU = common dso_local global i64 0, align 8
@CANFD_MAX_DLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [75 x i8] c"PF_CAN: dropped non conform CAN FD skbuf: dev type %d, len %d, datalen %d\0A\00", align 1
@NET_RX_DROP = common dso_local global i32 0, align 4
@NET_RX_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)* @canfd_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @canfd_rcv(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2, %struct.net_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.packet_type*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.canfd_frame*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.packet_type* %2, %struct.packet_type** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.canfd_frame*
  store %struct.canfd_frame* %14, %struct.canfd_frame** %10, align 8
  %15 = load %struct.net_device*, %struct.net_device** %7, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ARPHRD_CAN, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %32, label %20

20:                                               ; preds = %4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CANFD_MTU, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.canfd_frame*, %struct.canfd_frame** %10, align 8
  %28 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CANFD_MAX_DLEN, align 8
  %31 = icmp sgt i64 %29, %30
  br label %32

32:                                               ; preds = %26, %20, %4
  %33 = phi i1 [ true, %20 ], [ true, %4 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %32
  %38 = load %struct.net_device*, %struct.net_device** %7, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.canfd_frame*, %struct.canfd_frame** %10, align 8
  %45 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @pr_warn_once(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i64 %40, i64 %43, i64 %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = call i32 @kfree_skb(%struct.sk_buff* %48)
  %50 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %50, i32* %5, align 4
  br label %56

51:                                               ; preds = %32
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = load %struct.net_device*, %struct.net_device** %7, align 8
  %54 = call i32 @can_receive(%struct.sk_buff* %52, %struct.net_device* %53)
  %55 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %51, %37
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_warn_once(i8*, i64, i64, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @can_receive(%struct.sk_buff*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
