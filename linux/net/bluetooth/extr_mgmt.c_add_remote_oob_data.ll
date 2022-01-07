; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_add_remote_oob_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_add_remote_oob_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32, i32 }
%struct.mgmt_addr_info = type { i64, i32 }
%struct.mgmt_cp_add_remote_oob_data = type { %struct.mgmt_addr_info, i32*, i32* }
%struct.mgmt_cp_add_remote_oob_ext_data = type { %struct.mgmt_addr_info, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@MGMT_OP_ADD_REMOTE_OOB_DATA = common dso_local global i32 0, align 4
@MGMT_STATUS_INVALID_PARAMS = common dso_local global i32 0, align 4
@MGMT_ADD_REMOTE_OOB_DATA_SIZE = common dso_local global i32 0, align 4
@BDADDR_BREDR = common dso_local global i64 0, align 8
@MGMT_STATUS_FAILED = common dso_local global i32 0, align 4
@MGMT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@MGMT_ADD_REMOTE_OOB_EXT_DATA_SIZE = common dso_local global i32 0, align 4
@ZERO_KEY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"add_remote_oob_data: invalid len of %u bytes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @add_remote_oob_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_remote_oob_data(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mgmt_addr_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mgmt_cp_add_remote_oob_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mgmt_cp_add_remote_oob_ext_data*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to %struct.mgmt_addr_info*
  store %struct.mgmt_addr_info* %21, %struct.mgmt_addr_info** %10, align 8
  %22 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %23 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @BT_DBG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.mgmt_addr_info*, %struct.mgmt_addr_info** %10, align 8
  %27 = getelementptr inbounds %struct.mgmt_addr_info, %struct.mgmt_addr_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @bdaddr_type_is_valid(i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %4
  %32 = load %struct.sock*, %struct.sock** %6, align 8
  %33 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %34 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MGMT_OP_ADD_REMOTE_OOB_DATA, align 4
  %37 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %38 = load %struct.mgmt_addr_info*, %struct.mgmt_addr_info** %10, align 8
  %39 = call i32 @mgmt_cmd_complete(%struct.sock* %32, i32 %35, i32 %36, i32 %37, %struct.mgmt_addr_info* %38, i32 16)
  store i32 %39, i32* %5, align 4
  br label %226

40:                                               ; preds = %4
  %41 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %42 = call i32 @hci_dev_lock(%struct.hci_dev* %41)
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @MGMT_ADD_REMOTE_OOB_DATA_SIZE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %97

46:                                               ; preds = %40
  %47 = load i8*, i8** %8, align 8
  %48 = bitcast i8* %47 to %struct.mgmt_cp_add_remote_oob_data*
  store %struct.mgmt_cp_add_remote_oob_data* %48, %struct.mgmt_cp_add_remote_oob_data** %12, align 8
  %49 = load %struct.mgmt_cp_add_remote_oob_data*, %struct.mgmt_cp_add_remote_oob_data** %12, align 8
  %50 = getelementptr inbounds %struct.mgmt_cp_add_remote_oob_data, %struct.mgmt_cp_add_remote_oob_data* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.mgmt_addr_info, %struct.mgmt_addr_info* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @BDADDR_BREDR, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %46
  %56 = load %struct.sock*, %struct.sock** %6, align 8
  %57 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %58 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @MGMT_OP_ADD_REMOTE_OOB_DATA, align 4
  %61 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %62 = load %struct.mgmt_cp_add_remote_oob_data*, %struct.mgmt_cp_add_remote_oob_data** %12, align 8
  %63 = getelementptr inbounds %struct.mgmt_cp_add_remote_oob_data, %struct.mgmt_cp_add_remote_oob_data* %62, i32 0, i32 0
  %64 = call i32 @mgmt_cmd_complete(%struct.sock* %56, i32 %59, i32 %60, i32 %61, %struct.mgmt_addr_info* %63, i32 16)
  store i32 %64, i32* %11, align 4
  br label %222

65:                                               ; preds = %46
  %66 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %67 = load %struct.mgmt_cp_add_remote_oob_data*, %struct.mgmt_cp_add_remote_oob_data** %12, align 8
  %68 = getelementptr inbounds %struct.mgmt_cp_add_remote_oob_data, %struct.mgmt_cp_add_remote_oob_data* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.mgmt_addr_info, %struct.mgmt_addr_info* %68, i32 0, i32 1
  %70 = load %struct.mgmt_cp_add_remote_oob_data*, %struct.mgmt_cp_add_remote_oob_data** %12, align 8
  %71 = getelementptr inbounds %struct.mgmt_cp_add_remote_oob_data, %struct.mgmt_cp_add_remote_oob_data* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.mgmt_addr_info, %struct.mgmt_addr_info* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.mgmt_cp_add_remote_oob_data*, %struct.mgmt_cp_add_remote_oob_data** %12, align 8
  %75 = getelementptr inbounds %struct.mgmt_cp_add_remote_oob_data, %struct.mgmt_cp_add_remote_oob_data* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.mgmt_cp_add_remote_oob_data*, %struct.mgmt_cp_add_remote_oob_data** %12, align 8
  %78 = getelementptr inbounds %struct.mgmt_cp_add_remote_oob_data, %struct.mgmt_cp_add_remote_oob_data* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @hci_add_remote_oob_data(%struct.hci_dev* %66, i32* %69, i64 %73, i32* %76, i32* %79, i32* null, i32* null)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %65
  %84 = load i32, i32* @MGMT_STATUS_FAILED, align 4
  store i32 %84, i32* %13, align 4
  br label %87

85:                                               ; preds = %65
  %86 = load i32, i32* @MGMT_STATUS_SUCCESS, align 4
  store i32 %86, i32* %13, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = load %struct.sock*, %struct.sock** %6, align 8
  %89 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %90 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @MGMT_OP_ADD_REMOTE_OOB_DATA, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load %struct.mgmt_cp_add_remote_oob_data*, %struct.mgmt_cp_add_remote_oob_data** %12, align 8
  %95 = getelementptr inbounds %struct.mgmt_cp_add_remote_oob_data, %struct.mgmt_cp_add_remote_oob_data* %94, i32 0, i32 0
  %96 = call i32 @mgmt_cmd_complete(%struct.sock* %88, i32 %91, i32 %92, i32 %93, %struct.mgmt_addr_info* %95, i32 16)
  store i32 %96, i32* %11, align 4
  br label %221

97:                                               ; preds = %40
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @MGMT_ADD_REMOTE_OOB_EXT_DATA_SIZE, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %209

101:                                              ; preds = %97
  %102 = load i8*, i8** %8, align 8
  %103 = bitcast i8* %102 to %struct.mgmt_cp_add_remote_oob_ext_data*
  store %struct.mgmt_cp_add_remote_oob_ext_data* %103, %struct.mgmt_cp_add_remote_oob_ext_data** %14, align 8
  %104 = load %struct.mgmt_cp_add_remote_oob_ext_data*, %struct.mgmt_cp_add_remote_oob_ext_data** %14, align 8
  %105 = getelementptr inbounds %struct.mgmt_cp_add_remote_oob_ext_data, %struct.mgmt_cp_add_remote_oob_ext_data* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.mgmt_addr_info, %struct.mgmt_addr_info* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i64 @bdaddr_type_is_le(i64 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %134

110:                                              ; preds = %101
  %111 = load %struct.mgmt_cp_add_remote_oob_ext_data*, %struct.mgmt_cp_add_remote_oob_ext_data** %14, align 8
  %112 = getelementptr inbounds %struct.mgmt_cp_add_remote_oob_ext_data, %struct.mgmt_cp_add_remote_oob_ext_data* %111, i32 0, i32 4
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* @ZERO_KEY, align 4
  %115 = call i64 @memcmp(i32* %113, i32 %114, i32 16)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %110
  %118 = load %struct.mgmt_cp_add_remote_oob_ext_data*, %struct.mgmt_cp_add_remote_oob_ext_data** %14, align 8
  %119 = getelementptr inbounds %struct.mgmt_cp_add_remote_oob_ext_data, %struct.mgmt_cp_add_remote_oob_ext_data* %118, i32 0, i32 3
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* @ZERO_KEY, align 4
  %122 = call i64 @memcmp(i32* %120, i32 %121, i32 16)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %117, %110
  %125 = load %struct.sock*, %struct.sock** %6, align 8
  %126 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %127 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @MGMT_OP_ADD_REMOTE_OOB_DATA, align 4
  %130 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %131 = load %struct.mgmt_addr_info*, %struct.mgmt_addr_info** %10, align 8
  %132 = call i32 @mgmt_cmd_complete(%struct.sock* %125, i32 %128, i32 %129, i32 %130, %struct.mgmt_addr_info* %131, i32 16)
  store i32 %132, i32* %11, align 4
  br label %222

133:                                              ; preds = %117
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  br label %157

134:                                              ; preds = %101
  %135 = load %struct.mgmt_cp_add_remote_oob_ext_data*, %struct.mgmt_cp_add_remote_oob_ext_data** %14, align 8
  %136 = getelementptr inbounds %struct.mgmt_cp_add_remote_oob_ext_data, %struct.mgmt_cp_add_remote_oob_ext_data* %135, i32 0, i32 4
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* @ZERO_KEY, align 4
  %139 = call i64 @memcmp(i32* %137, i32 %138, i32 16)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %134
  %142 = load %struct.mgmt_cp_add_remote_oob_ext_data*, %struct.mgmt_cp_add_remote_oob_ext_data** %14, align 8
  %143 = getelementptr inbounds %struct.mgmt_cp_add_remote_oob_ext_data, %struct.mgmt_cp_add_remote_oob_ext_data* %142, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* @ZERO_KEY, align 4
  %146 = call i64 @memcmp(i32* %144, i32 %145, i32 16)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %141, %134
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  br label %156

149:                                              ; preds = %141
  %150 = load %struct.mgmt_cp_add_remote_oob_ext_data*, %struct.mgmt_cp_add_remote_oob_ext_data** %14, align 8
  %151 = getelementptr inbounds %struct.mgmt_cp_add_remote_oob_ext_data, %struct.mgmt_cp_add_remote_oob_ext_data* %150, i32 0, i32 4
  %152 = load i32*, i32** %151, align 8
  store i32* %152, i32** %15, align 8
  %153 = load %struct.mgmt_cp_add_remote_oob_ext_data*, %struct.mgmt_cp_add_remote_oob_ext_data** %14, align 8
  %154 = getelementptr inbounds %struct.mgmt_cp_add_remote_oob_ext_data, %struct.mgmt_cp_add_remote_oob_ext_data* %153, i32 0, i32 3
  %155 = load i32*, i32** %154, align 8
  store i32* %155, i32** %16, align 8
  br label %156

156:                                              ; preds = %149, %148
  br label %157

157:                                              ; preds = %156, %133
  %158 = load %struct.mgmt_cp_add_remote_oob_ext_data*, %struct.mgmt_cp_add_remote_oob_ext_data** %14, align 8
  %159 = getelementptr inbounds %struct.mgmt_cp_add_remote_oob_ext_data, %struct.mgmt_cp_add_remote_oob_ext_data* %158, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* @ZERO_KEY, align 4
  %162 = call i64 @memcmp(i32* %160, i32 %161, i32 16)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %171

164:                                              ; preds = %157
  %165 = load %struct.mgmt_cp_add_remote_oob_ext_data*, %struct.mgmt_cp_add_remote_oob_ext_data** %14, align 8
  %166 = getelementptr inbounds %struct.mgmt_cp_add_remote_oob_ext_data, %struct.mgmt_cp_add_remote_oob_ext_data* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* @ZERO_KEY, align 4
  %169 = call i64 @memcmp(i32* %167, i32 %168, i32 16)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %164, %157
  store i32* null, i32** %17, align 8
  store i32* null, i32** %18, align 8
  br label %179

172:                                              ; preds = %164
  %173 = load %struct.mgmt_cp_add_remote_oob_ext_data*, %struct.mgmt_cp_add_remote_oob_ext_data** %14, align 8
  %174 = getelementptr inbounds %struct.mgmt_cp_add_remote_oob_ext_data, %struct.mgmt_cp_add_remote_oob_ext_data* %173, i32 0, i32 2
  %175 = load i32*, i32** %174, align 8
  store i32* %175, i32** %17, align 8
  %176 = load %struct.mgmt_cp_add_remote_oob_ext_data*, %struct.mgmt_cp_add_remote_oob_ext_data** %14, align 8
  %177 = getelementptr inbounds %struct.mgmt_cp_add_remote_oob_ext_data, %struct.mgmt_cp_add_remote_oob_ext_data* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  store i32* %178, i32** %18, align 8
  br label %179

179:                                              ; preds = %172, %171
  %180 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %181 = load %struct.mgmt_cp_add_remote_oob_ext_data*, %struct.mgmt_cp_add_remote_oob_ext_data** %14, align 8
  %182 = getelementptr inbounds %struct.mgmt_cp_add_remote_oob_ext_data, %struct.mgmt_cp_add_remote_oob_ext_data* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.mgmt_addr_info, %struct.mgmt_addr_info* %182, i32 0, i32 1
  %184 = load %struct.mgmt_cp_add_remote_oob_ext_data*, %struct.mgmt_cp_add_remote_oob_ext_data** %14, align 8
  %185 = getelementptr inbounds %struct.mgmt_cp_add_remote_oob_ext_data, %struct.mgmt_cp_add_remote_oob_ext_data* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.mgmt_addr_info, %struct.mgmt_addr_info* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i32*, i32** %16, align 8
  %189 = load i32*, i32** %15, align 8
  %190 = load i32*, i32** %18, align 8
  %191 = load i32*, i32** %17, align 8
  %192 = call i32 @hci_add_remote_oob_data(%struct.hci_dev* %180, i32* %183, i64 %187, i32* %188, i32* %189, i32* %190, i32* %191)
  store i32 %192, i32* %11, align 4
  %193 = load i32, i32* %11, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %179
  %196 = load i32, i32* @MGMT_STATUS_FAILED, align 4
  store i32 %196, i32* %19, align 4
  br label %199

197:                                              ; preds = %179
  %198 = load i32, i32* @MGMT_STATUS_SUCCESS, align 4
  store i32 %198, i32* %19, align 4
  br label %199

199:                                              ; preds = %197, %195
  %200 = load %struct.sock*, %struct.sock** %6, align 8
  %201 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %202 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @MGMT_OP_ADD_REMOTE_OOB_DATA, align 4
  %205 = load i32, i32* %19, align 4
  %206 = load %struct.mgmt_cp_add_remote_oob_ext_data*, %struct.mgmt_cp_add_remote_oob_ext_data** %14, align 8
  %207 = getelementptr inbounds %struct.mgmt_cp_add_remote_oob_ext_data, %struct.mgmt_cp_add_remote_oob_ext_data* %206, i32 0, i32 0
  %208 = call i32 @mgmt_cmd_complete(%struct.sock* %200, i32 %203, i32 %204, i32 %205, %struct.mgmt_addr_info* %207, i32 16)
  store i32 %208, i32* %11, align 4
  br label %220

209:                                              ; preds = %97
  %210 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %211 = load i32, i32* %9, align 4
  %212 = call i32 @bt_dev_err(%struct.hci_dev* %210, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %211)
  %213 = load %struct.sock*, %struct.sock** %6, align 8
  %214 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %215 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @MGMT_OP_ADD_REMOTE_OOB_DATA, align 4
  %218 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %219 = call i32 @mgmt_cmd_status(%struct.sock* %213, i32 %216, i32 %217, i32 %218)
  store i32 %219, i32* %11, align 4
  br label %220

220:                                              ; preds = %209, %199
  br label %221

221:                                              ; preds = %220, %87
  br label %222

222:                                              ; preds = %221, %124, %55
  %223 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %224 = call i32 @hci_dev_unlock(%struct.hci_dev* %223)
  %225 = load i32, i32* %11, align 4
  store i32 %225, i32* %5, align 4
  br label %226

226:                                              ; preds = %222, %31
  %227 = load i32, i32* %5, align 4
  ret i32 %227
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @bdaddr_type_is_valid(i64) #1

declare dso_local i32 @mgmt_cmd_complete(%struct.sock*, i32, i32, i32, %struct.mgmt_addr_info*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @hci_add_remote_oob_data(%struct.hci_dev*, i32*, i64, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @bdaddr_type_is_le(i64) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, i32) #1

declare dso_local i32 @mgmt_cmd_status(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
