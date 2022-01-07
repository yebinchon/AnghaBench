; ModuleID = '/home/carl/AnghaBench/linux/net/hsr/extr_hsr_forward.c_check_local_dest.c'
source_filename = "/home/carl/AnghaBench/linux/net/hsr/extr_hsr_forward.c_check_local_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsr_priv = type { i32 }
%struct.sk_buff = type { i64 }
%struct.hsr_frame_info = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@PACKET_HOST = common dso_local global i64 0, align 8
@PACKET_MULTICAST = common dso_local global i64 0, align 8
@PACKET_BROADCAST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hsr_priv*, %struct.sk_buff*, %struct.hsr_frame_info*)* @check_local_dest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_local_dest(%struct.hsr_priv* %0, %struct.sk_buff* %1, %struct.hsr_frame_info* %2) #0 {
  %4 = alloca %struct.hsr_priv*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.hsr_frame_info*, align 8
  store %struct.hsr_priv* %0, %struct.hsr_priv** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.hsr_frame_info* %2, %struct.hsr_frame_info** %6, align 8
  %7 = load %struct.hsr_priv*, %struct.hsr_priv** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = call %struct.TYPE_2__* @eth_hdr(%struct.sk_buff* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @hsr_addr_is_self(%struct.hsr_priv* %7, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.hsr_frame_info*, %struct.hsr_frame_info** %6, align 8
  %16 = getelementptr inbounds %struct.hsr_frame_info, %struct.hsr_frame_info* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load i64, i64* @PACKET_HOST, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  br label %23

20:                                               ; preds = %3
  %21 = load %struct.hsr_frame_info*, %struct.hsr_frame_info** %6, align 8
  %22 = getelementptr inbounds %struct.hsr_frame_info, %struct.hsr_frame_info* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  br label %23

23:                                               ; preds = %20, %14
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PACKET_HOST, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %41, label %29

29:                                               ; preds = %23
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PACKET_MULTICAST, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PACKET_BROADCAST, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35, %29, %23
  %42 = load %struct.hsr_frame_info*, %struct.hsr_frame_info** %6, align 8
  %43 = getelementptr inbounds %struct.hsr_frame_info, %struct.hsr_frame_info* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  br label %47

44:                                               ; preds = %35
  %45 = load %struct.hsr_frame_info*, %struct.hsr_frame_info** %6, align 8
  %46 = getelementptr inbounds %struct.hsr_frame_info, %struct.hsr_frame_info* %45, i32 0, i32 1
  store i32 0, i32* %46, align 4
  br label %47

47:                                               ; preds = %44, %41
  ret void
}

declare dso_local i64 @hsr_addr_is_self(%struct.hsr_priv*, i32) #1

declare dso_local %struct.TYPE_2__* @eth_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
