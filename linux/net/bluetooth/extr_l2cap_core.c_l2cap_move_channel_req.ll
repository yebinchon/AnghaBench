; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_move_channel_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_move_channel_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.l2cap_cmd_hdr = type { i32 }
%struct.l2cap_move_chan_req = type { i64, i32 }
%struct.l2cap_move_chan_rsp = type { i8*, i8* }
%struct.l2cap_chan = type { i64, i64, i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.hci_dev = type { i64, i32 }

@L2CAP_MR_NOT_ALLOWED = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"icid 0x%4.4x, dest_amp_id %d\00", align 1
@L2CAP_FC_A2MP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@L2CAP_MOVE_CHAN_RSP = common dso_local global i32 0, align 4
@L2CAP_CID_DYN_START = common dso_local global i64 0, align 8
@BT_CHANNEL_POLICY_BREDR_ONLY = common dso_local global i64 0, align 8
@L2CAP_MODE_ERTM = common dso_local global i64 0, align 8
@L2CAP_MODE_STREAMING = common dso_local global i64 0, align 8
@L2CAP_MR_SAME_ID = common dso_local global i32 0, align 4
@AMP_ID_BREDR = common dso_local global i64 0, align 8
@HCI_AMP = common dso_local global i64 0, align 8
@HCI_UP = common dso_local global i32 0, align 4
@L2CAP_MR_BAD_ID = common dso_local global i32 0, align 4
@L2CAP_MOVE_ROLE_NONE = common dso_local global i64 0, align 8
@L2CAP_MR_COLLISION = common dso_local global i32 0, align 4
@L2CAP_MOVE_ROLE_RESPONDER = common dso_local global i64 0, align 8
@CONN_LOCAL_BUSY = common dso_local global i32 0, align 4
@L2CAP_MOVE_WAIT_LOCAL_BUSY = common dso_local global i32 0, align 4
@L2CAP_MR_PEND = common dso_local global i32 0, align 4
@L2CAP_MOVE_WAIT_CONFIRM = common dso_local global i32 0, align 4
@L2CAP_MR_SUCCESS = common dso_local global i32 0, align 4
@L2CAP_MOVE_WAIT_PREPARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32, i8*)* @l2cap_move_channel_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_move_channel_req(%struct.l2cap_conn* %0, %struct.l2cap_cmd_hdr* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.l2cap_conn*, align 8
  %7 = alloca %struct.l2cap_cmd_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.l2cap_move_chan_req*, align 8
  %11 = alloca %struct.l2cap_move_chan_rsp, align 8
  %12 = alloca %struct.l2cap_chan*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.hci_dev*, align 8
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %6, align 8
  store %struct.l2cap_cmd_hdr* %1, %struct.l2cap_cmd_hdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.l2cap_move_chan_req*
  store %struct.l2cap_move_chan_req* %17, %struct.l2cap_move_chan_req** %10, align 8
  store i32 0, i32* %13, align 4
  %18 = load i32, i32* @L2CAP_MR_NOT_ALLOWED, align 4
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ne i64 %20, 16
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EPROTO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %211

25:                                               ; preds = %4
  %26 = load %struct.l2cap_move_chan_req*, %struct.l2cap_move_chan_req** %10, align 8
  %27 = getelementptr inbounds %struct.l2cap_move_chan_req, %struct.l2cap_move_chan_req* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @le16_to_cpu(i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = load %struct.l2cap_move_chan_req*, %struct.l2cap_move_chan_req** %10, align 8
  %32 = getelementptr inbounds %struct.l2cap_move_chan_req, %struct.l2cap_move_chan_req* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @BT_DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %30, i64 %33)
  %35 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %36 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @L2CAP_FC_A2MP, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %25
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %211

44:                                               ; preds = %25
  %45 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %46 = load i32, i32* %13, align 4
  %47 = call %struct.l2cap_chan* @l2cap_get_chan_by_dcid(%struct.l2cap_conn* %45, i32 %46)
  store %struct.l2cap_chan* %47, %struct.l2cap_chan** %12, align 8
  %48 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %49 = icmp ne %struct.l2cap_chan* %48, null
  br i1 %49, label %63, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %13, align 4
  %52 = call i8* @cpu_to_le16(i32 %51)
  %53 = getelementptr inbounds %struct.l2cap_move_chan_rsp, %struct.l2cap_move_chan_rsp* %11, i32 0, i32 1
  store i8* %52, i8** %53, align 8
  %54 = load i32, i32* @L2CAP_MR_NOT_ALLOWED, align 4
  %55 = call i8* @cpu_to_le16(i32 %54)
  %56 = getelementptr inbounds %struct.l2cap_move_chan_rsp, %struct.l2cap_move_chan_rsp* %11, i32 0, i32 0
  store i8* %55, i8** %56, align 8
  %57 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %58 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %7, align 8
  %59 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @L2CAP_MOVE_CHAN_RSP, align 4
  %62 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %57, i32 %60, i32 %61, i32 16, %struct.l2cap_move_chan_rsp* %11)
  store i32 0, i32* %5, align 4
  br label %211

