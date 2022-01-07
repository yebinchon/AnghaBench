; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cmd_complete_evt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cmd_complete_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32* }
%struct.hci_ev_cmd_complete = type { i64, i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s opcode 0x%4.4x\00", align 1
@HCI_OP_NOP = common dso_local global i32 0, align 4
@HCI_RESET = common dso_local global i32 0, align 4
@HCI_CMD_PENDING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"unexpected event for opcode 0x%4.4x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*, i32*, i32*, i32*, i32*)* @hci_cmd_complete_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_cmd_complete_evt(%struct.hci_dev* %0, %struct.sk_buff* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.hci_ev_cmd_complete*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = bitcast i32* %16 to i8*
  %18 = bitcast i8* %17 to %struct.hci_ev_cmd_complete*
  store %struct.hci_ev_cmd_complete* %18, %struct.hci_ev_cmd_complete** %13, align 8
  %19 = load %struct.hci_ev_cmd_complete*, %struct.hci_ev_cmd_complete** %13, align 8
  %20 = getelementptr inbounds %struct.hci_ev_cmd_complete, %struct.hci_ev_cmd_complete* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @__le16_to_cpu(i32 %21)
  %23 = load i32*, i32** %9, align 8
  store i32 %22, i32* %23, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 16
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %10, align 8
  store i32 %28, i32* %29, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %31 = call i32 @skb_pull(%struct.sk_buff* %30, i32 16)
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %358 [
    i32 206, label %34
    i32 177, label %38
    i32 207, label %42
    i32 149, label %46
    i32 147, label %50
    i32 165, label %54
    i32 136, label %58
    i32 168, label %62
    i32 139, label %66
    i32 148, label %70
    i32 152, label %74
    i32 208, label %78
    i32 135, label %82
    i32 160, label %86
    i32 142, label %90
    i32 138, label %94
    i32 132, label %98
    i32 171, label %102
    i32 140, label %106
    i32 150, label %110
    i32 128, label %114
    i32 156, label %118
    i32 129, label %122
    i32 131, label %126
    i32 174, label %130
    i32 141, label %134
    i32 157, label %138
    i32 163, label %142
    i32 161, label %146
    i32 162, label %150
    i32 172, label %154
    i32 173, label %158
    i32 155, label %162
    i32 134, label %166
    i32 154, label %170
    i32 133, label %174
    i32 169, label %178
    i32 167, label %182
    i32 164, label %186
    i32 170, label %190
    i32 166, label %194
    i32 175, label %198
    i32 176, label %202
    i32 159, label %206
    i32 158, label %210
    i32 198, label %214
    i32 196, label %218
    i32 199, label %222
    i32 145, label %226
    i32 146, label %230
    i32 143, label %234
    i32 144, label %238
    i32 181, label %242
    i32 189, label %246
    i32 179, label %250
    i32 180, label %254
    i32 191, label %258
    i32 202, label %262
    i32 204, label %266
    i32 200, label %270
    i32 192, label %274
    i32 197, label %278
    i32 178, label %282
    i32 205, label %286
    i32 201, label %290
    i32 203, label %294
    i32 193, label %298
    i32 190, label %302
    i32 195, label %306
    i32 137, label %310
    i32 188, label %314
    i32 153, label %318
    i32 151, label %322
    i32 130, label %326
    i32 182, label %330
    i32 183, label %334
    i32 186, label %338
    i32 194, label %342
    i32 184, label %346
    i32 185, label %350
    i32 187, label %354
  ]

34:                                               ; preds = %6
  %35 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = call i32 @hci_cc_inquiry_cancel(%struct.hci_dev* %35, %struct.sk_buff* %36)
  br label %365

38:                                               ; preds = %6
  %39 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %41 = call i32 @hci_cc_periodic_inq(%struct.hci_dev* %39, %struct.sk_buff* %40)
  br label %365

42:                                               ; preds = %6
  %43 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %45 = call i32 @hci_cc_exit_periodic_inq(%struct.hci_dev* %43, %struct.sk_buff* %44)
  br label %365

46:                                               ; preds = %6
  %47 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %49 = call i32 @hci_cc_remote_name_req_cancel(%struct.hci_dev* %47, %struct.sk_buff* %48)
  br label %365

50:                                               ; preds = %6
  %51 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %53 = call i32 @hci_cc_role_discovery(%struct.hci_dev* %51, %struct.sk_buff* %52)
  br label %365

54:                                               ; preds = %6
  %55 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %57 = call i32 @hci_cc_read_link_policy(%struct.hci_dev* %55, %struct.sk_buff* %56)
  br label %365

58:                                               ; preds = %6
  %59 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %61 = call i32 @hci_cc_write_link_policy(%struct.hci_dev* %59, %struct.sk_buff* %60)
  br label %365

62:                                               ; preds = %6
  %63 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %65 = call i32 @hci_cc_read_def_link_policy(%struct.hci_dev* %63, %struct.sk_buff* %64)
  br label %365

66:                                               ; preds = %6
  %67 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %69 = call i32 @hci_cc_write_def_link_policy(%struct.hci_dev* %67, %struct.sk_buff* %68)
  br label %365

70:                                               ; preds = %6
  %71 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %73 = call i32 @hci_cc_reset(%struct.hci_dev* %71, %struct.sk_buff* %72)
  br label %365

74:                                               ; preds = %6
  %75 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %77 = call i32 @hci_cc_read_stored_link_key(%struct.hci_dev* %75, %struct.sk_buff* %76)
  br label %365

78:                                               ; preds = %6
  %79 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %81 = call i32 @hci_cc_delete_stored_link_key(%struct.hci_dev* %79, %struct.sk_buff* %80)
  br label %365

82:                                               ; preds = %6
  %83 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %85 = call i32 @hci_cc_write_local_name(%struct.hci_dev* %83, %struct.sk_buff* %84)
  br label %365

86:                                               ; preds = %6
  %87 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %89 = call i32 @hci_cc_read_local_name(%struct.hci_dev* %87, %struct.sk_buff* %88)
  br label %365

90:                                               ; preds = %6
  %91 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %93 = call i32 @hci_cc_write_auth_enable(%struct.hci_dev* %91, %struct.sk_buff* %92)
  br label %365

94:                                               ; preds = %6
  %95 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %97 = call i32 @hci_cc_write_encrypt_mode(%struct.hci_dev* %95, %struct.sk_buff* %96)
  br label %365

98:                                               ; preds = %6
  %99 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %101 = call i32 @hci_cc_write_scan_enable(%struct.hci_dev* %99, %struct.sk_buff* %100)
  br label %365

102:                                              ; preds = %6
  %103 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %105 = call i32 @hci_cc_read_class_of_dev(%struct.hci_dev* %103, %struct.sk_buff* %104)
  br label %365

106:                                              ; preds = %6
  %107 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %109 = call i32 @hci_cc_write_class_of_dev(%struct.hci_dev* %107, %struct.sk_buff* %108)
  br label %365

110:                                              ; preds = %6
  %111 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %113 = call i32 @hci_cc_read_voice_setting(%struct.hci_dev* %111, %struct.sk_buff* %112)
  br label %365

114:                                              ; preds = %6
  %115 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %117 = call i32 @hci_cc_write_voice_setting(%struct.hci_dev* %115, %struct.sk_buff* %116)
  br label %365

118:                                              ; preds = %6
  %119 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %121 = call i32 @hci_cc_read_num_supported_iac(%struct.hci_dev* %119, %struct.sk_buff* %120)
  br label %365

122:                                              ; preds = %6
  %123 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %125 = call i32 @hci_cc_write_ssp_mode(%struct.hci_dev* %123, %struct.sk_buff* %124)
  br label %365

126:                                              ; preds = %6
  %127 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %128 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %129 = call i32 @hci_cc_write_sc_support(%struct.hci_dev* %127, %struct.sk_buff* %128)
  br label %365

130:                                              ; preds = %6
  %131 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %132 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %133 = call i32 @hci_cc_read_auth_payload_timeout(%struct.hci_dev* %131, %struct.sk_buff* %132)
  br label %365

134:                                              ; preds = %6
  %135 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %136 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %137 = call i32 @hci_cc_write_auth_payload_timeout(%struct.hci_dev* %135, %struct.sk_buff* %136)
  br label %365

138:                                              ; preds = %6
  %139 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %140 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %141 = call i32 @hci_cc_read_local_version(%struct.hci_dev* %139, %struct.sk_buff* %140)
  br label %365

142:                                              ; preds = %6
  %143 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %144 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %145 = call i32 @hci_cc_read_local_commands(%struct.hci_dev* %143, %struct.sk_buff* %144)
  br label %365

146:                                              ; preds = %6
  %147 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %148 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %149 = call i32 @hci_cc_read_local_features(%struct.hci_dev* %147, %struct.sk_buff* %148)
  br label %365

150:                                              ; preds = %6
  %151 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %152 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %153 = call i32 @hci_cc_read_local_ext_features(%struct.hci_dev* %151, %struct.sk_buff* %152)
  br label %365

154:                                              ; preds = %6
  %155 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %156 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %157 = call i32 @hci_cc_read_buffer_size(%struct.hci_dev* %155, %struct.sk_buff* %156)
  br label %365

158:                                              ; preds = %6
  %159 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %160 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %161 = call i32 @hci_cc_read_bd_addr(%struct.hci_dev* %159, %struct.sk_buff* %160)
  br label %365

162:                                              ; preds = %6
  %163 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %164 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %165 = call i32 @hci_cc_read_page_scan_activity(%struct.hci_dev* %163, %struct.sk_buff* %164)
  br label %365

166:                                              ; preds = %6
  %167 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %168 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %169 = call i32 @hci_cc_write_page_scan_activity(%struct.hci_dev* %167, %struct.sk_buff* %168)
  br label %365

170:                                              ; preds = %6
  %171 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %172 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %173 = call i32 @hci_cc_read_page_scan_type(%struct.hci_dev* %171, %struct.sk_buff* %172)
  br label %365

174:                                              ; preds = %6
  %175 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %176 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %177 = call i32 @hci_cc_write_page_scan_type(%struct.hci_dev* %175, %struct.sk_buff* %176)
  br label %365

178:                                              ; preds = %6
  %179 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %180 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %181 = call i32 @hci_cc_read_data_block_size(%struct.hci_dev* %179, %struct.sk_buff* %180)
  br label %365

182:                                              ; preds = %6
  %183 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %184 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %185 = call i32 @hci_cc_read_flow_control_mode(%struct.hci_dev* %183, %struct.sk_buff* %184)
  br label %365

186:                                              ; preds = %6
  %187 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %188 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %189 = call i32 @hci_cc_read_local_amp_info(%struct.hci_dev* %187, %struct.sk_buff* %188)
  br label %365

190:                                              ; preds = %6
  %191 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %192 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %193 = call i32 @hci_cc_read_clock(%struct.hci_dev* %191, %struct.sk_buff* %192)
  br label %365

194:                                              ; preds = %6
  %195 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %196 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %197 = call i32 @hci_cc_read_inq_rsp_tx_power(%struct.hci_dev* %195, %struct.sk_buff* %196)
  br label %365

198:                                              ; preds = %6
  %199 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %200 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %201 = call i32 @hci_cc_pin_code_reply(%struct.hci_dev* %199, %struct.sk_buff* %200)
  br label %365

202:                                              ; preds = %6
  %203 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %204 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %205 = call i32 @hci_cc_pin_code_neg_reply(%struct.hci_dev* %203, %struct.sk_buff* %204)
  br label %365

206:                                              ; preds = %6
  %207 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %208 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %209 = call i32 @hci_cc_read_local_oob_data(%struct.hci_dev* %207, %struct.sk_buff* %208)
  br label %365

210:                                              ; preds = %6
  %211 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %212 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %213 = call i32 @hci_cc_read_local_oob_ext_data(%struct.hci_dev* %211, %struct.sk_buff* %212)
  br label %365

214:                                              ; preds = %6
  %215 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %216 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %217 = call i32 @hci_cc_le_read_buffer_size(%struct.hci_dev* %215, %struct.sk_buff* %216)
  br label %365

218:                                              ; preds = %6
  %219 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %220 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %221 = call i32 @hci_cc_le_read_local_features(%struct.hci_dev* %219, %struct.sk_buff* %220)
  br label %365

222:                                              ; preds = %6
  %223 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %224 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %225 = call i32 @hci_cc_le_read_adv_tx_power(%struct.hci_dev* %223, %struct.sk_buff* %224)
  br label %365

226:                                              ; preds = %6
  %227 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %228 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %229 = call i32 @hci_cc_user_confirm_reply(%struct.hci_dev* %227, %struct.sk_buff* %228)
  br label %365

230:                                              ; preds = %6
  %231 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %232 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %233 = call i32 @hci_cc_user_confirm_neg_reply(%struct.hci_dev* %231, %struct.sk_buff* %232)
  br label %365

234:                                              ; preds = %6
  %235 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %236 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %237 = call i32 @hci_cc_user_passkey_reply(%struct.hci_dev* %235, %struct.sk_buff* %236)
  br label %365

238:                                              ; preds = %6
  %239 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %240 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %241 = call i32 @hci_cc_user_passkey_neg_reply(%struct.hci_dev* %239, %struct.sk_buff* %240)
  br label %365

242:                                              ; preds = %6
  %243 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %244 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %245 = call i32 @hci_cc_le_set_random_addr(%struct.hci_dev* %243, %struct.sk_buff* %244)
  br label %365

246:                                              ; preds = %6
  %247 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %248 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %249 = call i32 @hci_cc_le_set_adv_enable(%struct.hci_dev* %247, %struct.sk_buff* %248)
  br label %365

250:                                              ; preds = %6
  %251 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %252 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %253 = call i32 @hci_cc_le_set_scan_param(%struct.hci_dev* %251, %struct.sk_buff* %252)
  br label %365

254:                                              ; preds = %6
  %255 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %256 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %257 = call i32 @hci_cc_le_set_scan_enable(%struct.hci_dev* %255, %struct.sk_buff* %256)
  br label %365

258:                                              ; preds = %6
  %259 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %260 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %261 = call i32 @hci_cc_le_read_white_list_size(%struct.hci_dev* %259, %struct.sk_buff* %260)
  br label %365

262:                                              ; preds = %6
  %263 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %264 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %265 = call i32 @hci_cc_le_clear_white_list(%struct.hci_dev* %263, %struct.sk_buff* %264)
  br label %365

266:                                              ; preds = %6
  %267 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %268 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %269 = call i32 @hci_cc_le_add_to_white_list(%struct.hci_dev* %267, %struct.sk_buff* %268)
  br label %365

270:                                              ; preds = %6
  %271 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %272 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %273 = call i32 @hci_cc_le_del_from_white_list(%struct.hci_dev* %271, %struct.sk_buff* %272)
  br label %365

274:                                              ; preds = %6
  %275 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %276 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %277 = call i32 @hci_cc_le_read_supported_states(%struct.hci_dev* %275, %struct.sk_buff* %276)
  br label %365

278:                                              ; preds = %6
  %279 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %280 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %281 = call i32 @hci_cc_le_read_def_data_len(%struct.hci_dev* %279, %struct.sk_buff* %280)
  br label %365

282:                                              ; preds = %6
  %283 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %284 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %285 = call i32 @hci_cc_le_write_def_data_len(%struct.hci_dev* %283, %struct.sk_buff* %284)
  br label %365

286:                                              ; preds = %6
  %287 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %288 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %289 = call i32 @hci_cc_le_add_to_resolv_list(%struct.hci_dev* %287, %struct.sk_buff* %288)
  br label %365

290:                                              ; preds = %6
  %291 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %292 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %293 = call i32 @hci_cc_le_del_from_resolv_list(%struct.hci_dev* %291, %struct.sk_buff* %292)
  br label %365

294:                                              ; preds = %6
  %295 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %296 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %297 = call i32 @hci_cc_le_clear_resolv_list(%struct.hci_dev* %295, %struct.sk_buff* %296)
  br label %365

298:                                              ; preds = %6
  %299 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %300 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %301 = call i32 @hci_cc_le_read_resolv_list_size(%struct.hci_dev* %299, %struct.sk_buff* %300)
  br label %365

302:                                              ; preds = %6
  %303 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %304 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %305 = call i32 @hci_cc_le_set_addr_resolution_enable(%struct.hci_dev* %303, %struct.sk_buff* %304)
  br label %365

306:                                              ; preds = %6
  %307 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %308 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %309 = call i32 @hci_cc_le_read_max_data_len(%struct.hci_dev* %307, %struct.sk_buff* %308)
  br label %365

310:                                              ; preds = %6
  %311 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %312 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %313 = call i32 @hci_cc_write_le_host_supported(%struct.hci_dev* %311, %struct.sk_buff* %312)
  br label %365

314:                                              ; preds = %6
  %315 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %316 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %317 = call i32 @hci_cc_set_adv_param(%struct.hci_dev* %315, %struct.sk_buff* %316)
  br label %365

318:                                              ; preds = %6
  %319 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %320 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %321 = call i32 @hci_cc_read_rssi(%struct.hci_dev* %319, %struct.sk_buff* %320)
  br label %365

322:                                              ; preds = %6
  %323 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %324 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %325 = call i32 @hci_cc_read_tx_power(%struct.hci_dev* %323, %struct.sk_buff* %324)
  br label %365

326:                                              ; preds = %6
  %327 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %328 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %329 = call i32 @hci_cc_write_ssp_debug_mode(%struct.hci_dev* %327, %struct.sk_buff* %328)
  br label %365

330:                                              ; preds = %6
  %331 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %332 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %333 = call i32 @hci_cc_le_set_ext_scan_param(%struct.hci_dev* %331, %struct.sk_buff* %332)
  br label %365

334:                                              ; preds = %6
  %335 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %336 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %337 = call i32 @hci_cc_le_set_ext_scan_enable(%struct.hci_dev* %335, %struct.sk_buff* %336)
  br label %365

338:                                              ; preds = %6
  %339 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %340 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %341 = call i32 @hci_cc_le_set_default_phy(%struct.hci_dev* %339, %struct.sk_buff* %340)
  br label %365

342:                                              ; preds = %6
  %343 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %344 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %345 = call i32 @hci_cc_le_read_num_adv_sets(%struct.hci_dev* %343, %struct.sk_buff* %344)
  br label %365

346:                                              ; preds = %6
  %347 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %348 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %349 = call i32 @hci_cc_set_ext_adv_param(%struct.hci_dev* %347, %struct.sk_buff* %348)
  br label %365

350:                                              ; preds = %6
  %351 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %352 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %353 = call i32 @hci_cc_le_set_ext_adv_enable(%struct.hci_dev* %351, %struct.sk_buff* %352)
  br label %365

354:                                              ; preds = %6
  %355 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %356 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %357 = call i32 @hci_cc_le_set_adv_set_random_addr(%struct.hci_dev* %355, %struct.sk_buff* %356)
  br label %365

358:                                              ; preds = %6
  %359 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %360 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %359, i32 0, i32 6
  %361 = load i32, i32* %360, align 4
  %362 = load i32*, i32** %9, align 8
  %363 = load i32, i32* %362, align 4
  %364 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %361, i32 %363)
  br label %365

