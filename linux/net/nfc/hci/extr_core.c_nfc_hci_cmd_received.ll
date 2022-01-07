; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/hci/extr_core.c_nfc_hci_cmd_received.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/hci/extr_core.c_nfc_hci_cmd_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i64*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.nfc_hci_dev*, i64, i64, %struct.sk_buff*)* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.hci_create_pipe_resp = type { i64, i64, i32 }
%struct.hci_delete_pipe_noti = type { i64 }
%struct.hci_all_pipe_cleared_noti = type { i32 }

@NFC_HCI_ANY_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"from gate %x pipe %x cmd %x\0A\00", align 1
@NFC_HCI_ANY_E_NOK = common dso_local global i64 0, align 8
@NFC_HCI_MAX_PIPES = common dso_local global i64 0, align 8
@NFC_HCI_INVALID_GATE = common dso_local global i64 0, align 8
@NFC_HCI_INVALID_HOST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Discarded unknown cmd %x to gate %x\0A\00", align 1
@NFC_HCI_HCP_RESPONSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfc_hci_cmd_received(%struct.nfc_hci_dev* %0, i64 %1, i64 %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.nfc_hci_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.hci_create_pipe_resp*, align 8
  %12 = alloca %struct.hci_delete_pipe_noti*, align 8
  %13 = alloca %struct.hci_all_pipe_cleared_noti*, align 8
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %8, align 8
  %14 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %15 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %14, i32 0, i32 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* @NFC_HCI_ANY_OK, align 8
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %22, i64 %23, i64 %24)
  %26 = load i64, i64* %7, align 8
  switch i64 %26, label %141 [
    i64 130, label %27
    i64 128, label %79
    i64 129, label %86
    i64 131, label %124
  ]

27:                                               ; preds = %4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 5
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i64, i64* @NFC_HCI_ANY_E_NOK, align 8
  store i64 %33, i64* %10, align 8
  br label %164

34:                                               ; preds = %27
  %35 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.hci_create_pipe_resp*
  store %struct.hci_create_pipe_resp* %38, %struct.hci_create_pipe_resp** %11, align 8
  %39 = load %struct.hci_create_pipe_resp*, %struct.hci_create_pipe_resp** %11, align 8
  %40 = getelementptr inbounds %struct.hci_create_pipe_resp, %struct.hci_create_pipe_resp* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @NFC_HCI_MAX_PIPES, align 8
  %43 = icmp uge i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i64, i64* @NFC_HCI_ANY_E_NOK, align 8
  store i64 %45, i64* %10, align 8
  br label %164

46:                                               ; preds = %34
  %47 = load %struct.hci_create_pipe_resp*, %struct.hci_create_pipe_resp** %11, align 8
  %48 = getelementptr inbounds %struct.hci_create_pipe_resp, %struct.hci_create_pipe_resp* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %51 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load %struct.hci_create_pipe_resp*, %struct.hci_create_pipe_resp** %11, align 8
  %54 = getelementptr inbounds %struct.hci_create_pipe_resp, %struct.hci_create_pipe_resp* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i64, i64* %52, i64 %55
  store i64 %49, i64* %56, align 8
  %57 = load %struct.hci_create_pipe_resp*, %struct.hci_create_pipe_resp** %11, align 8
  %58 = getelementptr inbounds %struct.hci_create_pipe_resp, %struct.hci_create_pipe_resp* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %61 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %60, i32 0, i32 2
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = load %struct.hci_create_pipe_resp*, %struct.hci_create_pipe_resp** %11, align 8
  %64 = getelementptr inbounds %struct.hci_create_pipe_resp, %struct.hci_create_pipe_resp* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i64 %59, i64* %67, align 8
  %68 = load %struct.hci_create_pipe_resp*, %struct.hci_create_pipe_resp** %11, align 8
  %69 = getelementptr inbounds %struct.hci_create_pipe_resp, %struct.hci_create_pipe_resp* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %72 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %71, i32 0, i32 2
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = load %struct.hci_create_pipe_resp*, %struct.hci_create_pipe_resp** %11, align 8
  %75 = getelementptr inbounds %struct.hci_create_pipe_resp, %struct.hci_create_pipe_resp* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  store i32 %70, i32* %78, align 8
  br label %145

79:                                               ; preds = %4
  %80 = load i64, i64* %9, align 8
  %81 = load i64, i64* @NFC_HCI_INVALID_GATE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i64, i64* @NFC_HCI_ANY_E_NOK, align 8
  store i64 %84, i64* %10, align 8
  br label %164

85:                                               ; preds = %79
  br label %145

86:                                               ; preds = %4
  %87 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %88 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 1
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i64, i64* @NFC_HCI_ANY_E_NOK, align 8
  store i64 %92, i64* %10, align 8
  br label %164

