; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_rf_discover_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_rf_discover_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32 }
%struct.nci_rf_discover_param = type { i32, i32 }
%struct.nci_rf_disc_cmd = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@NCI_MAX_NUM_RF_CONFIGS = common dso_local global i32 0, align 4
@NFC_PROTO_JEWEL_MASK = common dso_local global i32 0, align 4
@NFC_PROTO_MIFARE_MASK = common dso_local global i32 0, align 4
@NFC_PROTO_ISO14443_MASK = common dso_local global i32 0, align 4
@NFC_PROTO_NFC_DEP_MASK = common dso_local global i32 0, align 4
@NCI_NFC_A_PASSIVE_POLL_MODE = common dso_local global i32 0, align 4
@NFC_PROTO_ISO14443_B_MASK = common dso_local global i32 0, align 4
@NCI_NFC_B_PASSIVE_POLL_MODE = common dso_local global i32 0, align 4
@NFC_PROTO_FELICA_MASK = common dso_local global i32 0, align 4
@NCI_NFC_F_PASSIVE_POLL_MODE = common dso_local global i32 0, align 4
@NFC_PROTO_ISO15693_MASK = common dso_local global i32 0, align 4
@NCI_NFC_V_PASSIVE_POLL_MODE = common dso_local global i32 0, align 4
@NCI_NFC_A_PASSIVE_LISTEN_MODE = common dso_local global i32 0, align 4
@NCI_NFC_F_PASSIVE_LISTEN_MODE = common dso_local global i32 0, align 4
@NCI_OP_RF_DISCOVER_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nci_dev*, i64)* @nci_rf_discover_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nci_rf_discover_req(%struct.nci_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.nci_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.nci_rf_discover_param*, align 8
  %6 = alloca %struct.nci_rf_disc_cmd, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = inttoptr i64 %7 to %struct.nci_rf_discover_param*
  store %struct.nci_rf_discover_param* %8, %struct.nci_rf_discover_param** %5, align 8
  %9 = getelementptr inbounds %struct.nci_rf_disc_cmd, %struct.nci_rf_disc_cmd* %6, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = getelementptr inbounds %struct.nci_rf_disc_cmd, %struct.nci_rf_disc_cmd* %6, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @NCI_MAX_NUM_RF_CONFIGS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %61

14:                                               ; preds = %2
  %15 = load %struct.nci_rf_discover_param*, %struct.nci_rf_discover_param** %5, align 8
  %16 = getelementptr inbounds %struct.nci_rf_discover_param, %struct.nci_rf_discover_param* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @NFC_PROTO_JEWEL_MASK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %42, label %21

21:                                               ; preds = %14
  %22 = load %struct.nci_rf_discover_param*, %struct.nci_rf_discover_param** %5, align 8
  %23 = getelementptr inbounds %struct.nci_rf_discover_param, %struct.nci_rf_discover_param* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @NFC_PROTO_MIFARE_MASK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %21
  %29 = load %struct.nci_rf_discover_param*, %struct.nci_rf_discover_param** %5, align 8
  %30 = getelementptr inbounds %struct.nci_rf_discover_param, %struct.nci_rf_discover_param* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @NFC_PROTO_ISO14443_MASK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %28
  %36 = load %struct.nci_rf_discover_param*, %struct.nci_rf_discover_param** %5, align 8
  %37 = getelementptr inbounds %struct.nci_rf_discover_param, %struct.nci_rf_discover_param* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @NFC_PROTO_NFC_DEP_MASK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %35, %28, %21, %14
  %43 = load i32, i32* @NCI_NFC_A_PASSIVE_POLL_MODE, align 4
  %44 = getelementptr inbounds %struct.nci_rf_disc_cmd, %struct.nci_rf_disc_cmd* %6, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.nci_rf_disc_cmd, %struct.nci_rf_disc_cmd* %6, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32 %43, i32* %50, align 4
  %51 = getelementptr inbounds %struct.nci_rf_disc_cmd, %struct.nci_rf_disc_cmd* %6, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.nci_rf_disc_cmd, %struct.nci_rf_disc_cmd* %6, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  %58 = getelementptr inbounds %struct.nci_rf_disc_cmd, %struct.nci_rf_disc_cmd* %6, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %42, %35, %2
  %62 = getelementptr inbounds %struct.nci_rf_disc_cmd, %struct.nci_rf_disc_cmd* %6, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @NCI_MAX_NUM_RF_CONFIGS, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %92

66:                                               ; preds = %61
  %67 = load %struct.nci_rf_discover_param*, %struct.nci_rf_discover_param** %5, align 8
  %68 = getelementptr inbounds %struct.nci_rf_discover_param, %struct.nci_rf_discover_param* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @NFC_PROTO_ISO14443_B_MASK, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %92

73:                                               ; preds = %66
  %74 = load i32, i32* @NCI_NFC_B_PASSIVE_POLL_MODE, align 4
  %75 = getelementptr inbounds %struct.nci_rf_disc_cmd, %struct.nci_rf_disc_cmd* %6, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.nci_rf_disc_cmd, %struct.nci_rf_disc_cmd* %6, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i32 %74, i32* %81, align 4
  %82 = getelementptr inbounds %struct.nci_rf_disc_cmd, %struct.nci_rf_disc_cmd* %6, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.nci_rf_disc_cmd, %struct.nci_rf_disc_cmd* %6, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  store i32 1, i32* %88, align 4
  %89 = getelementptr inbounds %struct.nci_rf_disc_cmd, %struct.nci_rf_disc_cmd* %6, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %73, %66, %61
  %93 = getelementptr inbounds %struct.nci_rf_disc_cmd, %struct.nci_rf_disc_cmd* %6, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @NCI_MAX_NUM_RF_CONFIGS, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %130

97:                                               ; preds = %92
  %98 = load %struct.nci_rf_discover_param*, %struct.nci_rf_discover_param** %5, align 8
  %99 = getelementptr inbounds %struct.nci_rf_discover_param, %struct.nci_rf_discover_param* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @NFC_PROTO_FELICA_MASK, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %111, label %104

104:                                              ; preds = %97
  %105 = load %struct.nci_rf_discover_param*, %struct.nci_rf_discover_param** %5, align 8
  %106 = getelementptr inbounds %struct.nci_rf_discover_param, %struct.nci_rf_discover_param* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @NFC_PROTO_NFC_DEP_MASK, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %130

111:                                              ; preds = %104, %97
  %112 = load i32, i32* @NCI_NFC_F_PASSIVE_POLL_MODE, align 4
  %113 = getelementptr inbounds %struct.nci_rf_disc_cmd, %struct.nci_rf_disc_cmd* %6, i32 0, i32 1
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.nci_rf_disc_cmd, %struct.nci_rf_disc_cmd* %6, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  store i32 %112, i32* %119, align 4
  %120 = getelementptr inbounds %struct.nci_rf_disc_cmd, %struct.nci_rf_disc_cmd* %6, i32 0, i32 1
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.nci_rf_disc_cmd, %struct.nci_rf_disc_cmd* %6, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  store i32 1, i32* %126, align 4
  %127 = getelementptr inbounds %struct.nci_rf_disc_cmd, %struct.nci_rf_disc_cmd* %6, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %111, %104, %92
  %131 = getelementptr inbounds %struct.nci_rf_disc_cmd, %struct.nci_rf_disc_cmd* %6, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @NCI_MAX_NUM_RF_CONFIGS, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %161

135:                                              ; preds = %130
  %136 = load %struct.nci_rf_discover_param*, %struct.nci_rf_discover_param** %5, align 8
  %137 = getelementptr inbounds %struct.nci_rf_discover_param, %struct.nci_rf_discover_param* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @NFC_PROTO_ISO15693_MASK, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %161

142:                                              ; preds = %135
  %143 = load i32, i32* @NCI_NFC_V_PASSIVE_POLL_MODE, align 4
  %144 = getelementptr inbounds %struct.nci_rf_disc_cmd, %struct.nci_rf_disc_cmd* %6, i32 0, i32 1
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.nci_rf_disc_cmd, %struct.nci_rf_disc_cmd* %6, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 1
  store i32 %143, i32* %150, align 4
  %151 = getelementptr inbounds %struct.nci_rf_disc_cmd, %struct.nci_rf_disc_cmd* %6, i32 0, i32 1
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.nci_rf_disc_cmd, %struct.nci_rf_disc_cmd* %6, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  store i32 1, i32* %157, align 4
  %158 = getelementptr inbounds %struct.nci_rf_disc_cmd, %struct.nci_rf_disc_cmd* %6, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 8
  br label %161

161:                                              ; preds = %142, %135, %130
  %162 = getelementptr inbounds %struct.nci_rf_disc_cmd, %struct.nci_rf_disc_cmd* %6, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @NCI_MAX_NUM_RF_CONFIGS, align 4
  %165 = sub nsw i32 %164, 1
  %166 = icmp slt i32 %163, %165
  br i1 %166, label %167, label %211

167:                                              ; preds = %161
  %168 = load %struct.nci_rf_discover_param*, %struct.nci_rf_discover_param** %5, align 8
  %169 = getelementptr inbounds %struct.nci_rf_discover_param, %struct.nci_rf_discover_param* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @NFC_PROTO_NFC_DEP_MASK, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %211

174:                                              ; preds = %167
  %175 = load i32, i32* @NCI_NFC_A_PASSIVE_LISTEN_MODE, align 4
  %176 = getelementptr inbounds %struct.nci_rf_disc_cmd, %struct.nci_rf_disc_cmd* %6, i32 0, i32 1
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = getelementptr inbounds %struct.nci_rf_disc_cmd, %struct.nci_rf_disc_cmd* %6, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 1
  store i32 %175, i32* %182, align 4
  %183 = getelementptr inbounds %struct.nci_rf_disc_cmd, %struct.nci_rf_disc_cmd* %6, i32 0, i32 1
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** %183, align 8
  %185 = getelementptr inbounds %struct.nci_rf_disc_cmd, %struct.nci_rf_disc_cmd* %6, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 0
  store i32 1, i32* %189, align 4
  %190 = getelementptr inbounds %struct.nci_rf_disc_cmd, %struct.nci_rf_disc_cmd* %6, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 8
  %193 = load i32, i32* @NCI_NFC_F_PASSIVE_LISTEN_MODE, align 4
  %194 = getelementptr inbounds %struct.nci_rf_disc_cmd, %struct.nci_rf_disc_cmd* %6, i32 0, i32 1
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** %194, align 8
  %196 = getelementptr inbounds %struct.nci_rf_disc_cmd, %struct.nci_rf_disc_cmd* %6, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 1
  store i32 %193, i32* %200, align 4
  %201 = getelementptr inbounds %struct.nci_rf_disc_cmd, %struct.nci_rf_disc_cmd* %6, i32 0, i32 1
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** %201, align 8
  %203 = getelementptr inbounds %struct.nci_rf_disc_cmd, %struct.nci_rf_disc_cmd* %6, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 0
  store i32 1, i32* %207, align 4
  %208 = getelementptr inbounds %struct.nci_rf_disc_cmd, %struct.nci_rf_disc_cmd* %6, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %208, align 8
  br label %211

211:                                              ; preds = %174, %167, %161
  %212 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %213 = load i32, i32* @NCI_OP_RF_DISCOVER_CMD, align 4
  %214 = getelementptr inbounds %struct.nci_rf_disc_cmd, %struct.nci_rf_disc_cmd* %6, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = sext i32 %215 to i64
  %217 = mul i64 %216, 4
  %218 = add i64 1, %217
  %219 = trunc i64 %218 to i32
  %220 = call i32 @nci_send_cmd(%struct.nci_dev* %212, i32 %213, i32 %219, %struct.nci_rf_disc_cmd* %6)
  ret void
}

declare dso_local i32 @nci_send_cmd(%struct.nci_dev*, i32, i32, %struct.nci_rf_disc_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
