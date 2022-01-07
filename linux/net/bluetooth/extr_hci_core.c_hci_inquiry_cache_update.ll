; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_inquiry_cache_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_inquiry_cache_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { %struct.discovery_state }
%struct.discovery_state = type { i8*, i32, i32 }
%struct.inquiry_data = type { i64, i32, i32 }
%struct.inquiry_entry = type { i64, i8*, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [15 x i8] c"cache %p, %pMR\00", align 1
@BDADDR_BREDR = common dso_local global i32 0, align 4
@MGMT_DEV_FOUND_LEGACY_PAIRING = common dso_local global i32 0, align 4
@NAME_NEEDED = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@MGMT_DEV_FOUND_CONFIRM_NAME = common dso_local global i32 0, align 4
@NAME_KNOWN = common dso_local global i64 0, align 8
@NAME_NOT_KNOWN = common dso_local global i64 0, align 8
@NAME_PENDING = common dso_local global i64 0, align 8
@jiffies = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_inquiry_cache_update(%struct.hci_dev* %0, %struct.inquiry_data* %1, i32 %2) #0 {
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.inquiry_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.discovery_state*, align 8
  %8 = alloca %struct.inquiry_entry*, align 8
  %9 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store %struct.inquiry_data* %1, %struct.inquiry_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %11 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %10, i32 0, i32 0
  store %struct.discovery_state* %11, %struct.discovery_state** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.discovery_state*, %struct.discovery_state** %7, align 8
  %13 = load %struct.inquiry_data*, %struct.inquiry_data** %5, align 8
  %14 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %13, i32 0, i32 1
  %15 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.discovery_state* %12, i32* %14)
  %16 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %17 = load %struct.inquiry_data*, %struct.inquiry_data** %5, align 8
  %18 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %17, i32 0, i32 1
  %19 = load i32, i32* @BDADDR_BREDR, align 4
  %20 = call i32 @hci_remove_remote_oob_data(%struct.hci_dev* %16, i32* %18, i32 %19)
  %21 = load %struct.inquiry_data*, %struct.inquiry_data** %5, align 8
  %22 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @MGMT_DEV_FOUND_LEGACY_PAIRING, align 4
  %27 = load i32, i32* %9, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %25, %3
  %30 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %31 = load %struct.inquiry_data*, %struct.inquiry_data** %5, align 8
  %32 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %31, i32 0, i32 1
  %33 = call %struct.inquiry_entry* @hci_inquiry_cache_lookup(%struct.hci_dev* %30, i32* %32)
  store %struct.inquiry_entry* %33, %struct.inquiry_entry** %8, align 8
  %34 = load %struct.inquiry_entry*, %struct.inquiry_entry** %8, align 8
  %35 = icmp ne %struct.inquiry_entry* %34, null
  br i1 %35, label %36, label %72

36:                                               ; preds = %29
  %37 = load %struct.inquiry_entry*, %struct.inquiry_entry** %8, align 8
  %38 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @MGMT_DEV_FOUND_LEGACY_PAIRING, align 4
  %44 = load i32, i32* %9, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %42, %36
  %47 = load %struct.inquiry_entry*, %struct.inquiry_entry** %8, align 8
  %48 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @NAME_NEEDED, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %46
  %53 = load %struct.inquiry_data*, %struct.inquiry_data** %5, align 8
  %54 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.inquiry_entry*, %struct.inquiry_entry** %8, align 8
  %57 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %55, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %52
  %62 = load %struct.inquiry_data*, %struct.inquiry_data** %5, align 8
  %63 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.inquiry_entry*, %struct.inquiry_entry** %8, align 8
  %66 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i64 %64, i64* %67, align 8
  %68 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %69 = load %struct.inquiry_entry*, %struct.inquiry_entry** %8, align 8
  %70 = call i32 @hci_inquiry_cache_update_resolve(%struct.hci_dev* %68, %struct.inquiry_entry* %69)
  br label %71

71:                                               ; preds = %61, %52, %46
  br label %103

72:                                               ; preds = %29
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call %struct.inquiry_entry* @kzalloc(i32 40, i32 %73)
  store %struct.inquiry_entry* %74, %struct.inquiry_entry** %8, align 8
  %75 = load %struct.inquiry_entry*, %struct.inquiry_entry** %8, align 8
  %76 = icmp ne %struct.inquiry_entry* %75, null
  br i1 %76, label %81, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* @MGMT_DEV_FOUND_CONFIRM_NAME, align 4
  %79 = load i32, i32* %9, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %9, align 4
  br label %146

