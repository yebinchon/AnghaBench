; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_send_i_or_rr_or_rnr.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_send_i_or_rr_or_rnr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i64, i32, i32 }
%struct.l2cap_ctrl = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"chan %p\00", align 1
@CONN_SEND_FBIT = common dso_local global i32 0, align 4
@CONN_LOCAL_BUSY = common dso_local global i32 0, align 4
@L2CAP_SUPER_RNR = common dso_local global i32 0, align 4
@CONN_REMOTE_BUSY = common dso_local global i32 0, align 4
@L2CAP_SUPER_RR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*)* @l2cap_send_i_or_rr_or_rnr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_send_i_or_rr_or_rnr(%struct.l2cap_chan* %0) #0 {
  %2 = alloca %struct.l2cap_chan*, align 8
  %3 = alloca %struct.l2cap_ctrl, align 4
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %2, align 8
  %4 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %5 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %4)
  %6 = call i32 @memset(%struct.l2cap_ctrl* %3, i32 0, i32 16)
  %7 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %3, i32 0, i32 0
  store i32 1, i32* %7, align 4
  %8 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %3, i32 0, i32 1
  store i32 1, i32* %8, align 4
  %9 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %10 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %3, i32 0, i32 3
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @CONN_SEND_FBIT, align 4
  %14 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %15 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %14, i32 0, i32 1
  %16 = call i32 @set_bit(i32 %13, i32* %15)
  %17 = load i32, i32* @CONN_LOCAL_BUSY, align 4
  %18 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %19 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %18, i32 0, i32 1
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load i32, i32* @L2CAP_SUPER_RNR, align 4
  %24 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %3, i32 0, i32 2
  store i32 %23, i32* %24, align 4
  %25 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %26 = call i32 @l2cap_send_sframe(%struct.l2cap_chan* %25, %struct.l2cap_ctrl* %3)
  br label %27

27:                                               ; preds = %22, %1
  %28 = load i32, i32* @CONN_REMOTE_BUSY, align 4
  %29 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %30 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %29, i32 0, i32 1
  %31 = call i64 @test_and_clear_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %35 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %40 = call i32 @__set_retrans_timer(%struct.l2cap_chan* %39)
  br label %41

41:                                               ; preds = %38, %33, %27
  %42 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %43 = call i32 @l2cap_ertm_send(%struct.l2cap_chan* %42)
  %44 = load i32, i32* @CONN_LOCAL_BUSY, align 4
  %45 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %46 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %45, i32 0, i32 1
  %47 = call i64 @test_bit(i32 %44, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %41
  %50 = load i32, i32* @CONN_SEND_FBIT, align 4
  %51 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %52 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %51, i32 0, i32 1
  %53 = call i64 @test_bit(i32 %50, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load i32, i32* @L2CAP_SUPER_RR, align 4
  %57 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %3, i32 0, i32 2
  store i32 %56, i32* %57, align 4
  %58 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %59 = call i32 @l2cap_send_sframe(%struct.l2cap_chan* %58, %struct.l2cap_ctrl* %3)
  br label %60

60:                                               ; preds = %55, %49, %41
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*) #1

declare dso_local i32 @memset(%struct.l2cap_ctrl*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @l2cap_send_sframe(%struct.l2cap_chan*, %struct.l2cap_ctrl*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @__set_retrans_timer(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_ertm_send(%struct.l2cap_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
