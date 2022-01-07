; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_activate_target.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_activate_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32 }
%struct.nfc_target = type { i64, i32, i32 }
%struct.nci_dev = type { i32, i32, i32, %struct.nfc_target* }
%struct.nci_rf_discover_select_param = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"target_idx %d, protocol 0x%x\0A\00", align 1
@NCI_W4_HOST_SELECT = common dso_local global i64 0, align 8
@NCI_POLL_ACTIVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"there is no available target to activate\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"there is already an active target\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"unable to find the selected target\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"target does not support the requested protocol 0x%x\0A\00", align 1
@NFC_PROTO_JEWEL = common dso_local global i32 0, align 4
@NCI_RF_PROTOCOL_T1T = common dso_local global i32 0, align 4
@NFC_PROTO_MIFARE = common dso_local global i32 0, align 4
@NCI_RF_PROTOCOL_T2T = common dso_local global i32 0, align 4
@NFC_PROTO_FELICA = common dso_local global i32 0, align 4
@NCI_RF_PROTOCOL_T3T = common dso_local global i32 0, align 4
@NFC_PROTO_ISO14443 = common dso_local global i32 0, align 4
@NFC_PROTO_ISO14443_B = common dso_local global i32 0, align 4
@NCI_RF_PROTOCOL_ISO_DEP = common dso_local global i32 0, align 4
@NCI_RF_PROTOCOL_NFC_DEP = common dso_local global i32 0, align 4
@nci_rf_discover_select_req = common dso_local global i32 0, align 4
@NCI_RF_DISC_SELECT_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_dev*, %struct.nfc_target*, i32)* @nci_activate_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nci_activate_target(%struct.nfc_dev* %0, %struct.nfc_target* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfc_dev*, align 8
  %6 = alloca %struct.nfc_target*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nci_dev*, align 8
  %9 = alloca %struct.nci_rf_discover_select_param, align 4
  %10 = alloca %struct.nfc_target*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nfc_dev* %0, %struct.nfc_dev** %5, align 8
  store %struct.nfc_target* %1, %struct.nfc_target** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %14 = call %struct.nci_dev* @nfc_get_drvdata(%struct.nfc_dev* %13)
  store %struct.nci_dev* %14, %struct.nci_dev** %8, align 8
  store %struct.nfc_target* null, %struct.nfc_target** %10, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.nfc_target*, %struct.nfc_target** %6, align 8
  %16 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %17, i32 %18)
  %20 = load %struct.nci_dev*, %struct.nci_dev** %8, align 8
  %21 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %20, i32 0, i32 2
  %22 = call i64 @atomic_read(i32* %21)
  %23 = load i64, i64* @NCI_W4_HOST_SELECT, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %3
  %26 = load %struct.nci_dev*, %struct.nci_dev** %8, align 8
  %27 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %26, i32 0, i32 2
  %28 = call i64 @atomic_read(i32* %27)
  %29 = load i64, i64* @NCI_POLL_ACTIVE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %159

35:                                               ; preds = %25, %3
  %36 = load %struct.nci_dev*, %struct.nci_dev** %8, align 8
  %37 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %159

44:                                               ; preds = %35
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %72, %44
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.nci_dev*, %struct.nci_dev** %8, align 8
  %48 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %75

51:                                               ; preds = %45
  %52 = load %struct.nci_dev*, %struct.nci_dev** %8, align 8
  %53 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %52, i32 0, i32 3
  %54 = load %struct.nfc_target*, %struct.nfc_target** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %54, i64 %56
  %58 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.nfc_target*, %struct.nfc_target** %6, align 8
  %61 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %59, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %51
  %65 = load %struct.nci_dev*, %struct.nci_dev** %8, align 8
  %66 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %65, i32 0, i32 3
  %67 = load %struct.nfc_target*, %struct.nfc_target** %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %67, i64 %69
  store %struct.nfc_target* %70, %struct.nfc_target** %10, align 8
  br label %75

71:                                               ; preds = %51
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  br label %45

75:                                               ; preds = %64, %45
  %76 = load %struct.nfc_target*, %struct.nfc_target** %10, align 8
  %77 = icmp ne %struct.nfc_target* %76, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %159

