; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c___hci_req_setup_ext_adv_instance.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c___hci_req_setup_ext_adv_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_request = type { %struct.hci_dev* }
%struct.hci_dev = type { i32, i32 }
%struct.hci_cp_le_set_ext_adv_params = type { i32, i32, i32, i32, i8*, i8*, i32, i8*, i32, i32 }
%struct.adv_info = type { i32 }
%struct.hci_cp_le_set_adv_set_rand_addr = type { i32, i32, i32, i32, i8*, i8*, i32, i8*, i32, i32 }

@__const.__hci_req_setup_ext_adv_instance.adv_interval = private unnamed_addr constant [3 x i32] [i32 0, i32 8, i32 0], align 4
@EINVAL = common dso_local global i32 0, align 4
@MGMT_ADV_FLAG_CONNECTABLE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@MGMT_ADV_FLAG_SEC_MASK = common dso_local global i32 0, align 4
@LE_EXT_ADV_CONN_IND = common dso_local global i32 0, align 4
@LE_LEGACY_ADV_IND = common dso_local global i32 0, align 4
@LE_EXT_ADV_SCAN_IND = common dso_local global i32 0, align 4
@LE_LEGACY_ADV_SCAN_IND = common dso_local global i32 0, align 4
@LE_EXT_ADV_NON_CONN_IND = common dso_local global i32 0, align 4
@LE_LEGACY_NONCONN_IND = common dso_local global i32 0, align 4
@MGMT_ADV_FLAG_SEC_2M = common dso_local global i32 0, align 4
@HCI_ADV_PHY_1M = common dso_local global i8* null, align 8
@HCI_ADV_PHY_2M = common dso_local global i8* null, align 8
@MGMT_ADV_FLAG_SEC_CODED = common dso_local global i32 0, align 4
@HCI_ADV_PHY_CODED = common dso_local global i8* null, align 8
@HCI_OP_LE_SET_EXT_ADV_PARAMS = common dso_local global i32 0, align 4
@ADDR_LE_DEV_RANDOM = common dso_local global i32 0, align 4
@BDADDR_ANY = common dso_local global i32* null, align 8
@HCI_OP_LE_SET_ADV_SET_RAND_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__hci_req_setup_ext_adv_instance(%struct.hci_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hci_cp_le_set_ext_adv_params, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.adv_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca [3 x i32], align 4
  %16 = alloca %struct.hci_cp_le_set_adv_set_rand_addr, align 8
  store %struct.hci_request* %0, %struct.hci_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load %struct.hci_request*, %struct.hci_request** %4, align 8
  %18 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %17, i32 0, i32 0
  %19 = load %struct.hci_dev*, %struct.hci_dev** %18, align 8
  store %struct.hci_dev* %19, %struct.hci_dev** %7, align 8
  %20 = bitcast [3 x i32]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast ([3 x i32]* @__const.__hci_req_setup_ext_adv_instance.adv_interval to i8*), i64 12, i1 false)
  %21 = load i32, i32* %5, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %2
  %24 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call %struct.adv_info* @hci_find_adv_instance(%struct.hci_dev* %24, i32 %25)
  store %struct.adv_info* %26, %struct.adv_info** %13, align 8
  %27 = load %struct.adv_info*, %struct.adv_info** %13, align 8
  %28 = icmp ne %struct.adv_info* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %202

32:                                               ; preds = %23
  br label %34

33:                                               ; preds = %2
  store %struct.adv_info* null, %struct.adv_info** %13, align 8
  br label %34

