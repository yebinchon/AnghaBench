; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_move_channel_confirm_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_move_channel_confirm_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32 }
%struct.l2cap_cmd_hdr = type { i32 }
%struct.l2cap_move_chan_cfm_rsp = type { i32 }
%struct.l2cap_chan = type { i64, i64, i64, i64 }

@EPROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"icid 0x%4.4x\00", align 1
@L2CAP_MOVE_WAIT_CONFIRM_RSP = common dso_local global i64 0, align 8
@AMP_ID_BREDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32, i8*)* @l2cap_move_channel_confirm_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_move_channel_confirm_rsp(%struct.l2cap_conn* %0, %struct.l2cap_cmd_hdr* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.l2cap_conn*, align 8
  %7 = alloca %struct.l2cap_cmd_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.l2cap_move_chan_cfm_rsp*, align 8
  %11 = alloca %struct.l2cap_chan*, align 8
  %12 = alloca i32, align 4
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %6, align 8
  store %struct.l2cap_cmd_hdr* %1, %struct.l2cap_cmd_hdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = bitcast i8* %13 to %struct.l2cap_move_chan_cfm_rsp*
  store %struct.l2cap_move_chan_cfm_rsp* %14, %struct.l2cap_move_chan_cfm_rsp** %10, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ne i64 %16, 4
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EPROTO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %67

21:                                               ; preds = %4
  %22 = load %struct.l2cap_move_chan_cfm_rsp*, %struct.l2cap_move_chan_cfm_rsp** %10, align 8
  %23 = getelementptr inbounds %struct.l2cap_move_chan_cfm_rsp, %struct.l2cap_move_chan_cfm_rsp* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le16_to_cpu(i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @BT_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call %struct.l2cap_chan* @l2cap_get_chan_by_scid(%struct.l2cap_conn* %28, i32 %29)
  store %struct.l2cap_chan* %30, %struct.l2cap_chan** %11, align 8
  %31 = load %struct.l2cap_chan*, %struct.l2cap_chan** %11, align 8
  %32 = icmp ne %struct.l2cap_chan* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %67

34:                                               ; preds = %21
  %35 = load %struct.l2cap_chan*, %struct.l2cap_chan** %11, align 8
  %36 = call i32 @__clear_chan_timer(%struct.l2cap_chan* %35)
  %37 = load %struct.l2cap_chan*, %struct.l2cap_chan** %11, align 8
  %38 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @L2CAP_MOVE_WAIT_CONFIRM_RSP, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %64

42:                                               ; preds = %34
  %43 = load %struct.l2cap_chan*, %struct.l2cap_chan** %11, align 8
  %44 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.l2cap_chan*, %struct.l2cap_chan** %11, align 8
  %47 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.l2cap_chan*, %struct.l2cap_chan** %11, align 8
  %49 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AMP_ID_BREDR, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %42
  %54 = load %struct.l2cap_chan*, %struct.l2cap_chan** %11, align 8
  %55 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.l2cap_chan*, %struct.l2cap_chan** %11, align 8
  %60 = call i32 @__release_logical_link(%struct.l2cap_chan* %59)
  br label %61

61:                                               ; preds = %58, %53, %42
  %62 = load %struct.l2cap_chan*, %struct.l2cap_chan** %11, align 8
  %63 = call i32 @l2cap_move_done(%struct.l2cap_chan* %62)
  br label %64

64:                                               ; preds = %61, %34
  %65 = load %struct.l2cap_chan*, %struct.l2cap_chan** %11, align 8
  %66 = call i32 @l2cap_chan_unlock(%struct.l2cap_chan* %65)
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %64, %33, %18
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local %struct.l2cap_chan* @l2cap_get_chan_by_scid(%struct.l2cap_conn*, i32) #1

declare dso_local i32 @__clear_chan_timer(%struct.l2cap_chan*) #1

declare dso_local i32 @__release_logical_link(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_move_done(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_chan_unlock(%struct.l2cap_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
