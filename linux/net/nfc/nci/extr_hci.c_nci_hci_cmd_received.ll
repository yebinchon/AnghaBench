; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_hci.c_nci_hci_cmd_received.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_hci.c_nci_hci_cmd_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 (%struct.nci_dev*, i64, i64, %struct.sk_buff*)* }
%struct.TYPE_5__ = type { i64*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.nci_hci_create_pipe_resp = type { i64, i64, i32 }
%struct.nci_hci_delete_pipe_noti = type { i64 }
%struct.nci_hci_all_pipe_cleared_noti = type { i32 }

@NCI_HCI_ANY_OK = common dso_local global i64 0, align 8
@NCI_HCI_FRAGMENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"from gate %x pipe %x cmd %x\0A\00", align 1
@NCI_HCI_ANY_E_NOK = common dso_local global i64 0, align 8
@NCI_HCI_MAX_PIPES = common dso_local global i64 0, align 8
@NCI_HCI_INVALID_GATE = common dso_local global i64 0, align 8
@NCI_HCI_INVALID_HOST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Discarded unknown cmd %x to gate %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nci_dev*, i64, i64, %struct.sk_buff*)* @nci_hci_cmd_received to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nci_hci_cmd_received(%struct.nci_dev* %0, i64 %1, i64 %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.nci_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.nci_hci_create_pipe_resp*, align 8
  %14 = alloca %struct.nci_hci_delete_pipe_noti*, align 8
  %15 = alloca %struct.nci_hci_all_pipe_cleared_noti*, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %8, align 8
  %16 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %17 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* @NCI_HCI_ANY_OK, align 8
  %26 = load i64, i64* @NCI_HCI_FRAGMENT, align 8
  %27 = xor i64 %26, -1
  %28 = or i64 %25, %27
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 (i8*, i64, i64, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %29, i64 %30, i64 %31)
  %33 = load i64, i64* %7, align 8
  switch i64 %33, label %152 [
    i64 130, label %34
    i64 128, label %86
    i64 129, label %93
    i64 131, label %135
  ]

34:                                               ; preds = %4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 5
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i64, i64* @NCI_HCI_ANY_E_NOK, align 8
  store i64 %40, i64* %10, align 8
  br label %175

41:                                               ; preds = %34
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.nci_hci_create_pipe_resp*
  store %struct.nci_hci_create_pipe_resp* %45, %struct.nci_hci_create_pipe_resp** %13, align 8
  %46 = load %struct.nci_hci_create_pipe_resp*, %struct.nci_hci_create_pipe_resp** %13, align 8
  %47 = getelementptr inbounds %struct.nci_hci_create_pipe_resp, %struct.nci_hci_create_pipe_resp* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %11, align 8
  %49 = load %struct.nci_hci_create_pipe_resp*, %struct.nci_hci_create_pipe_resp** %13, align 8
  %50 = getelementptr inbounds %struct.nci_hci_create_pipe_resp, %struct.nci_hci_create_pipe_resp* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %12, align 8
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* @NCI_HCI_MAX_PIPES, align 8
  %54 = icmp uge i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %41
  %56 = load i64, i64* @NCI_HCI_ANY_E_NOK, align 8
  store i64 %56, i64* %10, align 8
  br label %175

57:                                               ; preds = %41
  %58 = load i64, i64* %12, align 8
  %59 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %60 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* %11, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  store i64 %58, i64* %65, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %68 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %67, i32 0, i32 1
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i64, i64* %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i64 %66, i64* %74, align 8
  %75 = load %struct.nci_hci_create_pipe_resp*, %struct.nci_hci_create_pipe_resp** %13, align 8
  %76 = getelementptr inbounds %struct.nci_hci_create_pipe_resp, %struct.nci_hci_create_pipe_resp* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %79 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %78, i32 0, i32 1
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i64, i64* %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  store i32 %77, i32* %85, align 8
  br label %156

86:                                               ; preds = %4
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* @NCI_HCI_INVALID_GATE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i64, i64* @NCI_HCI_ANY_E_NOK, align 8
  store i64 %91, i64* %10, align 8
  br label %175

92:                                               ; preds = %86
  br label %156

93:                                               ; preds = %4
  %94 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 1
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i64, i64* @NCI_HCI_ANY_E_NOK, align 8
  store i64 %99, i64* %10, align 8
  br label %175

100:                                              ; preds = %93
  %101 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to %struct.nci_hci_delete_pipe_noti*
  store %struct.nci_hci_delete_pipe_noti* %104, %struct.nci_hci_delete_pipe_noti** %14, align 8
  %105 = load %struct.nci_hci_delete_pipe_noti*, %struct.nci_hci_delete_pipe_noti** %14, align 8
  %106 = getelementptr inbounds %struct.nci_hci_delete_pipe_noti, %struct.nci_hci_delete_pipe_noti* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @NCI_HCI_MAX_PIPES, align 8
  %109 = icmp uge i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %100
  %111 = load i64, i64* @NCI_HCI_ANY_E_NOK, align 8
  store i64 %111, i64* %10, align 8
  br label %175

112:                                              ; preds = %100
  %113 = load i64, i64* @NCI_HCI_INVALID_GATE, align 8
  %114 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %115 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %114, i32 0, i32 1
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = load %struct.nci_hci_delete_pipe_noti*, %struct.nci_hci_delete_pipe_noti** %14, align 8
  %120 = getelementptr inbounds %struct.nci_hci_delete_pipe_noti, %struct.nci_hci_delete_pipe_noti* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  store i64 %113, i64* %123, align 8
  %124 = load i32, i32* @NCI_HCI_INVALID_HOST, align 4
  %125 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %126 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %125, i32 0, i32 1
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = load %struct.nci_hci_delete_pipe_noti*, %struct.nci_hci_delete_pipe_noti** %14, align 8
  %131 = getelementptr inbounds %struct.nci_hci_delete_pipe_noti, %struct.nci_hci_delete_pipe_noti* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  store i32 %124, i32* %134, align 8
  br label %156

135:                                              ; preds = %4
  %136 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %137 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 1
  br i1 %139, label %140, label %142

140:                                              ; preds = %135
  %141 = load i64, i64* @NCI_HCI_ANY_E_NOK, align 8
  store i64 %141, i64* %10, align 8
  br label %175

142:                                              ; preds = %135
  %143 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %144 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = inttoptr i64 %145 to %struct.nci_hci_all_pipe_cleared_noti*
  store %struct.nci_hci_all_pipe_cleared_noti* %146, %struct.nci_hci_all_pipe_cleared_noti** %15, align 8
  %147 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %148 = load %struct.nci_hci_all_pipe_cleared_noti*, %struct.nci_hci_all_pipe_cleared_noti** %15, align 8
  %149 = getelementptr inbounds %struct.nci_hci_all_pipe_cleared_noti, %struct.nci_hci_all_pipe_cleared_noti* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @nci_hci_reset_pipes_per_host(%struct.nci_dev* %147, i32 %150)
  br label %156

152:                                              ; preds = %4
  %153 = load i64, i64* %7, align 8
  %154 = load i64, i64* %9, align 8
  %155 = call i32 (i8*, i64, i64, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %153, i64 %154)
  br label %156

156:                                              ; preds = %152, %142, %112, %92, %57
  %157 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %158 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %157, i32 0, i32 0
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i32 (%struct.nci_dev*, i64, i64, %struct.sk_buff*)*, i32 (%struct.nci_dev*, i64, i64, %struct.sk_buff*)** %160, align 8
  %162 = icmp ne i32 (%struct.nci_dev*, i64, i64, %struct.sk_buff*)* %161, null
  br i1 %162, label %163, label %174

163:                                              ; preds = %156
  %164 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %165 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %164, i32 0, i32 0
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load i32 (%struct.nci_dev*, i64, i64, %struct.sk_buff*)*, i32 (%struct.nci_dev*, i64, i64, %struct.sk_buff*)** %167, align 8
  %169 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %170 = load i64, i64* %6, align 8
  %171 = load i64, i64* %7, align 8
  %172 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %173 = call i32 %168(%struct.nci_dev* %169, i64 %170, i64 %171, %struct.sk_buff* %172)
  br label %174

174:                                              ; preds = %163, %156
  br label %175

175:                                              ; preds = %174, %140, %110, %98, %90, %55, %39
  %176 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %177 = load i64, i64* %6, align 8
  %178 = load i64, i64* %10, align 8
  %179 = call i32 @nci_hci_send_data(%struct.nci_dev* %176, i64 %177, i64 %178, i32* null, i32 0)
  %180 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %181 = call i32 @kfree_skb(%struct.sk_buff* %180)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i64, i64, ...) #1

declare dso_local i32 @nci_hci_reset_pipes_per_host(%struct.nci_dev*, i32) #1

declare dso_local i32 @nci_hci_send_data(%struct.nci_dev*, i64, i64, i32*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
