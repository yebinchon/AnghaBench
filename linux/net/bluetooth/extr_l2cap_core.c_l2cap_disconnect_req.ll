; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_disconnect_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_disconnect_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32 }
%struct.l2cap_cmd_hdr = type { i32 }
%struct.l2cap_disconn_req = type { i32, i32 }
%struct.l2cap_disconn_rsp = type { i8*, i8* }
%struct.l2cap_chan = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.l2cap_chan*)*, i32 (%struct.l2cap_chan*)* }

@EPROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"scid 0x%4.4x dcid 0x%4.4x\00", align 1
@L2CAP_DISCONN_RSP = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32, i32*)* @l2cap_disconnect_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_disconnect_req(%struct.l2cap_conn* %0, %struct.l2cap_cmd_hdr* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.l2cap_conn*, align 8
  %7 = alloca %struct.l2cap_cmd_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.l2cap_disconn_req*, align 8
  %11 = alloca %struct.l2cap_disconn_rsp, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.l2cap_chan*, align 8
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %6, align 8
  store %struct.l2cap_cmd_hdr* %1, %struct.l2cap_cmd_hdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = bitcast i32* %15 to %struct.l2cap_disconn_req*
  store %struct.l2cap_disconn_req* %16, %struct.l2cap_disconn_req** %10, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ne i64 %18, 8
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EPROTO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %99

23:                                               ; preds = %4
  %24 = load %struct.l2cap_disconn_req*, %struct.l2cap_disconn_req** %10, align 8
  %25 = getelementptr inbounds %struct.l2cap_disconn_req, %struct.l2cap_disconn_req* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @__le16_to_cpu(i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = load %struct.l2cap_disconn_req*, %struct.l2cap_disconn_req** %10, align 8
  %29 = getelementptr inbounds %struct.l2cap_disconn_req, %struct.l2cap_disconn_req* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @__le16_to_cpu(i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @BT_DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %36 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %35, i32 0, i32 0
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call %struct.l2cap_chan* @__l2cap_get_chan_by_scid(%struct.l2cap_conn* %38, i32 %39)
  store %struct.l2cap_chan* %40, %struct.l2cap_chan** %14, align 8
  %41 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %42 = icmp ne %struct.l2cap_chan* %41, null
  br i1 %42, label %54, label %43

43:                                               ; preds = %23
  %44 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %45 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %48 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %7, align 8
  %49 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @cmd_reject_invalid_cid(%struct.l2cap_conn* %47, i32 %50, i32 %51, i32 %52)
  store i32 0, i32* %5, align 4
  br label %99

54:                                               ; preds = %23
  %55 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %56 = call i32 @l2cap_chan_lock(%struct.l2cap_chan* %55)
  %57 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %58 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @cpu_to_le16(i32 %59)
  %61 = getelementptr inbounds %struct.l2cap_disconn_rsp, %struct.l2cap_disconn_rsp* %11, i32 0, i32 1
  store i8* %60, i8** %61, align 8
  %62 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %63 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i8* @cpu_to_le16(i32 %64)
  %66 = getelementptr inbounds %struct.l2cap_disconn_rsp, %struct.l2cap_disconn_rsp* %11, i32 0, i32 0
  store i8* %65, i8** %66, align 8
  %67 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %68 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %7, align 8
  %69 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @L2CAP_DISCONN_RSP, align 4
  %72 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %67, i32 %70, i32 %71, i32 16, %struct.l2cap_disconn_rsp* %11)
  %73 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %74 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32 (%struct.l2cap_chan*)*, i32 (%struct.l2cap_chan*)** %76, align 8
  %78 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %79 = call i32 %77(%struct.l2cap_chan* %78)
  %80 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %81 = call i32 @l2cap_chan_hold(%struct.l2cap_chan* %80)
  %82 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %83 = load i32, i32* @ECONNRESET, align 4
  %84 = call i32 @l2cap_chan_del(%struct.l2cap_chan* %82, i32 %83)
  %85 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %86 = call i32 @l2cap_chan_unlock(%struct.l2cap_chan* %85)
  %87 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %88 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32 (%struct.l2cap_chan*)*, i32 (%struct.l2cap_chan*)** %90, align 8
  %92 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %93 = call i32 %91(%struct.l2cap_chan* %92)
  %94 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %95 = call i32 @l2cap_chan_put(%struct.l2cap_chan* %94)
  %96 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %97 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %96, i32 0, i32 0
  %98 = call i32 @mutex_unlock(i32* %97)
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %54, %43, %20
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.l2cap_chan* @__l2cap_get_chan_by_scid(%struct.l2cap_conn*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cmd_reject_invalid_cid(%struct.l2cap_conn*, i32, i32, i32) #1

declare dso_local i32 @l2cap_chan_lock(%struct.l2cap_chan*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @l2cap_send_cmd(%struct.l2cap_conn*, i32, i32, i32, %struct.l2cap_disconn_rsp*) #1

declare dso_local i32 @l2cap_chan_hold(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_chan_del(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @l2cap_chan_unlock(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_chan_put(%struct.l2cap_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
