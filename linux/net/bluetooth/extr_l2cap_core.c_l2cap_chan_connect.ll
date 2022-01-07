; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_chan_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_chan_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i64, i32, i32, i64, %struct.TYPE_2__*, i32, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.l2cap_chan*)* }
%struct.l2cap_conn = type { i32 }
%struct.hci_conn = type { i32, i32 }
%struct.hci_dev = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"%pMR -> %pMR (type %u) psm 0x%2.2x\00", align 1
@EHOSTUNREACH = common dso_local global i32 0, align 4
@L2CAP_CHAN_RAW = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@L2CAP_CHAN_CONN_ORIENTED = common dso_local global i64 0, align 8
@L2CAP_CHAN_FIXED = common dso_local global i64 0, align 8
@disable_ertm = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EISCONN = common dso_local global i32 0, align 4
@EBADFD = common dso_local global i32 0, align 4
@BDADDR_LE_PUBLIC = common dso_local global i32 0, align 4
@ADDR_LE_DEV_PUBLIC = common dso_local global i32 0, align 4
@ADDR_LE_DEV_RANDOM = common dso_local global i32 0, align 4
@HCI_ADVERTISING = common dso_local global i32 0, align 4
@HCI_LE_CONN_TIMEOUT = common dso_local global i32 0, align 4
@HCI_ROLE_SLAVE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@chan_list_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @l2cap_chan_connect(%struct.l2cap_chan* %0, i32 %1, i64 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.l2cap_chan*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.l2cap_conn*, align 8
  %13 = alloca %struct.hci_conn*, align 8
  %14 = alloca %struct.hci_dev*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %18 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %17, i32 0, i32 6
  %19 = load i32*, i32** %10, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @__le16_to_cpu(i32 %21)
  %23 = call i32 @BT_DBG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32* %18, i32* %19, i32 %20, i32 %22)
  %24 = load i32*, i32** %10, align 8
  %25 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %26 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %25, i32 0, i32 6
  %27 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %28 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.hci_dev* @hci_get_route(i32* %24, i32* %26, i32 %29)
  store %struct.hci_dev* %30, %struct.hci_dev** %14, align 8
  %31 = load %struct.hci_dev*, %struct.hci_dev** %14, align 8
  %32 = icmp ne %struct.hci_dev* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %5
  %34 = load i32, i32* @EHOSTUNREACH, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %268

