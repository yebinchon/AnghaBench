; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_device_found.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_device_found.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.mgmt_ev_device_found = type { i64*, i32, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@ACL_LINK = common dso_local global i64 0, align 8
@LE_LINK = common dso_local global i64 0, align 8
@EIR_FLAGS = common dso_local global i32 0, align 4
@LE_AD_LIMITED = common dso_local global i64 0, align 8
@HCI_RSSI_INVALID = common dso_local global i64 0, align 8
@EIR_CLASS_OF_DEV = common dso_local global i32 0, align 4
@MGMT_EV_DEVICE_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mgmt_device_found(%struct.hci_dev* %0, i32* %1, i64 %2, i64 %3, i64* %4, i64 %5, i32 %6, i64* %7, i32 %8, i64* %9, i64 %10) #0 {
  %12 = alloca %struct.hci_dev*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64*, align 8
  %22 = alloca i64, align 8
  %23 = alloca [512 x i8], align 16
  %24 = alloca %struct.mgmt_ev_device_found*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %12, align 8
  store i32* %1, i32** %13, align 8
  store i64 %2, i64* %14, align 8
  store i64 %3, i64* %15, align 8
  store i64* %4, i64** %16, align 8
  store i64 %5, i64* %17, align 8
  store i32 %6, i32* %18, align 4
  store i64* %7, i64** %19, align 8
  store i32 %8, i32* %20, align 4
  store i64* %9, i64** %21, align 8
  store i64 %10, i64* %22, align 8
  %27 = getelementptr inbounds [512 x i8], [512 x i8]* %23, i64 0, i64 0
  %28 = bitcast i8* %27 to %struct.mgmt_ev_device_found*
  store %struct.mgmt_ev_device_found* %28, %struct.mgmt_ev_device_found** %24, align 8
  %29 = load %struct.hci_dev*, %struct.hci_dev** %12, align 8
  %30 = call i32 @hci_discovery_active(%struct.hci_dev* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %11
  %33 = load i64, i64* %14, align 8
  %34 = load i64, i64* @ACL_LINK, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %205

37:                                               ; preds = %32
  %38 = load i64, i64* %14, align 8
  %39 = load i64, i64* @LE_LINK, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load %struct.hci_dev*, %struct.hci_dev** %12, align 8
  %43 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %42, i32 0, i32 1
  %44 = call i64 @list_empty(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %205

47:                                               ; preds = %41, %37
  br label %48

48:                                               ; preds = %47, %11
  %49 = load %struct.hci_dev*, %struct.hci_dev** %12, align 8
  %50 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %48
  %55 = load %struct.hci_dev*, %struct.hci_dev** %12, align 8
  %56 = load i64, i64* %17, align 8
  %57 = load i64*, i64** %19, align 8
  %58 = load i32, i32* %20, align 4
  %59 = load i64*, i64** %21, align 8
  %60 = load i64, i64* %22, align 8
  %61 = call i32 @is_filter_match(%struct.hci_dev* %55, i64 %56, i64* %57, i32 %58, i64* %59, i64 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %54
  br label %205

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64, %48
  %66 = load %struct.hci_dev*, %struct.hci_dev** %12, align 8
  %67 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %99

71:                                               ; preds = %65
  %72 = load i64*, i64** %16, align 8
  %73 = icmp ne i64* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load i64*, i64** %16, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 1
  %77 = load i64, i64* %76, align 8
  %78 = and i64 %77, 32
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %74
  br label %205

81:                                               ; preds = %74
  br label %98

82:                                               ; preds = %71
  %83 = load i64*, i64** %19, align 8
  %84 = load i32, i32* %20, align 4
  %85 = load i32, i32* @EIR_FLAGS, align 4
  %86 = call i64* @eir_get_data(i64* %83, i32 %84, i32 %85, i32* null)
  store i64* %86, i64** %26, align 8
  %87 = load i64*, i64** %26, align 8
  %88 = icmp ne i64* %87, null
  br i1 %88, label %89, label %96

89:                                               ; preds = %82
  %90 = load i64*, i64** %26, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @LE_AD_LIMITED, align 8
  %94 = and i64 %92, %93
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %89, %82
  br label %205

97:                                               ; preds = %89
  br label %98

98:                                               ; preds = %97, %81
  br label %99

99:                                               ; preds = %98, %65
  %100 = load i32, i32* %20, align 4
  %101 = sext i32 %100 to i64
  %102 = add i64 32, %101
  %103 = load i64, i64* %22, align 8
  %104 = add i64 %102, %103
  %105 = add i64 %104, 5
  %106 = icmp ugt i64 %105, 512
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  br label %205

108:                                              ; preds = %99
  %109 = getelementptr inbounds [512 x i8], [512 x i8]* %23, i64 0, i64 0
  %110 = call i32 @memset(i8* %109, i32 0, i32 512)
  %111 = load i64, i64* %17, align 8
  %112 = load i64, i64* @HCI_RSSI_INVALID, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %125

114:                                              ; preds = %108
  %115 = load %struct.hci_dev*, %struct.hci_dev** %12, align 8
  %116 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %114
  %121 = load i64, i64* %14, align 8
  %122 = load i64, i64* @ACL_LINK, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  store i64 0, i64* %17, align 8
  br label %125

125:                                              ; preds = %124, %120, %114, %108
  %126 = load %struct.mgmt_ev_device_found*, %struct.mgmt_ev_device_found** %24, align 8
  %127 = getelementptr inbounds %struct.mgmt_ev_device_found, %struct.mgmt_ev_device_found* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i32*, i32** %13, align 8
  %130 = call i32 @bacpy(i32* %128, i32* %129)
  %131 = load i64, i64* %14, align 8
  %132 = load i64, i64* %15, align 8
  %133 = call i32 @link_to_bdaddr(i64 %131, i64 %132)
  %134 = load %struct.mgmt_ev_device_found*, %struct.mgmt_ev_device_found** %24, align 8
  %135 = getelementptr inbounds %struct.mgmt_ev_device_found, %struct.mgmt_ev_device_found* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  store i32 %133, i32* %136, align 8
  %137 = load i64, i64* %17, align 8
  %138 = load %struct.mgmt_ev_device_found*, %struct.mgmt_ev_device_found** %24, align 8
  %139 = getelementptr inbounds %struct.mgmt_ev_device_found, %struct.mgmt_ev_device_found* %138, i32 0, i32 3
  store i64 %137, i64* %139, align 8
  %140 = load i32, i32* %18, align 4
  %141 = call i32 @cpu_to_le32(i32 %140)
  %142 = load %struct.mgmt_ev_device_found*, %struct.mgmt_ev_device_found** %24, align 8
  %143 = getelementptr inbounds %struct.mgmt_ev_device_found, %struct.mgmt_ev_device_found* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* %20, align 4
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %125
  %147 = load %struct.mgmt_ev_device_found*, %struct.mgmt_ev_device_found** %24, align 8
  %148 = getelementptr inbounds %struct.mgmt_ev_device_found, %struct.mgmt_ev_device_found* %147, i32 0, i32 0
  %149 = load i64*, i64** %148, align 8
  %150 = load i64*, i64** %19, align 8
  %151 = load i32, i32* %20, align 4
  %152 = sext i32 %151 to i64
  %153 = call i32 @memcpy(i64* %149, i64* %150, i64 %152)
  br label %154

154:                                              ; preds = %146, %125
  %155 = load i64*, i64** %16, align 8
  %156 = icmp ne i64* %155, null
  br i1 %156, label %157, label %173

157:                                              ; preds = %154
  %158 = load %struct.mgmt_ev_device_found*, %struct.mgmt_ev_device_found** %24, align 8
  %159 = getelementptr inbounds %struct.mgmt_ev_device_found, %struct.mgmt_ev_device_found* %158, i32 0, i32 0
  %160 = load i64*, i64** %159, align 8
  %161 = load i32, i32* %20, align 4
  %162 = load i32, i32* @EIR_CLASS_OF_DEV, align 4
  %163 = call i64* @eir_get_data(i64* %160, i32 %161, i32 %162, i32* null)
  %164 = icmp ne i64* %163, null
  br i1 %164, label %173, label %165

165:                                              ; preds = %157
  %166 = load %struct.mgmt_ev_device_found*, %struct.mgmt_ev_device_found** %24, align 8
  %167 = getelementptr inbounds %struct.mgmt_ev_device_found, %struct.mgmt_ev_device_found* %166, i32 0, i32 0
  %168 = load i64*, i64** %167, align 8
  %169 = load i32, i32* %20, align 4
  %170 = load i32, i32* @EIR_CLASS_OF_DEV, align 4
  %171 = load i64*, i64** %16, align 8
  %172 = call i32 @eir_append_data(i64* %168, i32 %169, i32 %170, i64* %171, i32 3)
  store i32 %172, i32* %20, align 4
  br label %173

173:                                              ; preds = %165, %157, %154
  %174 = load i64, i64* %22, align 8
  %175 = icmp sgt i64 %174, 0
  br i1 %175, label %176, label %186

176:                                              ; preds = %173
  %177 = load %struct.mgmt_ev_device_found*, %struct.mgmt_ev_device_found** %24, align 8
  %178 = getelementptr inbounds %struct.mgmt_ev_device_found, %struct.mgmt_ev_device_found* %177, i32 0, i32 0
  %179 = load i64*, i64** %178, align 8
  %180 = load i32, i32* %20, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i64, i64* %179, i64 %181
  %183 = load i64*, i64** %21, align 8
  %184 = load i64, i64* %22, align 8
  %185 = call i32 @memcpy(i64* %182, i64* %183, i64 %184)
  br label %186

186:                                              ; preds = %176, %173
  %187 = load i32, i32* %20, align 4
  %188 = sext i32 %187 to i64
  %189 = load i64, i64* %22, align 8
  %190 = add nsw i64 %188, %189
  %191 = trunc i64 %190 to i32
  %192 = call i32 @cpu_to_le16(i32 %191)
  %193 = load %struct.mgmt_ev_device_found*, %struct.mgmt_ev_device_found** %24, align 8
  %194 = getelementptr inbounds %struct.mgmt_ev_device_found, %struct.mgmt_ev_device_found* %193, i32 0, i32 1
  store i32 %192, i32* %194, align 8
  %195 = load i32, i32* %20, align 4
  %196 = sext i32 %195 to i64
  %197 = add i64 32, %196
  %198 = load i64, i64* %22, align 8
  %199 = add i64 %197, %198
  store i64 %199, i64* %25, align 8
  %200 = load i32, i32* @MGMT_EV_DEVICE_FOUND, align 4
  %201 = load %struct.hci_dev*, %struct.hci_dev** %12, align 8
  %202 = load %struct.mgmt_ev_device_found*, %struct.mgmt_ev_device_found** %24, align 8
  %203 = load i64, i64* %25, align 8
  %204 = call i32 @mgmt_event(i32 %200, %struct.hci_dev* %201, %struct.mgmt_ev_device_found* %202, i64 %203, i32* null)
  br label %205

205:                                              ; preds = %186, %107, %96, %80, %63, %46, %36
  ret void
}

declare dso_local i32 @hci_discovery_active(%struct.hci_dev*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @is_filter_match(%struct.hci_dev*, i64, i64*, i32, i64*, i64) #1

declare dso_local i64* @eir_get_data(i64*, i32, i32, i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @link_to_bdaddr(i64, i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

declare dso_local i32 @eir_append_data(i64*, i32, i32, i64*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @mgmt_event(i32, %struct.hci_dev*, %struct.mgmt_ev_device_found*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
