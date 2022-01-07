; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c___hci_req_update_adv_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c___hci_req_update_adv_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_request = type { %struct.hci_dev* }
%struct.hci_dev = type { i8*, i32 }
%struct.hci_cp_le_set_ext_adv_data = type { i8*, i32, i32, i32, i64 }
%struct.hci_cp_le_set_adv_data = type { i8*, i32, i32, i32, i64 }

@HCI_LE_ENABLED = common dso_local global i32 0, align 4
@LE_SET_ADV_DATA_OP_COMPLETE = common dso_local global i32 0, align 4
@LE_SET_ADV_DATA_NO_FRAG = common dso_local global i32 0, align 4
@HCI_OP_LE_SET_EXT_ADV_DATA = common dso_local global i32 0, align 4
@HCI_OP_LE_SET_ADV_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__hci_req_update_adv_data(%struct.hci_request* %0, i8* %1) #0 {
  %3 = alloca %struct.hci_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hci_cp_le_set_ext_adv_data, align 8
  %8 = alloca %struct.hci_cp_le_set_adv_data, align 8
  store %struct.hci_request* %0, %struct.hci_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.hci_request*, %struct.hci_request** %3, align 8
  %10 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %9, i32 0, i32 0
  %11 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  store %struct.hci_dev* %11, %struct.hci_dev** %5, align 8
  %12 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %13 = load i32, i32* @HCI_LE_ENABLED, align 4
  %14 = call i32 @hci_dev_test_flag(%struct.hci_dev* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %102

17:                                               ; preds = %2
  %18 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %19 = call i64 @ext_adv_capable(%struct.hci_dev* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %63

21:                                               ; preds = %17
  %22 = call i32 @memset(%struct.hci_cp_le_set_ext_adv_data* %7, i32 0, i32 32)
  %23 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_data, %struct.hci_cp_le_set_ext_adv_data* %7, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i8* @create_instance_adv_data(%struct.hci_dev* %23, i8* %24, i32 %26)
  store i8* %27, i8** %6, align 8
  %28 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %29 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = icmp eq i8* %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %21
  %34 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_data, %struct.hci_cp_le_set_ext_adv_data* %7, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %37 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i64 @memcmp(i32 %35, i32 %38, i8* %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %102

43:                                               ; preds = %33, %21
  %44 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %45 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_data, %struct.hci_cp_le_set_ext_adv_data* %7, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @memcpy(i32 %46, i32 %48, i32 4)
  %50 = load i8*, i8** %6, align 8
  %51 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %52 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_data, %struct.hci_cp_le_set_ext_adv_data* %7, i32 0, i32 0
  store i8* %53, i8** %54, align 8
  %55 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_data, %struct.hci_cp_le_set_ext_adv_data* %7, i32 0, i32 4
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* @LE_SET_ADV_DATA_OP_COMPLETE, align 4
  %57 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_data, %struct.hci_cp_le_set_ext_adv_data* %7, i32 0, i32 3
  store i32 %56, i32* %57, align 8
  %58 = load i32, i32* @LE_SET_ADV_DATA_NO_FRAG, align 4
  %59 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_data, %struct.hci_cp_le_set_ext_adv_data* %7, i32 0, i32 2
  store i32 %58, i32* %59, align 4
  %60 = load %struct.hci_request*, %struct.hci_request** %3, align 8
  %61 = load i32, i32* @HCI_OP_LE_SET_EXT_ADV_DATA, align 4
  %62 = call i32 @hci_req_add(%struct.hci_request* %60, i32 %61, i32 32, %struct.hci_cp_le_set_ext_adv_data* %7)
  br label %102

63:                                               ; preds = %17
  %64 = bitcast %struct.hci_cp_le_set_adv_data* %8 to %struct.hci_cp_le_set_ext_adv_data*
  %65 = call i32 @memset(%struct.hci_cp_le_set_ext_adv_data* %64, i32 0, i32 32)
  %66 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds %struct.hci_cp_le_set_adv_data, %struct.hci_cp_le_set_adv_data* %8, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i8* @create_instance_adv_data(%struct.hci_dev* %66, i8* %67, i32 %69)
  store i8* %70, i8** %6, align 8
  %71 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %72 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = icmp eq i8* %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %63
  %77 = getelementptr inbounds %struct.hci_cp_le_set_adv_data, %struct.hci_cp_le_set_adv_data* %8, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %80 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = call i64 @memcmp(i32 %78, i32 %81, i8* %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  br label %102

86:                                               ; preds = %76, %63
  %87 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %88 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.hci_cp_le_set_adv_data, %struct.hci_cp_le_set_adv_data* %8, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @memcpy(i32 %89, i32 %91, i32 4)
  %93 = load i8*, i8** %6, align 8
  %94 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %95 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %94, i32 0, i32 0
  store i8* %93, i8** %95, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = getelementptr inbounds %struct.hci_cp_le_set_adv_data, %struct.hci_cp_le_set_adv_data* %8, i32 0, i32 0
  store i8* %96, i8** %97, align 8
  %98 = load %struct.hci_request*, %struct.hci_request** %3, align 8
  %99 = load i32, i32* @HCI_OP_LE_SET_ADV_DATA, align 4
  %100 = bitcast %struct.hci_cp_le_set_adv_data* %8 to %struct.hci_cp_le_set_ext_adv_data*
  %101 = call i32 @hci_req_add(%struct.hci_request* %98, i32 %99, i32 32, %struct.hci_cp_le_set_ext_adv_data* %100)
  br label %102

102:                                              ; preds = %16, %42, %85, %86, %43
  ret void
}

declare dso_local i32 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i64 @ext_adv_capable(%struct.hci_dev*) #1

declare dso_local i32 @memset(%struct.hci_cp_le_set_ext_adv_data*, i32, i32) #1

declare dso_local i8* @create_instance_adv_data(%struct.hci_dev*, i8*, i32) #1

declare dso_local i64 @memcmp(i32, i32, i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @hci_req_add(%struct.hci_request*, i32, i32, %struct.hci_cp_le_set_ext_adv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
