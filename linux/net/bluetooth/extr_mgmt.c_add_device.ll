; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32, i32, i32 }
%struct.mgmt_cp_add_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@BDADDR_ANY = common dso_local global i32 0, align 4
@MGMT_OP_ADD_DEVICE = common dso_local global i32 0, align 4
@MGMT_STATUS_INVALID_PARAMS = common dso_local global i32 0, align 4
@BDADDR_BREDR = common dso_local global i64 0, align 8
@HCI_AUTO_CONN_ALWAYS = common dso_local global i32 0, align 4
@HCI_AUTO_CONN_DIRECT = common dso_local global i32 0, align 4
@HCI_AUTO_CONN_REPORT = common dso_local global i32 0, align 4
@MGMT_STATUS_FAILED = common dso_local global i32 0, align 4
@MGMT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @add_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_device(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mgmt_cp_add_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.mgmt_cp_add_device*
  store %struct.mgmt_cp_add_device* %15, %struct.mgmt_cp_add_device** %10, align 8
  %16 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %17 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.mgmt_cp_add_device*, %struct.mgmt_cp_add_device** %10, align 8
  %21 = getelementptr inbounds %struct.mgmt_cp_add_device, %struct.mgmt_cp_add_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @bdaddr_type_is_valid(i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %4
  %27 = load %struct.mgmt_cp_add_device*, %struct.mgmt_cp_add_device** %10, align 8
  %28 = getelementptr inbounds %struct.mgmt_cp_add_device, %struct.mgmt_cp_add_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* @BDADDR_ANY, align 4
  %31 = call i32 @bacmp(i32* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %26, %4
  %34 = load %struct.sock*, %struct.sock** %6, align 8
  %35 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %36 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MGMT_OP_ADD_DEVICE, align 4
  %39 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %40 = load %struct.mgmt_cp_add_device*, %struct.mgmt_cp_add_device** %10, align 8
  %41 = getelementptr inbounds %struct.mgmt_cp_add_device, %struct.mgmt_cp_add_device* %40, i32 0, i32 1
  %42 = call i32 @mgmt_cmd_complete(%struct.sock* %34, i32 %37, i32 %38, i32 %39, %struct.TYPE_2__* %41, i32 16)
  store i32 %42, i32* %5, align 4
  br label %197

43:                                               ; preds = %26
  %44 = load %struct.mgmt_cp_add_device*, %struct.mgmt_cp_add_device** %10, align 8
  %45 = getelementptr inbounds %struct.mgmt_cp_add_device, %struct.mgmt_cp_add_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %43
  %49 = load %struct.mgmt_cp_add_device*, %struct.mgmt_cp_add_device** %10, align 8
  %50 = getelementptr inbounds %struct.mgmt_cp_add_device, %struct.mgmt_cp_add_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %53, label %68

53:                                               ; preds = %48
  %54 = load %struct.mgmt_cp_add_device*, %struct.mgmt_cp_add_device** %10, align 8
  %55 = getelementptr inbounds %struct.mgmt_cp_add_device, %struct.mgmt_cp_add_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 2
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load %struct.sock*, %struct.sock** %6, align 8
  %60 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %61 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @MGMT_OP_ADD_DEVICE, align 4
  %64 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %65 = load %struct.mgmt_cp_add_device*, %struct.mgmt_cp_add_device** %10, align 8
  %66 = getelementptr inbounds %struct.mgmt_cp_add_device, %struct.mgmt_cp_add_device* %65, i32 0, i32 1
  %67 = call i32 @mgmt_cmd_complete(%struct.sock* %59, i32 %62, i32 %63, i32 %64, %struct.TYPE_2__* %66, i32 16)
  store i32 %67, i32* %5, align 4
  br label %197

68:                                               ; preds = %53, %48, %43
  %69 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %70 = call i32 @hci_dev_lock(%struct.hci_dev* %69)
  %71 = load %struct.mgmt_cp_add_device*, %struct.mgmt_cp_add_device** %10, align 8
  %72 = getelementptr inbounds %struct.mgmt_cp_add_device, %struct.mgmt_cp_add_device* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @BDADDR_BREDR, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %109

77:                                               ; preds = %68
  %78 = load %struct.mgmt_cp_add_device*, %struct.mgmt_cp_add_device** %10, align 8
  %79 = getelementptr inbounds %struct.mgmt_cp_add_device, %struct.mgmt_cp_add_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 1
  br i1 %81, label %82, label %92

82:                                               ; preds = %77
  %83 = load %struct.sock*, %struct.sock** %6, align 8
  %84 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %85 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @MGMT_OP_ADD_DEVICE, align 4
  %88 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %89 = load %struct.mgmt_cp_add_device*, %struct.mgmt_cp_add_device** %10, align 8
  %90 = getelementptr inbounds %struct.mgmt_cp_add_device, %struct.mgmt_cp_add_device* %89, i32 0, i32 1
  %91 = call i32 @mgmt_cmd_complete(%struct.sock* %83, i32 %86, i32 %87, i32 %88, %struct.TYPE_2__* %90, i32 16)
  store i32 %91, i32* %13, align 4
  br label %193

92:                                               ; preds = %77
  %93 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %94 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %93, i32 0, i32 1
  %95 = load %struct.mgmt_cp_add_device*, %struct.mgmt_cp_add_device** %10, align 8
  %96 = getelementptr inbounds %struct.mgmt_cp_add_device, %struct.mgmt_cp_add_device* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load %struct.mgmt_cp_add_device*, %struct.mgmt_cp_add_device** %10, align 8
  %99 = getelementptr inbounds %struct.mgmt_cp_add_device, %struct.mgmt_cp_add_device* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @hci_bdaddr_list_add(i32* %94, i32* %97, i64 %101)
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %92
  br label %193

106:                                              ; preds = %92
  %107 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %108 = call i32 @hci_req_update_scan(%struct.hci_dev* %107)
  br label %170

109:                                              ; preds = %68
  %110 = load %struct.mgmt_cp_add_device*, %struct.mgmt_cp_add_device** %10, align 8
  %111 = getelementptr inbounds %struct.mgmt_cp_add_device, %struct.mgmt_cp_add_device* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @le_addr_type(i64 %113)
  store i32 %114, i32* %12, align 4
  %115 = load %struct.mgmt_cp_add_device*, %struct.mgmt_cp_add_device** %10, align 8
  %116 = getelementptr inbounds %struct.mgmt_cp_add_device, %struct.mgmt_cp_add_device* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %117, 2
  br i1 %118, label %119, label %121

119:                                              ; preds = %109
  %120 = load i32, i32* @HCI_AUTO_CONN_ALWAYS, align 4
  store i32 %120, i32* %11, align 4
  br label %131

121:                                              ; preds = %109
  %122 = load %struct.mgmt_cp_add_device*, %struct.mgmt_cp_add_device** %10, align 8
  %123 = getelementptr inbounds %struct.mgmt_cp_add_device, %struct.mgmt_cp_add_device* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = load i32, i32* @HCI_AUTO_CONN_DIRECT, align 4
  store i32 %127, i32* %11, align 4
  br label %130

128:                                              ; preds = %121
  %129 = load i32, i32* @HCI_AUTO_CONN_REPORT, align 4
  store i32 %129, i32* %11, align 4
  br label %130

130:                                              ; preds = %128, %126
  br label %131

131:                                              ; preds = %130, %119
  %132 = load %struct.mgmt_cp_add_device*, %struct.mgmt_cp_add_device** %10, align 8
  %133 = getelementptr inbounds %struct.mgmt_cp_add_device, %struct.mgmt_cp_add_device* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  %135 = load i32, i32* %12, align 4
  %136 = call i32 @hci_is_identity_address(i32* %134, i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %148, label %138

138:                                              ; preds = %131
  %139 = load %struct.sock*, %struct.sock** %6, align 8
  %140 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %141 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @MGMT_OP_ADD_DEVICE, align 4
  %144 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %145 = load %struct.mgmt_cp_add_device*, %struct.mgmt_cp_add_device** %10, align 8
  %146 = getelementptr inbounds %struct.mgmt_cp_add_device, %struct.mgmt_cp_add_device* %145, i32 0, i32 1
  %147 = call i32 @mgmt_cmd_complete(%struct.sock* %139, i32 %142, i32 %143, i32 %144, %struct.TYPE_2__* %146, i32 16)
  store i32 %147, i32* %13, align 4
  br label %193

148:                                              ; preds = %131
  %149 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %150 = load %struct.mgmt_cp_add_device*, %struct.mgmt_cp_add_device** %10, align 8
  %151 = getelementptr inbounds %struct.mgmt_cp_add_device, %struct.mgmt_cp_add_device* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* %11, align 4
  %155 = call i64 @hci_conn_params_set(%struct.hci_dev* %149, i32* %152, i32 %153, i32 %154)
  %156 = icmp slt i64 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %148
  %158 = load %struct.sock*, %struct.sock** %6, align 8
  %159 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %160 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @MGMT_OP_ADD_DEVICE, align 4
  %163 = load i32, i32* @MGMT_STATUS_FAILED, align 4
  %164 = load %struct.mgmt_cp_add_device*, %struct.mgmt_cp_add_device** %10, align 8
  %165 = getelementptr inbounds %struct.mgmt_cp_add_device, %struct.mgmt_cp_add_device* %164, i32 0, i32 1
  %166 = call i32 @mgmt_cmd_complete(%struct.sock* %158, i32 %161, i32 %162, i32 %163, %struct.TYPE_2__* %165, i32 16)
  store i32 %166, i32* %13, align 4
  br label %193

167:                                              ; preds = %148
  %168 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %169 = call i32 @hci_update_background_scan(%struct.hci_dev* %168)
  br label %170

170:                                              ; preds = %167, %106
  %171 = load %struct.sock*, %struct.sock** %6, align 8
  %172 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %173 = load %struct.mgmt_cp_add_device*, %struct.mgmt_cp_add_device** %10, align 8
  %174 = getelementptr inbounds %struct.mgmt_cp_add_device, %struct.mgmt_cp_add_device* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 1
  %176 = load %struct.mgmt_cp_add_device*, %struct.mgmt_cp_add_device** %10, align 8
  %177 = getelementptr inbounds %struct.mgmt_cp_add_device, %struct.mgmt_cp_add_device* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.mgmt_cp_add_device*, %struct.mgmt_cp_add_device** %10, align 8
  %181 = getelementptr inbounds %struct.mgmt_cp_add_device, %struct.mgmt_cp_add_device* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @device_added(%struct.sock* %171, %struct.hci_dev* %172, i32* %175, i64 %179, i32 %182)
  %184 = load %struct.sock*, %struct.sock** %6, align 8
  %185 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %186 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @MGMT_OP_ADD_DEVICE, align 4
  %189 = load i32, i32* @MGMT_STATUS_SUCCESS, align 4
  %190 = load %struct.mgmt_cp_add_device*, %struct.mgmt_cp_add_device** %10, align 8
  %191 = getelementptr inbounds %struct.mgmt_cp_add_device, %struct.mgmt_cp_add_device* %190, i32 0, i32 1
  %192 = call i32 @mgmt_cmd_complete(%struct.sock* %184, i32 %187, i32 %188, i32 %189, %struct.TYPE_2__* %191, i32 16)
  store i32 %192, i32* %13, align 4
  br label %193

193:                                              ; preds = %170, %157, %138, %105, %82
  %194 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %195 = call i32 @hci_dev_unlock(%struct.hci_dev* %194)
  %196 = load i32, i32* %13, align 4
  store i32 %196, i32* %5, align 4
  br label %197

197:                                              ; preds = %193, %58, %33
  %198 = load i32, i32* %5, align 4
  ret i32 %198
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @bdaddr_type_is_valid(i64) #1

declare dso_local i32 @bacmp(i32*, i32) #1

declare dso_local i32 @mgmt_cmd_complete(%struct.sock*, i32, i32, i32, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @hci_bdaddr_list_add(i32*, i32*, i64) #1

declare dso_local i32 @hci_req_update_scan(%struct.hci_dev*) #1

declare dso_local i32 @le_addr_type(i64) #1

declare dso_local i32 @hci_is_identity_address(i32*, i32) #1

declare dso_local i64 @hci_conn_params_set(%struct.hci_dev*, i32*, i32, i32) #1

declare dso_local i32 @hci_update_background_scan(%struct.hci_dev*) #1

declare dso_local i32 @device_added(%struct.sock*, %struct.hci_dev*, i32*, i64, i32) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
