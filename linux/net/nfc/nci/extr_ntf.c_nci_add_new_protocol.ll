; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_ntf.c_nci_add_new_protocol.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_ntf.c_nci_add_new_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32 }
%struct.nfc_target = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rf_tech_specific_params_nfca_poll = type { i32, i32, i32, i32 }
%struct.rf_tech_specific_params_nfcb_poll = type { i32, i32 }
%struct.rf_tech_specific_params_nfcf_poll = type { i32, i32 }
%struct.rf_tech_specific_params_nfcv_poll = type { i32, i32 }

@NCI_RF_PROTOCOL_T1T = common dso_local global i64 0, align 8
@NFC_PROTO_JEWEL_MASK = common dso_local global i32 0, align 4
@NCI_RF_PROTOCOL_T2T = common dso_local global i64 0, align 8
@NFC_PROTO_MIFARE_MASK = common dso_local global i32 0, align 4
@NCI_RF_PROTOCOL_ISO_DEP = common dso_local global i64 0, align 8
@NCI_NFC_A_PASSIVE_POLL_MODE = common dso_local global i64 0, align 8
@NFC_PROTO_ISO14443_MASK = common dso_local global i32 0, align 4
@NFC_PROTO_ISO14443_B_MASK = common dso_local global i32 0, align 4
@NCI_RF_PROTOCOL_T3T = common dso_local global i64 0, align 8
@NFC_PROTO_FELICA_MASK = common dso_local global i32 0, align 4
@NCI_RF_PROTOCOL_NFC_DEP = common dso_local global i64 0, align 8
@NFC_PROTO_NFC_DEP_MASK = common dso_local global i32 0, align 4
@NCI_RF_PROTOCOL_T5T = common dso_local global i64 0, align 8
@NFC_PROTO_ISO15693_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"the target found does not have the desired protocol\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@NCI_NFC_B_PASSIVE_POLL_MODE = common dso_local global i64 0, align 8
@NCI_NFC_F_PASSIVE_POLL_MODE = common dso_local global i64 0, align 8
@NCI_NFC_V_PASSIVE_POLL_MODE = common dso_local global i64 0, align 8
@NFC_ISO15693_UID_MAXSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"unsupported rf_tech_and_mode 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"protocol 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nci_dev*, %struct.nfc_target*, i64, i64, i8*)* @nci_add_new_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nci_add_new_protocol(%struct.nci_dev* %0, %struct.nfc_target* %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nci_dev*, align 8
  %8 = alloca %struct.nfc_target*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.rf_tech_specific_params_nfca_poll*, align 8
  %13 = alloca %struct.rf_tech_specific_params_nfcb_poll*, align 8
  %14 = alloca %struct.rf_tech_specific_params_nfcf_poll*, align 8
  %15 = alloca %struct.rf_tech_specific_params_nfcv_poll*, align 8
  %16 = alloca i32, align 4
  store %struct.nci_dev* %0, %struct.nci_dev** %7, align 8
  store %struct.nfc_target* %1, %struct.nfc_target** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @NCI_RF_PROTOCOL_T1T, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @NFC_PROTO_JEWEL_MASK, align 4
  store i32 %21, i32* %16, align 4
  br label %68

22:                                               ; preds = %5
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @NCI_RF_PROTOCOL_T2T, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @NFC_PROTO_MIFARE_MASK, align 4
  store i32 %27, i32* %16, align 4
  br label %67

28:                                               ; preds = %22
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @NCI_RF_PROTOCOL_ISO_DEP, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @NCI_NFC_A_PASSIVE_POLL_MODE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @NFC_PROTO_ISO14443_MASK, align 4
  store i32 %37, i32* %16, align 4
  br label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @NFC_PROTO_ISO14443_B_MASK, align 4
  store i32 %39, i32* %16, align 4
  br label %40

40:                                               ; preds = %38, %36
  br label %66

41:                                               ; preds = %28
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* @NCI_RF_PROTOCOL_T3T, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @NFC_PROTO_FELICA_MASK, align 4
  store i32 %46, i32* %16, align 4
  br label %65

47:                                               ; preds = %41
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* @NCI_RF_PROTOCOL_NFC_DEP, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @NFC_PROTO_NFC_DEP_MASK, align 4
  store i32 %52, i32* %16, align 4
  br label %64

53:                                               ; preds = %47
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* @NCI_RF_PROTOCOL_T5T, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @NFC_PROTO_ISO15693_MASK, align 4
  store i32 %58, i32* %16, align 4
  br label %63

59:                                               ; preds = %53
  %60 = load %struct.nci_dev*, %struct.nci_dev** %7, align 8
  %61 = load i64, i64* %9, align 8
  %62 = call i32 @nci_get_prop_rf_protocol(%struct.nci_dev* %60, i64 %61)
  store i32 %62, i32* %16, align 4
  br label %63

63:                                               ; preds = %59, %57
  br label %64

64:                                               ; preds = %63, %51
  br label %65

65:                                               ; preds = %64, %45
  br label %66

66:                                               ; preds = %65, %40
  br label %67

67:                                               ; preds = %66, %26
  br label %68

68:                                               ; preds = %67, %20
  %69 = load i32, i32* %16, align 4
  %70 = load %struct.nci_dev*, %struct.nci_dev** %7, align 8
  %71 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %69, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %68
  %76 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* @EPROTO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %6, align 4
  br label %211

79:                                               ; preds = %68
  %80 = load i64, i64* %10, align 8
  %81 = load i64, i64* @NCI_NFC_A_PASSIVE_POLL_MODE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %117

83:                                               ; preds = %79
  %84 = load i8*, i8** %11, align 8
  %85 = bitcast i8* %84 to %struct.rf_tech_specific_params_nfca_poll*
  store %struct.rf_tech_specific_params_nfca_poll* %85, %struct.rf_tech_specific_params_nfca_poll** %12, align 8
  %86 = load %struct.rf_tech_specific_params_nfca_poll*, %struct.rf_tech_specific_params_nfca_poll** %12, align 8
  %87 = getelementptr inbounds %struct.rf_tech_specific_params_nfca_poll, %struct.rf_tech_specific_params_nfca_poll* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %90 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %89, i32 0, i32 11
  store i32 %88, i32* %90, align 4
  %91 = load %struct.rf_tech_specific_params_nfca_poll*, %struct.rf_tech_specific_params_nfca_poll** %12, align 8
  %92 = getelementptr inbounds %struct.rf_tech_specific_params_nfca_poll, %struct.rf_tech_specific_params_nfca_poll* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %95 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %94, i32 0, i32 10
  store i32 %93, i32* %95, align 4
  %96 = load %struct.rf_tech_specific_params_nfca_poll*, %struct.rf_tech_specific_params_nfca_poll** %12, align 8
  %97 = getelementptr inbounds %struct.rf_tech_specific_params_nfca_poll, %struct.rf_tech_specific_params_nfca_poll* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %100 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %99, i32 0, i32 8
  store i32 %98, i32* %100, align 4
  %101 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %102 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %101, i32 0, i32 8
  %103 = load i32, i32* %102, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %83
  %106 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %107 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %106, i32 0, i32 9
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.rf_tech_specific_params_nfca_poll*, %struct.rf_tech_specific_params_nfca_poll** %12, align 8
  %110 = getelementptr inbounds %struct.rf_tech_specific_params_nfca_poll, %struct.rf_tech_specific_params_nfca_poll* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %113 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %112, i32 0, i32 8
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @memcpy(i32 %108, i32 %111, i32 %114)
  br label %116

116:                                              ; preds = %105, %83
  br label %203

117:                                              ; preds = %79
  %118 = load i64, i64* %10, align 8
  %119 = load i64, i64* @NCI_NFC_B_PASSIVE_POLL_MODE, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %145

121:                                              ; preds = %117
  %122 = load i8*, i8** %11, align 8
  %123 = bitcast i8* %122 to %struct.rf_tech_specific_params_nfcb_poll*
  store %struct.rf_tech_specific_params_nfcb_poll* %123, %struct.rf_tech_specific_params_nfcb_poll** %13, align 8
  %124 = load %struct.rf_tech_specific_params_nfcb_poll*, %struct.rf_tech_specific_params_nfcb_poll** %13, align 8
  %125 = getelementptr inbounds %struct.rf_tech_specific_params_nfcb_poll, %struct.rf_tech_specific_params_nfcb_poll* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %128 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %127, i32 0, i32 6
  store i32 %126, i32* %128, align 4
  %129 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %130 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %121
  %134 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %135 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %134, i32 0, i32 7
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.rf_tech_specific_params_nfcb_poll*, %struct.rf_tech_specific_params_nfcb_poll** %13, align 8
  %138 = getelementptr inbounds %struct.rf_tech_specific_params_nfcb_poll, %struct.rf_tech_specific_params_nfcb_poll* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %141 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @memcpy(i32 %136, i32 %139, i32 %142)
  br label %144

144:                                              ; preds = %133, %121
  br label %202

145:                                              ; preds = %117
  %146 = load i64, i64* %10, align 8
  %147 = load i64, i64* @NCI_NFC_F_PASSIVE_POLL_MODE, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %173

149:                                              ; preds = %145
  %150 = load i8*, i8** %11, align 8
  %151 = bitcast i8* %150 to %struct.rf_tech_specific_params_nfcf_poll*
  store %struct.rf_tech_specific_params_nfcf_poll* %151, %struct.rf_tech_specific_params_nfcf_poll** %14, align 8
  %152 = load %struct.rf_tech_specific_params_nfcf_poll*, %struct.rf_tech_specific_params_nfcf_poll** %14, align 8
  %153 = getelementptr inbounds %struct.rf_tech_specific_params_nfcf_poll, %struct.rf_tech_specific_params_nfcf_poll* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %156 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %155, i32 0, i32 4
  store i32 %154, i32* %156, align 4
  %157 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %158 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %172

161:                                              ; preds = %149
  %162 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %163 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.rf_tech_specific_params_nfcf_poll*, %struct.rf_tech_specific_params_nfcf_poll** %14, align 8
  %166 = getelementptr inbounds %struct.rf_tech_specific_params_nfcf_poll, %struct.rf_tech_specific_params_nfcf_poll* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %169 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @memcpy(i32 %164, i32 %167, i32 %170)
  br label %172

172:                                              ; preds = %161, %149
  br label %201

173:                                              ; preds = %145
  %174 = load i64, i64* %10, align 8
  %175 = load i64, i64* @NCI_NFC_V_PASSIVE_POLL_MODE, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %195

177:                                              ; preds = %173
  %178 = load i8*, i8** %11, align 8
  %179 = bitcast i8* %178 to %struct.rf_tech_specific_params_nfcv_poll*
  store %struct.rf_tech_specific_params_nfcv_poll* %179, %struct.rf_tech_specific_params_nfcv_poll** %15, align 8
  %180 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %181 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %180, i32 0, i32 0
  store i32 1, i32* %181, align 4
  %182 = load %struct.rf_tech_specific_params_nfcv_poll*, %struct.rf_tech_specific_params_nfcv_poll** %15, align 8
  %183 = getelementptr inbounds %struct.rf_tech_specific_params_nfcv_poll, %struct.rf_tech_specific_params_nfcv_poll* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %186 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %185, i32 0, i32 3
  store i32 %184, i32* %186, align 4
  %187 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %188 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.rf_tech_specific_params_nfcv_poll*, %struct.rf_tech_specific_params_nfcv_poll** %15, align 8
  %191 = getelementptr inbounds %struct.rf_tech_specific_params_nfcv_poll, %struct.rf_tech_specific_params_nfcv_poll* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @NFC_ISO15693_UID_MAXSIZE, align 4
  %194 = call i32 @memcpy(i32 %189, i32 %192, i32 %193)
  br label %200

195:                                              ; preds = %173
  %196 = load i64, i64* %10, align 8
  %197 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %196)
  %198 = load i32, i32* @EPROTO, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %6, align 4
  br label %211

200:                                              ; preds = %177
  br label %201

201:                                              ; preds = %200, %172
  br label %202

202:                                              ; preds = %201, %144
  br label %203

203:                                              ; preds = %202, %116
  %204 = load i32, i32* %16, align 4
  %205 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %206 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = or i32 %207, %204
  store i32 %208, i32* %206, align 4
  %209 = load i32, i32* %16, align 4
  %210 = call i32 @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %209)
  store i32 0, i32* %6, align 4
  br label %211

211:                                              ; preds = %203, %195, %75
  %212 = load i32, i32* %6, align 4
  ret i32 %212
}

declare dso_local i32 @nci_get_prop_rf_protocol(%struct.nci_dev*, i64) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
