; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_information_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_information_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i64, i32, i32, i32, i32 }
%struct.l2cap_cmd_hdr = type { i64 }
%struct.l2cap_info_rsp = type { i32*, i32, i32 }
%struct.l2cap_info_req = type { i32 }

@EPROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"type 0x%4.4x result 0x%2.2x\00", align 1
@L2CAP_INFO_FEAT_MASK_REQ_DONE = common dso_local global i32 0, align 4
@L2CAP_IR_SUCCESS = common dso_local global i32 0, align 4
@L2CAP_FEAT_FIXED_CHAN = common dso_local global i32 0, align 4
@L2CAP_INFO_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32, i32*)* @l2cap_information_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_information_rsp(%struct.l2cap_conn* %0, %struct.l2cap_cmd_hdr* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.l2cap_conn*, align 8
  %7 = alloca %struct.l2cap_cmd_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.l2cap_info_rsp*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.l2cap_info_req, align 4
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %6, align 8
  store %struct.l2cap_cmd_hdr* %1, %struct.l2cap_cmd_hdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = bitcast i32* %14 to %struct.l2cap_info_rsp*
  store %struct.l2cap_info_rsp* %15, %struct.l2cap_info_rsp** %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 16
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EPROTO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %123

22:                                               ; preds = %4
  %23 = load %struct.l2cap_info_rsp*, %struct.l2cap_info_rsp** %10, align 8
  %24 = getelementptr inbounds %struct.l2cap_info_rsp, %struct.l2cap_info_rsp* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @__le16_to_cpu(i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.l2cap_info_rsp*, %struct.l2cap_info_rsp** %10, align 8
  %28 = getelementptr inbounds %struct.l2cap_info_rsp, %struct.l2cap_info_rsp* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @__le16_to_cpu(i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @BT_DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %7, align 8
  %35 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %38 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %48, label %41

41:                                               ; preds = %22
  %42 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %43 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @L2CAP_INFO_FEAT_MASK_REQ_DONE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41, %22
  store i32 0, i32* %5, align 4
  br label %123

49:                                               ; preds = %41
  %50 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %51 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %50, i32 0, i32 4
  %52 = call i32 @cancel_delayed_work(i32* %51)
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @L2CAP_IR_SUCCESS, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %49
  %57 = load i32, i32* @L2CAP_INFO_FEAT_MASK_REQ_DONE, align 4
  %58 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %59 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %63 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  %64 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %65 = call i32 @l2cap_conn_start(%struct.l2cap_conn* %64)
  store i32 0, i32* %5, align 4
  br label %123

66:                                               ; preds = %49
  %67 = load i32, i32* %11, align 4
  switch i32 %67, label %122 [
    i32 129, label %68
    i32 128, label %105
  ]

68:                                               ; preds = %66
  %69 = load %struct.l2cap_info_rsp*, %struct.l2cap_info_rsp** %10, align 8
  %70 = getelementptr inbounds %struct.l2cap_info_rsp, %struct.l2cap_info_rsp* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @get_unaligned_le32(i32* %71)
  %73 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %74 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %76 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @L2CAP_FEAT_FIXED_CHAN, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %68
  %82 = call i32 @cpu_to_le16(i32 128)
  %83 = getelementptr inbounds %struct.l2cap_info_req, %struct.l2cap_info_req* %13, i32 0, i32 0
  store i32 %82, i32* %83, align 4
  %84 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %85 = call i64 @l2cap_get_ident(%struct.l2cap_conn* %84)
  %86 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %87 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %89 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %90 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* @L2CAP_INFO_REQ, align 4
  %93 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %88, i64 %91, i32 %92, i32 4, %struct.l2cap_info_req* %13)
  br label %104

94:                                               ; preds = %68
  %95 = load i32, i32* @L2CAP_INFO_FEAT_MASK_REQ_DONE, align 4
  %96 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %97 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  %100 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %101 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %100, i32 0, i32 0
  store i64 0, i64* %101, align 8
  %102 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %103 = call i32 @l2cap_conn_start(%struct.l2cap_conn* %102)
  br label %104

104:                                              ; preds = %94, %81
  br label %122

105:                                              ; preds = %66
  %106 = load %struct.l2cap_info_rsp*, %struct.l2cap_info_rsp** %10, align 8
  %107 = getelementptr inbounds %struct.l2cap_info_rsp, %struct.l2cap_info_rsp* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %112 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* @L2CAP_INFO_FEAT_MASK_REQ_DONE, align 4
  %114 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %115 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 8
  %118 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %119 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %118, i32 0, i32 0
  store i64 0, i64* %119, align 8
  %120 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %121 = call i32 @l2cap_conn_start(%struct.l2cap_conn* %120)
  br label %122

122:                                              ; preds = %66, %105, %104
  store i32 0, i32* %5, align 4
  br label %123

123:                                              ; preds = %122, %56, %48, %19
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @l2cap_conn_start(%struct.l2cap_conn*) #1

declare dso_local i32 @get_unaligned_le32(i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @l2cap_get_ident(%struct.l2cap_conn*) #1

declare dso_local i32 @l2cap_send_cmd(%struct.l2cap_conn*, i64, i32, i32, %struct.l2cap_info_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
