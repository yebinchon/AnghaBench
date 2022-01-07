; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cmd_status_evt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cmd_status_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.hci_ev_cmd_status = type { i64, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s opcode 0x%4.4x\00", align 1
@HCI_OP_NOP = common dso_local global i32 0, align 4
@HCI_RESET = common dso_local global i32 0, align 4
@HCI_CMD_PENDING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"unexpected event for opcode 0x%4.4x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*, i32*, i64*, i32*, i32*)* @hci_cmd_status_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_cmd_status_evt(%struct.hci_dev* %0, %struct.sk_buff* %1, i32* %2, i64* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.hci_ev_cmd_status*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct.hci_ev_cmd_status*
  store %struct.hci_ev_cmd_status* %18, %struct.hci_ev_cmd_status** %13, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %20 = call i32 @skb_pull(%struct.sk_buff* %19, i32 24)
  %21 = load %struct.hci_ev_cmd_status*, %struct.hci_ev_cmd_status** %13, align 8
  %22 = getelementptr inbounds %struct.hci_ev_cmd_status, %struct.hci_ev_cmd_status* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @__le16_to_cpu(i32 %23)
  %25 = load i32*, i32** %9, align 8
  store i32 %24, i32* %25, align 4
  %26 = load %struct.hci_ev_cmd_status*, %struct.hci_ev_cmd_status** %13, align 8
  %27 = getelementptr inbounds %struct.hci_ev_cmd_status, %struct.hci_ev_cmd_status* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64*, i64** %10, align 8
  store i64 %28, i64* %29, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %134 [
    i32 139, label %32
    i32 142, label %38
    i32 141, label %44
    i32 144, label %50
    i32 143, label %56
    i32 130, label %62
    i32 132, label %68
    i32 133, label %74
    i32 134, label %80
    i32 131, label %86
    i32 129, label %92
    i32 140, label %98
    i32 128, label %104
    i32 138, label %110
    i32 136, label %116
    i32 135, label %122
    i32 137, label %128
  ]

32:                                               ; preds = %6
  %33 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %34 = load %struct.hci_ev_cmd_status*, %struct.hci_ev_cmd_status** %13, align 8
  %35 = getelementptr inbounds %struct.hci_ev_cmd_status, %struct.hci_ev_cmd_status* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @hci_cs_inquiry(%struct.hci_dev* %33, i64 %36)
  br label %141

38:                                               ; preds = %6
  %39 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %40 = load %struct.hci_ev_cmd_status*, %struct.hci_ev_cmd_status** %13, align 8
  %41 = getelementptr inbounds %struct.hci_ev_cmd_status, %struct.hci_ev_cmd_status* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @hci_cs_create_conn(%struct.hci_dev* %39, i64 %42)
  br label %141

44:                                               ; preds = %6
  %45 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %46 = load %struct.hci_ev_cmd_status*, %struct.hci_ev_cmd_status** %13, align 8
  %47 = getelementptr inbounds %struct.hci_ev_cmd_status, %struct.hci_ev_cmd_status* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @hci_cs_disconnect(%struct.hci_dev* %45, i64 %48)
  br label %141

50:                                               ; preds = %6
  %51 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %52 = load %struct.hci_ev_cmd_status*, %struct.hci_ev_cmd_status** %13, align 8
  %53 = getelementptr inbounds %struct.hci_ev_cmd_status, %struct.hci_ev_cmd_status* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @hci_cs_add_sco(%struct.hci_dev* %51, i64 %54)
  br label %141

56:                                               ; preds = %6
  %57 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %58 = load %struct.hci_ev_cmd_status*, %struct.hci_ev_cmd_status** %13, align 8
  %59 = getelementptr inbounds %struct.hci_ev_cmd_status, %struct.hci_ev_cmd_status* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @hci_cs_auth_requested(%struct.hci_dev* %57, i64 %60)
  br label %141

62:                                               ; preds = %6
  %63 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %64 = load %struct.hci_ev_cmd_status*, %struct.hci_ev_cmd_status** %13, align 8
  %65 = getelementptr inbounds %struct.hci_ev_cmd_status, %struct.hci_ev_cmd_status* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @hci_cs_set_conn_encrypt(%struct.hci_dev* %63, i64 %66)
  br label %141

68:                                               ; preds = %6
  %69 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %70 = load %struct.hci_ev_cmd_status*, %struct.hci_ev_cmd_status** %13, align 8
  %71 = getelementptr inbounds %struct.hci_ev_cmd_status, %struct.hci_ev_cmd_status* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @hci_cs_remote_name_req(%struct.hci_dev* %69, i64 %72)
  br label %141

74:                                               ; preds = %6
  %75 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %76 = load %struct.hci_ev_cmd_status*, %struct.hci_ev_cmd_status** %13, align 8
  %77 = getelementptr inbounds %struct.hci_ev_cmd_status, %struct.hci_ev_cmd_status* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @hci_cs_read_remote_features(%struct.hci_dev* %75, i64 %78)
  br label %141

80:                                               ; preds = %6
  %81 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %82 = load %struct.hci_ev_cmd_status*, %struct.hci_ev_cmd_status** %13, align 8
  %83 = getelementptr inbounds %struct.hci_ev_cmd_status, %struct.hci_ev_cmd_status* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @hci_cs_read_remote_ext_features(%struct.hci_dev* %81, i64 %84)
  br label %141

86:                                               ; preds = %6
  %87 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %88 = load %struct.hci_ev_cmd_status*, %struct.hci_ev_cmd_status** %13, align 8
  %89 = getelementptr inbounds %struct.hci_ev_cmd_status, %struct.hci_ev_cmd_status* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @hci_cs_setup_sync_conn(%struct.hci_dev* %87, i64 %90)
  br label %141

92:                                               ; preds = %6
  %93 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %94 = load %struct.hci_ev_cmd_status*, %struct.hci_ev_cmd_status** %13, align 8
  %95 = getelementptr inbounds %struct.hci_ev_cmd_status, %struct.hci_ev_cmd_status* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @hci_cs_sniff_mode(%struct.hci_dev* %93, i64 %96)
  br label %141

98:                                               ; preds = %6
  %99 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %100 = load %struct.hci_ev_cmd_status*, %struct.hci_ev_cmd_status** %13, align 8
  %101 = getelementptr inbounds %struct.hci_ev_cmd_status, %struct.hci_ev_cmd_status* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @hci_cs_exit_sniff_mode(%struct.hci_dev* %99, i64 %102)
  br label %141

104:                                              ; preds = %6
  %105 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %106 = load %struct.hci_ev_cmd_status*, %struct.hci_ev_cmd_status** %13, align 8
  %107 = getelementptr inbounds %struct.hci_ev_cmd_status, %struct.hci_ev_cmd_status* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @hci_cs_switch_role(%struct.hci_dev* %105, i64 %108)
  br label %141

110:                                              ; preds = %6
  %111 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %112 = load %struct.hci_ev_cmd_status*, %struct.hci_ev_cmd_status** %13, align 8
  %113 = getelementptr inbounds %struct.hci_ev_cmd_status, %struct.hci_ev_cmd_status* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @hci_cs_le_create_conn(%struct.hci_dev* %111, i64 %114)
  br label %141

116:                                              ; preds = %6
  %117 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %118 = load %struct.hci_ev_cmd_status*, %struct.hci_ev_cmd_status** %13, align 8
  %119 = getelementptr inbounds %struct.hci_ev_cmd_status, %struct.hci_ev_cmd_status* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @hci_cs_le_read_remote_features(%struct.hci_dev* %117, i64 %120)
  br label %141

122:                                              ; preds = %6
  %123 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %124 = load %struct.hci_ev_cmd_status*, %struct.hci_ev_cmd_status** %13, align 8
  %125 = getelementptr inbounds %struct.hci_ev_cmd_status, %struct.hci_ev_cmd_status* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @hci_cs_le_start_enc(%struct.hci_dev* %123, i64 %126)
  br label %141

128:                                              ; preds = %6
  %129 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %130 = load %struct.hci_ev_cmd_status*, %struct.hci_ev_cmd_status** %13, align 8
  %131 = getelementptr inbounds %struct.hci_ev_cmd_status, %struct.hci_ev_cmd_status* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @hci_cs_le_ext_create_conn(%struct.hci_dev* %129, i64 %132)
  br label %141

134:                                              ; preds = %6
  %135 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %136 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 8
  %138 = load i32*, i32** %9, align 8
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %137, i32 %139)
  br label %141