93:                                               ; preds = %86
  %94 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to %struct.hci_delete_pipe_noti*
  store %struct.hci_delete_pipe_noti* %97, %struct.hci_delete_pipe_noti** %12, align 8
  %98 = load %struct.hci_delete_pipe_noti*, %struct.hci_delete_pipe_noti** %12, align 8
  %99 = getelementptr inbounds %struct.hci_delete_pipe_noti, %struct.hci_delete_pipe_noti* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @NFC_HCI_MAX_PIPES, align 8
  %102 = icmp uge i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %93
  %104 = load i64, i64* @NFC_HCI_ANY_E_NOK, align 8
  store i64 %104, i64* %10, align 8
  br label %164

105:                                              ; preds = %93
  %106 = load i64, i64* @NFC_HCI_INVALID_GATE, align 8
  %107 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %108 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %107, i32 0, i32 2
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = load %struct.hci_delete_pipe_noti*, %struct.hci_delete_pipe_noti** %12, align 8
  %111 = getelementptr inbounds %struct.hci_delete_pipe_noti, %struct.hci_delete_pipe_noti* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  store i64 %106, i64* %114, align 8
  %115 = load i32, i32* @NFC_HCI_INVALID_HOST, align 4
  %116 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %117 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %116, i32 0, i32 2
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = load %struct.hci_delete_pipe_noti*, %struct.hci_delete_pipe_noti** %12, align 8
  %120 = getelementptr inbounds %struct.hci_delete_pipe_noti, %struct.hci_delete_pipe_noti* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  store i32 %115, i32* %123, align 8
  br label %145

124:                                              ; preds = %4
  %125 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %126 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 1
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = load i64, i64* @NFC_HCI_ANY_E_NOK, align 8
  store i64 %130, i64* %10, align 8
  br label %164

131:                                              ; preds = %124
  %132 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %133 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = inttoptr i64 %134 to %struct.hci_all_pipe_cleared_noti*
  store %struct.hci_all_pipe_cleared_noti* %135, %struct.hci_all_pipe_cleared_noti** %13, align 8
  %136 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %137 = load %struct.hci_all_pipe_cleared_noti*, %struct.hci_all_pipe_cleared_noti** %13, align 8
  %138 = getelementptr inbounds %struct.hci_all_pipe_cleared_noti, %struct.hci_all_pipe_cleared_noti* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @nfc_hci_reset_pipes_per_host(%struct.nfc_hci_dev* %136, i32 %139)
  br label %145

141:                                              ; preds = %4
  %142 = load i64, i64* %7, align 8
  %143 = load i64, i64* %9, align 8
  %144 = call i32 @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %142, i64 %143)
  br label %145

145:                                              ; preds = %141, %131, %105, %85, %46
  %146 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %147 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %146, i32 0, i32 1
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32 (%struct.nfc_hci_dev*, i64, i64, %struct.sk_buff*)*, i32 (%struct.nfc_hci_dev*, i64, i64, %struct.sk_buff*)** %149, align 8
  %151 = icmp ne i32 (%struct.nfc_hci_dev*, i64, i64, %struct.sk_buff*)* %150, null
  br i1 %151, label %152, label %163

152:                                              ; preds = %145
  %153 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %154 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %153, i32 0, i32 1
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32 (%struct.nfc_hci_dev*, i64, i64, %struct.sk_buff*)*, i32 (%struct.nfc_hci_dev*, i64, i64, %struct.sk_buff*)** %156, align 8
  %158 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %159 = load i64, i64* %6, align 8
  %160 = load i64, i64* %7, align 8
  %161 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %162 = call i32 %157(%struct.nfc_hci_dev* %158, i64 %159, i64 %160, %struct.sk_buff* %161)
  br label %163

163:                                              ; preds = %152, %145
  br label %164

164:                                              ; preds = %163, %129, %103, %91, %83, %44, %32
  %165 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %166 = load i64, i64* %6, align 8
  %167 = load i32, i32* @NFC_HCI_HCP_RESPONSE, align 4
  %168 = load i64, i64* %10, align 8
  %169 = call i32 @nfc_hci_hcp_message_tx(%struct.nfc_hci_dev* %165, i64 %166, i32 %167, i64 %168, i32* null, i32 0, i32* null, i32* null, i32 0)
  %170 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %171 = call i32 @kfree_skb(%struct.sk_buff* %170)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i64, i64, i64) #1

declare dso_local i32 @nfc_hci_reset_pipes_per_host(%struct.nfc_hci_dev*, i32) #1

declare dso_local i32 @pr_info(i8*, i64, i64) #1

declare dso_local i32 @nfc_hci_hcp_message_tx(%struct.nfc_hci_dev*, i64, i32, i64, i32*, i32, i32*, i32*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
