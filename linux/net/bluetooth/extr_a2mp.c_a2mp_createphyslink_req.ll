; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_a2mp.c_a2mp_createphyslink_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_a2mp.c_a2mp_createphyslink_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amp_mgr = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.a2mp_cmd = type { i32, i32 }
%struct.a2mp_physlink_req = type { i32, i32, i32 }
%struct.a2mp_physlink_rsp = type { i64, i32, i32 }
%struct.hci_dev = type { i64 }
%struct.hci_conn = type { i32 }
%struct.amp_ctrl = type { i64, i64, i64, i32* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"local_id %d, remote_id %d\00", align 1
@AMP_TYPE_BREDR = common dso_local global i64 0, align 8
@A2MP_STATUS_INVALID_CTRL_ID = common dso_local global i64 0, align 8
@A2MP_STATUS_UNABLE_START_LINK_CREATION = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@A2MP_STATUS_SUCCESS = common dso_local global i64 0, align 8
@A2MP_CREATEPHYSLINK_RSP = common dso_local global i32 0, align 4
@WRITE_REMOTE_AMP_ASSOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amp_mgr*, %struct.sk_buff*, %struct.a2mp_cmd*)* @a2mp_createphyslink_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a2mp_createphyslink_req(%struct.amp_mgr* %0, %struct.sk_buff* %1, %struct.a2mp_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amp_mgr*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.a2mp_cmd*, align 8
  %8 = alloca %struct.a2mp_physlink_req*, align 8
  %9 = alloca %struct.a2mp_physlink_rsp, align 8
  %10 = alloca %struct.hci_dev*, align 8
  %11 = alloca %struct.hci_conn*, align 8
  %12 = alloca %struct.amp_ctrl*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store %struct.amp_mgr* %0, %struct.amp_mgr** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.a2mp_cmd* %2, %struct.a2mp_cmd** %7, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = bitcast i8* %18 to %struct.a2mp_physlink_req*
  store %struct.a2mp_physlink_req* %19, %struct.a2mp_physlink_req** %8, align 8
  %20 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %7, align 8
  %21 = getelementptr inbounds %struct.a2mp_cmd, %struct.a2mp_cmd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le16_to_cpu(i32 %22)
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %24, 12
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %175

29:                                               ; preds = %3
  %30 = load %struct.a2mp_physlink_req*, %struct.a2mp_physlink_req** %8, align 8
  %31 = getelementptr inbounds %struct.a2mp_physlink_req, %struct.a2mp_physlink_req* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.a2mp_physlink_req*, %struct.a2mp_physlink_req** %8, align 8
  %34 = getelementptr inbounds %struct.a2mp_physlink_req, %struct.a2mp_physlink_req* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @BT_DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35)
  %37 = load %struct.a2mp_physlink_req*, %struct.a2mp_physlink_req** %8, align 8
  %38 = getelementptr inbounds %struct.a2mp_physlink_req, %struct.a2mp_physlink_req* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.a2mp_physlink_rsp, %struct.a2mp_physlink_rsp* %9, i32 0, i32 2
  store i32 %39, i32* %40, align 4
  %41 = load %struct.a2mp_physlink_req*, %struct.a2mp_physlink_req** %8, align 8
  %42 = getelementptr inbounds %struct.a2mp_physlink_req, %struct.a2mp_physlink_req* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.a2mp_physlink_rsp, %struct.a2mp_physlink_rsp* %9, i32 0, i32 1
  store i32 %43, i32* %44, align 8
  %45 = load %struct.a2mp_physlink_req*, %struct.a2mp_physlink_req** %8, align 8
  %46 = getelementptr inbounds %struct.a2mp_physlink_req, %struct.a2mp_physlink_req* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.hci_dev* @hci_dev_get(i32 %47)
  store %struct.hci_dev* %48, %struct.hci_dev** %10, align 8
  %49 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %50 = icmp ne %struct.hci_dev* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %29
  %52 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %53 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @AMP_TYPE_BREDR, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51, %29
  %58 = load i64, i64* @A2MP_STATUS_INVALID_CTRL_ID, align 8
  %59 = getelementptr inbounds %struct.a2mp_physlink_rsp, %struct.a2mp_physlink_rsp* %9, i32 0, i32 0
  store i64 %58, i64* %59, align 8
  br label %140

60:                                               ; preds = %51
  %61 = load %struct.amp_mgr*, %struct.amp_mgr** %5, align 8
  %62 = getelementptr inbounds %struct.a2mp_physlink_rsp, %struct.a2mp_physlink_rsp* %9, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call %struct.amp_ctrl* @amp_ctrl_lookup(%struct.amp_mgr* %61, i32 %63)
  store %struct.amp_ctrl* %64, %struct.amp_ctrl** %12, align 8
  %65 = load %struct.amp_ctrl*, %struct.amp_ctrl** %12, align 8
  %66 = icmp ne %struct.amp_ctrl* %65, null
  br i1 %66, label %82, label %67

