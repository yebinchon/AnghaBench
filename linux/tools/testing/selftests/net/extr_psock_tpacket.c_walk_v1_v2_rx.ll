; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_tpacket.c_walk_v1_v2_rx.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_tpacket.c_walk_v1_v2_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring = type { i64, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.pollfd = type { i32, i32, i64 }
%union.frame_map = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@PACKET_RX_RING = common dso_local global i64 0, align 8
@PORT_BASE = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@NUM_PACKETS = common dso_local global i32 0, align 4
@total_packets = common dso_local global i32 0, align 4
@total_bytes = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"walk_v%d_rx: received %u out of %u pkts\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c" %u pkts (%u bytes)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ring*)* @walk_v1_v2_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk_v1_v2_rx(i32 %0, %struct.ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ring*, align 8
  %5 = alloca %struct.pollfd, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca %union.frame_map, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.ring* %1, %struct.ring** %4, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.ring*, %struct.ring** %4, align 8
  %10 = getelementptr inbounds %struct.ring, %struct.ring* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PACKET_RX_RING, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @bug_on(i32 %14)
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %17 = load i32, i32* @PORT_BASE, align 4
  %18 = call i32 @pair_udp_open(i32* %16, i32 %17)
  %19 = call i32 @memset(%struct.pollfd* %5, i32 0, i32 16)
  %20 = load i32, i32* %3, align 4
  %21 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %5, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* @POLLIN, align 4
  %23 = load i32, i32* @POLLERR, align 4
  %24 = or i32 %22, %23
  %25 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %5, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %5, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %28 = load i32, i32* @NUM_PACKETS, align 4
  %29 = call i32 @pair_udp_send(i32* %27, i32 %28)
  br label %30

30:                                               ; preds = %127, %2
  %31 = load i32, i32* @total_packets, align 4
  %32 = load i32, i32* @NUM_PACKETS, align 4
  %33 = mul nsw i32 %32, 2
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %129

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %111, %35
  %37 = load %struct.ring*, %struct.ring** %4, align 8
  %38 = getelementptr inbounds %struct.ring, %struct.ring* %37, i32 0, i32 3
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.ring*, %struct.ring** %4, align 8
  %46 = getelementptr inbounds %struct.ring, %struct.ring* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @__v1_v2_rx_kernel_ready(i64 %44, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %127

50:                                               ; preds = %36
  %51 = load %struct.ring*, %struct.ring** %4, align 8
  %52 = getelementptr inbounds %struct.ring, %struct.ring* %51, i32 0, i32 3
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = bitcast %union.frame_map* %7 to i64*
  store i64 %58, i64* %59, align 8
  %60 = load %struct.ring*, %struct.ring** %4, align 8
  %61 = getelementptr inbounds %struct.ring, %struct.ring* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  switch i32 %62, label %111 [
    i32 129, label %63
    i32 128, label %87
  ]

63:                                               ; preds = %50
  %64 = bitcast %union.frame_map* %7 to i64*
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i32*
  %67 = bitcast %union.frame_map* %7 to %struct.TYPE_8__**
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %66, i64 %72
  %74 = bitcast %union.frame_map* %7 to %struct.TYPE_8__**
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @test_payload(i32* %73, i32 %78)
  %80 = bitcast %union.frame_map* %7 to %struct.TYPE_8__**
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @total_bytes, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* @total_bytes, align 4
  br label %111

87:                                               ; preds = %50
  %88 = bitcast %union.frame_map* %7 to i64*
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i32*
  %91 = bitcast %union.frame_map* %7 to %struct.TYPE_10__**
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %90, i64 %96
  %98 = bitcast %union.frame_map* %7 to %struct.TYPE_10__**
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @test_payload(i32* %97, i32 %102)
  %104 = bitcast %union.frame_map* %7 to %struct.TYPE_10__**
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @total_bytes, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* @total_bytes, align 4
  br label %111

111:                                              ; preds = %50, %87, %63
  %112 = call i32 (...) @status_bar_update()
  %113 = load i32, i32* @total_packets, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* @total_packets, align 4
  %115 = bitcast %union.frame_map* %7 to i64*
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.ring*, %struct.ring** %4, align 8
  %118 = getelementptr inbounds %struct.ring, %struct.ring* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @__v1_v2_rx_user_ready(i64 %116, i32 %119)
  %121 = load i32, i32* %8, align 4
  %122 = add i32 %121, 1
  %123 = load %struct.ring*, %struct.ring** %4, align 8
  %124 = getelementptr inbounds %struct.ring, %struct.ring* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = urem i32 %122, %125
  store i32 %126, i32* %8, align 4
  br label %36

127:                                              ; preds = %36
  %128 = call i32 @poll(%struct.pollfd* %5, i32 1, i32 1)
  br label %30

129:                                              ; preds = %30
  %130 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %131 = call i32 @pair_udp_close(i32* %130)
  %132 = load i32, i32* @total_packets, align 4
  %133 = load i32, i32* @NUM_PACKETS, align 4
  %134 = mul nsw i32 2, %133
  %135 = icmp ne i32 %132, %134
  br i1 %135, label %136, label %145

136:                                              ; preds = %129
  %137 = load i32, i32* @stderr, align 4
  %138 = load %struct.ring*, %struct.ring** %4, align 8
  %139 = getelementptr inbounds %struct.ring, %struct.ring* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @total_packets, align 4
  %142 = load i32, i32* @NUM_PACKETS, align 4
  %143 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %137, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %140, i32 %141, i32 %142)
  %144 = call i32 @exit(i32 1) #3
  unreachable

145:                                              ; preds = %129
  %146 = load i32, i32* @stderr, align 4
  %147 = load i32, i32* @NUM_PACKETS, align 4
  %148 = load i32, i32* @total_bytes, align 4
  %149 = ashr i32 %148, 1
  %150 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %146, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %147, i32 %149)
  ret void
}

declare dso_local i32 @bug_on(i32) #1

declare dso_local i32 @pair_udp_open(i32*, i32) #1

declare dso_local i32 @memset(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @pair_udp_send(i32*, i32) #1

declare dso_local i64 @__v1_v2_rx_kernel_ready(i64, i32) #1

declare dso_local i32 @test_payload(i32*, i32) #1

declare dso_local i32 @status_bar_update(...) #1

declare dso_local i32 @__v1_v2_rx_user_ready(i64, i32) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @pair_udp_close(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
