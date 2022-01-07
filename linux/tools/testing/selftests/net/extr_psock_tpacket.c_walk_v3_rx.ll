; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_tpacket.c_walk_v3_rx.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_tpacket.c_walk_v3_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.pollfd = type { i32, i32, i64 }
%struct.block_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@PACKET_RX_RING = common dso_local global i64 0, align 8
@PORT_BASE = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@NUM_PACKETS = common dso_local global i32 0, align 4
@total_packets = common dso_local global i32 0, align 4
@TP_STATUS_USER = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"walk_v3_rx: received %u out of %u pkts\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c" %u pkts (%u bytes)\00", align 1
@total_bytes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ring*)* @walk_v3_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk_v3_rx(i32 %0, %struct.ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pollfd, align 8
  %7 = alloca %struct.block_desc*, align 8
  %8 = alloca [2 x i32], align 4
  store i32 %0, i32* %3, align 4
  store %struct.ring* %1, %struct.ring** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.ring*, %struct.ring** %4, align 8
  %10 = getelementptr inbounds %struct.ring, %struct.ring* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PACKET_RX_RING, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @bug_on(i32 %14)
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %17 = load i32, i32* @PORT_BASE, align 4
  %18 = call i32 @pair_udp_open(i32* %16, i32 %17)
  %19 = call i32 @memset(%struct.pollfd* %6, i32 0, i32 16)
  %20 = load i32, i32* %3, align 4
  %21 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %6, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* @POLLIN, align 4
  %23 = load i32, i32* @POLLERR, align 4
  %24 = or i32 %22, %23
  %25 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %6, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %6, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %28 = load i32, i32* @NUM_PACKETS, align 4
  %29 = call i32 @pair_udp_send(i32* %27, i32 %28)
  br label %30

30:                                               ; preds = %55, %2
  %31 = load i32, i32* @total_packets, align 4
  %32 = load i32, i32* @NUM_PACKETS, align 4
  %33 = mul nsw i32 %32, 2
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %67

35:                                               ; preds = %30
  %36 = load %struct.ring*, %struct.ring** %4, align 8
  %37 = getelementptr inbounds %struct.ring, %struct.ring* %36, i32 0, i32 2
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.block_desc*
  store %struct.block_desc* %44, %struct.block_desc** %7, align 8
  br label %45

45:                                               ; preds = %53, %35
  %46 = load %struct.block_desc*, %struct.block_desc** %7, align 8
  %47 = getelementptr inbounds %struct.block_desc, %struct.block_desc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @TP_STATUS_USER, align 4
  %51 = and i32 %49, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = call i32 @poll(%struct.pollfd* %6, i32 1, i32 1)
  br label %45

55:                                               ; preds = %45
  %56 = load %struct.block_desc*, %struct.block_desc** %7, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @__v3_walk_block(%struct.block_desc* %56, i32 %57)
  %59 = load %struct.block_desc*, %struct.block_desc** %7, align 8
  %60 = call i32 @__v3_flush_block(%struct.block_desc* %59)
  %61 = load i32, i32* %5, align 4
  %62 = add i32 %61, 1
  %63 = load %struct.ring*, %struct.ring** %4, align 8
  %64 = getelementptr inbounds %struct.ring, %struct.ring* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = urem i32 %62, %65
  store i32 %66, i32* %5, align 4
  br label %30

67:                                               ; preds = %30
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %69 = call i32 @pair_udp_close(i32* %68)
  %70 = load i32, i32* @total_packets, align 4
  %71 = load i32, i32* @NUM_PACKETS, align 4
  %72 = mul nsw i32 2, %71
  %73 = icmp ne i32 %70, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load i32, i32* @stderr, align 4
  %76 = load i32, i32* @total_packets, align 4
  %77 = load i32, i32* @NUM_PACKETS, align 4
  %78 = call i32 @fprintf(i32 %75, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %77)
  %79 = call i32 @exit(i32 1) #3
  unreachable

80:                                               ; preds = %67
  %81 = load i32, i32* @stderr, align 4
  %82 = load i32, i32* @NUM_PACKETS, align 4
  %83 = load i32, i32* @total_bytes, align 4
  %84 = ashr i32 %83, 1
  %85 = call i32 @fprintf(i32 %81, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %84)
  ret void
}

declare dso_local i32 @bug_on(i32) #1

declare dso_local i32 @pair_udp_open(i32*, i32) #1

declare dso_local i32 @memset(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @pair_udp_send(i32*, i32) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @__v3_walk_block(%struct.block_desc*, i32) #1

declare dso_local i32 @__v3_flush_block(%struct.block_desc*) #1

declare dso_local i32 @pair_udp_close(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

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
