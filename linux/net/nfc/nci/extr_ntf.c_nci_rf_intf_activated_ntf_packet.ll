; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_ntf.c_nci_rf_intf_activated_ntf_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_ntf.c_nci_rf_intf_activated_ntf_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32, i32, i32, i32, %struct.nci_conn_info* }
%struct.nci_conn_info = type { i64, i64, i32 }
%struct.sk_buff = type { i32* }
%struct.nci_rf_intf_activated_ntf = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@NCI_STATUS_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"rf_discovery_id %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"rf_interface 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"rf_protocol 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"activation_rf_tech_and_mode 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"max_data_pkt_payload_size 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"initial_num_credits 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"rf_tech_specific_params_len %d\0A\00", align 1
@NCI_RF_INTERFACE_NFCEE_DIRECT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [46 x i8] c"unsupported activation_rf_tech_and_mode 0x%x\0A\00", align 1
@NCI_STATUS_RF_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"data_exch_rf_tech_and_mode 0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"data_exch_tx_bit_rate 0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"data_exch_rx_bit_rate 0x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"activation_params_len %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"unsupported rf_interface 0x%x\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"unable to store general bytes\0A\00", align 1
@NCI_RF_TECH_MODE_LISTEN_MASK = common dso_local global i32 0, align 4
@NCI_DISCOVERY = common dso_local global i64 0, align 8
@NCI_POLL_ACTIVE = common dso_local global i64 0, align 8
@NCI_LISTEN_ACTIVE = common dso_local global i64 0, align 8
@NCI_RF_PROTOCOL_NFC_DEP = common dso_local global i64 0, align 8
@NFC_PROTO_NFC_DEP_MASK = common dso_local global i32 0, align 4
@NFC_COMM_PASSIVE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [36 x i8] c"error when signaling tm activation\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nci_dev*, %struct.sk_buff*)* @nci_rf_intf_activated_ntf_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nci_rf_intf_activated_ntf_packet(%struct.nci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nci_conn_info*, align 8
  %6 = alloca %struct.nci_rf_intf_activated_ntf, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.nci_dev* %0, %struct.nci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %7, align 8
  %12 = load i32, i32* @NCI_STATUS_OK, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = getelementptr inbounds i32, i32* %13, i32 1
  store i32* %14, i32** %7, align 8
  %15 = load i32, i32* %13, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %6, i32 0, i32 0
  store i64 %16, i64* %17, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %7, align 8
  %20 = load i32, i32* %18, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %6, i32 0, i32 1
  store i64 %21, i64* %22, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %7, align 8
  %25 = load i32, i32* %23, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %6, i32 0, i32 2
  store i64 %26, i64* %27, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %7, align 8
  %30 = load i32, i32* %28, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %6, i32 0, i32 3
  store i64 %31, i64* %32, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %7, align 8
  %35 = load i32, i32* %33, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %6, i32 0, i32 4
  store i64 %36, i64* %37, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %7, align 8
  %40 = load i32, i32* %38, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %6, i32 0, i32 5
  store i64 %41, i64* %42, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %7, align 8
  %45 = load i32, i32* %43, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %6, i32 0, i32 6
  store i64 %46, i64* %47, align 8
  %48 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %6, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %49)
  %51 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %6, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %52)
  %54 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %6, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %55)
  %57 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %6, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %58)
  %60 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %6, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 %61)
  %63 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %6, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64 %64)
  %66 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %6, i32 0, i32 6
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i64 %67)
  %69 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %6, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @NCI_RF_INTERFACE_NFCEE_DIRECT, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %2
  br label %247

74:                                               ; preds = %2
  %75 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %6, i32 0, i32 6
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %118

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %6, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  switch i64 %80, label %112 [
    i64 135, label %81
    i64 134, label %87
    i64 132, label %93
    i64 131, label %99
    i64 136, label %105
    i64 133, label %106
  ]

81:                                               ; preds = %78
  %82 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %83 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %6, i32 0, i32 11
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 4
  %85 = load i32*, i32** %7, align 8
  %86 = call i32* @nci_extract_rf_params_nfca_passive_poll(%struct.nci_dev* %82, i32* %84, i32* %85)
  store i32* %86, i32** %7, align 8
  br label %117

87:                                               ; preds = %78
  %88 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %89 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %6, i32 0, i32 11
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 3
  %91 = load i32*, i32** %7, align 8
  %92 = call i32* @nci_extract_rf_params_nfcb_passive_poll(%struct.nci_dev* %88, i32* %90, i32* %91)
  store i32* %92, i32** %7, align 8
  br label %117

93:                                               ; preds = %78
  %94 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %95 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %6, i32 0, i32 11
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  %97 = load i32*, i32** %7, align 8
  %98 = call i32* @nci_extract_rf_params_nfcf_passive_poll(%struct.nci_dev* %94, i32* %96, i32* %97)
  store i32* %98, i32** %7, align 8
  br label %117

