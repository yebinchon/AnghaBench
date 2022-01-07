; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_udp_media.c_tipc_udp_media_addr_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_udp_media.c_tipc_udp_media_addr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_media_addr = type { i32, i32, i32 }
%struct.udp_media_addr = type { i32 }

@TIPC_MEDIA_TYPE_UDP = common dso_local global i32 0, align 4
@TIPC_BROADCAST_SUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tipc_media_addr*, %struct.udp_media_addr*)* @tipc_udp_media_addr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_udp_media_addr_set(%struct.tipc_media_addr* %0, %struct.udp_media_addr* %1) #0 {
  %3 = alloca %struct.tipc_media_addr*, align 8
  %4 = alloca %struct.udp_media_addr*, align 8
  store %struct.tipc_media_addr* %0, %struct.tipc_media_addr** %3, align 8
  store %struct.udp_media_addr* %1, %struct.udp_media_addr** %4, align 8
  %5 = load %struct.tipc_media_addr*, %struct.tipc_media_addr** %3, align 8
  %6 = call i32 @memset(%struct.tipc_media_addr* %5, i32 0, i32 12)
  %7 = load i32, i32* @TIPC_MEDIA_TYPE_UDP, align 4
  %8 = load %struct.tipc_media_addr*, %struct.tipc_media_addr** %3, align 8
  %9 = getelementptr inbounds %struct.tipc_media_addr, %struct.tipc_media_addr* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 4
  %10 = load %struct.tipc_media_addr*, %struct.tipc_media_addr** %3, align 8
  %11 = getelementptr inbounds %struct.tipc_media_addr, %struct.tipc_media_addr* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.udp_media_addr*, %struct.udp_media_addr** %4, align 8
  %14 = call i32 @memcpy(i32 %12, %struct.udp_media_addr* %13, i32 4)
  %15 = load %struct.udp_media_addr*, %struct.udp_media_addr** %4, align 8
  %16 = call i64 @tipc_udp_is_mcast_addr(%struct.udp_media_addr* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @TIPC_BROADCAST_SUPPORT, align 4
  %20 = load %struct.tipc_media_addr*, %struct.tipc_media_addr** %3, align 8
  %21 = getelementptr inbounds %struct.tipc_media_addr, %struct.tipc_media_addr* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %18, %2
  ret void
}

declare dso_local i32 @memset(%struct.tipc_media_addr*, i32, i32) #1

declare dso_local i32 @memcpy(i32, %struct.udp_media_addr*, i32) #1

declare dso_local i64 @tipc_udp_is_mcast_addr(%struct.udp_media_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
