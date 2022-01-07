; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_phy_configuration.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_phy_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32, i32, i32 }
%struct.mgmt_cp_set_phy_confguration = type { i32 }
%struct.hci_cp_le_set_default_phy = type { i32, i32, i32 }
%struct.mgmt_pending_cmd = type { i32 }
%struct.hci_request = type { i32 }

@HCI_DH1 = common dso_local global i32 0, align 4
@HCI_DM1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"sock %p %s\00", align 1
@MGMT_OP_SET_PHY_CONFIGURATION = common dso_local global i32 0, align 4
@MGMT_STATUS_INVALID_PARAMS = common dso_local global i32 0, align 4
@MGMT_STATUS_REJECTED = common dso_local global i32 0, align 4
@MGMT_STATUS_BUSY = common dso_local global i32 0, align 4
@MGMT_PHY_BR_1M_3SLOT = common dso_local global i32 0, align 4
@HCI_DH3 = common dso_local global i32 0, align 4
@HCI_DM3 = common dso_local global i32 0, align 4
@MGMT_PHY_BR_1M_5SLOT = common dso_local global i32 0, align 4
@HCI_DH5 = common dso_local global i32 0, align 4
@HCI_DM5 = common dso_local global i32 0, align 4
@MGMT_PHY_EDR_2M_1SLOT = common dso_local global i32 0, align 4
@HCI_2DH1 = common dso_local global i32 0, align 4
@MGMT_PHY_EDR_2M_3SLOT = common dso_local global i32 0, align 4
@HCI_2DH3 = common dso_local global i32 0, align 4
@MGMT_PHY_EDR_2M_5SLOT = common dso_local global i32 0, align 4
@HCI_2DH5 = common dso_local global i32 0, align 4
@MGMT_PHY_EDR_3M_1SLOT = common dso_local global i32 0, align 4
@HCI_3DH1 = common dso_local global i32 0, align 4
@MGMT_PHY_EDR_3M_3SLOT = common dso_local global i32 0, align 4
@HCI_3DH3 = common dso_local global i32 0, align 4
@MGMT_PHY_EDR_3M_5SLOT = common dso_local global i32 0, align 4
@HCI_3DH5 = common dso_local global i32 0, align 4
@MGMT_PHY_LE_MASK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MGMT_PHY_LE_TX_MASK = common dso_local global i32 0, align 4
@MGMT_PHY_LE_RX_MASK = common dso_local global i32 0, align 4
@MGMT_PHY_LE_1M_TX = common dso_local global i32 0, align 4
@HCI_LE_SET_PHY_1M = common dso_local global i32 0, align 4
@MGMT_PHY_LE_2M_TX = common dso_local global i32 0, align 4
@HCI_LE_SET_PHY_2M = common dso_local global i32 0, align 4
@MGMT_PHY_LE_CODED_TX = common dso_local global i32 0, align 4
@HCI_LE_SET_PHY_CODED = common dso_local global i32 0, align 4
@MGMT_PHY_LE_1M_RX = common dso_local global i32 0, align 4
@MGMT_PHY_LE_2M_RX = common dso_local global i32 0, align 4
@MGMT_PHY_LE_CODED_RX = common dso_local global i32 0, align 4
@HCI_OP_LE_SET_DEFAULT_PHY = common dso_local global i32 0, align 4
@set_default_phy_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @set_phy_configuration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_phy_configuration(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mgmt_cp_set_phy_confguration*, align 8
  %11 = alloca %struct.hci_cp_le_set_default_phy, align 4
  %12 = alloca %struct.mgmt_pending_cmd*, align 8
  %13 = alloca %struct.hci_request, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = bitcast i8* %21 to %struct.mgmt_cp_set_phy_confguration*
  store %struct.mgmt_cp_set_phy_confguration* %22, %struct.mgmt_cp_set_phy_confguration** %10, align 8
  %23 = load i32, i32* @HCI_DH1, align 4
  %24 = load i32, i32* @HCI_DM1, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %26 = load %struct.sock*, %struct.sock** %6, align 8
  %27 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %28 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @BT_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.sock* %26, i32 %29)
  %31 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %32 = call i32 @get_configurable_phys(%struct.hci_dev* %31)
  store i32 %32, i32* %15, align 4
  %33 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %34 = call i32 @get_supported_phys(%struct.hci_dev* %33)
  store i32 %34, i32* %16, align 4
  %35 = load %struct.mgmt_cp_set_phy_confguration*, %struct.mgmt_cp_set_phy_confguration** %10, align 8
  %36 = getelementptr inbounds %struct.mgmt_cp_set_phy_confguration, %struct.mgmt_cp_set_phy_confguration* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @__le32_to_cpu(i32 %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %16, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %4
  %45 = load %struct.sock*, %struct.sock** %6, align 8
  %46 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %47 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MGMT_OP_SET_PHY_CONFIGURATION, align 4
  %50 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %51 = call i32 @mgmt_cmd_status(%struct.sock* %45, i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %5, align 4
  br label %370

52:                                               ; preds = %4
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %15, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %17, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* %17, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %52
  %63 = load %struct.sock*, %struct.sock** %6, align 8
  %64 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %65 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @MGMT_OP_SET_PHY_CONFIGURATION, align 4
  %68 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %69 = call i32 @mgmt_cmd_status(%struct.sock* %63, i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %5, align 4
  br label %370

70:                                               ; preds = %52
  %71 = load i32, i32* %14, align 4
  %72 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %73 = call i32 @get_selected_phys(%struct.hci_dev* %72)
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load %struct.sock*, %struct.sock** %6, align 8
  %77 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %78 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @MGMT_OP_SET_PHY_CONFIGURATION, align 4
  %81 = call i32 @mgmt_cmd_complete(%struct.sock* %76, i32 %79, i32 %80, i32 0, i32* null, i32 0)
  store i32 %81, i32* %5, align 4
  br label %370

82:                                               ; preds = %70
  %83 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %84 = call i32 @hci_dev_lock(%struct.hci_dev* %83)
  %85 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %86 = call i32 @hdev_is_powered(%struct.hci_dev* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %82
  %89 = load %struct.sock*, %struct.sock** %6, align 8
  %90 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %91 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @MGMT_OP_SET_PHY_CONFIGURATION, align 4
  %94 = load i32, i32* @MGMT_STATUS_REJECTED, align 4
  %95 = call i32 @mgmt_cmd_status(%struct.sock* %89, i32 %92, i32 %93, i32 %94)
  store i32 %95, i32* %20, align 4
  br label %366

96:                                               ; preds = %82
  %97 = load i32, i32* @MGMT_OP_SET_PHY_CONFIGURATION, align 4
  %98 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %99 = call i64 @pending_find(i32 %97, %struct.hci_dev* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %96
  %102 = load %struct.sock*, %struct.sock** %6, align 8
  %103 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %104 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @MGMT_OP_SET_PHY_CONFIGURATION, align 4
  %107 = load i32, i32* @MGMT_STATUS_BUSY, align 4
  %108 = call i32 @mgmt_cmd_status(%struct.sock* %102, i32 %105, i32 %106, i32 %107)
  store i32 %108, i32* %20, align 4
  br label %366

109:                                              ; preds = %96
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* @MGMT_PHY_BR_1M_3SLOT, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %109
  %115 = load i32, i32* @HCI_DH3, align 4
  %116 = load i32, i32* @HCI_DM3, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* %18, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %18, align 4
  br label %127

120:                                              ; preds = %109
  %121 = load i32, i32* @HCI_DH3, align 4
  %122 = load i32, i32* @HCI_DM3, align 4
  %123 = or i32 %121, %122
  %124 = xor i32 %123, -1
  %125 = load i32, i32* %18, align 4
  %126 = and i32 %125, %124
  store i32 %126, i32* %18, align 4
  br label %127

127:                                              ; preds = %120, %114
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* @MGMT_PHY_BR_1M_5SLOT, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load i32, i32* @HCI_DH5, align 4
  %134 = load i32, i32* @HCI_DM5, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* %18, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %18, align 4
  br label %145

138:                                              ; preds = %127
  %139 = load i32, i32* @HCI_DH5, align 4
  %140 = load i32, i32* @HCI_DM5, align 4
  %141 = or i32 %139, %140
  %142 = xor i32 %141, -1
  %143 = load i32, i32* %18, align 4
  %144 = and i32 %143, %142
  store i32 %144, i32* %18, align 4
  br label %145

145:                                              ; preds = %138, %132
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* @MGMT_PHY_EDR_2M_1SLOT, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load i32, i32* @HCI_2DH1, align 4
  %152 = xor i32 %151, -1
  %153 = load i32, i32* %18, align 4
  %154 = and i32 %153, %152
  store i32 %154, i32* %18, align 4
  br label %159

155:                                              ; preds = %145
  %156 = load i32, i32* @HCI_2DH1, align 4
  %157 = load i32, i32* %18, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %18, align 4
  br label %159

159:                                              ; preds = %155, %150
  %160 = load i32, i32* %14, align 4
  %161 = load i32, i32* @MGMT_PHY_EDR_2M_3SLOT, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %159
  %165 = load i32, i32* @HCI_2DH3, align 4
  %166 = xor i32 %165, -1
  %167 = load i32, i32* %18, align 4
  %168 = and i32 %167, %166
  store i32 %168, i32* %18, align 4
  br label %173

169:                                              ; preds = %159
  %170 = load i32, i32* @HCI_2DH3, align 4
  %171 = load i32, i32* %18, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %18, align 4
  br label %173

173:                                              ; preds = %169, %164
  %174 = load i32, i32* %14, align 4
  %175 = load i32, i32* @MGMT_PHY_EDR_2M_5SLOT, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %173
  %179 = load i32, i32* @HCI_2DH5, align 4
  %180 = xor i32 %179, -1
  %181 = load i32, i32* %18, align 4
  %182 = and i32 %181, %180
  store i32 %182, i32* %18, align 4
  br label %187

183:                                              ; preds = %173
  %184 = load i32, i32* @HCI_2DH5, align 4
  %185 = load i32, i32* %18, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %18, align 4
  br label %187

187:                                              ; preds = %183, %178
  %188 = load i32, i32* %14, align 4
  %189 = load i32, i32* @MGMT_PHY_EDR_3M_1SLOT, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %187
  %193 = load i32, i32* @HCI_3DH1, align 4
  %194 = xor i32 %193, -1
  %195 = load i32, i32* %18, align 4
  %196 = and i32 %195, %194
  store i32 %196, i32* %18, align 4
  br label %201

197:                                              ; preds = %187
  %198 = load i32, i32* @HCI_3DH1, align 4
  %199 = load i32, i32* %18, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %18, align 4
  br label %201

201:                                              ; preds = %197, %192
  %202 = load i32, i32* %14, align 4
  %203 = load i32, i32* @MGMT_PHY_EDR_3M_3SLOT, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %201
  %207 = load i32, i32* @HCI_3DH3, align 4
  %208 = xor i32 %207, -1
  %209 = load i32, i32* %18, align 4
  %210 = and i32 %209, %208
  store i32 %210, i32* %18, align 4
  br label %215

211:                                              ; preds = %201
  %212 = load i32, i32* @HCI_3DH3, align 4
  %213 = load i32, i32* %18, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %18, align 4
  br label %215

215:                                              ; preds = %211, %206
  %216 = load i32, i32* %14, align 4
  %217 = load i32, i32* @MGMT_PHY_EDR_3M_5SLOT, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %215
  %221 = load i32, i32* @HCI_3DH5, align 4
  %222 = xor i32 %221, -1
  %223 = load i32, i32* %18, align 4
  %224 = and i32 %223, %222
  store i32 %224, i32* %18, align 4
  br label %229

225:                                              ; preds = %215
  %226 = load i32, i32* @HCI_3DH5, align 4
  %227 = load i32, i32* %18, align 4
  %228 = or i32 %227, %226
  store i32 %228, i32* %18, align 4
  br label %229

229:                                              ; preds = %225, %220
  %230 = load i32, i32* %18, align 4
  %231 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %232 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = icmp ne i32 %230, %233
  br i1 %234, label %235, label %239

235:                                              ; preds = %229
  %236 = load i32, i32* %18, align 4
  %237 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %238 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %237, i32 0, i32 0
  store i32 %236, i32* %238, align 4
  store i32 1, i32* %19, align 4
  br label %239

239:                                              ; preds = %235, %229
  %240 = load i32, i32* %14, align 4
  %241 = load i32, i32* @MGMT_PHY_LE_MASK, align 4
  %242 = and i32 %240, %241
  %243 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %244 = call i32 @get_selected_phys(%struct.hci_dev* %243)
  %245 = load i32, i32* @MGMT_PHY_LE_MASK, align 4
  %246 = and i32 %244, %245
  %247 = icmp eq i32 %242, %246
  br i1 %247, label %248, label %262

248:                                              ; preds = %239
  %249 = load i32, i32* %19, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %255

251:                                              ; preds = %248
  %252 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %253 = load %struct.sock*, %struct.sock** %6, align 8
  %254 = call i32 @mgmt_phy_configuration_changed(%struct.hci_dev* %252, %struct.sock* %253)
  br label %255

255:                                              ; preds = %251, %248
  %256 = load %struct.sock*, %struct.sock** %6, align 8
  %257 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %258 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @MGMT_OP_SET_PHY_CONFIGURATION, align 4
  %261 = call i32 @mgmt_cmd_complete(%struct.sock* %256, i32 %259, i32 %260, i32 0, i32* null, i32 0)
  store i32 %261, i32* %20, align 4
  br label %366

262:                                              ; preds = %239
  %263 = load %struct.sock*, %struct.sock** %6, align 8
  %264 = load i32, i32* @MGMT_OP_SET_PHY_CONFIGURATION, align 4
  %265 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %266 = load i8*, i8** %8, align 8
  %267 = load i32, i32* %9, align 4
  %268 = call %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock* %263, i32 %264, %struct.hci_dev* %265, i8* %266, i32 %267)
  store %struct.mgmt_pending_cmd* %268, %struct.mgmt_pending_cmd** %12, align 8
  %269 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %12, align 8
  %270 = icmp ne %struct.mgmt_pending_cmd* %269, null
  br i1 %270, label %274, label %271

271:                                              ; preds = %262
  %272 = load i32, i32* @ENOMEM, align 4
  %273 = sub nsw i32 0, %272
  store i32 %273, i32* %20, align 4
  br label %366

274:                                              ; preds = %262
  %275 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %276 = call i32 @hci_req_init(%struct.hci_request* %13, %struct.hci_dev* %275)
  %277 = call i32 @memset(%struct.hci_cp_le_set_default_phy* %11, i32 0, i32 12)
  %278 = load i32, i32* %14, align 4
  %279 = load i32, i32* @MGMT_PHY_LE_TX_MASK, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %286, label %282

282:                                              ; preds = %274
  %283 = getelementptr inbounds %struct.hci_cp_le_set_default_phy, %struct.hci_cp_le_set_default_phy* %11, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = or i32 %284, 1
  store i32 %285, i32* %283, align 4
  br label %286

286:                                              ; preds = %282, %274
  %287 = load i32, i32* %14, align 4
  %288 = load i32, i32* @MGMT_PHY_LE_RX_MASK, align 4
  %289 = and i32 %287, %288
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %295, label %291

291:                                              ; preds = %286
  %292 = getelementptr inbounds %struct.hci_cp_le_set_default_phy, %struct.hci_cp_le_set_default_phy* %11, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = or i32 %293, 2
  store i32 %294, i32* %292, align 4
  br label %295

295:                                              ; preds = %291, %286
  %296 = load i32, i32* %14, align 4
  %297 = load i32, i32* @MGMT_PHY_LE_1M_TX, align 4
  %298 = and i32 %296, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %305

300:                                              ; preds = %295
  %301 = load i32, i32* @HCI_LE_SET_PHY_1M, align 4
  %302 = getelementptr inbounds %struct.hci_cp_le_set_default_phy, %struct.hci_cp_le_set_default_phy* %11, i32 0, i32 2
  %303 = load i32, i32* %302, align 4
  %304 = or i32 %303, %301
  store i32 %304, i32* %302, align 4
  br label %305

305:                                              ; preds = %300, %295
  %306 = load i32, i32* %14, align 4
  %307 = load i32, i32* @MGMT_PHY_LE_2M_TX, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %315

310:                                              ; preds = %305
  %311 = load i32, i32* @HCI_LE_SET_PHY_2M, align 4
  %312 = getelementptr inbounds %struct.hci_cp_le_set_default_phy, %struct.hci_cp_le_set_default_phy* %11, i32 0, i32 2
  %313 = load i32, i32* %312, align 4
  %314 = or i32 %313, %311
  store i32 %314, i32* %312, align 4
  br label %315

315:                                              ; preds = %310, %305
  %316 = load i32, i32* %14, align 4
  %317 = load i32, i32* @MGMT_PHY_LE_CODED_TX, align 4
  %318 = and i32 %316, %317
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %325

320:                                              ; preds = %315
  %321 = load i32, i32* @HCI_LE_SET_PHY_CODED, align 4
  %322 = getelementptr inbounds %struct.hci_cp_le_set_default_phy, %struct.hci_cp_le_set_default_phy* %11, i32 0, i32 2
  %323 = load i32, i32* %322, align 4
  %324 = or i32 %323, %321
  store i32 %324, i32* %322, align 4
  br label %325

325:                                              ; preds = %320, %315
  %326 = load i32, i32* %14, align 4
  %327 = load i32, i32* @MGMT_PHY_LE_1M_RX, align 4
  %328 = and i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %335

330:                                              ; preds = %325
  %331 = load i32, i32* @HCI_LE_SET_PHY_1M, align 4
  %332 = getelementptr inbounds %struct.hci_cp_le_set_default_phy, %struct.hci_cp_le_set_default_phy* %11, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = or i32 %333, %331
  store i32 %334, i32* %332, align 4
  br label %335

335:                                              ; preds = %330, %325
  %336 = load i32, i32* %14, align 4
  %337 = load i32, i32* @MGMT_PHY_LE_2M_RX, align 4
  %338 = and i32 %336, %337
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %345

340:                                              ; preds = %335
  %341 = load i32, i32* @HCI_LE_SET_PHY_2M, align 4
  %342 = getelementptr inbounds %struct.hci_cp_le_set_default_phy, %struct.hci_cp_le_set_default_phy* %11, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = or i32 %343, %341
  store i32 %344, i32* %342, align 4
  br label %345

345:                                              ; preds = %340, %335
  %346 = load i32, i32* %14, align 4
  %347 = load i32, i32* @MGMT_PHY_LE_CODED_RX, align 4
  %348 = and i32 %346, %347
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %355

350:                                              ; preds = %345
  %351 = load i32, i32* @HCI_LE_SET_PHY_CODED, align 4
  %352 = getelementptr inbounds %struct.hci_cp_le_set_default_phy, %struct.hci_cp_le_set_default_phy* %11, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = or i32 %353, %351
  store i32 %354, i32* %352, align 4
  br label %355

355:                                              ; preds = %350, %345
  %356 = load i32, i32* @HCI_OP_LE_SET_DEFAULT_PHY, align 4
  %357 = call i32 @hci_req_add(%struct.hci_request* %13, i32 %356, i32 12, %struct.hci_cp_le_set_default_phy* %11)
  %358 = load i32, i32* @set_default_phy_complete, align 4
  %359 = call i32 @hci_req_run_skb(%struct.hci_request* %13, i32 %358)
  store i32 %359, i32* %20, align 4
  %360 = load i32, i32* %20, align 4
  %361 = icmp slt i32 %360, 0
  br i1 %361, label %362, label %365

362:                                              ; preds = %355
  %363 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %12, align 8
  %364 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %363)
  br label %365

365:                                              ; preds = %362, %355
  br label %366

366:                                              ; preds = %365, %271, %255, %101, %88
  %367 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %368 = call i32 @hci_dev_unlock(%struct.hci_dev* %367)
  %369 = load i32, i32* %20, align 4
  store i32 %369, i32* %5, align 4
  br label %370

370:                                              ; preds = %366, %75, %62, %44
  %371 = load i32, i32* %5, align 4
  ret i32 %371
}

declare dso_local i32 @BT_DBG(i8*, %struct.sock*, i32) #1

declare dso_local i32 @get_configurable_phys(%struct.hci_dev*) #1

declare dso_local i32 @get_supported_phys(%struct.hci_dev*) #1

declare dso_local i32 @__le32_to_cpu(i32) #1

declare dso_local i32 @mgmt_cmd_status(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @get_selected_phys(%struct.hci_dev*) #1

declare dso_local i32 @mgmt_cmd_complete(%struct.sock*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @hdev_is_powered(%struct.hci_dev*) #1

declare dso_local i64 @pending_find(i32, %struct.hci_dev*) #1

declare dso_local i32 @mgmt_phy_configuration_changed(%struct.hci_dev*, %struct.sock*) #1

declare dso_local %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock*, i32, %struct.hci_dev*, i8*, i32) #1

declare dso_local i32 @hci_req_init(%struct.hci_request*, %struct.hci_dev*) #1

declare dso_local i32 @memset(%struct.hci_cp_le_set_default_phy*, i32, i32) #1

declare dso_local i32 @hci_req_add(%struct.hci_request*, i32, i32, %struct.hci_cp_le_set_default_phy*) #1

declare dso_local i32 @hci_req_run_skb(%struct.hci_request*, i32) #1

declare dso_local i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
