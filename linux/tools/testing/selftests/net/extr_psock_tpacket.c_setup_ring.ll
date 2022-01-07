; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_tpacket.c_setup_ring.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_tpacket.c_setup_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring = type { i32, i32, i32, i32, i32*, i32, i32 }

@PACKET_TX_RING = common dso_local global i32 0, align 4
@SOL_PACKET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@total_packets = common dso_local global i64 0, align 8
@total_bytes = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ring*, i32, i32)* @setup_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_ring(i32 %0, %struct.ring* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.ring* %1, %struct.ring** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 256, i32* %10, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.ring*, %struct.ring** %6, align 8
  %13 = getelementptr inbounds %struct.ring, %struct.ring* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.ring*, %struct.ring** %6, align 8
  %16 = getelementptr inbounds %struct.ring, %struct.ring* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %46 [
    i32 130, label %18
    i32 129, label %18
    i32 128, label %35
  ]

18:                                               ; preds = %4, %4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @PACKET_TX_RING, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @__v1_v2_set_packet_loss_discard(i32 %23)
  br label %25

25:                                               ; preds = %22, %18
  %26 = load %struct.ring*, %struct.ring** %6, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @__v1_v2_fill(%struct.ring* %26, i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @SOL_PACKET, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.ring*, %struct.ring** %6, align 8
  %33 = getelementptr inbounds %struct.ring, %struct.ring* %32, i32 0, i32 6
  %34 = call i32 @setsockopt(i32 %29, i32 %30, i32 %31, i32* %33, i32 4)
  store i32 %34, i32* %9, align 4
  br label %46

35:                                               ; preds = %4
  %36 = load %struct.ring*, %struct.ring** %6, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @__v3_fill(%struct.ring* %36, i32 %37, i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @SOL_PACKET, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.ring*, %struct.ring** %6, align 8
  %44 = getelementptr inbounds %struct.ring, %struct.ring* %43, i32 0, i32 5
  %45 = call i32 @setsockopt(i32 %40, i32 %41, i32 %42, i32* %44, i32 4)
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %4, %35, %25
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = call i32 @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %51 = call i32 @exit(i32 1) #3
  unreachable

52:                                               ; preds = %46
  %53 = load %struct.ring*, %struct.ring** %6, align 8
  %54 = getelementptr inbounds %struct.ring, %struct.ring* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 4
  %58 = trunc i64 %57 to i32
  %59 = load %struct.ring*, %struct.ring** %6, align 8
  %60 = getelementptr inbounds %struct.ring, %struct.ring* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.ring*, %struct.ring** %6, align 8
  %62 = getelementptr inbounds %struct.ring, %struct.ring* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32* @malloc(i32 %63)
  %65 = load %struct.ring*, %struct.ring** %6, align 8
  %66 = getelementptr inbounds %struct.ring, %struct.ring* %65, i32 0, i32 4
  store i32* %64, i32** %66, align 8
  %67 = load %struct.ring*, %struct.ring** %6, align 8
  %68 = getelementptr inbounds %struct.ring, %struct.ring* %67, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %52
  %72 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %73 = call i32 @exit(i32 1) #3
  unreachable

74:                                               ; preds = %52
  store i64 0, i64* @total_packets, align 8
  store i64 0, i64* @total_bytes, align 8
  ret void
}

declare dso_local i32 @__v1_v2_set_packet_loss_discard(i32) #1

declare dso_local i32 @__v1_v2_fill(%struct.ring*, i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @__v3_fill(%struct.ring*, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
