; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_link_security.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_link_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32, i32, i32 }
%struct.mgmt_mode = type { i32 }
%struct.mgmt_pending_cmd = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"request for %s\00", align 1
@MGMT_OP_SET_LINK_SECURITY = common dso_local global i32 0, align 4
@MGMT_STATUS_INVALID_PARAMS = common dso_local global i32 0, align 4
@HCI_LINK_SECURITY = common dso_local global i32 0, align 4
@MGMT_STATUS_BUSY = common dso_local global i32 0, align 4
@HCI_AUTH = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HCI_OP_WRITE_AUTH_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @set_link_security to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_link_security(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mgmt_mode*, align 8
  %11 = alloca %struct.mgmt_pending_cmd*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.mgmt_mode*
  store %struct.mgmt_mode* %17, %struct.mgmt_mode** %10, align 8
  %18 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %19 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %23 = call i32 @mgmt_bredr_support(%struct.hci_dev* %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %4
  %27 = load %struct.sock*, %struct.sock** %6, align 8
  %28 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %29 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MGMT_OP_SET_LINK_SECURITY, align 4
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @mgmt_cmd_status(%struct.sock* %27, i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %5, align 4
  br label %148

34:                                               ; preds = %4
  %35 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %36 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %41 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.sock*, %struct.sock** %6, align 8
  %46 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %47 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MGMT_OP_SET_LINK_SECURITY, align 4
  %50 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %51 = call i32 @mgmt_cmd_status(%struct.sock* %45, i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %5, align 4
  br label %148

52:                                               ; preds = %39, %34
  %53 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %54 = call i32 @hci_dev_lock(%struct.hci_dev* %53)
  %55 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %56 = call i32 @hdev_is_powered(%struct.hci_dev* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %90, label %58

58:                                               ; preds = %52
  store i32 0, i32* %15, align 4
  %59 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %60 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %67 = load i32, i32* @HCI_LINK_SECURITY, align 4
  %68 = call i32 @hci_dev_test_flag(%struct.hci_dev* %66, i32 %67)
  %69 = icmp ne i32 %65, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %58
  %71 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %72 = load i32, i32* @HCI_LINK_SECURITY, align 4
  %73 = call i32 @hci_dev_change_flag(%struct.hci_dev* %71, i32 %72)
  store i32 1, i32* %15, align 4
  br label %74

74:                                               ; preds = %70, %58
  %75 = load %struct.sock*, %struct.sock** %6, align 8
  %76 = load i32, i32* @MGMT_OP_SET_LINK_SECURITY, align 4
  %77 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %78 = call i32 @send_settings_rsp(%struct.sock* %75, i32 %76, %struct.hci_dev* %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %144

82:                                               ; preds = %74
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %87 = load %struct.sock*, %struct.sock** %6, align 8
  %88 = call i32 @new_settings(%struct.hci_dev* %86, %struct.sock* %87)
  store i32 %88, i32* %14, align 4
  br label %89

89:                                               ; preds = %85, %82
  br label %144

90:                                               ; preds = %52
  %91 = load i32, i32* @MGMT_OP_SET_LINK_SECURITY, align 4
  %92 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %93 = call i64 @pending_find(i32 %91, %struct.hci_dev* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %90
  %96 = load %struct.sock*, %struct.sock** %6, align 8
  %97 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %98 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @MGMT_OP_SET_LINK_SECURITY, align 4
  %101 = load i32, i32* @MGMT_STATUS_BUSY, align 4
  %102 = call i32 @mgmt_cmd_status(%struct.sock* %96, i32 %99, i32 %100, i32 %101)
  store i32 %102, i32* %14, align 4
  br label %144

103:                                              ; preds = %90
  %104 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %105 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* @HCI_AUTH, align 4
  %112 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %113 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %112, i32 0, i32 0
  %114 = call i32 @test_bit(i32 %111, i32* %113)
  %115 = load i32, i32* %12, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %103
  %118 = load %struct.sock*, %struct.sock** %6, align 8
  %119 = load i32, i32* @MGMT_OP_SET_LINK_SECURITY, align 4
  %120 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %121 = call i32 @send_settings_rsp(%struct.sock* %118, i32 %119, %struct.hci_dev* %120)
  store i32 %121, i32* %14, align 4
  br label %144

122:                                              ; preds = %103
  %123 = load %struct.sock*, %struct.sock** %6, align 8
  %124 = load i32, i32* @MGMT_OP_SET_LINK_SECURITY, align 4
  %125 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %126 = load i8*, i8** %8, align 8
  %127 = load i32, i32* %9, align 4
  %128 = call %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock* %123, i32 %124, %struct.hci_dev* %125, i8* %126, i32 %127)
  store %struct.mgmt_pending_cmd* %128, %struct.mgmt_pending_cmd** %11, align 8
  %129 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %11, align 8
  %130 = icmp ne %struct.mgmt_pending_cmd* %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %122
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %14, align 4
  br label %144

134:                                              ; preds = %122
  %135 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %136 = load i32, i32* @HCI_OP_WRITE_AUTH_ENABLE, align 4
  %137 = call i32 @hci_send_cmd(%struct.hci_dev* %135, i32 %136, i32 4, i32* %12)
  store i32 %137, i32* %14, align 4
  %138 = load i32, i32* %14, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %11, align 8
  %142 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %141)
  br label %144

143:                                              ; preds = %134
  br label %144

144:                                              ; preds = %143, %140, %131, %117, %95, %89, %81
  %145 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %146 = call i32 @hci_dev_unlock(%struct.hci_dev* %145)
  %147 = load i32, i32* %14, align 4
  store i32 %147, i32* %5, align 4
  br label %148

148:                                              ; preds = %144, %44, %26
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @mgmt_bredr_support(%struct.hci_dev*) #1

declare dso_local i32 @mgmt_cmd_status(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @hdev_is_powered(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_change_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @send_settings_rsp(%struct.sock*, i32, %struct.hci_dev*) #1

declare dso_local i32 @new_settings(%struct.hci_dev*, %struct.sock*) #1

declare dso_local i64 @pending_find(i32, %struct.hci_dev*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock*, i32, %struct.hci_dev*, i8*, i32) #1

declare dso_local i32 @hci_send_cmd(%struct.hci_dev*, i32, i32, i32*) #1

declare dso_local i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