67:                                               ; preds = %60
  %68 = load %struct.amp_mgr*, %struct.amp_mgr** %5, align 8
  %69 = getelementptr inbounds %struct.a2mp_physlink_rsp, %struct.a2mp_physlink_rsp* %9, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call %struct.amp_ctrl* @amp_ctrl_add(%struct.amp_mgr* %68, i32 %70)
  store %struct.amp_ctrl* %71, %struct.amp_ctrl** %12, align 8
  %72 = load %struct.amp_ctrl*, %struct.amp_ctrl** %12, align 8
  %73 = icmp ne %struct.amp_ctrl* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load %struct.amp_ctrl*, %struct.amp_ctrl** %12, align 8
  %76 = call i32 @amp_ctrl_get(%struct.amp_ctrl* %75)
  br label %81

77:                                               ; preds = %67
  %78 = load i8*, i8** @A2MP_STATUS_UNABLE_START_LINK_CREATION, align 8
  %79 = ptrtoint i8* %78 to i64
  %80 = getelementptr inbounds %struct.a2mp_physlink_rsp, %struct.a2mp_physlink_rsp* %9, i32 0, i32 0
  store i64 %79, i64* %80, align 8
  br label %140

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %81, %60
  %83 = load %struct.amp_ctrl*, %struct.amp_ctrl** %12, align 8
  %84 = icmp ne %struct.amp_ctrl* %83, null
  br i1 %84, label %85, label %119

85:                                               ; preds = %82
  %86 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %7, align 8
  %87 = getelementptr inbounds %struct.a2mp_cmd, %struct.a2mp_cmd* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @le16_to_cpu(i32 %88)
  %90 = sext i32 %89 to i64
  %91 = sub i64 %90, 12
  store i64 %91, i64* %13, align 8
  %92 = load %struct.a2mp_physlink_req*, %struct.a2mp_physlink_req** %8, align 8
  %93 = getelementptr inbounds %struct.a2mp_physlink_req, %struct.a2mp_physlink_req* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i64, i64* %13, align 8
  %96 = load i32, i32* @GFP_KERNEL, align 4
  %97 = call i32* @kmemdup(i32 %94, i64 %95, i32 %96)
  store i32* %97, i32** %14, align 8
  %98 = load i32*, i32** %14, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %105, label %100

100:                                              ; preds = %85
  %101 = load %struct.amp_ctrl*, %struct.amp_ctrl** %12, align 8
  %102 = call i32 @amp_ctrl_put(%struct.amp_ctrl* %101)
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %175

105:                                              ; preds = %85
  %106 = load i32*, i32** %14, align 8
  %107 = load %struct.amp_ctrl*, %struct.amp_ctrl** %12, align 8
  %108 = getelementptr inbounds %struct.amp_ctrl, %struct.amp_ctrl* %107, i32 0, i32 3
  store i32* %106, i32** %108, align 8
  %109 = load i64, i64* %13, align 8
  %110 = load %struct.amp_ctrl*, %struct.amp_ctrl** %12, align 8
  %111 = getelementptr inbounds %struct.amp_ctrl, %struct.amp_ctrl* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  %112 = load i64, i64* %13, align 8
  %113 = load %struct.amp_ctrl*, %struct.amp_ctrl** %12, align 8
  %114 = getelementptr inbounds %struct.amp_ctrl, %struct.amp_ctrl* %113, i32 0, i32 1
  store i64 %112, i64* %114, align 8
  %115 = load %struct.amp_ctrl*, %struct.amp_ctrl** %12, align 8
  %116 = getelementptr inbounds %struct.amp_ctrl, %struct.amp_ctrl* %115, i32 0, i32 2
  store i64 0, i64* %116, align 8
  %117 = load %struct.amp_ctrl*, %struct.amp_ctrl** %12, align 8
  %118 = call i32 @amp_ctrl_put(%struct.amp_ctrl* %117)
  br label %119

119:                                              ; preds = %105, %82
  %120 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %121 = load %struct.amp_mgr*, %struct.amp_mgr** %5, align 8
  %122 = load %struct.a2mp_physlink_req*, %struct.a2mp_physlink_req** %8, align 8
  %123 = getelementptr inbounds %struct.a2mp_physlink_req, %struct.a2mp_physlink_req* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call %struct.hci_conn* @phylink_add(%struct.hci_dev* %120, %struct.amp_mgr* %121, i32 %124, i32 0)
  store %struct.hci_conn* %125, %struct.hci_conn** %11, align 8
  %126 = load %struct.hci_conn*, %struct.hci_conn** %11, align 8
  %127 = icmp ne %struct.hci_conn* %126, null
  br i1 %127, label %128, label %135

