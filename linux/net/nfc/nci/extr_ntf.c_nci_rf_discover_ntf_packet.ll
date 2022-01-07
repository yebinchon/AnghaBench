; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_ntf.c_nci_rf_discover_ntf_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_ntf.c_nci_rf_discover_ntf_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32* }
%struct.nci_rf_discover_ntf = type { i64, i64, i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"rf_discovery_id %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"rf_protocol 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"rf_tech_and_mode 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"rf_tech_specific_params_len %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"unsupported rf_tech_and_mode 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"ntf_type %d\0A\00", align 1
@NCI_DISCOVER_NTF_TYPE_MORE = common dso_local global i64 0, align 8
@NCI_W4_ALL_DISCOVERIES = common dso_local global i32 0, align 4
@NCI_W4_HOST_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nci_dev*, %struct.sk_buff*)* @nci_rf_discover_ntf_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nci_rf_discover_ntf_packet(%struct.nci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nci_rf_discover_ntf, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.nci_dev* %0, %struct.nci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %6, align 8
  store i32 1, i32* %7, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %12, i32** %6, align 8
  %13 = load i32, i32* %11, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.nci_rf_discover_ntf, %struct.nci_rf_discover_ntf* %5, i32 0, i32 0
  store i64 %14, i64* %15, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %6, align 8
  %18 = load i32, i32* %16, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.nci_rf_discover_ntf, %struct.nci_rf_discover_ntf* %5, i32 0, i32 1
  store i64 %19, i64* %20, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %6, align 8
  %23 = load i32, i32* %21, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.nci_rf_discover_ntf, %struct.nci_rf_discover_ntf* %5, i32 0, i32 2
  store i64 %24, i64* %25, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %6, align 8
  %28 = load i32, i32* %26, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.nci_rf_discover_ntf, %struct.nci_rf_discover_ntf* %5, i32 0, i32 3
  store i64 %29, i64* %30, align 8
  %31 = getelementptr inbounds %struct.nci_rf_discover_ntf, %struct.nci_rf_discover_ntf* %5, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = getelementptr inbounds %struct.nci_rf_discover_ntf, %struct.nci_rf_discover_ntf* %5, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  %37 = getelementptr inbounds %struct.nci_rf_discover_ntf, %struct.nci_rf_discover_ntf* %5, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %38)
  %40 = getelementptr inbounds %struct.nci_rf_discover_ntf, %struct.nci_rf_discover_ntf* %5, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %41)
  %43 = getelementptr inbounds %struct.nci_rf_discover_ntf, %struct.nci_rf_discover_ntf* %5, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %83

46:                                               ; preds = %2
  %47 = getelementptr inbounds %struct.nci_rf_discover_ntf, %struct.nci_rf_discover_ntf* %5, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  switch i64 %48, label %73 [
    i64 131, label %49
    i64 130, label %55
    i64 129, label %61
    i64 128, label %67
  ]

49:                                               ; preds = %46
  %50 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %51 = getelementptr inbounds %struct.nci_rf_discover_ntf, %struct.nci_rf_discover_ntf* %5, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  %53 = load i32*, i32** %6, align 8
  %54 = call i32* @nci_extract_rf_params_nfca_passive_poll(%struct.nci_dev* %50, i32* %52, i32* %53)
  store i32* %54, i32** %6, align 8
  br label %82

55:                                               ; preds = %46
  %56 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %57 = getelementptr inbounds %struct.nci_rf_discover_ntf, %struct.nci_rf_discover_ntf* %5, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32*, i32** %6, align 8
  %60 = call i32* @nci_extract_rf_params_nfcb_passive_poll(%struct.nci_dev* %56, i32* %58, i32* %59)
  store i32* %60, i32** %6, align 8
  br label %82

61:                                               ; preds = %46
  %62 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %63 = getelementptr inbounds %struct.nci_rf_discover_ntf, %struct.nci_rf_discover_ntf* %5, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32*, i32** %6, align 8
  %66 = call i32* @nci_extract_rf_params_nfcf_passive_poll(%struct.nci_dev* %62, i32* %64, i32* %65)
  store i32* %66, i32** %6, align 8
  br label %82

67:                                               ; preds = %46
  %68 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %69 = getelementptr inbounds %struct.nci_rf_discover_ntf, %struct.nci_rf_discover_ntf* %5, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32*, i32** %6, align 8
  %72 = call i32* @nci_extract_rf_params_nfcv_passive_poll(%struct.nci_dev* %68, i32* %70, i32* %71)
  store i32* %72, i32** %6, align 8
  br label %82

73:                                               ; preds = %46
  %74 = getelementptr inbounds %struct.nci_rf_discover_ntf, %struct.nci_rf_discover_ntf* %5, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  %78 = getelementptr inbounds %struct.nci_rf_discover_ntf, %struct.nci_rf_discover_ntf* %5, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 %79
  store i32* %81, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %73, %67, %61, %55, %49
  br label %83

83:                                               ; preds = %82, %2
  %84 = load i32*, i32** %6, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %6, align 8
  %86 = load i32, i32* %84, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.nci_rf_discover_ntf, %struct.nci_rf_discover_ntf* %5, i32 0, i32 4
  store i64 %87, i64* %88, align 8
  %89 = getelementptr inbounds %struct.nci_rf_discover_ntf, %struct.nci_rf_discover_ntf* %5, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i64 %90)
  %92 = load i32, i32* %7, align 4
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %97

94:                                               ; preds = %83
  %95 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %96 = call i32 @nci_add_new_target(%struct.nci_dev* %95, %struct.nci_rf_discover_ntf* %5)
  br label %97

97:                                               ; preds = %94, %83
  %98 = getelementptr inbounds %struct.nci_rf_discover_ntf, %struct.nci_rf_discover_ntf* %5, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @NCI_DISCOVER_NTF_TYPE_MORE, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %104 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %103, i32 0, i32 3
  %105 = load i32, i32* @NCI_W4_ALL_DISCOVERIES, align 4
  %106 = call i32 @atomic_set(i32* %104, i32 %105)
  br label %122

107:                                              ; preds = %97
  %108 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %109 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %108, i32 0, i32 3
  %110 = load i32, i32* @NCI_W4_HOST_SELECT, align 4
  %111 = call i32 @atomic_set(i32* %109, i32 %110)
  %112 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %113 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %116 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %119 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @nfc_targets_found(i32 %114, i32 %117, i32 %120)
  br label %122

122:                                              ; preds = %107, %102
  ret void
}

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32* @nci_extract_rf_params_nfca_passive_poll(%struct.nci_dev*, i32*, i32*) #1

declare dso_local i32* @nci_extract_rf_params_nfcb_passive_poll(%struct.nci_dev*, i32*, i32*) #1

declare dso_local i32* @nci_extract_rf_params_nfcf_passive_poll(%struct.nci_dev*, i32*, i32*) #1

declare dso_local i32* @nci_extract_rf_params_nfcv_passive_poll(%struct.nci_dev*, i32*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @nci_add_new_target(%struct.nci_dev*, %struct.nci_rf_discover_ntf*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @nfc_targets_found(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