34:                                               ; preds = %33, %32
  %35 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @get_adv_instance_flags(%struct.hci_dev* %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @MGMT_ADV_FLAG_CONNECTABLE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %34
  %43 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %44 = call i64 @mgmt_get_connectable(%struct.hci_dev* %43)
  %45 = icmp ne i64 %44, 0
  br label %46

46:                                               ; preds = %42, %34
  %47 = phi i1 [ true, %34 ], [ %45, %42 ]
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %8, align 4
  %49 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @is_advertising_allowed(%struct.hci_dev* %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* @EPERM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %202

56:                                               ; preds = %46
  %57 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @adv_use_rpa(%struct.hci_dev* %62, i32 %63)
  %65 = load %struct.adv_info*, %struct.adv_info** %13, align 8
  %66 = call i32 @hci_get_random_address(%struct.hci_dev* %57, i32 %61, i32 %64, %struct.adv_info* %65, i32* %11, i32* %10)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %56
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %3, align 4
  br label %202

71:                                               ; preds = %56
  %72 = call i32 @memset(%struct.hci_cp_le_set_ext_adv_params* %6, i32 0, i32 56)
  %73 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, %struct.hci_cp_le_set_ext_adv_params* %6, i32 0, i32 9
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %76 = call i32 @memcpy(i32 %74, i32* %75, i32 4)
  %77 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, %struct.hci_cp_le_set_ext_adv_params* %6, i32 0, i32 8
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %80 = call i32 @memcpy(i32 %78, i32* %79, i32 4)
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @MGMT_ADV_FLAG_SEC_MASK, align 4
  %83 = and i32 %81, %82
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %71
  %87 = load i32, i32* %14, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i32, i32* @LE_EXT_ADV_CONN_IND, align 4
  %91 = call i8* @cpu_to_le16(i32 %90)
  %92 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, %struct.hci_cp_le_set_ext_adv_params* %6, i32 0, i32 7
  store i8* %91, i8** %92, align 8
  br label %97

93:                                               ; preds = %86
  %94 = load i32, i32* @LE_LEGACY_ADV_IND, align 4
  %95 = call i8* @cpu_to_le16(i32 %94)
  %96 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, %struct.hci_cp_le_set_ext_adv_params* %6, i32 0, i32 7
  store i8* %95, i8** %96, align 8
  br label %97

97:                                               ; preds = %93, %89
  br label %128

98:                                               ; preds = %71
  %99 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %100 = load i32, i32* %5, align 4
  %101 = call i64 @get_adv_instance_scan_rsp_len(%struct.hci_dev* %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %98
  %104 = load i32, i32* %14, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i32, i32* @LE_EXT_ADV_SCAN_IND, align 4
  %108 = call i8* @cpu_to_le16(i32 %107)
  %109 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, %struct.hci_cp_le_set_ext_adv_params* %6, i32 0, i32 7
  store i8* %108, i8** %109, align 8
  br label %114

110:                                              ; preds = %103
  %111 = load i32, i32* @LE_LEGACY_ADV_SCAN_IND, align 4
  %112 = call i8* @cpu_to_le16(i32 %111)
  %113 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, %struct.hci_cp_le_set_ext_adv_params* %6, i32 0, i32 7
  store i8* %112, i8** %113, align 8
  br label %114

114:                                              ; preds = %110, %106
  br label %127

115:                                              ; preds = %98
  %116 = load i32, i32* %14, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load i32, i32* @LE_EXT_ADV_NON_CONN_IND, align 4
  %120 = call i8* @cpu_to_le16(i32 %119)
  %121 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, %struct.hci_cp_le_set_ext_adv_params* %6, i32 0, i32 7
  store i8* %120, i8** %121, align 8
  br label %126

122:                                              ; preds = %115
  %123 = load i32, i32* @LE_LEGACY_NONCONN_IND, align 4
  %124 = call i8* @cpu_to_le16(i32 %123)
  %125 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, %struct.hci_cp_le_set_ext_adv_params* %6, i32 0, i32 7
  store i8* %124, i8** %125, align 8
  br label %126

126:                                              ; preds = %122, %118
  br label %127

127:                                              ; preds = %126, %114
  br label %128

128:                                              ; preds = %127, %97
  %129 = load i32, i32* %11, align 4
  %130 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, %struct.hci_cp_le_set_ext_adv_params* %6, i32 0, i32 0
  store i32 %129, i32* %130, align 8
  %131 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %132 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, %struct.hci_cp_le_set_ext_adv_params* %6, i32 0, i32 6
  store i32 %133, i32* %134, align 8
  %135 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, %struct.hci_cp_le_set_ext_adv_params* %6, i32 0, i32 1
  store i32 127, i32* %135, align 4
  %136 = load i32, i32* %5, align 4
  %137 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, %struct.hci_cp_le_set_ext_adv_params* %6, i32 0, i32 2
  store i32 %136, i32* %137, align 8
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @MGMT_ADV_FLAG_SEC_2M, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %128
  %143 = load i8*, i8** @HCI_ADV_PHY_1M, align 8
  %144 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, %struct.hci_cp_le_set_ext_adv_params* %6, i32 0, i32 5
  store i8* %143, i8** %144, align 8
  %145 = load i8*, i8** @HCI_ADV_PHY_2M, align 8
  %146 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, %struct.hci_cp_le_set_ext_adv_params* %6, i32 0, i32 4
  store i8* %145, i8** %146, align 8
  br label %163

147:                                              ; preds = %128
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* @MGMT_ADV_FLAG_SEC_CODED, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %147
  %153 = load i8*, i8** @HCI_ADV_PHY_CODED, align 8
  %154 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, %struct.hci_cp_le_set_ext_adv_params* %6, i32 0, i32 5
  store i8* %153, i8** %154, align 8
  %155 = load i8*, i8** @HCI_ADV_PHY_CODED, align 8
  %156 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, %struct.hci_cp_le_set_ext_adv_params* %6, i32 0, i32 4
  store i8* %155, i8** %156, align 8
  br label %162

157:                                              ; preds = %147
  %158 = load i8*, i8** @HCI_ADV_PHY_1M, align 8
  %159 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, %struct.hci_cp_le_set_ext_adv_params* %6, i32 0, i32 5
  store i8* %158, i8** %159, align 8
  %160 = load i8*, i8** @HCI_ADV_PHY_1M, align 8
  %161 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, %struct.hci_cp_le_set_ext_adv_params* %6, i32 0, i32 4
  store i8* %160, i8** %161, align 8
  br label %162

162:                                              ; preds = %157, %152
  br label %163

163:                                              ; preds = %162, %142
  %164 = load %struct.hci_request*, %struct.hci_request** %4, align 8
  %165 = load i32, i32* @HCI_OP_LE_SET_EXT_ADV_PARAMS, align 4
  %166 = call i32 @hci_req_add(%struct.hci_request* %164, i32 %165, i32 56, %struct.hci_cp_le_set_ext_adv_params* %6)
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* @ADDR_LE_DEV_RANDOM, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %201

170:                                              ; preds = %163
  %171 = load i32*, i32** @BDADDR_ANY, align 8
  %172 = call i64 @bacmp(i32* %10, i32* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %201

174:                                              ; preds = %170
  %175 = load %struct.adv_info*, %struct.adv_info** %13, align 8
  %176 = icmp ne %struct.adv_info* %175, null
  br i1 %176, label %177, label %184

177:                                              ; preds = %174
  %178 = load %struct.adv_info*, %struct.adv_info** %13, align 8
  %179 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %178, i32 0, i32 0
  %180 = call i64 @bacmp(i32* %10, i32* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %177
  store i32 0, i32* %3, align 4
  br label %202

183:                                              ; preds = %177
  br label %191

184:                                              ; preds = %174
  %185 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %186 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %185, i32 0, i32 0
  %187 = call i64 @bacmp(i32* %10, i32* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %184
  store i32 0, i32* %3, align 4
  br label %202

190:                                              ; preds = %184
  br label %191

191:                                              ; preds = %190, %183
  %192 = bitcast %struct.hci_cp_le_set_adv_set_rand_addr* %16 to %struct.hci_cp_le_set_ext_adv_params*
  %193 = call i32 @memset(%struct.hci_cp_le_set_ext_adv_params* %192, i32 0, i32 56)
  %194 = getelementptr inbounds %struct.hci_cp_le_set_adv_set_rand_addr, %struct.hci_cp_le_set_adv_set_rand_addr* %16, i32 0, i32 2
  store i32 0, i32* %194, align 8
  %195 = getelementptr inbounds %struct.hci_cp_le_set_adv_set_rand_addr, %struct.hci_cp_le_set_adv_set_rand_addr* %16, i32 0, i32 3
  %196 = call i32 @bacpy(i32* %195, i32* %10)
  %197 = load %struct.hci_request*, %struct.hci_request** %4, align 8
  %198 = load i32, i32* @HCI_OP_LE_SET_ADV_SET_RAND_ADDR, align 4
  %199 = bitcast %struct.hci_cp_le_set_adv_set_rand_addr* %16 to %struct.hci_cp_le_set_ext_adv_params*
  %200 = call i32 @hci_req_add(%struct.hci_request* %197, i32 %198, i32 56, %struct.hci_cp_le_set_ext_adv_params* %199)
  br label %201

201:                                              ; preds = %191, %170, %163
  store i32 0, i32* %3, align 4
  br label %202

202:                                              ; preds = %201, %189, %182, %69, %53, %29
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.adv_info* @hci_find_adv_instance(%struct.hci_dev*, i32) #2

declare dso_local i32 @get_adv_instance_flags(%struct.hci_dev*, i32) #2

declare dso_local i64 @mgmt_get_connectable(%struct.hci_dev*) #2

declare dso_local i32 @is_advertising_allowed(%struct.hci_dev*, i32) #2

declare dso_local i32 @hci_get_random_address(%struct.hci_dev*, i32, i32, %struct.adv_info*, i32*, i32*) #2

declare dso_local i32 @adv_use_rpa(%struct.hci_dev*, i32) #2

declare dso_local i32 @memset(%struct.hci_cp_le_set_ext_adv_params*, i32, i32) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i8* @cpu_to_le16(i32) #2

declare dso_local i64 @get_adv_instance_scan_rsp_len(%struct.hci_dev*, i32) #2

declare dso_local i32 @hci_req_add(%struct.hci_request*, i32, i32, %struct.hci_cp_le_set_ext_adv_params*) #2

declare dso_local i64 @bacmp(i32*, i32*) #2

declare dso_local i32 @bacpy(i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
