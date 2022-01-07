; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_distribute_keys.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_distribute_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smp_chan = type { i32, i32, i32, %struct.smp_csrk*, %struct.smp_ltk*, i32*, i32*, %struct.l2cap_conn* }
%struct.smp_csrk = type { i32, i32 }
%struct.smp_ltk = type { i32 }
%struct.l2cap_conn = type { %struct.hci_conn* }
%struct.hci_conn = type { i64, i64, i32, i32, i32, i32, i64, %struct.hci_dev* }
%struct.hci_dev = type { i8** }
%struct.smp_cmd_pairing = type { i32, i32 }
%struct.smp_cmd_encrypt_info = type { i8**, i8**, i32, i32, i32, i8*, i8* }
%struct.smp_cmd_master_ident = type { i8**, i8**, i32, i32, i32, i8*, i8* }
%struct.smp_cmd_ident_addr_info = type { i8**, i8**, i32, i32, i32, i8*, i8* }
%struct.smp_cmd_ident_info = type { i8**, i8**, i32, i32, i32, i8*, i8* }
%struct.smp_cmd_sign_info = type { i8**, i8**, i32, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"conn %p\00", align 1
@KEY_DIST_MASK = common dso_local global i32 0, align 4
@SMP_FLAG_SC = common dso_local global i32 0, align 4
@LE_LINK = common dso_local global i64 0, align 8
@SMP_DIST_LINK_KEY = common dso_local global i32 0, align 4
@ACL_LINK = common dso_local global i64 0, align 8
@SMP_DIST_ENC_KEY = common dso_local global i32 0, align 4
@SMP_SC_NO_DIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"keydist 0x%x\00", align 1
@SMP_CMD_ENCRYPT_INFO = common dso_local global i32 0, align 4
@BT_SECURITY_HIGH = common dso_local global i64 0, align 8
@SMP_LTK_SLAVE = common dso_local global i32 0, align 4
@SMP_CMD_MASTER_IDENT = common dso_local global i32 0, align 4
@SMP_DIST_ID_KEY = common dso_local global i32 0, align 4
@SMP_CMD_IDENT_INFO = common dso_local global i32 0, align 4
@SMP_CMD_IDENT_ADDR_INFO = common dso_local global i32 0, align 4
@SMP_DIST_SIGN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@BT_SECURITY_MEDIUM = common dso_local global i64 0, align 8
@MGMT_CSRK_LOCAL_AUTHENTICATED = common dso_local global i32 0, align 4
@MGMT_CSRK_LOCAL_UNAUTHENTICATED = common dso_local global i32 0, align 4
@SMP_CMD_SIGN_INFO = common dso_local global i32 0, align 4
@SMP_FLAG_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smp_chan*)* @smp_distribute_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smp_distribute_keys(%struct.smp_chan* %0) #0 {
  %2 = alloca %struct.smp_chan*, align 8
  %3 = alloca %struct.smp_cmd_pairing*, align 8
  %4 = alloca %struct.smp_cmd_pairing*, align 8
  %5 = alloca %struct.l2cap_conn*, align 8
  %6 = alloca %struct.hci_conn*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.smp_cmd_encrypt_info, align 8
  %10 = alloca %struct.smp_cmd_master_ident, align 8
  %11 = alloca %struct.smp_ltk*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.smp_cmd_ident_addr_info, align 8
  %16 = alloca %struct.smp_cmd_ident_info, align 8
  %17 = alloca %struct.smp_cmd_sign_info, align 8
  %18 = alloca %struct.smp_csrk*, align 8
  store %struct.smp_chan* %0, %struct.smp_chan** %2, align 8
  %19 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %20 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %19, i32 0, i32 7
  %21 = load %struct.l2cap_conn*, %struct.l2cap_conn** %20, align 8
  store %struct.l2cap_conn* %21, %struct.l2cap_conn** %5, align 8
  %22 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %23 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %22, i32 0, i32 0
  %24 = load %struct.hci_conn*, %struct.hci_conn** %23, align 8
  store %struct.hci_conn* %24, %struct.hci_conn** %6, align 8
  %25 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %26 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %25, i32 0, i32 7
  %27 = load %struct.hci_dev*, %struct.hci_dev** %26, align 8
  store %struct.hci_dev* %27, %struct.hci_dev** %7, align 8
  %28 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %29 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.l2cap_conn* %28)
  %30 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %31 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %30, i32 0, i32 6
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = bitcast i32* %33 to i8*
  %35 = bitcast i8* %34 to %struct.smp_cmd_pairing*
  store %struct.smp_cmd_pairing* %35, %struct.smp_cmd_pairing** %4, align 8
  %36 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %37 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %36, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %1
  %41 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %42 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @KEY_DIST_MASK, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %49 = call i32 @smp_allow_key_dist(%struct.smp_chan* %48)
  br label %295

