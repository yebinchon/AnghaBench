; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_tpacket.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_tpacket.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TPACKET_V1 = common dso_local global i32 0, align 4
@PACKET_RX_RING = common dso_local global i32 0, align 4
@PACKET_TX_RING = common dso_local global i32 0, align 4
@TPACKET_V2 = common dso_local global i32 0, align 4
@TPACKET_V3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"OK. All tests passed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %3 = load i32, i32* @TPACKET_V1, align 4
  %4 = load i32, i32* @PACKET_RX_RING, align 4
  %5 = call i32 @test_tpacket(i32 %3, i32 %4)
  %6 = load i32, i32* %2, align 4
  %7 = or i32 %6, %5
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* @TPACKET_V1, align 4
  %9 = load i32, i32* @PACKET_TX_RING, align 4
  %10 = call i32 @test_tpacket(i32 %8, i32 %9)
  %11 = load i32, i32* %2, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* @TPACKET_V2, align 4
  %14 = load i32, i32* @PACKET_RX_RING, align 4
  %15 = call i32 @test_tpacket(i32 %13, i32 %14)
  %16 = load i32, i32* %2, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* @TPACKET_V2, align 4
  %19 = load i32, i32* @PACKET_TX_RING, align 4
  %20 = call i32 @test_tpacket(i32 %18, i32 %19)
  %21 = load i32, i32* %2, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* @TPACKET_V3, align 4
  %24 = load i32, i32* @PACKET_RX_RING, align 4
  %25 = call i32 @test_tpacket(i32 %23, i32 %24)
  %26 = load i32, i32* %2, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %2, align 4
  %28 = load i32, i32* @TPACKET_V3, align 4
  %29 = load i32, i32* @PACKET_TX_RING, align 4
  %30 = call i32 @test_tpacket(i32 %28, i32 %29)
  %31 = load i32, i32* %2, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %2, align 4
  %33 = load i32, i32* %2, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %38

36:                                               ; preds = %0
  %37 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %38

38:                                               ; preds = %36, %35
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

declare dso_local i32 @test_tpacket(i32, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