365:                                              ; preds = %358, %354, %350, %346, %342, %338, %334, %330, %326, %322, %318, %314, %310, %306, %302, %298, %294, %290, %286, %282, %278, %274, %270, %266, %262, %258, %254, %250, %246, %242, %238, %234, %230, %226, %222, %218, %214, %210, %206, %202, %198, %194, %190, %186, %182, %178, %174, %170, %166, %162, %158, %154, %150, %146, %142, %138, %134, %130, %126, %122, %118, %114, %110, %106, %102, %98, %94, %90, %86, %82, %78, %74, %70, %66, %62, %58, %54, %50, %46, %42, %38, %34
  %366 = load i32*, i32** %9, align 8
  %367 = load i32, i32* %366, align 4
  %368 = load i32, i32* @HCI_OP_NOP, align 4
  %369 = icmp ne i32 %367, %368
  br i1 %369, label %370, label %374

370:                                              ; preds = %365
  %371 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %372 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %371, i32 0, i32 5
  %373 = call i32 @cancel_delayed_work(i32* %372)
  br label %374

374:                                              ; preds = %370, %365
  %375 = load %struct.hci_ev_cmd_complete*, %struct.hci_ev_cmd_complete** %13, align 8
  %376 = getelementptr inbounds %struct.hci_ev_cmd_complete, %struct.hci_ev_cmd_complete* %375, i32 0, i32 0
  %377 = load i64, i64* %376, align 8
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %389