36:                                               ; preds = %5
  %37 = load %struct.hci_dev*, %struct.hci_dev** %14, align 8
  %38 = call i32 @hci_dev_lock(%struct.hci_dev* %37)
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @__le16_to_cpu(i32 %39)
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @is_valid_psm(i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %36
  %45 = load i64, i64* %9, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %44
  %48 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %49 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @L2CAP_CHAN_RAW, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %15, align 4
  br label %262

56:                                               ; preds = %47, %44, %36
  %57 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %58 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @L2CAP_CHAN_CONN_ORIENTED, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %15, align 4
  br label %262

68:                                               ; preds = %62, %56
  %69 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %70 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @L2CAP_CHAN_FIXED, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load i64, i64* %9, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %15, align 4
  br label %262

80:                                               ; preds = %74, %68
  %81 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %82 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  switch i32 %83, label %91 [
    i32 131, label %84
    i32 129, label %85
    i32 130, label %86
    i32 128, label %86
  ]

84:                                               ; preds = %80
  br label %94

85:                                               ; preds = %80
  br label %94

86:                                               ; preds = %80, %80
  %87 = load i32, i32* @disable_ertm, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %86
  br label %94

90:                                               ; preds = %86
  br label %91

91:                                               ; preds = %80, %90
  %92 = load i32, i32* @EOPNOTSUPP, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %15, align 4
  br label %262

94:                                               ; preds = %89, %85, %84
  %95 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %96 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  switch i32 %97, label %103 [
    i32 135, label %98
    i32 134, label %98
    i32 136, label %98
    i32 133, label %99
    i32 132, label %102
    i32 137, label %102
  ]

98:                                               ; preds = %94, %94, %94
  store i32 0, i32* %15, align 4
  br label %262

99:                                               ; preds = %94
  %100 = load i32, i32* @EISCONN, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %15, align 4
  br label %262

102:                                              ; preds = %94, %94
  br label %106

103:                                              ; preds = %94
  %104 = load i32, i32* @EBADFD, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %15, align 4
  br label %262

106:                                              ; preds = %102
  %107 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %108 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %107, i32 0, i32 11
  %109 = load i32*, i32** %10, align 8
  %110 = call i32 @bacpy(i32* %108, i32* %109)
  %111 = load i32, i32* %11, align 4
  %112 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %113 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %112, i32 0, i32 10
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* %8, align 4
  %115 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %116 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %115, i32 0, i32 9
  store i32 %114, i32* %116, align 8
  %117 = load i64, i64* %9, align 8
  %118 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %119 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %118, i32 0, i32 8
  store i64 %117, i64* %119, align 8
  %120 = load i32, i32* %11, align 4
  %121 = call i64 @bdaddr_type_is_le(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %156

123:                                              ; preds = %106
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* @BDADDR_LE_PUBLIC, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i32, i32* @ADDR_LE_DEV_PUBLIC, align 4
  store i32 %128, i32* %11, align 4
  br label %131

129:                                              ; preds = %123
  %130 = load i32, i32* @ADDR_LE_DEV_RANDOM, align 4
  store i32 %130, i32* %11, align 4
  br label %131

131:                                              ; preds = %129, %127
  %132 = load %struct.hci_dev*, %struct.hci_dev** %14, align 8
  %133 = load i32, i32* @HCI_ADVERTISING, align 4
  %134 = call i64 @hci_dev_test_flag(%struct.hci_dev* %132, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %131
  %137 = load %struct.hci_dev*, %struct.hci_dev** %14, align 8
  %138 = load i32*, i32** %10, align 8
  %139 = load i32, i32* %11, align 4
  %140 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %141 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %140, i32 0, i32 7
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @HCI_LE_CONN_TIMEOUT, align 4
  %144 = load i32, i32* @HCI_ROLE_SLAVE, align 4
  %145 = call %struct.hci_conn* @hci_connect_le(%struct.hci_dev* %137, i32* %138, i32 %139, i32 %142, i32 %143, i32 %144, i32* null)
  store %struct.hci_conn* %145, %struct.hci_conn** %13, align 8
  br label %155

146:                                              ; preds = %131
  %147 = load %struct.hci_dev*, %struct.hci_dev** %14, align 8
  %148 = load i32*, i32** %10, align 8
  %149 = load i32, i32* %11, align 4
  %150 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %151 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %150, i32 0, i32 7
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @HCI_LE_CONN_TIMEOUT, align 4
  %154 = call %struct.hci_conn* @hci_connect_le_scan(%struct.hci_dev* %147, i32* %148, i32 %149, i32 %152, i32 %153)
  store %struct.hci_conn* %154, %struct.hci_conn** %13, align 8
  br label %155

155:                                              ; preds = %146, %136
  br label %166

156:                                              ; preds = %106
  %157 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %158 = call i32 @l2cap_get_auth_type(%struct.l2cap_chan* %157)
  store i32 %158, i32* %16, align 4
  %159 = load %struct.hci_dev*, %struct.hci_dev** %14, align 8
  %160 = load i32*, i32** %10, align 8
  %161 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %162 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %161, i32 0, i32 7
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %16, align 4
  %165 = call %struct.hci_conn* @hci_connect_acl(%struct.hci_dev* %159, i32* %160, i32 %163, i32 %164)
  store %struct.hci_conn* %165, %struct.hci_conn** %13, align 8
  br label %166

166:                                              ; preds = %156, %155
  %167 = load %struct.hci_conn*, %struct.hci_conn** %13, align 8
  %168 = call i64 @IS_ERR(%struct.hci_conn* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %166
  %171 = load %struct.hci_conn*, %struct.hci_conn** %13, align 8
  %172 = call i32 @PTR_ERR(%struct.hci_conn* %171)
  store i32 %172, i32* %15, align 4
  br label %262

173:                                              ; preds = %166
  %174 = load %struct.hci_conn*, %struct.hci_conn** %13, align 8
  %175 = call %struct.l2cap_conn* @l2cap_conn_add(%struct.hci_conn* %174)
  store %struct.l2cap_conn* %175, %struct.l2cap_conn** %12, align 8
  %176 = load %struct.l2cap_conn*, %struct.l2cap_conn** %12, align 8
  %177 = icmp ne %struct.l2cap_conn* %176, null
  br i1 %177, label %183, label %178

178:                                              ; preds = %173
  %179 = load %struct.hci_conn*, %struct.hci_conn** %13, align 8
  %180 = call i32 @hci_conn_drop(%struct.hci_conn* %179)
  %181 = load i32, i32* @ENOMEM, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %15, align 4
  br label %262

183:                                              ; preds = %173
  %184 = load %struct.l2cap_conn*, %struct.l2cap_conn** %12, align 8
  %185 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %184, i32 0, i32 0
  %186 = call i32 @mutex_lock(i32* %185)
  %187 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %188 = call i32 @l2cap_chan_lock(%struct.l2cap_chan* %187)
  %189 = load i64, i64* %9, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %201

191:                                              ; preds = %183
  %192 = load %struct.l2cap_conn*, %struct.l2cap_conn** %12, align 8
  %193 = load i64, i64* %9, align 8
  %194 = call i64 @__l2cap_get_chan_by_dcid(%struct.l2cap_conn* %192, i64 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %191
  %197 = load %struct.hci_conn*, %struct.hci_conn** %13, align 8
  %198 = call i32 @hci_conn_drop(%struct.hci_conn* %197)
  %199 = load i32, i32* @EBUSY, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %15, align 4
  br label %256

201:                                              ; preds = %191, %183
  %202 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %203 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %202, i32 0, i32 6
  %204 = load %struct.hci_conn*, %struct.hci_conn** %13, align 8
  %205 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %204, i32 0, i32 1
  %206 = call i32 @bacpy(i32* %203, i32* %205)
  %207 = load %struct.hci_conn*, %struct.hci_conn** %13, align 8
  %208 = call i32 @bdaddr_src_type(%struct.hci_conn* %207)
  %209 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %210 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %209, i32 0, i32 5
  store i32 %208, i32* %210, align 8
  %211 = load %struct.l2cap_conn*, %struct.l2cap_conn** %12, align 8
  %212 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %213 = call i32 @__l2cap_chan_add(%struct.l2cap_conn* %211, %struct.l2cap_chan* %212)
  %214 = load %struct.hci_conn*, %struct.hci_conn** %13, align 8
  %215 = call i32 @hci_conn_drop(%struct.hci_conn* %214)
  %216 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %217 = call i32 @l2cap_state_change(%struct.l2cap_chan* %216, i32 135)
  %218 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %219 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %220 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %219, i32 0, i32 4
  %221 = load %struct.TYPE_2__*, %struct.TYPE_2__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 0
  %223 = load i32 (%struct.l2cap_chan*)*, i32 (%struct.l2cap_chan*)** %222, align 8
  %224 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %225 = call i32 %223(%struct.l2cap_chan* %224)
  %226 = call i32 @__set_chan_timer(%struct.l2cap_chan* %218, i32 %225)
  %227 = call i32 @write_lock(i32* @chan_list_lock)
  %228 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %229 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %228, i32 0, i32 3
  store i64 0, i64* %229, align 8
  %230 = call i32 @write_unlock(i32* @chan_list_lock)
  %231 = load %struct.hci_conn*, %struct.hci_conn** %13, align 8
  %232 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = icmp eq i32 %233, 133
  br i1 %234, label %235, label %255

235:                                              ; preds = %201
  %236 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %237 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @L2CAP_CHAN_CONN_ORIENTED, align 8
  %240 = icmp ne i64 %238, %239
  br i1 %240, label %241, label %251

241:                                              ; preds = %235
  %242 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %243 = call i32 @__clear_chan_timer(%struct.l2cap_chan* %242)
  %244 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %245 = call i64 @l2cap_chan_check_security(%struct.l2cap_chan* %244, i32 1)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %241
  %248 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %249 = call i32 @l2cap_state_change(%struct.l2cap_chan* %248, i32 133)
  br label %250

250:                                              ; preds = %247, %241
  br label %254

251:                                              ; preds = %235
  %252 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %253 = call i32 @l2cap_do_start(%struct.l2cap_chan* %252)
  br label %254

254:                                              ; preds = %251, %250
  br label %255

255:                                              ; preds = %254, %201
  store i32 0, i32* %15, align 4
  br label %256

256:                                              ; preds = %255, %196
  %257 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %258 = call i32 @l2cap_chan_unlock(%struct.l2cap_chan* %257)
  %259 = load %struct.l2cap_conn*, %struct.l2cap_conn** %12, align 8
  %260 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %259, i32 0, i32 0
  %261 = call i32 @mutex_unlock(i32* %260)
  br label %262

262:                                              ; preds = %256, %178, %170, %103, %99, %98, %91, %77, %65, %53
  %263 = load %struct.hci_dev*, %struct.hci_dev** %14, align 8
  %264 = call i32 @hci_dev_unlock(%struct.hci_dev* %263)
  %265 = load %struct.hci_dev*, %struct.hci_dev** %14, align 8
  %266 = call i32 @hci_dev_put(%struct.hci_dev* %265)
  %267 = load i32, i32* %15, align 4
  store i32 %267, i32* %6, align 4
  br label %268

268:                                              ; preds = %262, %33
  %269 = load i32, i32* %6, align 4
  ret i32 %269
}

declare dso_local i32 @BT_DBG(i8*, i32*, i32*, i32, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local %struct.hci_dev* @hci_get_route(i32*, i32*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @is_valid_psm(i32, i32) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i64 @bdaddr_type_is_le(i32) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local %struct.hci_conn* @hci_connect_le(%struct.hci_dev*, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local %struct.hci_conn* @hci_connect_le_scan(%struct.hci_dev*, i32*, i32, i32, i32) #1

declare dso_local i32 @l2cap_get_auth_type(%struct.l2cap_chan*) #1

declare dso_local %struct.hci_conn* @hci_connect_acl(%struct.hci_dev*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.hci_conn*) #1

declare dso_local i32 @PTR_ERR(%struct.hci_conn*) #1

declare dso_local %struct.l2cap_conn* @l2cap_conn_add(%struct.hci_conn*) #1

declare dso_local i32 @hci_conn_drop(%struct.hci_conn*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @l2cap_chan_lock(%struct.l2cap_chan*) #1

declare dso_local i64 @__l2cap_get_chan_by_dcid(%struct.l2cap_conn*, i64) #1

declare dso_local i32 @bdaddr_src_type(%struct.hci_conn*) #1

declare dso_local i32 @__l2cap_chan_add(%struct.l2cap_conn*, %struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_state_change(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @__set_chan_timer(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @__clear_chan_timer(%struct.l2cap_chan*) #1

declare dso_local i64 @l2cap_chan_check_security(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @l2cap_do_start(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_chan_unlock(%struct.l2cap_chan*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_put(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