63:                                               ; preds = %44
  %64 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %7, align 8
  %65 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %68 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %67, i32 0, i32 9
  store i32 %66, i32* %68, align 4
  %69 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %70 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @L2CAP_CID_DYN_START, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %92, label %74

74:                                               ; preds = %63
  %75 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %76 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @BT_CHANNEL_POLICY_BREDR_ONLY, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %92, label %80

80:                                               ; preds = %74
  %81 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %82 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @L2CAP_MODE_ERTM, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %80
  %87 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %88 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @L2CAP_MODE_STREAMING, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %86, %74, %63
  %93 = load i32, i32* @L2CAP_MR_NOT_ALLOWED, align 4
  store i32 %93, i32* %14, align 4
  br label %205

94:                                               ; preds = %86, %80
  %95 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %96 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.l2cap_move_chan_req*, %struct.l2cap_move_chan_req** %10, align 8
  %99 = getelementptr inbounds %struct.l2cap_move_chan_req, %struct.l2cap_move_chan_req* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %97, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %94
  %103 = load i32, i32* @L2CAP_MR_SAME_ID, align 4
  store i32 %103, i32* %14, align 4
  br label %205

104:                                              ; preds = %94
  %105 = load %struct.l2cap_move_chan_req*, %struct.l2cap_move_chan_req** %10, align 8
  %106 = getelementptr inbounds %struct.l2cap_move_chan_req, %struct.l2cap_move_chan_req* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @AMP_ID_BREDR, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %140

110:                                              ; preds = %104
  %111 = load %struct.l2cap_move_chan_req*, %struct.l2cap_move_chan_req** %10, align 8
  %112 = getelementptr inbounds %struct.l2cap_move_chan_req, %struct.l2cap_move_chan_req* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call %struct.hci_dev* @hci_dev_get(i64 %113)
  store %struct.hci_dev* %114, %struct.hci_dev** %15, align 8
  %115 = load %struct.hci_dev*, %struct.hci_dev** %15, align 8
  %116 = icmp ne %struct.hci_dev* %115, null
  br i1 %116, label %117, label %129

117:                                              ; preds = %110
  %118 = load %struct.hci_dev*, %struct.hci_dev** %15, align 8
  %119 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @HCI_AMP, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %129, label %123

