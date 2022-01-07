; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_read_local_oob_ext_data_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_read_local_oob_ext_data_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i64*, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.mgmt_cp_read_local_oob_ext_data = type { i32 }
%struct.mgmt_rp_read_local_oob_ext_data = type { i32, i32, i32 }
%struct.mgmt_pending_cmd = type { i32, %struct.mgmt_cp_read_local_oob_ext_data* }
%struct.hci_rp_read_local_oob_data = type { i64*, i64* }
%struct.hci_rp_read_local_oob_ext_data = type { i64*, i64*, i64*, i64* }

@.str = private unnamed_addr constant [13 x i8] c"%s status %u\00", align 1
@MGMT_OP_READ_LOCAL_OOB_EXT_DATA = common dso_local global i32 0, align 4
@HCI_OP_READ_LOCAL_OOB_DATA = common dso_local global i64 0, align 8
@MGMT_STATUS_FAILED = common dso_local global i64 0, align 8
@MGMT_STATUS_SUCCESS = common dso_local global i64 0, align 8
@HCI_SC_ONLY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EIR_CLASS_OF_DEV = common dso_local global i32 0, align 4
@EIR_SSP_HASH_C192 = common dso_local global i32 0, align 4
@EIR_SSP_RAND_R192 = common dso_local global i32 0, align 4
@EIR_SSP_HASH_C256 = common dso_local global i32 0, align 4
@EIR_SSP_RAND_R256 = common dso_local global i32 0, align 4
@HCI_MGMT_OOB_DATA_EVENTS = common dso_local global i32 0, align 4
@MGMT_EV_LOCAL_OOB_DATA_UPDATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, i64, i64, %struct.sk_buff*)* @read_local_oob_ext_data_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_local_oob_ext_data_complete(%struct.hci_dev* %0, i64 %1, i64 %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.mgmt_cp_read_local_oob_ext_data*, align 8
  %10 = alloca %struct.mgmt_rp_read_local_oob_ext_data*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca %struct.mgmt_pending_cmd*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.hci_rp_read_local_oob_data*, align 8
  %19 = alloca %struct.hci_rp_read_local_oob_ext_data*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %8, align 8
  %20 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %21 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @BT_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %22, i64 %23)
  %25 = load i32, i32* @MGMT_OP_READ_LOCAL_OOB_EXT_DATA, align 4
  %26 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %27 = call %struct.mgmt_pending_cmd* @pending_find(i32 %25, %struct.hci_dev* %26)
  store %struct.mgmt_pending_cmd* %27, %struct.mgmt_pending_cmd** %15, align 8
  %28 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %15, align 8
  %29 = icmp ne %struct.mgmt_pending_cmd* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %4
  br label %217

31:                                               ; preds = %4
  %32 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %15, align 8
  %33 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %32, i32 0, i32 1
  %34 = load %struct.mgmt_cp_read_local_oob_ext_data*, %struct.mgmt_cp_read_local_oob_ext_data** %33, align 8
  store %struct.mgmt_cp_read_local_oob_ext_data* %34, %struct.mgmt_cp_read_local_oob_ext_data** %9, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @mgmt_status(i64 %38)
  store i64 %39, i64* %6, align 8
  store i64 0, i64* %16, align 8
  store i64* null, i64** %11, align 8
  store i64* null, i64** %12, align 8
  store i64* null, i64** %13, align 8
  store i64* null, i64** %14, align 8
  br label %102

40:                                               ; preds = %31
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* @HCI_OP_READ_LOCAL_OOB_DATA, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %66

44:                                               ; preds = %40
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = icmp ne i64 %48, 16
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i64, i64* @MGMT_STATUS_FAILED, align 8
  store i64 %51, i64* %6, align 8
  store i64 0, i64* %16, align 8
  br label %65