379:                                              ; preds = %374
  %380 = load i32, i32* @HCI_RESET, align 4
  %381 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %382 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %381, i32 0, i32 4
  %383 = call i32 @test_bit(i32 %380, i32* %382)
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %389, label %385

385:                                              ; preds = %379
  %386 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %387 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %386, i32 0, i32 3
  %388 = call i32 @atomic_set(i32* %387, i32 1)
  br label %389

389:                                              ; preds = %385, %379, %374
  %390 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %391 = load i32*, i32** %9, align 8
  %392 = load i32, i32* %391, align 4
  %393 = load i32*, i32** %10, align 8
  %394 = load i32, i32* %393, align 4
  %395 = load i32*, i32** %11, align 8
  %396 = load i32*, i32** %12, align 8
  %397 = call i32 @hci_req_cmd_complete(%struct.hci_dev* %390, i32 %392, i32 %394, i32* %395, i32* %396)
  %398 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %399 = load i32, i32* @HCI_CMD_PENDING, align 4
  %400 = call i64 @hci_dev_test_flag(%struct.hci_dev* %398, i32 %399)
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %407

402:                                              ; preds = %389
  %403 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %404 = load i32*, i32** %9, align 8
  %405 = load i32, i32* %404, align 4
  %406 = call i32 @bt_dev_err(%struct.hci_dev* %403, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %405)
  br label %424