123:                                              ; preds = %117
  %124 = load i32, i32* @HCI_UP, align 4
  %125 = load %struct.hci_dev*, %struct.hci_dev** %15, align 8
  %126 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %125, i32 0, i32 1
  %127 = call i64 @test_bit(i32 %124, i32* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %137, label %129

129:                                              ; preds = %123, %117, %110
  %130 = load %struct.hci_dev*, %struct.hci_dev** %15, align 8
  %131 = icmp ne %struct.hci_dev* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load %struct.hci_dev*, %struct.hci_dev** %15, align 8
  %134 = call i32 @hci_dev_put(%struct.hci_dev* %133)
  br label %135

135:                                              ; preds = %132, %129
  %136 = load i32, i32* @L2CAP_MR_BAD_ID, align 4
  store i32 %136, i32* %14, align 4
  br label %205

137:                                              ; preds = %123
  %138 = load %struct.hci_dev*, %struct.hci_dev** %15, align 8
  %139 = call i32 @hci_dev_put(%struct.hci_dev* %138)
  br label %140

140:                                              ; preds = %137, %104
  %141 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %142 = call i64 @__chan_is_moving(%struct.l2cap_chan* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %150, label %144

144:                                              ; preds = %140
  %145 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %146 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %145, i32 0, i32 4
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @L2CAP_MOVE_ROLE_NONE, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %163

150:                                              ; preds = %144, %140
  %151 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %152 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %151, i32 0, i32 1
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 1
  %155 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %156 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %155, i32 0, i32 1
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = call i64 @bacmp(i32* %154, i32* %158)
  %160 = icmp sgt i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %150
  %162 = load i32, i32* @L2CAP_MR_COLLISION, align 4
  store i32 %162, i32* %14, align 4
  br label %205

163:                                              ; preds = %150, %144
  %164 = load i64, i64* @L2CAP_MOVE_ROLE_RESPONDER, align 8
  %165 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %166 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %165, i32 0, i32 4
  store i64 %164, i64* %166, align 8
  %167 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %168 = call i32 @l2cap_move_setup(%struct.l2cap_chan* %167)
  %169 = load %struct.l2cap_move_chan_req*, %struct.l2cap_move_chan_req** %10, align 8
  %170 = getelementptr inbounds %struct.l2cap_move_chan_req, %struct.l2cap_move_chan_req* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %173 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %172, i32 0, i32 5
  store i64 %171, i64* %173, align 8
  %174 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %175 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %174, i32 0, i32 6
  %176 = load i32, i32* %175, align 8
  store i32 %176, i32* %13, align 4
  %177 = load %struct.l2cap_move_chan_req*, %struct.l2cap_move_chan_req** %10, align 8
  %178 = getelementptr inbounds %struct.l2cap_move_chan_req, %struct.l2cap_move_chan_req* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @AMP_ID_BREDR, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %199

182:                                              ; preds = %163
  %183 = load i32, i32* @CONN_LOCAL_BUSY, align 4
  %184 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %185 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %184, i32 0, i32 8
  %186 = call i64 @test_bit(i32 %183, i32* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %182
  %189 = load i32, i32* @L2CAP_MOVE_WAIT_LOCAL_BUSY, align 4
  %190 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %191 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %190, i32 0, i32 7
  store i32 %189, i32* %191, align 4
  %192 = load i32, i32* @L2CAP_MR_PEND, align 4
  store i32 %192, i32* %14, align 4
  br label %198

193:                                              ; preds = %182
  %194 = load i32, i32* @L2CAP_MOVE_WAIT_CONFIRM, align 4
  %195 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %196 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %195, i32 0, i32 7
  store i32 %194, i32* %196, align 4
  %197 = load i32, i32* @L2CAP_MR_SUCCESS, align 4
  store i32 %197, i32* %14, align 4
  br label %198

198:                                              ; preds = %193, %188
  br label %204

199:                                              ; preds = %163
  %200 = load i32, i32* @L2CAP_MOVE_WAIT_PREPARE, align 4
  %201 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %202 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %201, i32 0, i32 7
  store i32 %200, i32* %202, align 4
  %203 = load i32, i32* @L2CAP_MR_PEND, align 4
  store i32 %203, i32* %14, align 4
  br label %204

204:                                              ; preds = %199, %198
  br label %205

205:                                              ; preds = %204, %161, %135, %102, %92
  %206 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %207 = load i32, i32* %14, align 4
  %208 = call i32 @l2cap_send_move_chan_rsp(%struct.l2cap_chan* %206, i32 %207)
  %209 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %210 = call i32 @l2cap_chan_unlock(%struct.l2cap_chan* %209)
  store i32 0, i32* %5, align 4
  br label %211

211:                                              ; preds = %205, %50, %41, %22
  %212 = load i32, i32* %5, align 4
  ret i32 %212
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @BT_DBG(i8*, i32, i64) #1

declare dso_local %struct.l2cap_chan* @l2cap_get_chan_by_dcid(%struct.l2cap_conn*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @l2cap_send_cmd(%struct.l2cap_conn*, i32, i32, i32, %struct.l2cap_move_chan_rsp*) #1

declare dso_local %struct.hci_dev* @hci_dev_get(i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @hci_dev_put(%struct.hci_dev*) #1

declare dso_local i64 @__chan_is_moving(%struct.l2cap_chan*) #1

declare dso_local i64 @bacmp(i32*, i32*) #1

declare dso_local i32 @l2cap_move_setup(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_send_move_chan_rsp(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @l2cap_chan_unlock(%struct.l2cap_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
