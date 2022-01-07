; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_notify_keys.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_notify_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32, %struct.hci_conn*, %struct.l2cap_chan* }
%struct.hci_conn = type { i64, i64, i64, i32, i32, i32, %struct.hci_dev* }
%struct.hci_dev = type { i32 }
%struct.l2cap_chan = type { %struct.smp_chan* }
%struct.smp_chan = type { i64, %struct.TYPE_5__*, i32, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_7__*, i32*, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.smp_cmd_pairing = type { i32 }
%struct.link_key = type { i64, i32 }

@ACL_LINK = common dso_local global i64 0, align 8
@HCI_LK_DEBUG_COMBINATION = common dso_local global i64 0, align 8
@HCI_CONN_FLUSH_KEY = common dso_local global i32 0, align 4
@SMP_AUTH_BONDING = common dso_local global i32 0, align 4
@LE_LINK = common dso_local global i64 0, align 8
@SMP_FLAG_DEBUG_KEY = common dso_local global i32 0, align 4
@BT_SECURITY_FIPS = common dso_local global i64 0, align 8
@HCI_LK_AUTH_COMBINATION_P256 = common dso_local global i64 0, align 8
@HCI_LK_UNAUTH_COMBINATION_P256 = common dso_local global i64 0, align 8
@HCI_KEEP_DEBUG_KEYS = common dso_local global i32 0, align 4
@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_conn*)* @smp_notify_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smp_notify_keys(%struct.l2cap_conn* %0) #0 {
  %2 = alloca %struct.l2cap_conn*, align 8
  %3 = alloca %struct.l2cap_chan*, align 8
  %4 = alloca %struct.smp_chan*, align 8
  %5 = alloca %struct.hci_conn*, align 8
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca %struct.smp_cmd_pairing*, align 8
  %8 = alloca %struct.smp_cmd_pairing*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.link_key*, align 8
  %11 = alloca i64, align 8
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %2, align 8
  %12 = load %struct.l2cap_conn*, %struct.l2cap_conn** %2, align 8
  %13 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %12, i32 0, i32 2
  %14 = load %struct.l2cap_chan*, %struct.l2cap_chan** %13, align 8
  store %struct.l2cap_chan* %14, %struct.l2cap_chan** %3, align 8
  %15 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %16 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %15, i32 0, i32 0
  %17 = load %struct.smp_chan*, %struct.smp_chan** %16, align 8
  store %struct.smp_chan* %17, %struct.smp_chan** %4, align 8
  %18 = load %struct.l2cap_conn*, %struct.l2cap_conn** %2, align 8
  %19 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %18, i32 0, i32 1
  %20 = load %struct.hci_conn*, %struct.hci_conn** %19, align 8
  store %struct.hci_conn* %20, %struct.hci_conn** %5, align 8
  %21 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %22 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %21, i32 0, i32 6
  %23 = load %struct.hci_dev*, %struct.hci_dev** %22, align 8
  store %struct.hci_dev* %23, %struct.hci_dev** %6, align 8
  %24 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %25 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %24, i32 0, i32 9
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = bitcast i32* %27 to i8*
  %29 = bitcast i8* %28 to %struct.smp_cmd_pairing*
  store %struct.smp_cmd_pairing* %29, %struct.smp_cmd_pairing** %7, align 8
  %30 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %31 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %30, i32 0, i32 8
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = bitcast i32* %33 to i8*
  %35 = bitcast i8* %34 to %struct.smp_cmd_pairing*
  store %struct.smp_cmd_pairing* %35, %struct.smp_cmd_pairing** %8, align 8
  %36 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %37 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ACL_LINK, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %1
  %42 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %43 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @HCI_LK_DEBUG_COMBINATION, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  br label %56

48:                                               ; preds = %41
  %49 = load i32, i32* @HCI_CONN_FLUSH_KEY, align 4
  %50 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %51 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %50, i32 0, i32 5
  %52 = call i64 @test_bit(i32 %49, i32* %51)
  %53 = icmp ne i64 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %48, %47
  br label %71