407:                                              ; preds = %389
  %408 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %409 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %408, i32 0, i32 3
  %410 = call i64 @atomic_read(i32* %409)
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %412, label %424

412:                                              ; preds = %407
  %413 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %414 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %413, i32 0, i32 2
  %415 = call i32 @skb_queue_empty(i32* %414)
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %424, label %417

417:                                              ; preds = %412
  %418 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %419 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 4
  %421 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %422 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %421, i32 0, i32 0
  %423 = call i32 @queue_work(i32 %420, i32* %422)
  br label %424

424:                                              ; preds = %402, %417, %412, %407
  ret void
}

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @hci_cc_inquiry_cancel(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_periodic_inq(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_exit_periodic_inq(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_remote_name_req_cancel(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_role_discovery(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_read_link_policy(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_write_link_policy(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_read_def_link_policy(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_write_def_link_policy(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_reset(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_read_stored_link_key(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_delete_stored_link_key(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_write_local_name(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_read_local_name(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_write_auth_enable(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_write_encrypt_mode(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_write_scan_enable(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_read_class_of_dev(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_write_class_of_dev(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_read_voice_setting(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_write_voice_setting(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_read_num_supported_iac(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_write_ssp_mode(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_write_sc_support(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_read_auth_payload_timeout(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_write_auth_payload_timeout(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_read_local_version(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_read_local_commands(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_read_local_features(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_read_local_ext_features(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_read_buffer_size(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_read_bd_addr(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_read_page_scan_activity(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_write_page_scan_activity(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_read_page_scan_type(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_write_page_scan_type(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_read_data_block_size(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_read_flow_control_mode(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_read_local_amp_info(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_read_clock(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_read_inq_rsp_tx_power(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_pin_code_reply(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_pin_code_neg_reply(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_read_local_oob_data(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_read_local_oob_ext_data(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_le_read_buffer_size(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_le_read_local_features(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_le_read_adv_tx_power(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_user_confirm_reply(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_user_confirm_neg_reply(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_user_passkey_reply(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_user_passkey_neg_reply(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_le_set_random_addr(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_le_set_adv_enable(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_le_set_scan_param(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_le_set_scan_enable(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_le_read_white_list_size(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_le_clear_white_list(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_le_add_to_white_list(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_le_del_from_white_list(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_le_read_supported_states(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_le_read_def_data_len(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_le_write_def_data_len(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_le_add_to_resolv_list(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_le_del_from_resolv_list(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_le_clear_resolv_list(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_le_read_resolv_list_size(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_le_set_addr_resolution_enable(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_le_read_max_data_len(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_write_le_host_supported(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_set_adv_param(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_read_rssi(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_read_tx_power(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_write_ssp_debug_mode(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_le_set_ext_scan_param(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_le_set_ext_scan_enable(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_le_set_default_phy(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_le_read_num_adv_sets(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_set_ext_adv_param(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_le_set_ext_adv_enable(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_cc_le_set_adv_set_random_addr(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @hci_req_cmd_complete(%struct.hci_dev*, i32, i32, i32*, i32*) #1

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