50:                                               ; preds = %40, %1
  %51 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %52 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %51, i32 0, i32 5
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = bitcast i32* %54 to i8*
  %56 = bitcast i8* %55 to %struct.smp_cmd_pairing*
  store %struct.smp_cmd_pairing* %56, %struct.smp_cmd_pairing** %3, align 8
  %57 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %58 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %57, i32 0, i32 6
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %50
  %62 = load %struct.smp_cmd_pairing*, %struct.smp_cmd_pairing** %4, align 8
  %63 = getelementptr inbounds %struct.smp_cmd_pairing, %struct.smp_cmd_pairing* %62, i32 0, i32 0
  store i32* %63, i32** %8, align 8
  %64 = load %struct.smp_cmd_pairing*, %struct.smp_cmd_pairing** %3, align 8
  %65 = getelementptr inbounds %struct.smp_cmd_pairing, %struct.smp_cmd_pairing* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %66
  store i32 %69, i32* %67, align 4
  br label %79

70:                                               ; preds = %50
  %71 = load %struct.smp_cmd_pairing*, %struct.smp_cmd_pairing** %4, align 8
  %72 = getelementptr inbounds %struct.smp_cmd_pairing, %struct.smp_cmd_pairing* %71, i32 0, i32 1
  store i32* %72, i32** %8, align 8
  %73 = load %struct.smp_cmd_pairing*, %struct.smp_cmd_pairing** %3, align 8
  %74 = getelementptr inbounds %struct.smp_cmd_pairing, %struct.smp_cmd_pairing* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %75
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %70, %61
  %80 = load i32, i32* @SMP_FLAG_SC, align 4
  %81 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %82 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %81, i32 0, i32 2
  %83 = call i64 @test_bit(i32 %80, i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %121

85:                                               ; preds = %79
  %86 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %87 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @LE_LINK, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %85
  %92 = load i32*, i32** %8, align 8
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @SMP_DIST_LINK_KEY, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %99 = call i32 @sc_generate_link_key(%struct.smp_chan* %98)
  br label %100

100:                                              ; preds = %97, %91, %85
  %101 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %102 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @ACL_LINK, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %100
  %107 = load i32*, i32** %8, align 8
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @SMP_DIST_ENC_KEY, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %114 = call i32 @sc_generate_ltk(%struct.smp_chan* %113)
  br label %115

115:                                              ; preds = %112, %106, %100
  %116 = load i32, i32* @SMP_SC_NO_DIST, align 4
  %117 = xor i32 %116, -1
  %118 = load i32*, i32** %8, align 8
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, %117
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %115, %79
  %122 = load i32*, i32** %8, align 8
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %123)
  %125 = load i32*, i32** %8, align 8
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @SMP_DIST_ENC_KEY, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %195