52:                                               ; preds = %44
  %53 = load i64, i64* @MGMT_STATUS_SUCCESS, align 8
  store i64 %53, i64* %6, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = bitcast i8* %57 to %struct.hci_rp_read_local_oob_data*
  store %struct.hci_rp_read_local_oob_data* %58, %struct.hci_rp_read_local_oob_data** %18, align 8
  store i64 41, i64* %16, align 8
  %59 = load %struct.hci_rp_read_local_oob_data*, %struct.hci_rp_read_local_oob_data** %18, align 8
  %60 = getelementptr inbounds %struct.hci_rp_read_local_oob_data, %struct.hci_rp_read_local_oob_data* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  store i64* %61, i64** %11, align 8
  %62 = load %struct.hci_rp_read_local_oob_data*, %struct.hci_rp_read_local_oob_data** %18, align 8
  %63 = getelementptr inbounds %struct.hci_rp_read_local_oob_data, %struct.hci_rp_read_local_oob_data* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  store i64* %64, i64** %12, align 8
  store i64* null, i64** %13, align 8
  store i64* null, i64** %14, align 8
  br label %65

65:                                               ; preds = %52, %50
  br label %101

66:                                               ; preds = %40
  %67 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = icmp ne i64 %70, 32
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i64, i64* @MGMT_STATUS_FAILED, align 8
  store i64 %73, i64* %6, align 8
  store i64 0, i64* %16, align 8
  br label %100

