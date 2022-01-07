; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_fanout.c_sock_fanout_open_ring.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_fanout.c_sock_fanout_open_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpacket_req = type { i32, i32, i32, i32 }

@RING_NUM_FRAMES = common dso_local global i32 0, align 4
@TPACKET_V2 = common dso_local global i32 0, align 4
@SOL_PACKET = common dso_local global i32 0, align 4
@PACKET_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"packetsock ring setsockopt version\00", align 1
@PACKET_RX_RING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"packetsock ring setsockopt\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"packetsock ring mmap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @sock_fanout_open_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sock_fanout_open_ring(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tpacket_req, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = getelementptr inbounds %struct.tpacket_req, %struct.tpacket_req* %3, i32 0, i32 0
  %7 = call i32 (...) @getpagesize()
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds %struct.tpacket_req, %struct.tpacket_req* %3, i32 0, i32 1
  %9 = call i32 (...) @getpagesize()
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds %struct.tpacket_req, %struct.tpacket_req* %3, i32 0, i32 2
  %11 = load i32, i32* @RING_NUM_FRAMES, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.tpacket_req, %struct.tpacket_req* %3, i32 0, i32 3
  %13 = load i32, i32* @RING_NUM_FRAMES, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i32, i32* @TPACKET_V2, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @SOL_PACKET, align 4
  %17 = load i32, i32* @PACKET_VERSION, align 4
  %18 = bitcast i32* %5 to i8*
  %19 = call i64 @setsockopt(i32 %15, i32 %16, i32 %17, i8* %18, i32 4)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = call i32 @perror(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @exit(i32 1) #3
  unreachable

24:                                               ; preds = %1
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @SOL_PACKET, align 4
  %27 = load i32, i32* @PACKET_RX_RING, align 4
  %28 = bitcast %struct.tpacket_req* %3 to i8*
  %29 = call i64 @setsockopt(i32 %25, i32 %26, i32 %27, i8* %28, i32 16)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = call i32 @perror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 @exit(i32 1) #3
  unreachable

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.tpacket_req, %struct.tpacket_req* %3, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.tpacket_req, %struct.tpacket_req* %3, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %36, %38
  %40 = load i32, i32* @PROT_READ, align 4
  %41 = load i32, i32* @PROT_WRITE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @MAP_SHARED, align 4
  %44 = load i32, i32* %2, align 4
  %45 = call i8* @mmap(i32 0, i32 %39, i32 %42, i32 %43, i32 %44, i32 0)
  store i8* %45, i8** %4, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = load i8*, i8** @MAP_FAILED, align 8
  %48 = icmp eq i8* %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %34
  %50 = call i32 @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %51 = call i32 @exit(i32 1) #3
  unreachable

52:                                               ; preds = %34
  %53 = load i8*, i8** %4, align 8
  ret i8* %53
}

declare dso_local i32 @getpagesize(...) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @mmap(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