57:                                               ; preds = %1
  %58 = load %struct.smp_cmd_pairing*, %struct.smp_cmd_pairing** %7, align 8
  %59 = getelementptr inbounds %struct.smp_cmd_pairing, %struct.smp_cmd_pairing* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.smp_cmd_pairing*, %struct.smp_cmd_pairing** %8, align 8
  %62 = getelementptr inbounds %struct.smp_cmd_pairing, %struct.smp_cmd_pairing* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %60, %63
  %65 = load i32, i32* @SMP_AUTH_BONDING, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %57, %56
  %72 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %73 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %72, i32 0, i32 7
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = icmp ne %struct.TYPE_7__* %74, null
  br i1 %75, label %76, label %110

76:                                               ; preds = %71
  %77 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %78 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %79 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %78, i32 0, i32 7
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @mgmt_new_irk(%struct.hci_dev* %77, %struct.TYPE_7__* %80, i32 %81)
  %83 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %84 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @LE_LINK, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %109

88:                                               ; preds = %76
  %89 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %90 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %89, i32 0, i32 3
  %91 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %92 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %91, i32 0, i32 7
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = call i32 @bacpy(i32* %90, i32* %94)
  %96 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %97 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %96, i32 0, i32 7
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %102 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 4
  %103 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %104 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.l2cap_conn*, %struct.l2cap_conn** %2, align 8
  %107 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %106, i32 0, i32 0
  %108 = call i32 @queue_work(i32 %105, i32* %107)
  br label %109

109:                                              ; preds = %88, %76
  br label %110

110:                                              ; preds = %109, %71
  %111 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %112 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %111, i32 0, i32 6
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = icmp ne %struct.TYPE_8__* %113, null
  br i1 %114, label %115, label %136

115:                                              ; preds = %110
  %116 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %117 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %120 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %119, i32 0, i32 6
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  store i32 %118, i32* %122, align 4
  %123 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %124 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %123, i32 0, i32 6
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %128 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %127, i32 0, i32 3
  %129 = call i32 @bacpy(i32* %126, i32* %128)
  %130 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %131 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %132 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %131, i32 0, i32 6
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @mgmt_new_csrk(%struct.hci_dev* %130, %struct.TYPE_8__* %133, i32 %134)
  br label %136

136:                                              ; preds = %115, %110
  %137 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %138 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %137, i32 0, i32 5
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = icmp ne %struct.TYPE_8__* %139, null
  br i1 %140, label %141, label %162

141:                                              ; preds = %136
  %142 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %143 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %146 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %145, i32 0, i32 5
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  store i32 %144, i32* %148, align 4
  %149 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %150 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %149, i32 0, i32 5
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %154 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %153, i32 0, i32 3
  %155 = call i32 @bacpy(i32* %152, i32* %154)
  %156 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %157 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %158 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %157, i32 0, i32 5
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %158, align 8
  %160 = load i32, i32* %9, align 4
  %161 = call i32 @mgmt_new_csrk(%struct.hci_dev* %156, %struct.TYPE_8__* %159, i32 %160)
  br label %162

162:                                              ; preds = %141, %136
  %163 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %164 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %163, i32 0, i32 4
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = icmp ne %struct.TYPE_6__* %165, null
  br i1 %166, label %167, label %188

167:                                              ; preds = %162
  %168 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %169 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %172 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %171, i32 0, i32 4
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 1
  store i32 %170, i32* %174, align 4
  %175 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %176 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %175, i32 0, i32 4
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %180 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %179, i32 0, i32 3
  %181 = call i32 @bacpy(i32* %178, i32* %180)
  %182 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %183 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %184 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %183, i32 0, i32 4
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %184, align 8
  %186 = load i32, i32* %9, align 4
  %187 = call i32 @mgmt_new_ltk(%struct.hci_dev* %182, %struct.TYPE_6__* %185, i32 %186)
  br label %188

188:                                              ; preds = %167, %162
  %189 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %190 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %189, i32 0, i32 3
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %190, align 8
  %192 = icmp ne %struct.TYPE_6__* %191, null
  br i1 %192, label %193, label %214

