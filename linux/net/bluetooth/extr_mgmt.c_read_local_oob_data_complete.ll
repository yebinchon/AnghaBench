; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_read_local_oob_data_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_read_local_oob_data_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.mgmt_rp_read_local_oob_data = type { i32, i32, i32, i32 }
%struct.mgmt_pending_cmd = type { i32 }
%struct.hci_rp_read_local_oob_data = type { i32, i32 }
%struct.hci_rp_read_local_oob_ext_data = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"%s status %u\00", align 1
@MGMT_OP_READ_LOCAL_OOB_DATA = common dso_local global i32 0, align 4
@MGMT_STATUS_FAILED = common dso_local global i32 0, align 4
@HCI_OP_READ_LOCAL_OOB_DATA = common dso_local global i64 0, align 8
@MGMT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, i64, i64, %struct.sk_buff*)* @read_local_oob_data_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_local_oob_data_complete(%struct.hci_dev* %0, i64 %1, i64 %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.mgmt_rp_read_local_oob_data, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.mgmt_pending_cmd*, align 8
  %12 = alloca %struct.hci_rp_read_local_oob_data*, align 8
  %13 = alloca %struct.hci_rp_read_local_oob_ext_data*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %8, align 8
  store i64 16, i64* %10, align 8
  %14 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %15 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %16, i64 %17)
  %19 = load i32, i32* @MGMT_OP_READ_LOCAL_OOB_DATA, align 4
  %20 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %21 = call %struct.mgmt_pending_cmd* @pending_find(i32 %19, %struct.hci_dev* %20)
  store %struct.mgmt_pending_cmd* %21, %struct.mgmt_pending_cmd** %11, align 8
  %22 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %11, align 8
  %23 = icmp ne %struct.mgmt_pending_cmd* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  br label %150

25:                                               ; preds = %4
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %49, label %31

31:                                               ; preds = %28, %25
  %32 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %11, align 8
  %33 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %36 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MGMT_OP_READ_LOCAL_OOB_DATA, align 4
  %39 = load i64, i64* %6, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @mgmt_status(i64 %42)
  br label %46

44:                                               ; preds = %31
  %45 = load i32, i32* @MGMT_STATUS_FAILED, align 4
  br label %46

46:                                               ; preds = %44, %41
  %47 = phi i32 [ %43, %41 ], [ %45, %44 ]
  %48 = call i32 @mgmt_cmd_status(i32 %34, i32 %37, i32 %38, i32 %47)
  br label %147

49:                                               ; preds = %28
  %50 = call i32 @memset(%struct.mgmt_rp_read_local_oob_data* %9, i32 0, i32 16)
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* @HCI_OP_READ_LOCAL_OOB_DATA, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %90

54:                                               ; preds = %49
  %55 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = bitcast i8* %58 to %struct.hci_rp_read_local_oob_data*
  store %struct.hci_rp_read_local_oob_data* %59, %struct.hci_rp_read_local_oob_data** %12, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = icmp ult i64 %63, 8
  br i1 %64, label %65, label %75

65:                                               ; preds = %54
  %66 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %11, align 8
  %67 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %70 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @MGMT_OP_READ_LOCAL_OOB_DATA, align 4
  %73 = load i32, i32* @MGMT_STATUS_FAILED, align 4
  %74 = call i32 @mgmt_cmd_status(i32 %68, i32 %71, i32 %72, i32 %73)
  br label %147

75:                                               ; preds = %54
  %76 = getelementptr inbounds %struct.mgmt_rp_read_local_oob_data, %struct.mgmt_rp_read_local_oob_data* %9, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.hci_rp_read_local_oob_data*, %struct.hci_rp_read_local_oob_data** %12, align 8
  %79 = getelementptr inbounds %struct.hci_rp_read_local_oob_data, %struct.hci_rp_read_local_oob_data* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @memcpy(i32 %77, i32 %80, i32 4)
  %82 = getelementptr inbounds %struct.mgmt_rp_read_local_oob_data, %struct.mgmt_rp_read_local_oob_data* %9, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.hci_rp_read_local_oob_data*, %struct.hci_rp_read_local_oob_data** %12, align 8
  %85 = getelementptr inbounds %struct.hci_rp_read_local_oob_data, %struct.hci_rp_read_local_oob_data* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @memcpy(i32 %83, i32 %86, i32 4)
  %88 = load i64, i64* %10, align 8
  %89 = sub i64 %88, 8
  store i64 %89, i64* %10, align 8
  br label %136