99:                                               ; preds = %78
  %100 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %101 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %6, i32 0, i32 11
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i32*, i32** %7, align 8
  %104 = call i32* @nci_extract_rf_params_nfcv_passive_poll(%struct.nci_dev* %100, i32* %102, i32* %103)
  store i32* %104, i32** %7, align 8
  br label %117

105:                                              ; preds = %78
  br label %117

106:                                              ; preds = %78
  %107 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %108 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %6, i32 0, i32 11
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32*, i32** %7, align 8
  %111 = call i32* @nci_extract_rf_params_nfcf_passive_listen(%struct.nci_dev* %107, i32* %109, i32* %110)
  store i32* %111, i32** %7, align 8
  br label %117

112:                                              ; preds = %78
  %113 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %6, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i64 %114)
  %116 = load i32, i32* @NCI_STATUS_RF_PROTOCOL_ERROR, align 4
  store i32 %116, i32* %8, align 4
  br label %173

117:                                              ; preds = %106, %105, %99, %93, %87, %81
  br label %118

118:                                              ; preds = %117, %74
  %119 = load i32*, i32** %7, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %7, align 8
  %121 = load i32, i32* %119, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %6, i32 0, i32 7
  store i64 %122, i64* %123, align 8
  %124 = load i32*, i32** %7, align 8
  %125 = getelementptr inbounds i32, i32* %124, i32 1
  store i32* %125, i32** %7, align 8
  %126 = load i32, i32* %124, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %6, i32 0, i32 8
  store i64 %127, i64* %128, align 8
  %129 = load i32*, i32** %7, align 8
  %130 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %130, i32** %7, align 8
  %131 = load i32, i32* %129, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %6, i32 0, i32 9
  store i64 %132, i64* %133, align 8
  %134 = load i32*, i32** %7, align 8
  %135 = getelementptr inbounds i32, i32* %134, i32 1
  store i32* %135, i32** %7, align 8
  %136 = load i32, i32* %134, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %6, i32 0, i32 10
  store i64 %137, i64* %138, align 8
  %139 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %6, i32 0, i32 7
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i64 %140)
  %142 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %6, i32 0, i32 8
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i64 %143)
  %145 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %6, i32 0, i32 9
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i64 %146)
  %148 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %6, i32 0, i32 10
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i64 %149)
  %151 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %6, i32 0, i32 10
  %152 = load i64, i64* %151, align 8
  %153 = icmp sgt i64 %152, 0
  br i1 %153, label %154, label %172

154:                                              ; preds = %118
  %155 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %6, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  switch i64 %156, label %166 [
    i64 129, label %157
    i64 128, label %161
    i64 130, label %165
  ]

157:                                              ; preds = %154
  %158 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %159 = load i32*, i32** %7, align 8
  %160 = call i32 @nci_extract_activation_params_iso_dep(%struct.nci_dev* %158, %struct.nci_rf_intf_activated_ntf* %6, i32* %159)
  store i32 %160, i32* %8, align 4
  br label %171

161:                                              ; preds = %154
  %162 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %163 = load i32*, i32** %7, align 8
  %164 = call i32 @nci_extract_activation_params_nfc_dep(%struct.nci_dev* %162, %struct.nci_rf_intf_activated_ntf* %6, i32* %163)
  store i32 %164, i32* %8, align 4
  br label %171

165:                                              ; preds = %154
  br label %171

166:                                              ; preds = %154
  %167 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %6, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i64 %168)
  %170 = load i32, i32* @NCI_STATUS_RF_PROTOCOL_ERROR, align 4
  store i32 %170, i32* %8, align 4
  br label %171

171:                                              ; preds = %166, %165, %161, %157
  br label %172

172:                                              ; preds = %171, %118
  br label %173

173:                                              ; preds = %172, %112
  %174 = load i32, i32* %8, align 4
  %175 = load i32, i32* @NCI_STATUS_OK, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %212

177:                                              ; preds = %173
  %178 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %179 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %178, i32 0, i32 4
  %180 = load %struct.nci_conn_info*, %struct.nci_conn_info** %179, align 8
  store %struct.nci_conn_info* %180, %struct.nci_conn_info** %5, align 8
  %181 = load %struct.nci_conn_info*, %struct.nci_conn_info** %5, align 8
  %182 = icmp ne %struct.nci_conn_info* %181, null
  br i1 %182, label %184, label %183

183:                                              ; preds = %177
  br label %280

184:                                              ; preds = %177
  %185 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %6, i32 0, i32 4
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.nci_conn_info*, %struct.nci_conn_info** %5, align 8
  %188 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %187, i32 0, i32 0
  store i64 %186, i64* %188, align 8
  %189 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %6, i32 0, i32 5
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.nci_conn_info*, %struct.nci_conn_info** %5, align 8
  %192 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %191, i32 0, i32 1
  store i64 %190, i64* %192, align 8
  %193 = load %struct.nci_conn_info*, %struct.nci_conn_info** %5, align 8
  %194 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %193, i32 0, i32 2
  %195 = load %struct.nci_conn_info*, %struct.nci_conn_info** %5, align 8
  %196 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @atomic_set(i32* %194, i64 %197)
  %199 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %6, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = icmp eq i64 %200, 128
  br i1 %201, label %202, label %211

