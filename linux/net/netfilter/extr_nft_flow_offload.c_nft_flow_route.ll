; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_flow_offload.c_nft_flow_route.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_flow_offload.c_nft_flow_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_pktinfo = type { i32 }
%struct.nf_conn = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.nf_flow_route = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.dst_entry* }
%struct.dst_entry = type { i32 }
%struct.flowi = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_10__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_pktinfo*, %struct.nf_conn*, %struct.nf_flow_route*, i32)* @nft_flow_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_flow_route(%struct.nft_pktinfo* %0, %struct.nf_conn* %1, %struct.nf_flow_route* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nft_pktinfo*, align 8
  %7 = alloca %struct.nf_conn*, align 8
  %8 = alloca %struct.nf_flow_route*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dst_entry*, align 8
  %11 = alloca %struct.dst_entry*, align 8
  %12 = alloca %struct.flowi, align 4
  store %struct.nft_pktinfo* %0, %struct.nft_pktinfo** %6, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %7, align 8
  store %struct.nf_flow_route* %2, %struct.nf_flow_route** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %14 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.dst_entry* @skb_dst(i32 %15)
  store %struct.dst_entry* %16, %struct.dst_entry** %10, align 8
  store %struct.dst_entry* null, %struct.dst_entry** %11, align 8
  %17 = call i32 @memset(%struct.flowi* %12, i32 0, i32 16)
  %18 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %19 = call i32 @nft_pf(%struct.nft_pktinfo* %18)
  switch i32 %19, label %64 [
    i32 129, label %20
    i32 128, label %42
  ]

20:                                               ; preds = %4
  %21 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %22 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %21, i32 0, i32 0
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.flowi, %struct.flowi* %12, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %36 = call %struct.TYPE_18__* @nft_in(%struct.nft_pktinfo* %35)
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.flowi, %struct.flowi* %12, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  br label %64

42:                                               ; preds = %4
  %43 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %44 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %43, i32 0, i32 0
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.flowi, %struct.flowi* %12, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %58 = call %struct.TYPE_18__* @nft_in(%struct.nft_pktinfo* %57)
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.flowi, %struct.flowi* %12, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  br label %64

64:                                               ; preds = %4, %42, %20
  %65 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %66 = call i32 @nft_net(%struct.nft_pktinfo* %65)
  %67 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %68 = call i32 @nft_pf(%struct.nft_pktinfo* %67)
  %69 = call i32 @nf_route(i32 %66, %struct.dst_entry** %11, %struct.flowi* %12, i32 0, i32 %68)
  %70 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %71 = icmp ne %struct.dst_entry* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %64
  %73 = load i32, i32* @ENOENT, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %95

75:                                               ; preds = %64
  %76 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %77 = load %struct.nf_flow_route*, %struct.nf_flow_route** %8, align 8
  %78 = getelementptr inbounds %struct.nf_flow_route, %struct.nf_flow_route* %77, i32 0, i32 0
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  store %struct.dst_entry* %76, %struct.dst_entry** %83, align 8
  %84 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %85 = load %struct.nf_flow_route*, %struct.nf_flow_route** %8, align 8
  %86 = getelementptr inbounds %struct.nf_flow_route, %struct.nf_flow_route* %85, i32 0, i32 0
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  store %struct.dst_entry* %84, %struct.dst_entry** %94, align 8
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %75, %72
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local %struct.dst_entry* @skb_dst(i32) #1

declare dso_local i32 @memset(%struct.flowi*, i32, i32) #1

declare dso_local i32 @nft_pf(%struct.nft_pktinfo*) #1

declare dso_local %struct.TYPE_18__* @nft_in(%struct.nft_pktinfo*) #1

declare dso_local i32 @nf_route(i32, %struct.dst_entry**, %struct.flowi*, i32, i32) #1

declare dso_local i32 @nft_net(%struct.nft_pktinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