130:                                              ; preds = %121
  %131 = getelementptr inbounds %struct.smp_cmd_encrypt_info, %struct.smp_cmd_encrypt_info* %9, i32 0, i32 0
  %132 = load i8**, i8*** %131, align 8
  %133 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %134 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @get_random_bytes(i8** %132, i32 %135)
  %137 = getelementptr inbounds %struct.smp_cmd_encrypt_info, %struct.smp_cmd_encrypt_info* %9, i32 0, i32 0
  %138 = load i8**, i8*** %137, align 8
  %139 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %140 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8*, i8** %138, i64 %142
  %144 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %145 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = sub i64 8, %147
  %149 = trunc i64 %148 to i32
  %150 = call i32 @memset(i8** %143, i32 0, i32 %149)
  %151 = call i32 @get_random_bytes(i8** %13, i32 8)
  %152 = call i32 @get_random_bytes(i8** %14, i32 8)
  %153 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %154 = load i32, i32* @SMP_CMD_ENCRYPT_INFO, align 4
  %155 = bitcast %struct.smp_cmd_encrypt_info* %9 to %struct.smp_cmd_sign_info*
  %156 = call i32 @smp_send_cmd(%struct.l2cap_conn* %153, i32 %154, i32 48, %struct.smp_cmd_sign_info* %155)
  %157 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %158 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @BT_SECURITY_HIGH, align 8
  %161 = icmp eq i64 %159, %160
  %162 = zext i1 %161 to i32
  store i32 %162, i32* %12, align 4
  %163 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %164 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %165 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %164, i32 0, i32 5
  %166 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %167 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @SMP_LTK_SLAVE, align 4
  %170 = load i32, i32* %12, align 4
  %171 = getelementptr inbounds %struct.smp_cmd_encrypt_info, %struct.smp_cmd_encrypt_info* %9, i32 0, i32 0
  %172 = load i8**, i8*** %171, align 8
  %173 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %174 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i8*, i8** %13, align 8
  %177 = load i8*, i8** %14, align 8
  %178 = call %struct.smp_ltk* @hci_add_ltk(%struct.hci_dev* %163, i32* %165, i32 %168, i32 %169, i32 %170, i8** %172, i32 %175, i8* %176, i8* %177)
  store %struct.smp_ltk* %178, %struct.smp_ltk** %11, align 8
  %179 = load %struct.smp_ltk*, %struct.smp_ltk** %11, align 8
  %180 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %181 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %180, i32 0, i32 4
  store %struct.smp_ltk* %179, %struct.smp_ltk** %181, align 8
  %182 = load i8*, i8** %13, align 8
  %183 = getelementptr inbounds %struct.smp_cmd_master_ident, %struct.smp_cmd_master_ident* %10, i32 0, i32 6
  store i8* %182, i8** %183, align 8
  %184 = load i8*, i8** %14, align 8
  %185 = getelementptr inbounds %struct.smp_cmd_master_ident, %struct.smp_cmd_master_ident* %10, i32 0, i32 5
  store i8* %184, i8** %185, align 8
  %186 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %187 = load i32, i32* @SMP_CMD_MASTER_IDENT, align 4
  %188 = bitcast %struct.smp_cmd_master_ident* %10 to %struct.smp_cmd_sign_info*
  %189 = call i32 @smp_send_cmd(%struct.l2cap_conn* %186, i32 %187, i32 48, %struct.smp_cmd_sign_info* %188)
  %190 = load i32, i32* @SMP_DIST_ENC_KEY, align 4
  %191 = xor i32 %190, -1
  %192 = load i32*, i32** %8, align 8
  %193 = load i32, i32* %192, align 4
  %194 = and i32 %193, %191
  store i32 %194, i32* %192, align 4
  br label %195

195:                                              ; preds = %130, %121
  %196 = load i32*, i32** %8, align 8
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @SMP_DIST_ID_KEY, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %229

201:                                              ; preds = %195
  %202 = getelementptr inbounds %struct.smp_cmd_ident_info, %struct.smp_cmd_ident_info* %16, i32 0, i32 4
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %205 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %204, i32 0, i32 0
  %206 = load i8**, i8*** %205, align 8
  %207 = call i32 @memcpy(i32 %203, i8** %206, i32 4)
  %208 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %209 = load i32, i32* @SMP_CMD_IDENT_INFO, align 4
  %210 = bitcast %struct.smp_cmd_ident_info* %16 to %struct.smp_cmd_sign_info*
  %211 = call i32 @smp_send_cmd(%struct.l2cap_conn* %208, i32 %209, i32 48, %struct.smp_cmd_sign_info* %210)
  %212 = getelementptr inbounds %struct.smp_cmd_ident_addr_info, %struct.smp_cmd_ident_addr_info* %15, i32 0, i32 3
  %213 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %214 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %213, i32 0, i32 3
  %215 = call i32 @bacpy(i32* %212, i32* %214)
  %216 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %217 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = getelementptr inbounds %struct.smp_cmd_ident_addr_info, %struct.smp_cmd_ident_addr_info* %15, i32 0, i32 2
  store i32 %218, i32* %219, align 8
  %220 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %221 = load i32, i32* @SMP_CMD_IDENT_ADDR_INFO, align 4
  %222 = bitcast %struct.smp_cmd_ident_addr_info* %15 to %struct.smp_cmd_sign_info*
  %223 = call i32 @smp_send_cmd(%struct.l2cap_conn* %220, i32 %221, i32 48, %struct.smp_cmd_sign_info* %222)
  %224 = load i32, i32* @SMP_DIST_ID_KEY, align 4
  %225 = xor i32 %224, -1
  %226 = load i32*, i32** %8, align 8
  %227 = load i32, i32* %226, align 4
  %228 = and i32 %227, %225
  store i32 %228, i32* %226, align 4
  br label %229

229:                                              ; preds = %201, %195
  %230 = load i32*, i32** %8, align 8
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @SMP_DIST_SIGN, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %276