128:                                              ; preds = %119
  %129 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %130 = load %struct.amp_mgr*, %struct.amp_mgr** %5, align 8
  %131 = load %struct.hci_conn*, %struct.hci_conn** %11, align 8
  %132 = call i32 @amp_accept_phylink(%struct.hci_dev* %129, %struct.amp_mgr* %130, %struct.hci_conn* %131)
  %133 = load i64, i64* @A2MP_STATUS_SUCCESS, align 8
  %134 = getelementptr inbounds %struct.a2mp_physlink_rsp, %struct.a2mp_physlink_rsp* %9, i32 0, i32 0
  store i64 %133, i64* %134, align 8
  br label %139

135:                                              ; preds = %119
  %136 = load i8*, i8** @A2MP_STATUS_UNABLE_START_LINK_CREATION, align 8
  %137 = ptrtoint i8* %136 to i64
  %138 = getelementptr inbounds %struct.a2mp_physlink_rsp, %struct.a2mp_physlink_rsp* %9, i32 0, i32 0
  store i64 %137, i64* %138, align 8
  br label %139

139:                                              ; preds = %135, %128
  br label %140

140:                                              ; preds = %139, %77, %57
  %141 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %142 = icmp ne %struct.hci_dev* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %145 = call i32 @hci_dev_put(%struct.hci_dev* %144)
  br label %146

146:                                              ; preds = %143, %140
  %147 = getelementptr inbounds %struct.a2mp_physlink_rsp, %struct.a2mp_physlink_rsp* %9, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @A2MP_STATUS_SUCCESS, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %158

151:                                              ; preds = %146
  %152 = load %struct.amp_mgr*, %struct.amp_mgr** %5, align 8
  %153 = load i32, i32* @A2MP_CREATEPHYSLINK_RSP, align 4
  %154 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %7, align 8
  %155 = getelementptr inbounds %struct.a2mp_cmd, %struct.a2mp_cmd* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @a2mp_send(%struct.amp_mgr* %152, i32 %153, i32 %156, i32 16, %struct.a2mp_physlink_rsp* %9)
  br label %168

158:                                              ; preds = %146
  %159 = load i32, i32* @WRITE_REMOTE_AMP_ASSOC, align 4
  %160 = load %struct.amp_mgr*, %struct.amp_mgr** %5, align 8
  %161 = getelementptr inbounds %struct.amp_mgr, %struct.amp_mgr* %160, i32 0, i32 1
  %162 = call i32 @set_bit(i32 %159, i32* %161)
  %163 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %7, align 8
  %164 = getelementptr inbounds %struct.a2mp_cmd, %struct.a2mp_cmd* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.amp_mgr*, %struct.amp_mgr** %5, align 8
  %167 = getelementptr inbounds %struct.amp_mgr, %struct.amp_mgr* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 4
  br label %168

168:                                              ; preds = %158, %151
  %169 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %170 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %7, align 8
  %171 = getelementptr inbounds %struct.a2mp_cmd, %struct.a2mp_cmd* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @le16_to_cpu(i32 %172)
  %174 = call i32 @skb_pull(%struct.sk_buff* %169, i32 %173)
  store i32 0, i32* %4, align 4
  br label %175

175:                                              ; preds = %168, %100, %26
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local %struct.hci_dev* @hci_dev_get(i32) #1

declare dso_local %struct.amp_ctrl* @amp_ctrl_lookup(%struct.amp_mgr*, i32) #1

declare dso_local %struct.amp_ctrl* @amp_ctrl_add(%struct.amp_mgr*, i32) #1

declare dso_local i32 @amp_ctrl_get(%struct.amp_ctrl*) #1

declare dso_local i32* @kmemdup(i32, i64, i32) #1

declare dso_local i32 @amp_ctrl_put(%struct.amp_ctrl*) #1

declare dso_local %struct.hci_conn* @phylink_add(%struct.hci_dev*, %struct.amp_mgr*, i32, i32) #1

declare dso_local i32 @amp_accept_phylink(%struct.hci_dev*, %struct.amp_mgr*, %struct.hci_conn*) #1

declare dso_local i32 @hci_dev_put(%struct.hci_dev*) #1

declare dso_local i32 @a2mp_send(%struct.amp_mgr*, i32, i32, i32, %struct.a2mp_physlink_rsp*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