90:                                               ; preds = %49
  %91 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to i8*
  %95 = bitcast i8* %94 to %struct.hci_rp_read_local_oob_ext_data*
  store %struct.hci_rp_read_local_oob_ext_data* %95, %struct.hci_rp_read_local_oob_ext_data** %13, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = icmp ult i64 %99, 16
  br i1 %100, label %101, label %111

101:                                              ; preds = %90
  %102 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %11, align 8
  %103 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %106 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @MGMT_OP_READ_LOCAL_OOB_DATA, align 4
  %109 = load i32, i32* @MGMT_STATUS_FAILED, align 4
  %110 = call i32 @mgmt_cmd_status(i32 %104, i32 %107, i32 %108, i32 %109)
  br label %147

111:                                              ; preds = %90
  %112 = getelementptr inbounds %struct.mgmt_rp_read_local_oob_data, %struct.mgmt_rp_read_local_oob_data* %9, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.hci_rp_read_local_oob_ext_data*, %struct.hci_rp_read_local_oob_ext_data** %13, align 8
  %115 = getelementptr inbounds %struct.hci_rp_read_local_oob_ext_data, %struct.hci_rp_read_local_oob_ext_data* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @memcpy(i32 %113, i32 %116, i32 4)
  %118 = getelementptr inbounds %struct.mgmt_rp_read_local_oob_data, %struct.mgmt_rp_read_local_oob_data* %9, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.hci_rp_read_local_oob_ext_data*, %struct.hci_rp_read_local_oob_ext_data** %13, align 8
  %121 = getelementptr inbounds %struct.hci_rp_read_local_oob_ext_data, %struct.hci_rp_read_local_oob_ext_data* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @memcpy(i32 %119, i32 %122, i32 4)
  %124 = getelementptr inbounds %struct.mgmt_rp_read_local_oob_data, %struct.mgmt_rp_read_local_oob_data* %9, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.hci_rp_read_local_oob_ext_data*, %struct.hci_rp_read_local_oob_ext_data** %13, align 8
  %127 = getelementptr inbounds %struct.hci_rp_read_local_oob_ext_data, %struct.hci_rp_read_local_oob_ext_data* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @memcpy(i32 %125, i32 %128, i32 4)
  %130 = getelementptr inbounds %struct.mgmt_rp_read_local_oob_data, %struct.mgmt_rp_read_local_oob_data* %9, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.hci_rp_read_local_oob_ext_data*, %struct.hci_rp_read_local_oob_ext_data** %13, align 8
  %133 = getelementptr inbounds %struct.hci_rp_read_local_oob_ext_data, %struct.hci_rp_read_local_oob_ext_data* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @memcpy(i32 %131, i32 %134, i32 4)
  br label %136

136:                                              ; preds = %111, %75
  %137 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %11, align 8
  %138 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %141 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @MGMT_OP_READ_LOCAL_OOB_DATA, align 4
  %144 = load i32, i32* @MGMT_STATUS_SUCCESS, align 4
  %145 = load i64, i64* %10, align 8
  %146 = call i32 @mgmt_cmd_complete(i32 %139, i32 %142, i32 %143, i32 %144, %struct.mgmt_rp_read_local_oob_data* %9, i64 %145)
  br label %147

147:                                              ; preds = %136, %101, %65, %46
  %148 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %11, align 8
  %149 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %148)
  br label %150

150:                                              ; preds = %147, %24
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i64) #1

declare dso_local %struct.mgmt_pending_cmd* @pending_find(i32, %struct.hci_dev*) #1

declare dso_local i32 @mgmt_cmd_status(i32, i32, i32, i32) #1

declare dso_local i32 @mgmt_status(i64) #1

declare dso_local i32 @memset(%struct.mgmt_rp_read_local_oob_data*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @mgmt_cmd_complete(i32, i32, i32, i32, %struct.mgmt_rp_read_local_oob_data*, i64) #1

declare dso_local i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
