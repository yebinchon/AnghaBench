; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_rsp.c_nci_core_init_rsp_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_rsp.c_nci_core_init_rsp_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i64, i64, i64*, i64, i64, i64, i64, i64, i64 }
%struct.sk_buff = type { i64 }
%struct.nci_core_init_rsp_1 = type { i64, i64, i32, i32 }
%struct.nci_core_init_rsp_2 = type { i64, i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"status 0x%x\0A\00", align 1
@NCI_STATUS_OK = common dso_local global i64 0, align 8
@NCI_MAX_SUPPORTED_RF_INTERFACES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"nfcc_features 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"num_supported_rf_interfaces %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"supported_rf_interfaces[0] 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"supported_rf_interfaces[1] 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"supported_rf_interfaces[2] 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"supported_rf_interfaces[3] 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"max_logical_connections %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"max_routing_table_size %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"max_ctrl_pkt_payload_len %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"max_size_for_large_params %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"manufact_id 0x%x\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"manufact_specific_info 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nci_dev*, %struct.sk_buff*)* @nci_core_init_rsp_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nci_core_init_rsp_packet(%struct.nci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nci_core_init_rsp_1*, align 8
  %6 = alloca %struct.nci_core_init_rsp_2*, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct.nci_core_init_rsp_1*
  store %struct.nci_core_init_rsp_1* %11, %struct.nci_core_init_rsp_1** %5, align 8
  %12 = load %struct.nci_core_init_rsp_1*, %struct.nci_core_init_rsp_1** %5, align 8
  %13 = getelementptr inbounds %struct.nci_core_init_rsp_1, %struct.nci_core_init_rsp_1* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load %struct.nci_core_init_rsp_1*, %struct.nci_core_init_rsp_1** %5, align 8
  %17 = getelementptr inbounds %struct.nci_core_init_rsp_1, %struct.nci_core_init_rsp_1* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NCI_STATUS_OK, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %157

22:                                               ; preds = %2
  %23 = load %struct.nci_core_init_rsp_1*, %struct.nci_core_init_rsp_1** %5, align 8
  %24 = getelementptr inbounds %struct.nci_core_init_rsp_1, %struct.nci_core_init_rsp_1* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @__le32_to_cpu(i32 %25)
  %27 = ptrtoint i8* %26 to i64
  %28 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %29 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.nci_core_init_rsp_1*, %struct.nci_core_init_rsp_1** %5, align 8
  %31 = getelementptr inbounds %struct.nci_core_init_rsp_1, %struct.nci_core_init_rsp_1* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %34 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %36 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NCI_MAX_SUPPORTED_RF_INTERFACES, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %22
  %41 = load i64, i64* @NCI_MAX_SUPPORTED_RF_INTERFACES, align 8
  %42 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %43 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %40, %22
  %45 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %46 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %45, i32 0, i32 2
  %47 = load i64*, i64** %46, align 8
  %48 = load %struct.nci_core_init_rsp_1*, %struct.nci_core_init_rsp_1** %5, align 8
  %49 = getelementptr inbounds %struct.nci_core_init_rsp_1, %struct.nci_core_init_rsp_1* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %52 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @memcpy(i64* %47, i32 %50, i64 %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 6
  %59 = load %struct.nci_core_init_rsp_1*, %struct.nci_core_init_rsp_1** %5, align 8
  %60 = getelementptr inbounds %struct.nci_core_init_rsp_1, %struct.nci_core_init_rsp_1* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = inttoptr i64 %62 to i8*
  %64 = bitcast i8* %63 to %struct.nci_core_init_rsp_2*
  store %struct.nci_core_init_rsp_2* %64, %struct.nci_core_init_rsp_2** %6, align 8
  %65 = load %struct.nci_core_init_rsp_2*, %struct.nci_core_init_rsp_2** %6, align 8
  %66 = getelementptr inbounds %struct.nci_core_init_rsp_2, %struct.nci_core_init_rsp_2* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %69 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %68, i32 0, i32 3
  store i64 %67, i64* %69, align 8
  %70 = load %struct.nci_core_init_rsp_2*, %struct.nci_core_init_rsp_2** %6, align 8
  %71 = getelementptr inbounds %struct.nci_core_init_rsp_2, %struct.nci_core_init_rsp_2* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = call i8* @__le16_to_cpu(i32 %72)
  %74 = ptrtoint i8* %73 to i64
  %75 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %76 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %75, i32 0, i32 4
  store i64 %74, i64* %76, align 8
  %77 = load %struct.nci_core_init_rsp_2*, %struct.nci_core_init_rsp_2** %6, align 8
  %78 = getelementptr inbounds %struct.nci_core_init_rsp_2, %struct.nci_core_init_rsp_2* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %81 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %80, i32 0, i32 5
  store i64 %79, i64* %81, align 8
  %82 = load %struct.nci_core_init_rsp_2*, %struct.nci_core_init_rsp_2** %6, align 8
  %83 = getelementptr inbounds %struct.nci_core_init_rsp_2, %struct.nci_core_init_rsp_2* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @__le16_to_cpu(i32 %84)
  %86 = ptrtoint i8* %85 to i64
  %87 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %88 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %87, i32 0, i32 6
  store i64 %86, i64* %88, align 8
  %89 = load %struct.nci_core_init_rsp_2*, %struct.nci_core_init_rsp_2** %6, align 8
  %90 = getelementptr inbounds %struct.nci_core_init_rsp_2, %struct.nci_core_init_rsp_2* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %93 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %92, i32 0, i32 7
  store i64 %91, i64* %93, align 8
  %94 = load %struct.nci_core_init_rsp_2*, %struct.nci_core_init_rsp_2** %6, align 8
  %95 = getelementptr inbounds %struct.nci_core_init_rsp_2, %struct.nci_core_init_rsp_2* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = call i8* @__le32_to_cpu(i32 %96)
  %98 = ptrtoint i8* %97 to i64
  %99 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %100 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %99, i32 0, i32 8
  store i64 %98, i64* %100, align 8
  %101 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %102 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %103)
  %105 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %106 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %107)
  %109 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %110 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %109, i32 0, i32 2
  %111 = load i64*, i64** %110, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 0
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %113)
  %115 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %116 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %115, i32 0, i32 2
  %117 = load i64*, i64** %116, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 1
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i64 %119)
  %121 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %122 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %121, i32 0, i32 2
  %123 = load i64*, i64** %122, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 2
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i64 %125)
  %127 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %128 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %127, i32 0, i32 2
  %129 = load i64*, i64** %128, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 3
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i64 %131)
  %133 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %134 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i64 %135)
  %137 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %138 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i64 %139)
  %141 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %142 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %141, i32 0, i32 5
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i64 %143)
  %145 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %146 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %145, i32 0, i32 6
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i64 %147)
  %149 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %150 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %149, i32 0, i32 7
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i64 %151)
  %153 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %154 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %153, i32 0, i32 8
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i64 %155)
  br label %157

157:                                              ; preds = %44, %21
  %158 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %159 = load %struct.nci_core_init_rsp_1*, %struct.nci_core_init_rsp_1** %5, align 8
  %160 = getelementptr inbounds %struct.nci_core_init_rsp_1, %struct.nci_core_init_rsp_1* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @nci_req_complete(%struct.nci_dev* %158, i64 %161)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i8* @__le32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i64*, i32, i64) #1

declare dso_local i8* @__le16_to_cpu(i32) #1

declare dso_local i32 @nci_req_complete(%struct.nci_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