74:                                               ; preds = %66
  %75 = load i64, i64* @MGMT_STATUS_SUCCESS, align 8
  store i64 %75, i64* %6, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i8*
  %80 = bitcast i8* %79 to %struct.hci_rp_read_local_oob_ext_data*
  store %struct.hci_rp_read_local_oob_ext_data* %80, %struct.hci_rp_read_local_oob_ext_data** %19, align 8
  %81 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %82 = load i32, i32* @HCI_SC_ONLY, align 4
  %83 = call i64 @hci_dev_test_flag(%struct.hci_dev* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %74
  store i64 41, i64* %16, align 8
  store i64* null, i64** %11, align 8
  store i64* null, i64** %12, align 8
  br label %93

86:                                               ; preds = %74
  store i64 77, i64* %16, align 8
  %87 = load %struct.hci_rp_read_local_oob_ext_data*, %struct.hci_rp_read_local_oob_ext_data** %19, align 8
  %88 = getelementptr inbounds %struct.hci_rp_read_local_oob_ext_data, %struct.hci_rp_read_local_oob_ext_data* %87, i32 0, i32 3
  %89 = load i64*, i64** %88, align 8
  store i64* %89, i64** %11, align 8
  %90 = load %struct.hci_rp_read_local_oob_ext_data*, %struct.hci_rp_read_local_oob_ext_data** %19, align 8
  %91 = getelementptr inbounds %struct.hci_rp_read_local_oob_ext_data, %struct.hci_rp_read_local_oob_ext_data* %90, i32 0, i32 2
  %92 = load i64*, i64** %91, align 8
  store i64* %92, i64** %12, align 8
  br label %93

93:                                               ; preds = %86, %85
  %94 = load %struct.hci_rp_read_local_oob_ext_data*, %struct.hci_rp_read_local_oob_ext_data** %19, align 8
  %95 = getelementptr inbounds %struct.hci_rp_read_local_oob_ext_data, %struct.hci_rp_read_local_oob_ext_data* %94, i32 0, i32 1
  %96 = load i64*, i64** %95, align 8
  store i64* %96, i64** %13, align 8
  %97 = load %struct.hci_rp_read_local_oob_ext_data*, %struct.hci_rp_read_local_oob_ext_data** %19, align 8
  %98 = getelementptr inbounds %struct.hci_rp_read_local_oob_ext_data, %struct.hci_rp_read_local_oob_ext_data* %97, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  store i64* %99, i64** %14, align 8
  br label %100

100:                                              ; preds = %93, %72
  br label %101

101:                                              ; preds = %100, %65
  br label %102

102:                                              ; preds = %101, %37
  %103 = load i64, i64* %16, align 8
  %104 = add i64 12, %103
  %105 = trunc i64 %104 to i32
  %106 = load i32, i32* @GFP_KERNEL, align 4
  %107 = call %struct.mgmt_rp_read_local_oob_ext_data* @kmalloc(i32 %105, i32 %106)
  store %struct.mgmt_rp_read_local_oob_ext_data* %107, %struct.mgmt_rp_read_local_oob_ext_data** %10, align 8
  %108 = load %struct.mgmt_rp_read_local_oob_ext_data*, %struct.mgmt_rp_read_local_oob_ext_data** %10, align 8
  %109 = icmp ne %struct.mgmt_rp_read_local_oob_ext_data* %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %102
  br label %212

111:                                              ; preds = %102
  %112 = load i64, i64* %6, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  br label %166

115:                                              ; preds = %111
  %116 = load %struct.mgmt_rp_read_local_oob_ext_data*, %struct.mgmt_rp_read_local_oob_ext_data** %10, align 8
  %117 = getelementptr inbounds %struct.mgmt_rp_read_local_oob_ext_data, %struct.mgmt_rp_read_local_oob_ext_data* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @EIR_CLASS_OF_DEV, align 4
  %120 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %121 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %120, i32 0, i32 1
  %122 = load i64*, i64** %121, align 8
  %123 = call i64 @eir_append_data(i32 %118, i64 0, i32 %119, i64* %122, i32 3)
  store i64 %123, i64* %16, align 8
  %124 = load i64*, i64** %11, align 8
  %125 = icmp ne i64* %124, null
  br i1 %125, label %126, label %144

126:                                              ; preds = %115
  %127 = load i64*, i64** %12, align 8
  %128 = icmp ne i64* %127, null
  br i1 %128, label %129, label %144

129:                                              ; preds = %126
  %130 = load %struct.mgmt_rp_read_local_oob_ext_data*, %struct.mgmt_rp_read_local_oob_ext_data** %10, align 8
  %131 = getelementptr inbounds %struct.mgmt_rp_read_local_oob_ext_data, %struct.mgmt_rp_read_local_oob_ext_data* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load i64, i64* %16, align 8
  %134 = load i32, i32* @EIR_SSP_HASH_C192, align 4
  %135 = load i64*, i64** %11, align 8
  %136 = call i64 @eir_append_data(i32 %132, i64 %133, i32 %134, i64* %135, i32 16)
  store i64 %136, i64* %16, align 8
  %137 = load %struct.mgmt_rp_read_local_oob_ext_data*, %struct.mgmt_rp_read_local_oob_ext_data** %10, align 8
  %138 = getelementptr inbounds %struct.mgmt_rp_read_local_oob_ext_data, %struct.mgmt_rp_read_local_oob_ext_data* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load i64, i64* %16, align 8
  %141 = load i32, i32* @EIR_SSP_RAND_R192, align 4
  %142 = load i64*, i64** %12, align 8
  %143 = call i64 @eir_append_data(i32 %139, i64 %140, i32 %141, i64* %142, i32 16)
  store i64 %143, i64* %16, align 8
  br label %144

144:                                              ; preds = %129, %126, %115
  %145 = load i64*, i64** %13, align 8
  %146 = icmp ne i64* %145, null
  br i1 %146, label %147, label %165

147:                                              ; preds = %144
  %148 = load i64*, i64** %14, align 8
  %149 = icmp ne i64* %148, null
  br i1 %149, label %150, label %165

150:                                              ; preds = %147
  %151 = load %struct.mgmt_rp_read_local_oob_ext_data*, %struct.mgmt_rp_read_local_oob_ext_data** %10, align 8
  %152 = getelementptr inbounds %struct.mgmt_rp_read_local_oob_ext_data, %struct.mgmt_rp_read_local_oob_ext_data* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load i64, i64* %16, align 8
  %155 = load i32, i32* @EIR_SSP_HASH_C256, align 4
  %156 = load i64*, i64** %13, align 8
  %157 = call i64 @eir_append_data(i32 %153, i64 %154, i32 %155, i64* %156, i32 16)
  store i64 %157, i64* %16, align 8
  %158 = load %struct.mgmt_rp_read_local_oob_ext_data*, %struct.mgmt_rp_read_local_oob_ext_data** %10, align 8
  %159 = getelementptr inbounds %struct.mgmt_rp_read_local_oob_ext_data, %struct.mgmt_rp_read_local_oob_ext_data* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load i64, i64* %16, align 8
  %162 = load i32, i32* @EIR_SSP_RAND_R256, align 4
  %163 = load i64*, i64** %14, align 8
  %164 = call i64 @eir_append_data(i32 %160, i64 %161, i32 %162, i64* %163, i32 16)
  store i64 %164, i64* %16, align 8
  br label %165

165:                                              ; preds = %150, %147, %144
  br label %166

166:                                              ; preds = %165, %114
  %167 = load %struct.mgmt_cp_read_local_oob_ext_data*, %struct.mgmt_cp_read_local_oob_ext_data** %9, align 8
  %168 = getelementptr inbounds %struct.mgmt_cp_read_local_oob_ext_data, %struct.mgmt_cp_read_local_oob_ext_data* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.mgmt_rp_read_local_oob_ext_data*, %struct.mgmt_rp_read_local_oob_ext_data** %10, align 8
  %171 = getelementptr inbounds %struct.mgmt_rp_read_local_oob_ext_data, %struct.mgmt_rp_read_local_oob_ext_data* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  %172 = load i64, i64* %16, align 8
  %173 = call i32 @cpu_to_le16(i64 %172)
  %174 = load %struct.mgmt_rp_read_local_oob_ext_data*, %struct.mgmt_rp_read_local_oob_ext_data** %10, align 8
  %175 = getelementptr inbounds %struct.mgmt_rp_read_local_oob_ext_data, %struct.mgmt_rp_read_local_oob_ext_data* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 4
  %176 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %15, align 8
  %177 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %180 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @MGMT_OP_READ_LOCAL_OOB_EXT_DATA, align 4
  %183 = load i64, i64* %6, align 8
  %184 = load %struct.mgmt_rp_read_local_oob_ext_data*, %struct.mgmt_rp_read_local_oob_ext_data** %10, align 8
  %185 = load i64, i64* %16, align 8
  %186 = add i64 12, %185
  %187 = trunc i64 %186 to i32
  %188 = call i32 @mgmt_cmd_complete(i32 %178, i32 %181, i32 %182, i64 %183, %struct.mgmt_rp_read_local_oob_ext_data* %184, i32 %187)
  store i32 %188, i32* %17, align 4
  %189 = load i32, i32* %17, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %194, label %191

191:                                              ; preds = %166
  %192 = load i64, i64* %6, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %191, %166
  br label %212

195:                                              ; preds = %191
  %196 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %15, align 8
  %197 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @HCI_MGMT_OOB_DATA_EVENTS, align 4
  %200 = call i32 @hci_sock_set_flag(i32 %198, i32 %199)
  %201 = load i32, i32* @MGMT_EV_LOCAL_OOB_DATA_UPDATED, align 4
  %202 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %203 = load %struct.mgmt_rp_read_local_oob_ext_data*, %struct.mgmt_rp_read_local_oob_ext_data** %10, align 8
  %204 = load i64, i64* %16, align 8
  %205 = add i64 12, %204
  %206 = trunc i64 %205 to i32
  %207 = load i32, i32* @HCI_MGMT_OOB_DATA_EVENTS, align 4
  %208 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %15, align 8
  %209 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @mgmt_limited_event(i32 %201, %struct.hci_dev* %202, %struct.mgmt_rp_read_local_oob_ext_data* %203, i32 %206, i32 %207, i32 %210)
  store i32 %211, i32* %17, align 4
  br label %212

212:                                              ; preds = %195, %194, %110
  %213 = load %struct.mgmt_rp_read_local_oob_ext_data*, %struct.mgmt_rp_read_local_oob_ext_data** %10, align 8
  %214 = call i32 @kfree(%struct.mgmt_rp_read_local_oob_ext_data* %213)
  %215 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %15, align 8
  %216 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %215)
  br label %217

217:                                              ; preds = %212, %30
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i64) #1

declare dso_local %struct.mgmt_pending_cmd* @pending_find(i32, %struct.hci_dev*) #1

declare dso_local i64 @mgmt_status(i64) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local %struct.mgmt_rp_read_local_oob_ext_data* @kmalloc(i32, i32) #1

declare dso_local i64 @eir_append_data(i32, i64, i32, i64*, i32) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @mgmt_cmd_complete(i32, i32, i32, i64, %struct.mgmt_rp_read_local_oob_ext_data*, i32) #1

declare dso_local i32 @hci_sock_set_flag(i32, i32) #1

declare dso_local i32 @mgmt_limited_event(i32, %struct.hci_dev*, %struct.mgmt_rp_read_local_oob_ext_data*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.mgmt_rp_read_local_oob_ext_data*) #1

declare dso_local i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
