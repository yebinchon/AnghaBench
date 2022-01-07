; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_udp_media.c_tipc_udp_addr2msg.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_udp_media.c_tipc_udp_addr2msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_media_addr = type { i32 }

@TIPC_MEDIA_INFO_SIZE = common dso_local global i32 0, align 4
@TIPC_MEDIA_TYPE_UDP = common dso_local global i8 0, align 1
@TIPC_MEDIA_TYPE_OFFSET = common dso_local global i64 0, align 8
@TIPC_MEDIA_ADDR_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.tipc_media_addr*)* @tipc_udp_addr2msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_udp_addr2msg(i8* %0, %struct.tipc_media_addr* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tipc_media_addr*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.tipc_media_addr* %1, %struct.tipc_media_addr** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i32, i32* @TIPC_MEDIA_INFO_SIZE, align 4
  %7 = call i32 @memset(i8* %5, i32 0, i32 %6)
  %8 = load i8, i8* @TIPC_MEDIA_TYPE_UDP, align 1
  %9 = load i8*, i8** %3, align 8
  %10 = load i64, i64* @TIPC_MEDIA_TYPE_OFFSET, align 8
  %11 = getelementptr inbounds i8, i8* %9, i64 %10
  store i8 %8, i8* %11, align 1
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* @TIPC_MEDIA_ADDR_OFFSET, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load %struct.tipc_media_addr*, %struct.tipc_media_addr** %4, align 8
  %17 = getelementptr inbounds %struct.tipc_media_addr, %struct.tipc_media_addr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @memcpy(i8* %15, i32 %18, i32 4)
  ret i32 0
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
