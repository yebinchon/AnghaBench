; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_information_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_information_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32 }
%struct.l2cap_cmd_hdr = type { i32 }
%struct.l2cap_info_rsp = type { i32*, i8*, i8* }
%struct.l2cap_info_req = type { i32 }

@EPROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"type 0x%4.4x\00", align 1
@L2CAP_IT_FEAT_MASK = common dso_local global i32 0, align 4
@l2cap_feat_mask = common dso_local global i32 0, align 4
@L2CAP_IR_SUCCESS = common dso_local global i32 0, align 4
@disable_ertm = common dso_local global i32 0, align 4
@L2CAP_FEAT_ERTM = common dso_local global i32 0, align 4
@L2CAP_FEAT_STREAMING = common dso_local global i32 0, align 4
@L2CAP_FEAT_FCS = common dso_local global i32 0, align 4
@L2CAP_FC_A2MP = common dso_local global i32 0, align 4
@L2CAP_FEAT_EXT_FLOW = common dso_local global i32 0, align 4
@L2CAP_FEAT_EXT_WINDOW = common dso_local global i32 0, align 4
@L2CAP_INFO_RSP = common dso_local global i32 0, align 4
@L2CAP_IT_FIXED_CHAN = common dso_local global i32 0, align 4
@L2CAP_IR_NOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32, %struct.l2cap_info_rsp*)* @l2cap_information_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_information_req(%struct.l2cap_conn* %0, %struct.l2cap_cmd_hdr* %1, i32 %2, %struct.l2cap_info_rsp* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.l2cap_conn*, align 8
  %7 = alloca %struct.l2cap_cmd_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.l2cap_info_rsp*, align 8
  %10 = alloca %struct.l2cap_info_req*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [8 x %struct.l2cap_info_rsp], align 16
  %13 = alloca i32, align 4
  %14 = alloca %struct.l2cap_info_rsp*, align 8
  %15 = alloca [12 x %struct.l2cap_info_rsp], align 16
  %16 = alloca %struct.l2cap_info_rsp*, align 8
  %17 = alloca %struct.l2cap_info_rsp, align 8
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %6, align 8
  store %struct.l2cap_cmd_hdr* %1, %struct.l2cap_cmd_hdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.l2cap_info_rsp* %3, %struct.l2cap_info_rsp** %9, align 8
  %18 = load %struct.l2cap_info_rsp*, %struct.l2cap_info_rsp** %9, align 8
  %19 = bitcast %struct.l2cap_info_rsp* %18 to %struct.l2cap_info_req*
  store %struct.l2cap_info_req* %19, %struct.l2cap_info_req** %10, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ne i64 %21, 4
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @EPROTO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %131

26:                                               ; preds = %4
  %27 = load %struct.l2cap_info_req*, %struct.l2cap_info_req** %10, align 8
  %28 = getelementptr inbounds %struct.l2cap_info_req, %struct.l2cap_info_req* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @__le16_to_cpu(i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @BT_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @L2CAP_IT_FEAT_MASK, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %83

36:                                               ; preds = %26
  %37 = load i32, i32* @l2cap_feat_mask, align 4
  store i32 %37, i32* %13, align 4
  %38 = getelementptr inbounds [8 x %struct.l2cap_info_rsp], [8 x %struct.l2cap_info_rsp]* %12, i64 0, i64 0
  store %struct.l2cap_info_rsp* %38, %struct.l2cap_info_rsp** %14, align 8
  %39 = load i32, i32* @L2CAP_IT_FEAT_MASK, align 4
  %40 = call i8* @cpu_to_le16(i32 %39)
  %41 = load %struct.l2cap_info_rsp*, %struct.l2cap_info_rsp** %14, align 8
  %42 = getelementptr inbounds %struct.l2cap_info_rsp, %struct.l2cap_info_rsp* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* @L2CAP_IR_SUCCESS, align 4
  %44 = call i8* @cpu_to_le16(i32 %43)
  %45 = load %struct.l2cap_info_rsp*, %struct.l2cap_info_rsp** %14, align 8
  %46 = getelementptr inbounds %struct.l2cap_info_rsp, %struct.l2cap_info_rsp* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* @disable_ertm, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %36
  %50 = load i32, i32* @L2CAP_FEAT_ERTM, align 4
  %51 = load i32, i32* @L2CAP_FEAT_STREAMING, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @L2CAP_FEAT_FCS, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %13, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %49, %36
  %58 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %59 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @L2CAP_FC_A2MP, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load i32, i32* @L2CAP_FEAT_EXT_FLOW, align 4
  %66 = load i32, i32* @L2CAP_FEAT_EXT_WINDOW, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* %13, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %64, %57
  %71 = load i32, i32* %13, align 4
  %72 = load %struct.l2cap_info_rsp*, %struct.l2cap_info_rsp** %14, align 8
  %73 = getelementptr inbounds %struct.l2cap_info_rsp, %struct.l2cap_info_rsp* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @put_unaligned_le32(i32 %71, i32* %74)
  %76 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %77 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %7, align 8
  %78 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @L2CAP_INFO_RSP, align 4
  %81 = getelementptr inbounds [8 x %struct.l2cap_info_rsp], [8 x %struct.l2cap_info_rsp]* %12, i64 0, i64 0
  %82 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %76, i32 %79, i32 %80, i32 192, %struct.l2cap_info_rsp* %81)
  br label %130

83:                                               ; preds = %26
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @L2CAP_IT_FIXED_CHAN, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %116

87:                                               ; preds = %83
  %88 = getelementptr inbounds [12 x %struct.l2cap_info_rsp], [12 x %struct.l2cap_info_rsp]* %15, i64 0, i64 0
  store %struct.l2cap_info_rsp* %88, %struct.l2cap_info_rsp** %16, align 8
  %89 = load i32, i32* @L2CAP_IT_FIXED_CHAN, align 4
  %90 = call i8* @cpu_to_le16(i32 %89)
  %91 = load %struct.l2cap_info_rsp*, %struct.l2cap_info_rsp** %16, align 8
  %92 = getelementptr inbounds %struct.l2cap_info_rsp, %struct.l2cap_info_rsp* %91, i32 0, i32 2
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* @L2CAP_IR_SUCCESS, align 4
  %94 = call i8* @cpu_to_le16(i32 %93)
  %95 = load %struct.l2cap_info_rsp*, %struct.l2cap_info_rsp** %16, align 8
  %96 = getelementptr inbounds %struct.l2cap_info_rsp, %struct.l2cap_info_rsp* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %98 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.l2cap_info_rsp*, %struct.l2cap_info_rsp** %16, align 8
  %101 = getelementptr inbounds %struct.l2cap_info_rsp, %struct.l2cap_info_rsp* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  store i32 %99, i32* %103, align 4
  %104 = load %struct.l2cap_info_rsp*, %struct.l2cap_info_rsp** %16, align 8
  %105 = getelementptr inbounds %struct.l2cap_info_rsp, %struct.l2cap_info_rsp* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = call i32 @memset(i32* %107, i32 0, i32 7)
  %109 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %110 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %7, align 8
  %111 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @L2CAP_INFO_RSP, align 4
  %114 = getelementptr inbounds [12 x %struct.l2cap_info_rsp], [12 x %struct.l2cap_info_rsp]* %15, i64 0, i64 0
  %115 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %109, i32 %112, i32 %113, i32 288, %struct.l2cap_info_rsp* %114)
  br label %129

