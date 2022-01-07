; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_ib_media.c_tipc_ib_raw2addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_ib_media.c_tipc_ib_raw2addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_bearer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tipc_media_addr = type { i32, i32, i32 }

@INFINIBAND_ALEN = common dso_local global i32 0, align 4
@TIPC_MEDIA_TYPE_IB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_bearer*, %struct.tipc_media_addr*, i8*)* @tipc_ib_raw2addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_ib_raw2addr(%struct.tipc_bearer* %0, %struct.tipc_media_addr* %1, i8* %2) #0 {
  %4 = alloca %struct.tipc_bearer*, align 8
  %5 = alloca %struct.tipc_media_addr*, align 8
  %6 = alloca i8*, align 8
  store %struct.tipc_bearer* %0, %struct.tipc_bearer** %4, align 8
  store %struct.tipc_media_addr* %1, %struct.tipc_media_addr** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.tipc_media_addr*, %struct.tipc_media_addr** %5, align 8
  %8 = call i32 @memset(%struct.tipc_media_addr* %7, i32 0, i32 12)
  %9 = load %struct.tipc_media_addr*, %struct.tipc_media_addr** %5, align 8
  %10 = getelementptr inbounds %struct.tipc_media_addr, %struct.tipc_media_addr* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* @INFINIBAND_ALEN, align 4
  %14 = call i32 @memcpy(i32 %11, i8* %12, i32 %13)
  %15 = load i32, i32* @TIPC_MEDIA_TYPE_IB, align 4
  %16 = load %struct.tipc_media_addr*, %struct.tipc_media_addr** %5, align 8
  %17 = getelementptr inbounds %struct.tipc_media_addr, %struct.tipc_media_addr* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.tipc_bearer*, %struct.tipc_bearer** %4, align 8
  %20 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @INFINIBAND_ALEN, align 4
  %24 = call i32 @memcmp(i8* %18, i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = load %struct.tipc_media_addr*, %struct.tipc_media_addr** %5, align 8
  %29 = getelementptr inbounds %struct.tipc_media_addr, %struct.tipc_media_addr* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  ret i32 0
}

declare dso_local i32 @memset(%struct.tipc_media_addr*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @memcmp(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