202:                                              ; preds = %184
  %203 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %204 = call i32 @nci_store_general_bytes_nfc_dep(%struct.nci_dev* %203, %struct.nci_rf_intf_activated_ntf* %6)
  store i32 %204, i32* %8, align 4
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* @NCI_STATUS_OK, align 4
  %207 = icmp ne i32 %205, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %202
  %209 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  br label %210

210:                                              ; preds = %208, %202
  br label %211

211:                                              ; preds = %210, %184
  br label %212

212:                                              ; preds = %211, %173
  %213 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %6, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = load i32, i32* @NCI_RF_TECH_MODE_LISTEN_MASK, align 4
  %216 = sext i32 %215 to i64
  %217 = and i64 %214, %216
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %246, label %219

219:                                              ; preds = %212
  %220 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %221 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %220, i32 0, i32 3
  %222 = call i64 @atomic_read(i32* %221)
  %223 = load i64, i64* @NCI_DISCOVERY, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %237

225:                                              ; preds = %219
  %226 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %227 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %226, i32 0, i32 3
  %228 = load i64, i64* @NCI_POLL_ACTIVE, align 8
  %229 = call i32 @atomic_set(i32* %227, i64 %228)
  %230 = load i32, i32* %8, align 4
  %231 = load i32, i32* @NCI_STATUS_OK, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %236

233:                                              ; preds = %225
  %234 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %235 = call i32 @nci_target_auto_activated(%struct.nci_dev* %234, %struct.nci_rf_intf_activated_ntf* %6)
  br label %236

236:                                              ; preds = %233, %225
  br label %245

237:                                              ; preds = %219
  %238 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %239 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %238, i32 0, i32 3
  %240 = load i64, i64* @NCI_POLL_ACTIVE, align 8
  %241 = call i32 @atomic_set(i32* %239, i64 %240)
  %242 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %243 = load i32, i32* %8, align 4
  %244 = call i32 @nci_req_complete(%struct.nci_dev* %242, i32 %243)
  br label %245

245:                                              ; preds = %237, %236
  br label %280

246:                                              ; preds = %212
  br label %247

247:                                              ; preds = %246, %73
  %248 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %249 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %248, i32 0, i32 3
  %250 = load i64, i64* @NCI_LISTEN_ACTIVE, align 8
  %251 = call i32 @atomic_set(i32* %249, i64 %250)
  %252 = load i32, i32* %8, align 4
  %253 = load i32, i32* @NCI_STATUS_OK, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %279

255:                                              ; preds = %247
  %256 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, %struct.nci_rf_intf_activated_ntf* %6, i32 0, i32 2
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @NCI_RF_PROTOCOL_NFC_DEP, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %279

260:                                              ; preds = %255
  %261 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %262 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @NFC_PROTO_NFC_DEP_MASK, align 4
  %265 = load i32, i32* @NFC_COMM_PASSIVE, align 4
  %266 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %267 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %270 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = call i32 @nfc_tm_activated(i32 %263, i32 %264, i32 %265, i32 %268, i32 %271)
  store i32 %272, i32* %8, align 4
  %273 = load i32, i32* %8, align 4
  %274 = load i32, i32* @NCI_STATUS_OK, align 4
  %275 = icmp ne i32 %273, %274
  br i1 %275, label %276, label %278

276:                                              ; preds = %260
  %277 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0))
  br label %278

278:                                              ; preds = %276, %260
  br label %279

279:                                              ; preds = %278, %255, %247
  br label %280

280:                                              ; preds = %183, %279, %245
  ret void
}

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32* @nci_extract_rf_params_nfca_passive_poll(%struct.nci_dev*, i32*, i32*) #1

declare dso_local i32* @nci_extract_rf_params_nfcb_passive_poll(%struct.nci_dev*, i32*, i32*) #1

declare dso_local i32* @nci_extract_rf_params_nfcf_passive_poll(%struct.nci_dev*, i32*, i32*) #1

declare dso_local i32* @nci_extract_rf_params_nfcv_passive_poll(%struct.nci_dev*, i32*, i32*) #1

declare dso_local i32* @nci_extract_rf_params_nfcf_passive_listen(%struct.nci_dev*, i32*, i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @nci_extract_activation_params_iso_dep(%struct.nci_dev*, %struct.nci_rf_intf_activated_ntf*, i32*) #1

declare dso_local i32 @nci_extract_activation_params_nfc_dep(%struct.nci_dev*, %struct.nci_rf_intf_activated_ntf*, i32*) #1

declare dso_local i32 @atomic_set(i32*, i64) #1

declare dso_local i32 @nci_store_general_bytes_nfc_dep(%struct.nci_dev*, %struct.nci_rf_intf_activated_ntf*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @nci_target_auto_activated(%struct.nci_dev*, %struct.nci_rf_intf_activated_ntf*) #1

declare dso_local i32 @nci_req_complete(%struct.nci_dev*, i32) #1

declare dso_local i32 @nfc_tm_activated(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
