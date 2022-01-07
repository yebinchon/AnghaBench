; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_le_connect_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_le_connect_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.l2cap_cmd_hdr = type { i32 }
%struct.l2cap_le_conn_req = type { i32, i32, i32, i32, i32 }
%struct.l2cap_le_conn_rsp = type { i8*, i8*, i8*, i8*, i8* }
%struct.l2cap_chan = type { i32, i32, i32, i32, i32, i64, i64, %struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 (%struct.l2cap_chan*)*, i32 (%struct.l2cap_chan*)*, %struct.l2cap_chan* (%struct.l2cap_chan*)* }

@EPROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"psm 0x%2.2x scid 0x%4.4x mtu %u mps %u\00", align 1
@BT_LISTEN = common dso_local global i32 0, align 4
@LE_LINK = common dso_local global i32 0, align 4
@L2CAP_CR_LE_BAD_PSM = common dso_local global i64 0, align 8
@SMP_ALLOW_STK = common dso_local global i32 0, align 4
@L2CAP_CR_LE_AUTHENTICATION = common dso_local global i64 0, align 8
@L2CAP_CID_DYN_START = common dso_local global i32 0, align 4
@L2CAP_CID_LE_DYN_END = common dso_local global i32 0, align 4
@L2CAP_CR_LE_INVALID_SCID = common dso_local global i64 0, align 8
@L2CAP_CR_LE_SCID_IN_USE = common dso_local global i64 0, align 8
@L2CAP_CR_LE_NO_MEM = common dso_local global i64 0, align 8
@FLAG_DEFER_SETUP = common dso_local global i32 0, align 4
@BT_CONNECT2 = common dso_local global i32 0, align 4
@L2CAP_CR_PEND = common dso_local global i64 0, align 8
@L2CAP_CR_LE_SUCCESS = common dso_local global i64 0, align 8
@L2CAP_LE_CONN_RSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32, i64*)* @l2cap_le_connect_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_le_connect_req(%struct.l2cap_conn* %0, %struct.l2cap_cmd_hdr* %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.l2cap_conn*, align 8
  %7 = alloca %struct.l2cap_cmd_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.l2cap_le_conn_req*, align 8
  %11 = alloca %struct.l2cap_le_conn_rsp, align 8
  %12 = alloca %struct.l2cap_chan*, align 8
  %13 = alloca %struct.l2cap_chan*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %6, align 8
  store %struct.l2cap_cmd_hdr* %1, %struct.l2cap_cmd_hdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %21 = load i64*, i64** %9, align 8
  %22 = bitcast i64* %21 to %struct.l2cap_le_conn_req*
  store %struct.l2cap_le_conn_req* %22, %struct.l2cap_le_conn_req** %10, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ne i64 %24, 20
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @EPROTO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %260

29:                                               ; preds = %4
  %30 = load %struct.l2cap_le_conn_req*, %struct.l2cap_le_conn_req** %10, align 8
  %31 = getelementptr inbounds %struct.l2cap_le_conn_req, %struct.l2cap_le_conn_req* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @__le16_to_cpu(i32 %32)
  store i32 %33, i32* %15, align 4
  %34 = load %struct.l2cap_le_conn_req*, %struct.l2cap_le_conn_req** %10, align 8
  %35 = getelementptr inbounds %struct.l2cap_le_conn_req, %struct.l2cap_le_conn_req* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @__le16_to_cpu(i32 %36)
  store i32 %37, i32* %17, align 4
  %38 = load %struct.l2cap_le_conn_req*, %struct.l2cap_le_conn_req** %10, align 8
  %39 = getelementptr inbounds %struct.l2cap_le_conn_req, %struct.l2cap_le_conn_req* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @__le16_to_cpu(i32 %40)
  store i32 %41, i32* %18, align 4
  %42 = load %struct.l2cap_le_conn_req*, %struct.l2cap_le_conn_req** %10, align 8
  %43 = getelementptr inbounds %struct.l2cap_le_conn_req, %struct.l2cap_le_conn_req* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %19, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %45 = load i32, i32* %17, align 4
  %46 = icmp slt i32 %45, 23
  br i1 %46, label %50, label %47

47:                                               ; preds = %29
  %48 = load i32, i32* %18, align 4
  %49 = icmp slt i32 %48, 23
  br i1 %49, label %50, label %53

50:                                               ; preds = %47, %29
  %51 = load i32, i32* @EPROTO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %260

53:                                               ; preds = %47
  %54 = load i32, i32* %19, align 4
  %55 = call i32 @__le16_to_cpu(i32 %54)
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %18, align 4
  %59 = call i32 @BT_DBG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* @BT_LISTEN, align 4
  %61 = load i32, i32* %19, align 4
  %62 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %63 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %62, i32 0, i32 1
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %67 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* @LE_LINK, align 4
  %71 = call %struct.l2cap_chan* @l2cap_global_chan_by_psm(i32 %60, i32 %61, i32* %65, i32* %69, i32 %70)
  store %struct.l2cap_chan* %71, %struct.l2cap_chan** %13, align 8
  %72 = load %struct.l2cap_chan*, %struct.l2cap_chan** %13, align 8
  %73 = icmp ne %struct.l2cap_chan* %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %53
  %75 = load i64, i64* @L2CAP_CR_LE_BAD_PSM, align 8
  store i64 %75, i64* %20, align 8
  store %struct.l2cap_chan* null, %struct.l2cap_chan** %12, align 8
  br label %225

76:                                               ; preds = %53
  %77 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %78 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %77, i32 0, i32 0
  %79 = call i32 @mutex_lock(i32* %78)
  %80 = load %struct.l2cap_chan*, %struct.l2cap_chan** %13, align 8
  %81 = call i32 @l2cap_chan_lock(%struct.l2cap_chan* %80)
  %82 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %83 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = load %struct.l2cap_chan*, %struct.l2cap_chan** %13, align 8
  %86 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %85, i32 0, i32 15
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @SMP_ALLOW_STK, align 4
  %89 = call i32 @smp_sufficient_security(%struct.TYPE_6__* %84, i32 %87, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %76
  %92 = load i64, i64* @L2CAP_CR_LE_AUTHENTICATION, align 8
  store i64 %92, i64* %20, align 8
  store %struct.l2cap_chan* null, %struct.l2cap_chan** %12, align 8
  br label %212

93:                                               ; preds = %76
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* @L2CAP_CID_DYN_START, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* @L2CAP_CID_LE_DYN_END, align 4
  %100 = icmp sgt i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %97, %93
  %102 = load i64, i64* @L2CAP_CR_LE_INVALID_SCID, align 8
  store i64 %102, i64* %20, align 8
  store %struct.l2cap_chan* null, %struct.l2cap_chan** %12, align 8
  br label %212

103:                                              ; preds = %97
  %104 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %105 = load i32, i32* %15, align 4
  %106 = call i64 @__l2cap_get_chan_by_dcid(%struct.l2cap_conn* %104, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i64, i64* @L2CAP_CR_LE_SCID_IN_USE, align 8
  store i64 %109, i64* %20, align 8
  store %struct.l2cap_chan* null, %struct.l2cap_chan** %12, align 8
  br label %212

110:                                              ; preds = %103
  %111 = load %struct.l2cap_chan*, %struct.l2cap_chan** %13, align 8
  %112 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %111, i32 0, i32 7
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 2
  %115 = load %struct.l2cap_chan* (%struct.l2cap_chan*)*, %struct.l2cap_chan* (%struct.l2cap_chan*)** %114, align 8
  %116 = load %struct.l2cap_chan*, %struct.l2cap_chan** %13, align 8
  %117 = call %struct.l2cap_chan* %115(%struct.l2cap_chan* %116)
  store %struct.l2cap_chan* %117, %struct.l2cap_chan** %12, align 8
  %118 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %119 = icmp ne %struct.l2cap_chan* %118, null
  br i1 %119, label %122, label %120

120:                                              ; preds = %110
  %121 = load i64, i64* @L2CAP_CR_LE_NO_MEM, align 8
  store i64 %121, i64* %20, align 8
  br label %212

122:                                              ; preds = %110
  %123 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %124 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %123, i32 0, i32 14
  %125 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %126 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %125, i32 0, i32 1
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = call i32 @bacpy(i32* %124, i32* %128)
  %130 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %131 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %130, i32 0, i32 13
  %132 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %133 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %132, i32 0, i32 1
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = call i32 @bacpy(i32* %131, i32* %135)
  %137 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %138 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %137, i32 0, i32 1
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = call i32 @bdaddr_src_type(%struct.TYPE_6__* %139)
  %141 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %142 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %141, i32 0, i32 12
  store i32 %140, i32* %142, align 8
  %143 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %144 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %143, i32 0, i32 1
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = call i32 @bdaddr_dst_type(%struct.TYPE_6__* %145)
  %147 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %148 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %147, i32 0, i32 11
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* %19, align 4
  %150 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %151 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %150, i32 0, i32 10
  store i32 %149, i32* %151, align 8
  %152 = load i32, i32* %15, align 4
  %153 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %154 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  %155 = load i32, i32* %17, align 4
  %156 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %157 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 4
  %158 = load i32, i32* %18, align 4
  %159 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %160 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %159, i32 0, i32 2
  store i32 %158, i32* %160, align 8
  %161 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %162 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %163 = call i32 @__l2cap_chan_add(%struct.l2cap_conn* %161, %struct.l2cap_chan* %162)
  %164 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %165 = load %struct.l2cap_le_conn_req*, %struct.l2cap_le_conn_req** %10, align 8
  %166 = getelementptr inbounds %struct.l2cap_le_conn_req, %struct.l2cap_le_conn_req* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @__le16_to_cpu(i32 %167)
  %169 = call i32 @l2cap_le_flowctl_init(%struct.l2cap_chan* %164, i32 %168)
  %170 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %171 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %14, align 4
  %173 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %174 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  store i32 %175, i32* %16, align 4
  %176 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %177 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %178 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %177, i32 0, i32 7
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 1
  %181 = load i32 (%struct.l2cap_chan*)*, i32 (%struct.l2cap_chan*)** %180, align 8
  %182 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %183 = call i32 %181(%struct.l2cap_chan* %182)
  %184 = call i32 @__set_chan_timer(%struct.l2cap_chan* %176, i32 %183)
  %185 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %7, align 8
  %186 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %189 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %188, i32 0, i32 9
  store i32 %187, i32* %189, align 4
  %190 = load i32, i32* @FLAG_DEFER_SETUP, align 4
  %191 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %192 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %191, i32 0, i32 8
  %193 = call i64 @test_bit(i32 %190, i32* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %207

195:                                              ; preds = %122
  %196 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %197 = load i32, i32* @BT_CONNECT2, align 4
  %198 = call i32 @l2cap_state_change(%struct.l2cap_chan* %196, i32 %197)
  %199 = load i64, i64* @L2CAP_CR_PEND, align 8
  store i64 %199, i64* %20, align 8
  %200 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %201 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %200, i32 0, i32 7
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  %204 = load i32 (%struct.l2cap_chan*)*, i32 (%struct.l2cap_chan*)** %203, align 8
  %205 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %206 = call i32 %204(%struct.l2cap_chan* %205)
  br label %211

207:                                              ; preds = %122
  %208 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %209 = call i32 @l2cap_chan_ready(%struct.l2cap_chan* %208)
  %210 = load i64, i64* @L2CAP_CR_LE_SUCCESS, align 8
  store i64 %210, i64* %20, align 8
  br label %211

211:                                              ; preds = %207, %195
  br label %212

212:                                              ; preds = %211, %120, %108, %101, %91
  %213 = load %struct.l2cap_chan*, %struct.l2cap_chan** %13, align 8
  %214 = call i32 @l2cap_chan_unlock(%struct.l2cap_chan* %213)
  %215 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %216 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %215, i32 0, i32 0
  %217 = call i32 @mutex_unlock(i32* %216)
  %218 = load %struct.l2cap_chan*, %struct.l2cap_chan** %13, align 8
  %219 = call i32 @l2cap_chan_put(%struct.l2cap_chan* %218)
  %220 = load i64, i64* %20, align 8
  %221 = load i64, i64* @L2CAP_CR_PEND, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %212
  store i32 0, i32* %5, align 4
  br label %260

224:                                              ; preds = %212
  br label %225

225:                                              ; preds = %224, %74
  %226 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %227 = icmp ne %struct.l2cap_chan* %226, null
  br i1 %227, label %228, label %239

228:                                              ; preds = %225
  %229 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %230 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %229, i32 0, i32 5
  %231 = load i64, i64* %230, align 8
  %232 = call i8* @cpu_to_le16(i64 %231)
  %233 = getelementptr inbounds %struct.l2cap_le_conn_rsp, %struct.l2cap_le_conn_rsp* %11, i32 0, i32 4
  store i8* %232, i8** %233, align 8
  %234 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %235 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %234, i32 0, i32 6
  %236 = load i64, i64* %235, align 8
  %237 = call i8* @cpu_to_le16(i64 %236)
  %238 = getelementptr inbounds %struct.l2cap_le_conn_rsp, %struct.l2cap_le_conn_rsp* %11, i32 0, i32 3
  store i8* %237, i8** %238, align 8
  br label %242

239:                                              ; preds = %225
  %240 = getelementptr inbounds %struct.l2cap_le_conn_rsp, %struct.l2cap_le_conn_rsp* %11, i32 0, i32 4
  store i8* null, i8** %240, align 8
  %241 = getelementptr inbounds %struct.l2cap_le_conn_rsp, %struct.l2cap_le_conn_rsp* %11, i32 0, i32 3
  store i8* null, i8** %241, align 8
  br label %242

242:                                              ; preds = %239, %228
  %243 = load i32, i32* %14, align 4
  %244 = sext i32 %243 to i64
  %245 = call i8* @cpu_to_le16(i64 %244)
  %246 = getelementptr inbounds %struct.l2cap_le_conn_rsp, %struct.l2cap_le_conn_rsp* %11, i32 0, i32 2
  store i8* %245, i8** %246, align 8
  %247 = load i32, i32* %16, align 4
  %248 = sext i32 %247 to i64
  %249 = call i8* @cpu_to_le16(i64 %248)
  %250 = getelementptr inbounds %struct.l2cap_le_conn_rsp, %struct.l2cap_le_conn_rsp* %11, i32 0, i32 1
  store i8* %249, i8** %250, align 8
  %251 = load i64, i64* %20, align 8
  %252 = call i8* @cpu_to_le16(i64 %251)
  %253 = getelementptr inbounds %struct.l2cap_le_conn_rsp, %struct.l2cap_le_conn_rsp* %11, i32 0, i32 0
  store i8* %252, i8** %253, align 8
  %254 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %255 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %7, align 8
  %256 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @L2CAP_LE_CONN_RSP, align 4
  %259 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %254, i32 %257, i32 %258, i32 40, %struct.l2cap_le_conn_rsp* %11)
  store i32 0, i32* %5, align 4
  br label %260

260:                                              ; preds = %242, %223, %50, %26
  %261 = load i32, i32* %5, align 4
  ret i32 %261
}

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32, i32, i32) #1

declare dso_local %struct.l2cap_chan* @l2cap_global_chan_by_psm(i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @l2cap_chan_lock(%struct.l2cap_chan*) #1

declare dso_local i32 @smp_sufficient_security(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @__l2cap_get_chan_by_dcid(%struct.l2cap_conn*, i32) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @bdaddr_src_type(%struct.TYPE_6__*) #1

declare dso_local i32 @bdaddr_dst_type(%struct.TYPE_6__*) #1

declare dso_local i32 @__l2cap_chan_add(%struct.l2cap_conn*, %struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_le_flowctl_init(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @__set_chan_timer(%struct.l2cap_chan*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @l2cap_state_change(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @l2cap_chan_ready(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_chan_unlock(%struct.l2cap_chan*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @l2cap_chan_put(%struct.l2cap_chan*) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @l2cap_send_cmd(%struct.l2cap_conn*, i32, i32, i32, %struct.l2cap_le_conn_rsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
