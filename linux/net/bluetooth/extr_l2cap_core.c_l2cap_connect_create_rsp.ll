; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_connect_create_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_connect_create_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32 }
%struct.l2cap_cmd_hdr = type { i32 }
%struct.l2cap_conn_rsp = type { i32, i32, i32, i32 }
%struct.l2cap_chan = type { i32, i32, i32, i32 }

@EPROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"dcid 0x%4.4x scid 0x%4.4x result 0x%2.2x status 0x%2.2x\00", align 1
@EBADSLT = common dso_local global i32 0, align 4
@BT_CONFIG = common dso_local global i32 0, align 4
@CONF_CONNECT_PEND = common dso_local global i32 0, align 4
@CONF_REQ_SENT = common dso_local global i32 0, align 4
@L2CAP_CONF_REQ = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32, i32*)* @l2cap_connect_create_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_connect_create_rsp(%struct.l2cap_conn* %0, %struct.l2cap_cmd_hdr* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.l2cap_conn*, align 8
  %7 = alloca %struct.l2cap_cmd_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.l2cap_conn_rsp*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.l2cap_chan*, align 8
  %16 = alloca [128 x i32], align 16
  %17 = alloca i32, align 4
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %6, align 8
  store %struct.l2cap_cmd_hdr* %1, %struct.l2cap_cmd_hdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = bitcast i32* %18 to %struct.l2cap_conn_rsp*
  store %struct.l2cap_conn_rsp* %19, %struct.l2cap_conn_rsp** %10, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ult i64 %21, 16
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @EPROTO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %129

26:                                               ; preds = %4
  %27 = load %struct.l2cap_conn_rsp*, %struct.l2cap_conn_rsp** %10, align 8
  %28 = getelementptr inbounds %struct.l2cap_conn_rsp, %struct.l2cap_conn_rsp* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @__le16_to_cpu(i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load %struct.l2cap_conn_rsp*, %struct.l2cap_conn_rsp** %10, align 8
  %32 = getelementptr inbounds %struct.l2cap_conn_rsp, %struct.l2cap_conn_rsp* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @__le16_to_cpu(i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load %struct.l2cap_conn_rsp*, %struct.l2cap_conn_rsp** %10, align 8
  %36 = getelementptr inbounds %struct.l2cap_conn_rsp, %struct.l2cap_conn_rsp* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @__le16_to_cpu(i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load %struct.l2cap_conn_rsp*, %struct.l2cap_conn_rsp** %10, align 8
  %40 = getelementptr inbounds %struct.l2cap_conn_rsp, %struct.l2cap_conn_rsp* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @__le16_to_cpu(i32 %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @BT_DBG(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %49 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %48, i32 0, i32 0
  %50 = call i32 @mutex_lock(i32* %49)
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %26
  %54 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call %struct.l2cap_chan* @__l2cap_get_chan_by_scid(%struct.l2cap_conn* %54, i32 %55)
  store %struct.l2cap_chan* %56, %struct.l2cap_chan** %15, align 8
  %57 = load %struct.l2cap_chan*, %struct.l2cap_chan** %15, align 8
  %58 = icmp ne %struct.l2cap_chan* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* @EBADSLT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %17, align 4
  br label %124

62:                                               ; preds = %53
  br label %75

63:                                               ; preds = %26
  %64 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %65 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %7, align 8
  %66 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call %struct.l2cap_chan* @__l2cap_get_chan_by_ident(%struct.l2cap_conn* %64, i32 %67)
  store %struct.l2cap_chan* %68, %struct.l2cap_chan** %15, align 8
  %69 = load %struct.l2cap_chan*, %struct.l2cap_chan** %15, align 8
  %70 = icmp ne %struct.l2cap_chan* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %63
  %72 = load i32, i32* @EBADSLT, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %17, align 4
  br label %124

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %74, %62
  store i32 0, i32* %17, align 4
  %76 = load %struct.l2cap_chan*, %struct.l2cap_chan** %15, align 8
  %77 = call i32 @l2cap_chan_lock(%struct.l2cap_chan* %76)
  %78 = load i32, i32* %13, align 4
  switch i32 %78, label %117 [
    i32 128, label %79
    i32 129, label %112
  ]

79:                                               ; preds = %75
  %80 = load %struct.l2cap_chan*, %struct.l2cap_chan** %15, align 8
  %81 = load i32, i32* @BT_CONFIG, align 4
  %82 = call i32 @l2cap_state_change(%struct.l2cap_chan* %80, i32 %81)
  %83 = load %struct.l2cap_chan*, %struct.l2cap_chan** %15, align 8
  %84 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %83, i32 0, i32 3
  store i32 0, i32* %84, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.l2cap_chan*, %struct.l2cap_chan** %15, align 8
  %87 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @CONF_CONNECT_PEND, align 4
  %89 = load %struct.l2cap_chan*, %struct.l2cap_chan** %15, align 8
  %90 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %89, i32 0, i32 1
  %91 = call i32 @clear_bit(i32 %88, i32* %90)
  %92 = load i32, i32* @CONF_REQ_SENT, align 4
  %93 = load %struct.l2cap_chan*, %struct.l2cap_chan** %15, align 8
  %94 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %93, i32 0, i32 1
  %95 = call i32 @test_and_set_bit(i32 %92, i32* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %79
  br label %121

98:                                               ; preds = %79
  %99 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %100 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %101 = call i32 @l2cap_get_ident(%struct.l2cap_conn* %100)
  %102 = load i32, i32* @L2CAP_CONF_REQ, align 4
  %103 = load %struct.l2cap_chan*, %struct.l2cap_chan** %15, align 8
  %104 = getelementptr inbounds [128 x i32], [128 x i32]* %16, i64 0, i64 0
  %105 = call i32 @l2cap_build_conf_req(%struct.l2cap_chan* %103, i32* %104, i32 512)
  %106 = getelementptr inbounds [128 x i32], [128 x i32]* %16, i64 0, i64 0
  %107 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %99, i32 %101, i32 %102, i32 %105, i32* %106)
  %108 = load %struct.l2cap_chan*, %struct.l2cap_chan** %15, align 8
  %109 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  br label %121

112:                                              ; preds = %75
  %113 = load i32, i32* @CONF_CONNECT_PEND, align 4
  %114 = load %struct.l2cap_chan*, %struct.l2cap_chan** %15, align 8
  %115 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %114, i32 0, i32 1
  %116 = call i32 @set_bit(i32 %113, i32* %115)
  br label %121

117:                                              ; preds = %75
  %118 = load %struct.l2cap_chan*, %struct.l2cap_chan** %15, align 8
  %119 = load i32, i32* @ECONNREFUSED, align 4
  %120 = call i32 @l2cap_chan_del(%struct.l2cap_chan* %118, i32 %119)
  br label %121

121:                                              ; preds = %117, %112, %98, %97
  %122 = load %struct.l2cap_chan*, %struct.l2cap_chan** %15, align 8
  %123 = call i32 @l2cap_chan_unlock(%struct.l2cap_chan* %122)
  br label %124

124:                                              ; preds = %121, %71, %59
  %125 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %126 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %125, i32 0, i32 0
  %127 = call i32 @mutex_unlock(i32* %126)
  %128 = load i32, i32* %17, align 4
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %124, %23
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.l2cap_chan* @__l2cap_get_chan_by_scid(%struct.l2cap_conn*, i32) #1

declare dso_local %struct.l2cap_chan* @__l2cap_get_chan_by_ident(%struct.l2cap_conn*, i32) #1

declare dso_local i32 @l2cap_chan_lock(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_state_change(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @l2cap_send_cmd(%struct.l2cap_conn*, i32, i32, i32, i32*) #1

declare dso_local i32 @l2cap_get_ident(%struct.l2cap_conn*) #1

declare dso_local i32 @l2cap_build_conf_req(%struct.l2cap_chan*, i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @l2cap_chan_del(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @l2cap_chan_unlock(%struct.l2cap_chan*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