141:                                              ; preds = %134, %128, %122, %116, %110, %104, %98, %92, %86, %80, %74, %68, %62, %56, %50, %44, %38, %32
  %142 = load i32*, i32** %9, align 8
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @HCI_OP_NOP, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %141
  %147 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %148 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %147, i32 0, i32 6
  %149 = call i32 @cancel_delayed_work(i32* %148)
  br label %150

150:                                              ; preds = %146, %141
  %151 = load %struct.hci_ev_cmd_status*, %struct.hci_ev_cmd_status** %13, align 8
  %152 = getelementptr inbounds %struct.hci_ev_cmd_status, %struct.hci_ev_cmd_status* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %165

155:                                              ; preds = %150
  %156 = load i32, i32* @HCI_RESET, align 4
  %157 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %158 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %157, i32 0, i32 5
  %159 = call i32 @test_bit(i32 %156, i32* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %155
  %162 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %163 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %162, i32 0, i32 3
  %164 = call i32 @atomic_set(i32* %163, i32 1)
  br label %165

165:                                              ; preds = %161, %155, %150
  %166 = load %struct.hci_ev_cmd_status*, %struct.hci_ev_cmd_status** %13, align 8
  %167 = getelementptr inbounds %struct.hci_ev_cmd_status, %struct.hci_ev_cmd_status* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %184, label %170

170:                                              ; preds = %165
  %171 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %172 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %171, i32 0, i32 4
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %194

175:                                              ; preds = %170
  %176 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %177 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %176, i32 0, i32 4
  %178 = load i64, i64* %177, align 8
  %179 = call %struct.TYPE_4__* @bt_cb(i64 %178)
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %194, label %184

184:                                              ; preds = %175, %165
  %185 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %186 = load i32*, i32** %9, align 8
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.hci_ev_cmd_status*, %struct.hci_ev_cmd_status** %13, align 8
  %189 = getelementptr inbounds %struct.hci_ev_cmd_status, %struct.hci_ev_cmd_status* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i32*, i32** %11, align 8
  %192 = load i32*, i32** %12, align 8
  %193 = call i32 @hci_req_cmd_complete(%struct.hci_dev* %185, i32 %187, i64 %190, i32* %191, i32* %192)
  br label %194

194:                                              ; preds = %184, %175, %170
  %195 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %196 = load i32, i32* @HCI_CMD_PENDING, align 4
  %197 = call i64 @hci_dev_test_flag(%struct.hci_dev* %195, i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %194
  %200 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %201 = load i32*, i32** %9, align 8
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @bt_dev_err(%struct.hci_dev* %200, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %202)
  br label %221

204:                                              ; preds = %194
  %205 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %206 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %205, i32 0, i32 3
  %207 = call i64 @atomic_read(i32* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %221

209:                                              ; preds = %204
  %210 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %211 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %210, i32 0, i32 2
  %212 = call i32 @skb_queue_empty(i32* %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %221, label %214

214:                                              ; preds = %209
  %215 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %216 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %219 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %218, i32 0, i32 0
  %220 = call i32 @queue_work(i32 %217, i32* %219)
  br label %221

221:                                              ; preds = %199, %214, %209, %204
  ret void
}

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @hci_cs_inquiry(%struct.hci_dev*, i64) #1

declare dso_local i32 @hci_cs_create_conn(%struct.hci_dev*, i64) #1

declare dso_local i32 @hci_cs_disconnect(%struct.hci_dev*, i64) #1

declare dso_local i32 @hci_cs_add_sco(%struct.hci_dev*, i64) #1

declare dso_local i32 @hci_cs_auth_requested(%struct.hci_dev*, i64) #1

declare dso_local i32 @hci_cs_set_conn_encrypt(%struct.hci_dev*, i64) #1

declare dso_local i32 @hci_cs_remote_name_req(%struct.hci_dev*, i64) #1

declare dso_local i32 @hci_cs_read_remote_features(%struct.hci_dev*, i64) #1

declare dso_local i32 @hci_cs_read_remote_ext_features(%struct.hci_dev*, i64) #1

declare dso_local i32 @hci_cs_setup_sync_conn(%struct.hci_dev*, i64) #1

declare dso_local i32 @hci_cs_sniff_mode(%struct.hci_dev*, i64) #1

declare dso_local i32 @hci_cs_exit_sniff_mode(%struct.hci_dev*, i64) #1

declare dso_local i32 @hci_cs_switch_role(%struct.hci_dev*, i64) #1

declare dso_local i32 @hci_cs_le_create_conn(%struct.hci_dev*, i64) #1

declare dso_local i32 @hci_cs_le_read_remote_features(%struct.hci_dev*, i64) #1

declare dso_local i32 @hci_cs_le_start_enc(%struct.hci_dev*, i64) #1

declare dso_local i32 @hci_cs_le_ext_create_conn(%struct.hci_dev*, i64) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local %struct.TYPE_4__* @bt_cb(i64) #1

declare dso_local i32 @hci_req_cmd_complete(%struct.hci_dev*, i32, i64, i32*, i32*) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