235:                                              ; preds = %229
  %236 = getelementptr inbounds %struct.smp_cmd_sign_info, %struct.smp_cmd_sign_info* %17, i32 0, i32 1
  %237 = load i8**, i8*** %236, align 8
  %238 = call i32 @get_random_bytes(i8** %237, i32 8)
  %239 = load i32, i32* @GFP_KERNEL, align 4
  %240 = call %struct.smp_csrk* @kzalloc(i32 8, i32 %239)
  store %struct.smp_csrk* %240, %struct.smp_csrk** %18, align 8
  %241 = load %struct.smp_csrk*, %struct.smp_csrk** %18, align 8
  %242 = icmp ne %struct.smp_csrk* %241, null
  br i1 %242, label %243, label %264

243:                                              ; preds = %235
  %244 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %245 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @BT_SECURITY_MEDIUM, align 8
  %248 = icmp sgt i64 %246, %247
  br i1 %248, label %249, label %253

249:                                              ; preds = %243
  %250 = load i32, i32* @MGMT_CSRK_LOCAL_AUTHENTICATED, align 4
  %251 = load %struct.smp_csrk*, %struct.smp_csrk** %18, align 8
  %252 = getelementptr inbounds %struct.smp_csrk, %struct.smp_csrk* %251, i32 0, i32 1
  store i32 %250, i32* %252, align 4
  br label %257

253:                                              ; preds = %243
  %254 = load i32, i32* @MGMT_CSRK_LOCAL_UNAUTHENTICATED, align 4
  %255 = load %struct.smp_csrk*, %struct.smp_csrk** %18, align 8
  %256 = getelementptr inbounds %struct.smp_csrk, %struct.smp_csrk* %255, i32 0, i32 1
  store i32 %254, i32* %256, align 4
  br label %257

257:                                              ; preds = %253, %249
  %258 = load %struct.smp_csrk*, %struct.smp_csrk** %18, align 8
  %259 = getelementptr inbounds %struct.smp_csrk, %struct.smp_csrk* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = getelementptr inbounds %struct.smp_cmd_sign_info, %struct.smp_cmd_sign_info* %17, i32 0, i32 1
  %262 = load i8**, i8*** %261, align 8
  %263 = call i32 @memcpy(i32 %260, i8** %262, i32 4)
  br label %264

264:                                              ; preds = %257, %235
  %265 = load %struct.smp_csrk*, %struct.smp_csrk** %18, align 8
  %266 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %267 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %266, i32 0, i32 3
  store %struct.smp_csrk* %265, %struct.smp_csrk** %267, align 8
  %268 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %269 = load i32, i32* @SMP_CMD_SIGN_INFO, align 4
  %270 = call i32 @smp_send_cmd(%struct.l2cap_conn* %268, i32 %269, i32 48, %struct.smp_cmd_sign_info* %17)
  %271 = load i32, i32* @SMP_DIST_SIGN, align 4
  %272 = xor i32 %271, -1
  %273 = load i32*, i32** %8, align 8
  %274 = load i32, i32* %273, align 4
  %275 = and i32 %274, %272
  store i32 %275, i32* %273, align 4
  br label %276

276:                                              ; preds = %264, %229
  %277 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %278 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* @KEY_DIST_MASK, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %276
  %284 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %285 = call i32 @smp_allow_key_dist(%struct.smp_chan* %284)
  br label %295

286:                                              ; preds = %276
  %287 = load i32, i32* @SMP_FLAG_COMPLETE, align 4
  %288 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %289 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %288, i32 0, i32 2
  %290 = call i32 @set_bit(i32 %287, i32* %289)
  %291 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %292 = call i32 @smp_notify_keys(%struct.l2cap_conn* %291)
  %293 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %294 = call i32 @smp_chan_destroy(%struct.l2cap_conn* %293)
  br label %295

295:                                              ; preds = %286, %283, %47
  ret void
}

declare dso_local i32 @BT_DBG(i8*, ...) #1

declare dso_local i32 @smp_allow_key_dist(%struct.smp_chan*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @sc_generate_link_key(%struct.smp_chan*) #1

declare dso_local i32 @sc_generate_ltk(%struct.smp_chan*) #1

declare dso_local i32 @get_random_bytes(i8**, i32) #1

declare dso_local i32 @memset(i8**, i32, i32) #1

declare dso_local i32 @smp_send_cmd(%struct.l2cap_conn*, i32, i32, %struct.smp_cmd_sign_info*) #1

declare dso_local %struct.smp_ltk* @hci_add_ltk(%struct.hci_dev*, i32*, i32, i32, i32, i8**, i32, i8*, i8*) #1

declare dso_local i32 @memcpy(i32, i8**, i32) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local %struct.smp_csrk* @kzalloc(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @smp_notify_keys(%struct.l2cap_conn*) #1

declare dso_local i32 @smp_chan_destroy(%struct.l2cap_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
