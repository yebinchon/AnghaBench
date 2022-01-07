; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_move_channel_confirm.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_move_channel_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32 }
%struct.l2cap_cmd_hdr = type { i32 }
%struct.l2cap_move_chan_cfm = type { i32, i32 }
%struct.l2cap_chan = type { i64, i64, i64 }

@EPROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"icid 0x%4.4x, result 0x%4.4x\00", align 1
@L2CAP_MOVE_WAIT_CONFIRM = common dso_local global i64 0, align 8
@L2CAP_MC_CONFIRMED = common dso_local global i32 0, align 4
@AMP_ID_BREDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32, i8*)* @l2cap_move_channel_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_move_channel_confirm(%struct.l2cap_conn* %0, %struct.l2cap_cmd_hdr* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.l2cap_conn*, align 8
  %7 = alloca %struct.l2cap_cmd_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.l2cap_move_chan_cfm*, align 8
  %11 = alloca %struct.l2cap_chan*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %6, align 8
  store %struct.l2cap_cmd_hdr* %1, %struct.l2cap_cmd_hdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to %struct.l2cap_move_chan_cfm*
  store %struct.l2cap_move_chan_cfm* %15, %struct.l2cap_move_chan_cfm** %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ne i64 %17, 8
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EPROTO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %89

22:                                               ; preds = %4
  %23 = load %struct.l2cap_move_chan_cfm*, %struct.l2cap_move_chan_cfm** %10, align 8
  %24 = getelementptr inbounds %struct.l2cap_move_chan_cfm, %struct.l2cap_move_chan_cfm* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le16_to_cpu(i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load %struct.l2cap_move_chan_cfm*, %struct.l2cap_move_chan_cfm** %10, align 8
  %28 = getelementptr inbounds %struct.l2cap_move_chan_cfm, %struct.l2cap_move_chan_cfm* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le16_to_cpu(i32 %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @BT_DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call %struct.l2cap_chan* @l2cap_get_chan_by_dcid(%struct.l2cap_conn* %34, i32 %35)
  store %struct.l2cap_chan* %36, %struct.l2cap_chan** %11, align 8
  %37 = load %struct.l2cap_chan*, %struct.l2cap_chan** %11, align 8
  %38 = icmp ne %struct.l2cap_chan* %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %22
  %40 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %41 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %7, align 8
  %42 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @l2cap_send_move_chan_cfm_rsp(%struct.l2cap_conn* %40, i32 %43, i32 %44)
  store i32 0, i32* %5, align 4
  br label %89

46:                                               ; preds = %22
  %47 = load %struct.l2cap_chan*, %struct.l2cap_chan** %11, align 8
  %48 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @L2CAP_MOVE_WAIT_CONFIRM, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %80

52:                                               ; preds = %46
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @L2CAP_MC_CONFIRMED, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  %57 = load %struct.l2cap_chan*, %struct.l2cap_chan** %11, align 8
  %58 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.l2cap_chan*, %struct.l2cap_chan** %11, align 8
  %61 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  %62 = load %struct.l2cap_chan*, %struct.l2cap_chan** %11, align 8
  %63 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @AMP_ID_BREDR, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = load %struct.l2cap_chan*, %struct.l2cap_chan** %11, align 8
  %69 = call i32 @__release_logical_link(%struct.l2cap_chan* %68)
  br label %70

70:                                               ; preds = %67, %56
  br label %77

71:                                               ; preds = %52
  %72 = load %struct.l2cap_chan*, %struct.l2cap_chan** %11, align 8
  %73 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.l2cap_chan*, %struct.l2cap_chan** %11, align 8
  %76 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %75, i32 0, i32 2
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %71, %70
  %78 = load %struct.l2cap_chan*, %struct.l2cap_chan** %11, align 8
  %79 = call i32 @l2cap_move_done(%struct.l2cap_chan* %78)
  br label %80

80:                                               ; preds = %77, %46
  %81 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %82 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %7, align 8
  %83 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @l2cap_send_move_chan_cfm_rsp(%struct.l2cap_conn* %81, i32 %84, i32 %85)
  %87 = load %struct.l2cap_chan*, %struct.l2cap_chan** %11, align 8
  %88 = call i32 @l2cap_chan_unlock(%struct.l2cap_chan* %87)
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %80, %39, %19
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local %struct.l2cap_chan* @l2cap_get_chan_by_dcid(%struct.l2cap_conn*, i32) #1

declare dso_local i32 @l2cap_send_move_chan_cfm_rsp(%struct.l2cap_conn*, i32, i32) #1

declare dso_local i32 @__release_logical_link(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_move_done(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_chan_unlock(%struct.l2cap_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