193:                                              ; preds = %188
  %194 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %195 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %198 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %197, i32 0, i32 3
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 1
  store i32 %196, i32* %200, align 4
  %201 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %202 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %201, i32 0, i32 3
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %206 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %205, i32 0, i32 3
  %207 = call i32 @bacpy(i32* %204, i32* %206)
  %208 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %209 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %210 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %209, i32 0, i32 3
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %210, align 8
  %212 = load i32, i32* %9, align 4
  %213 = call i32 @mgmt_new_ltk(%struct.hci_dev* %208, %struct.TYPE_6__* %211, i32 %212)
  br label %214

214:                                              ; preds = %193, %188
  %215 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %216 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %278

219:                                              ; preds = %214
  %220 = load i32, i32* @SMP_FLAG_DEBUG_KEY, align 4
  %221 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %222 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %221, i32 0, i32 2
  %223 = call i64 @test_bit(i32 %220, i32* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %219
  %226 = load i64, i64* @HCI_LK_DEBUG_COMBINATION, align 8
  store i64 %226, i64* %11, align 8
  br label %238

227:                                              ; preds = %219
  %228 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %229 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @BT_SECURITY_FIPS, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %235

233:                                              ; preds = %227
  %234 = load i64, i64* @HCI_LK_AUTH_COMBINATION_P256, align 8
  store i64 %234, i64* %11, align 8
  br label %237

235:                                              ; preds = %227
  %236 = load i64, i64* @HCI_LK_UNAUTH_COMBINATION_P256, align 8
  store i64 %236, i64* %11, align 8
  br label %237

237:                                              ; preds = %235, %233
  br label %238

238:                                              ; preds = %237, %225
  %239 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %240 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %241 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %240, i32 0, i32 1
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %246 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %245, i32 0, i32 3
  %247 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %248 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* %11, align 8
  %251 = call %struct.link_key* @hci_add_link_key(%struct.hci_dev* %239, i32 %244, i32* %246, i64 %249, i64 %250, i32 0, i32* %9)
  store %struct.link_key* %251, %struct.link_key** %10, align 8
  %252 = load %struct.link_key*, %struct.link_key** %10, align 8
  %253 = icmp ne %struct.link_key* %252, null
  br i1 %253, label %254, label %277

254:                                              ; preds = %238
  %255 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %256 = load %struct.link_key*, %struct.link_key** %10, align 8
  %257 = load i32, i32* %9, align 4
  %258 = call i32 @mgmt_new_link_key(%struct.hci_dev* %255, %struct.link_key* %256, i32 %257)
  %259 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %260 = load i32, i32* @HCI_KEEP_DEBUG_KEYS, align 4
  %261 = call i32 @hci_dev_test_flag(%struct.hci_dev* %259, i32 %260)
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %276, label %263

263:                                              ; preds = %254
  %264 = load %struct.link_key*, %struct.link_key** %10, align 8
  %265 = getelementptr inbounds %struct.link_key, %struct.link_key* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @HCI_LK_DEBUG_COMBINATION, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %276

269:                                              ; preds = %263
  %270 = load %struct.link_key*, %struct.link_key** %10, align 8
  %271 = getelementptr inbounds %struct.link_key, %struct.link_key* %270, i32 0, i32 1
  %272 = call i32 @list_del_rcu(i32* %271)
  %273 = load %struct.link_key*, %struct.link_key** %10, align 8
  %274 = load i32, i32* @rcu, align 4
  %275 = call i32 @kfree_rcu(%struct.link_key* %273, i32 %274)
  br label %276

276:                                              ; preds = %269, %263, %254
  br label %277

277:                                              ; preds = %276, %238
  br label %278

278:                                              ; preds = %277, %214
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mgmt_new_irk(%struct.hci_dev*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @mgmt_new_csrk(%struct.hci_dev*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @mgmt_new_ltk(%struct.hci_dev*, %struct.TYPE_6__*, i32) #1

declare dso_local %struct.link_key* @hci_add_link_key(%struct.hci_dev*, i32, i32*, i64, i64, i32, i32*) #1

declare dso_local i32 @mgmt_new_link_key(%struct.hci_dev*, %struct.link_key*, i32) #1

declare dso_local i32 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @kfree_rcu(%struct.link_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