116:                                              ; preds = %83
  %117 = load i32, i32* %11, align 4
  %118 = call i8* @cpu_to_le16(i32 %117)
  %119 = getelementptr inbounds %struct.l2cap_info_rsp, %struct.l2cap_info_rsp* %17, i32 0, i32 2
  store i8* %118, i8** %119, align 8
  %120 = load i32, i32* @L2CAP_IR_NOTSUPP, align 4
  %121 = call i8* @cpu_to_le16(i32 %120)
  %122 = getelementptr inbounds %struct.l2cap_info_rsp, %struct.l2cap_info_rsp* %17, i32 0, i32 1
  store i8* %121, i8** %122, align 8
  %123 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %124 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %7, align 8
  %125 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @L2CAP_INFO_RSP, align 4
  %128 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %123, i32 %126, i32 %127, i32 24, %struct.l2cap_info_rsp* %17)
  br label %129

129:                                              ; preds = %116, %87
  br label %130

130:                                              ; preds = %129, %70
  store i32 0, i32* %5, align 4
  br label %131

131:                                              ; preds = %130, %23
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @put_unaligned_le32(i32, i32*) #1

declare dso_local i32 @l2cap_send_cmd(%struct.l2cap_conn*, i32, i32, i32, %struct.l2cap_info_rsp*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
