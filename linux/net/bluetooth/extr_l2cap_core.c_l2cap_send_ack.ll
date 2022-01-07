; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_send_ack.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_send_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i64, i64, i64, i32, i32 }
%struct.l2cap_ctrl = type { i32, i64, i32 }

@.str = private unnamed_addr constant [40 x i8] c"chan %p last_acked_seq %d buffer_seq %d\00", align 1
@CONN_LOCAL_BUSY = common dso_local global i32 0, align 4
@L2CAP_RX_STATE_RECV = common dso_local global i64 0, align 8
@L2CAP_SUPER_RNR = common dso_local global i32 0, align 4
@CONN_REMOTE_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"frames_to_ack %u, threshold %d\00", align 1
@L2CAP_SUPER_RR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*)* @l2cap_send_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_send_ack(%struct.l2cap_chan* %0) #0 {
  %2 = alloca %struct.l2cap_chan*, align 8
  %3 = alloca %struct.l2cap_ctrl, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %2, align 8
  %6 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %7 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %8 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %11 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @__seq_offset(%struct.l2cap_chan* %6, i64 %9, i64 %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %15 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %16 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %19 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %14, i64 %17, i64 %20)
  %22 = call i32 @memset(%struct.l2cap_ctrl* %3, i32 0, i32 24)
  %23 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %3, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load i32, i32* @CONN_LOCAL_BUSY, align 4
  %25 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %26 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %25, i32 0, i32 4
  %27 = call i64 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %1
  %30 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %31 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @L2CAP_RX_STATE_RECV, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %37 = call i32 @__clear_ack_timer(%struct.l2cap_chan* %36)
  %38 = load i32, i32* @L2CAP_SUPER_RNR, align 4
  %39 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %3, i32 0, i32 2
  store i32 %38, i32* %39, align 8
  %40 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %41 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %3, i32 0, i32 1
  store i64 %42, i64* %43, align 8
  %44 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %45 = call i32 @l2cap_send_sframe(%struct.l2cap_chan* %44, %struct.l2cap_ctrl* %3)
  br label %98

46:                                               ; preds = %29, %1
  %47 = load i32, i32* @CONN_REMOTE_BUSY, align 4
  %48 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %49 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %48, i32 0, i32 4
  %50 = call i64 @test_bit(i32 %47, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %46
  %53 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %54 = call i32 @l2cap_ertm_send(%struct.l2cap_chan* %53)
  %55 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %56 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %59 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %52
  br label %64

64:                                               ; preds = %63, %46
  %65 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %66 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = shl i32 %68, 1
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = ashr i32 %72, 2
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %75)
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp sge i32 %77, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %64
  %81 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %82 = call i32 @__clear_ack_timer(%struct.l2cap_chan* %81)
  %83 = load i32, i32* @L2CAP_SUPER_RR, align 4
  %84 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %3, i32 0, i32 2
  store i32 %83, i32* %84, align 8
  %85 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %86 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %3, i32 0, i32 1
  store i64 %87, i64* %88, align 8
  %89 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %90 = call i32 @l2cap_send_sframe(%struct.l2cap_chan* %89, %struct.l2cap_ctrl* %3)
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %80, %64
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %96 = call i32 @__set_ack_timer(%struct.l2cap_chan* %95)
  br label %97

97:                                               ; preds = %94, %91
  br label %98

98:                                               ; preds = %97, %35
  ret void
}

declare dso_local i32 @__seq_offset(%struct.l2cap_chan*, i64, i64) #1

declare dso_local i32 @BT_DBG(i8*, ...) #1

declare dso_local i32 @memset(%struct.l2cap_ctrl*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @__clear_ack_timer(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_send_sframe(%struct.l2cap_chan*, %struct.l2cap_ctrl*) #1

declare dso_local i32 @l2cap_ertm_send(%struct.l2cap_chan*) #1

declare dso_local i32 @__set_ack_timer(%struct.l2cap_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