81:                                               ; preds = %72
  %82 = load %struct.inquiry_entry*, %struct.inquiry_entry** %8, align 8
  %83 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %82, i32 0, i32 4
  %84 = load %struct.discovery_state*, %struct.discovery_state** %7, align 8
  %85 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %84, i32 0, i32 2
  %86 = call i32 @list_add(i32* %83, i32* %85)
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %81
  %90 = load i64, i64* @NAME_KNOWN, align 8
  %91 = load %struct.inquiry_entry*, %struct.inquiry_entry** %8, align 8
  %92 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  br label %102

93:                                               ; preds = %81
  %94 = load i64, i64* @NAME_NOT_KNOWN, align 8
  %95 = load %struct.inquiry_entry*, %struct.inquiry_entry** %8, align 8
  %96 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  %97 = load %struct.inquiry_entry*, %struct.inquiry_entry** %8, align 8
  %98 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %97, i32 0, i32 3
  %99 = load %struct.discovery_state*, %struct.discovery_state** %7, align 8
  %100 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %99, i32 0, i32 1
  %101 = call i32 @list_add(i32* %98, i32* %100)
  br label %102

102:                                              ; preds = %93, %89
  br label %103

103:                                              ; preds = %102, %71
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %125

106:                                              ; preds = %103
  %107 = load %struct.inquiry_entry*, %struct.inquiry_entry** %8, align 8
  %108 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @NAME_KNOWN, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %125

112:                                              ; preds = %106
  %113 = load %struct.inquiry_entry*, %struct.inquiry_entry** %8, align 8
  %114 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @NAME_PENDING, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %112
  %119 = load i64, i64* @NAME_KNOWN, align 8
  %120 = load %struct.inquiry_entry*, %struct.inquiry_entry** %8, align 8
  %121 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %120, i32 0, i32 0
  store i64 %119, i64* %121, align 8
  %122 = load %struct.inquiry_entry*, %struct.inquiry_entry** %8, align 8
  %123 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %122, i32 0, i32 3
  %124 = call i32 @list_del(i32* %123)
  br label %125

125:                                              ; preds = %118, %112, %106, %103
  %126 = load %struct.inquiry_entry*, %struct.inquiry_entry** %8, align 8
  %127 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %126, i32 0, i32 2
  %128 = load %struct.inquiry_data*, %struct.inquiry_data** %5, align 8
  %129 = call i32 @memcpy(%struct.TYPE_2__* %127, %struct.inquiry_data* %128, i32 16)
  %130 = load i8*, i8** @jiffies, align 8
  %131 = load %struct.inquiry_entry*, %struct.inquiry_entry** %8, align 8
  %132 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %131, i32 0, i32 1
  store i8* %130, i8** %132, align 8
  %133 = load i8*, i8** @jiffies, align 8
  %134 = load %struct.discovery_state*, %struct.discovery_state** %7, align 8
  %135 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %134, i32 0, i32 0
  store i8* %133, i8** %135, align 8
  %136 = load %struct.inquiry_entry*, %struct.inquiry_entry** %8, align 8
  %137 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @NAME_NOT_KNOWN, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %125
  %142 = load i32, i32* @MGMT_DEV_FOUND_CONFIRM_NAME, align 4
  %143 = load i32, i32* %9, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %9, align 4
  br label %145

145:                                              ; preds = %141, %125
  br label %146

146:                                              ; preds = %145, %77
  %147 = load i32, i32* %9, align 4
  ret i32 %147
}

declare dso_local i32 @BT_DBG(i8*, %struct.discovery_state*, i32*) #1

declare dso_local i32 @hci_remove_remote_oob_data(%struct.hci_dev*, i32*, i32) #1

declare dso_local %struct.inquiry_entry* @hci_inquiry_cache_lookup(%struct.hci_dev*, i32*) #1

declare dso_local i32 @hci_inquiry_cache_update_resolve(%struct.hci_dev*, %struct.inquiry_entry*) #1

declare dso_local %struct.inquiry_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_2__*, %struct.inquiry_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
