; ModuleID = '/home/carl/AnghaBench/linux/net/hsr/extr_hsr_forward.c_hsr_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/hsr/extr_hsr_forward.c_hsr_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.hsr_port = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.hsr_frame_info = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@HSR_PT_MASTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.hsr_port*, %struct.hsr_frame_info*)* @hsr_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsr_xmit(%struct.sk_buff* %0, %struct.hsr_port* %1, %struct.hsr_frame_info* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hsr_port*, align 8
  %6 = alloca %struct.hsr_frame_info*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.hsr_port* %1, %struct.hsr_port** %5, align 8
  store %struct.hsr_frame_info* %2, %struct.hsr_frame_info** %6, align 8
  %7 = load %struct.hsr_frame_info*, %struct.hsr_frame_info** %6, align 8
  %8 = getelementptr inbounds %struct.hsr_frame_info, %struct.hsr_frame_info* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @HSR_PT_MASTER, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %3
  %15 = load %struct.hsr_frame_info*, %struct.hsr_frame_info** %6, align 8
  %16 = getelementptr inbounds %struct.hsr_frame_info, %struct.hsr_frame_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = load %struct.hsr_port*, %struct.hsr_port** %5, align 8
  %20 = call i32 @hsr_addr_subst_dest(i32 %17, %struct.sk_buff* %18, %struct.hsr_port* %19)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call %struct.TYPE_6__* @eth_hdr(%struct.sk_buff* %21)
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.hsr_port*, %struct.hsr_port** %5, align 8
  %26 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ether_addr_copy(i32 %24, i32 %29)
  br label %31

31:                                               ; preds = %14, %3
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call i32 @dev_queue_xmit(%struct.sk_buff* %32)
  ret i32 %33
}

declare dso_local i32 @hsr_addr_subst_dest(i32, %struct.sk_buff*, %struct.hsr_port*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local %struct.TYPE_6__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