82:                                               ; preds = %75
  %83 = load %struct.nfc_target*, %struct.nfc_target** %10, align 8
  %84 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = shl i32 1, %86
  %88 = and i32 %85, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %82
  %91 = load i32, i32* %7, align 4
  %92 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %159

95:                                               ; preds = %82
  %96 = load %struct.nci_dev*, %struct.nci_dev** %8, align 8
  %97 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %96, i32 0, i32 2
  %98 = call i64 @atomic_read(i32* %97)
  %99 = load i64, i64* @NCI_W4_HOST_SELECT, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %150

101:                                              ; preds = %95
  %102 = load %struct.nfc_target*, %struct.nfc_target** %10, align 8
  %103 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.nci_rf_discover_select_param, %struct.nci_rf_discover_select_param* %9, i32 0, i32 1
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @NFC_PROTO_JEWEL, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %101
  %110 = load i32, i32* @NCI_RF_PROTOCOL_T1T, align 4
  %111 = getelementptr inbounds %struct.nci_rf_discover_select_param, %struct.nci_rf_discover_select_param* %9, i32 0, i32 0
  store i32 %110, i32* %111, align 4
  br label %143

112:                                              ; preds = %101
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @NFC_PROTO_MIFARE, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load i32, i32* @NCI_RF_PROTOCOL_T2T, align 4
  %118 = getelementptr inbounds %struct.nci_rf_discover_select_param, %struct.nci_rf_discover_select_param* %9, i32 0, i32 0
  store i32 %117, i32* %118, align 4
  br label %142

119:                                              ; preds = %112
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @NFC_PROTO_FELICA, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %119
  %124 = load i32, i32* @NCI_RF_PROTOCOL_T3T, align 4
  %125 = getelementptr inbounds %struct.nci_rf_discover_select_param, %struct.nci_rf_discover_select_param* %9, i32 0, i32 0
  store i32 %124, i32* %125, align 4
  br label %141

126:                                              ; preds = %119
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @NFC_PROTO_ISO14443, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %134, label %130

130:                                              ; preds = %126
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @NFC_PROTO_ISO14443_B, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %130, %126
  %135 = load i32, i32* @NCI_RF_PROTOCOL_ISO_DEP, align 4
  %136 = getelementptr inbounds %struct.nci_rf_discover_select_param, %struct.nci_rf_discover_select_param* %9, i32 0, i32 0
  store i32 %135, i32* %136, align 4
  br label %140

137:                                              ; preds = %130
  %138 = load i32, i32* @NCI_RF_PROTOCOL_NFC_DEP, align 4
  %139 = getelementptr inbounds %struct.nci_rf_discover_select_param, %struct.nci_rf_discover_select_param* %9, i32 0, i32 0
  store i32 %138, i32* %139, align 4
  br label %140

140:                                              ; preds = %137, %134
  br label %141

141:                                              ; preds = %140, %123
  br label %142

142:                                              ; preds = %141, %116
  br label %143

143:                                              ; preds = %142, %109
  %144 = load %struct.nci_dev*, %struct.nci_dev** %8, align 8
  %145 = load i32, i32* @nci_rf_discover_select_req, align 4
  %146 = ptrtoint %struct.nci_rf_discover_select_param* %9 to i64
  %147 = load i32, i32* @NCI_RF_DISC_SELECT_TIMEOUT, align 4
  %148 = call i32 @msecs_to_jiffies(i32 %147)
  %149 = call i32 @nci_request(%struct.nci_dev* %144, i32 %145, i64 %146, i32 %148)
  store i32 %149, i32* %12, align 4
  br label %150

150:                                              ; preds = %143, %95
  %151 = load i32, i32* %12, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %150
  %154 = load i32, i32* %7, align 4
  %155 = load %struct.nci_dev*, %struct.nci_dev** %8, align 8
  %156 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  br label %157

157:                                              ; preds = %153, %150
  %158 = load i32, i32* %12, align 4
  store i32 %158, i32* %4, align 4
  br label %159

159:                                              ; preds = %157, %90, %78, %40, %31
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local %struct.nci_dev* @nfc_get_drvdata(%struct.nfc_dev*) #1

declare dso_local i32 @pr_debug(i8*, i64, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @nci_request(%struct.nci_dev*, i32, i64, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
