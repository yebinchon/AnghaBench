; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_create_channel_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_create_channel_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.amp_mgr* }
%struct.amp_mgr = type { %struct.l2cap_chan* }
%struct.l2cap_chan = type { i32, %struct.hci_conn*, i32, i32 }
%struct.hci_conn = type { i32 }
%struct.l2cap_cmd_hdr = type { i32 }
%struct.l2cap_create_chan_req = type { i64, i32, i32 }
%struct.l2cap_create_chan_rsp = type { i8*, i8*, i8*, i64 }
%struct.hci_dev = type { i64, i32, i32 }

@EPROTO = common dso_local global i32 0, align 4
@L2CAP_FC_A2MP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"psm 0x%2.2x, scid 0x%4.4x, amp_id %d\00", align 1
@AMP_ID_BREDR = common dso_local global i64 0, align 8
@L2CAP_CREATE_CHAN_RSP = common dso_local global i32 0, align 4
@HCI_AMP = common dso_local global i64 0, align 8
@HCI_UP = common dso_local global i32 0, align 4
@AMP_LINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"mgr %p bredr_chan %p hs_hcon %p\00", align 1
@L2CAP_FCS_NONE = common dso_local global i32 0, align 4
@L2CAP_CR_BAD_AMP = common dso_local global i32 0, align 4
@L2CAP_CS_NO_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32, i8*)* @l2cap_create_channel_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_create_channel_req(%struct.l2cap_conn* %0, %struct.l2cap_cmd_hdr* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.l2cap_conn*, align 8
  %7 = alloca %struct.l2cap_cmd_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.l2cap_create_chan_req*, align 8
  %11 = alloca %struct.l2cap_create_chan_rsp, align 8
  %12 = alloca %struct.l2cap_chan*, align 8
  %13 = alloca %struct.hci_dev*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.amp_mgr*, align 8
  %17 = alloca %struct.hci_conn*, align 8
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %6, align 8
  store %struct.l2cap_cmd_hdr* %1, %struct.l2cap_cmd_hdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.l2cap_create_chan_req*
  store %struct.l2cap_create_chan_req* %19, %struct.l2cap_create_chan_req** %10, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ne i64 %21, 16
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @EPROTO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %167

26:                                               ; preds = %4
  %27 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %28 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @L2CAP_FC_A2MP, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %167

36:                                               ; preds = %26
  %37 = load %struct.l2cap_create_chan_req*, %struct.l2cap_create_chan_req** %10, align 8
  %38 = getelementptr inbounds %struct.l2cap_create_chan_req, %struct.l2cap_create_chan_req* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le16_to_cpu(i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = load %struct.l2cap_create_chan_req*, %struct.l2cap_create_chan_req** %10, align 8
  %42 = getelementptr inbounds %struct.l2cap_create_chan_req, %struct.l2cap_create_chan_req* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @le16_to_cpu(i32 %43)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load %struct.l2cap_create_chan_req*, %struct.l2cap_create_chan_req** %10, align 8
  %48 = getelementptr inbounds %struct.l2cap_create_chan_req, %struct.l2cap_create_chan_req* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46, i64 %49)
  %51 = load %struct.l2cap_create_chan_req*, %struct.l2cap_create_chan_req** %10, align 8
  %52 = getelementptr inbounds %struct.l2cap_create_chan_req, %struct.l2cap_create_chan_req* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @AMP_ID_BREDR, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %36
  %57 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %58 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %7, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = load i32, i32* @L2CAP_CREATE_CHAN_RSP, align 4
  %61 = load %struct.l2cap_create_chan_req*, %struct.l2cap_create_chan_req** %10, align 8
  %62 = getelementptr inbounds %struct.l2cap_create_chan_req, %struct.l2cap_create_chan_req* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call %struct.l2cap_chan* @l2cap_connect(%struct.l2cap_conn* %57, %struct.l2cap_cmd_hdr* %58, i8* %59, i32 %60, i64 %63)
  store i32 0, i32* %5, align 4
  br label %167

65:                                               ; preds = %36
  %66 = load %struct.l2cap_create_chan_req*, %struct.l2cap_create_chan_req** %10, align 8
  %67 = getelementptr inbounds %struct.l2cap_create_chan_req, %struct.l2cap_create_chan_req* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call %struct.hci_dev* @hci_dev_get(i64 %68)
  store %struct.hci_dev* %69, %struct.hci_dev** %13, align 8
  %70 = load %struct.hci_dev*, %struct.hci_dev** %13, align 8
  %71 = icmp ne %struct.hci_dev* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %65
  br label %150

73:                                               ; preds = %65
  %74 = load %struct.hci_dev*, %struct.hci_dev** %13, align 8
  %75 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @HCI_AMP, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %85, label %79

79:                                               ; preds = %73
  %80 = load i32, i32* @HCI_UP, align 4
  %81 = load %struct.hci_dev*, %struct.hci_dev** %13, align 8
  %82 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %81, i32 0, i32 2
  %83 = call i32 @test_bit(i32 %80, i32* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %79, %73
  %86 = load %struct.hci_dev*, %struct.hci_dev** %13, align 8
  %87 = call i32 @hci_dev_put(%struct.hci_dev* %86)
  br label %150

88:                                               ; preds = %79
  %89 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %90 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %7, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = load i32, i32* @L2CAP_CREATE_CHAN_RSP, align 4
  %93 = load %struct.l2cap_create_chan_req*, %struct.l2cap_create_chan_req** %10, align 8
  %94 = getelementptr inbounds %struct.l2cap_create_chan_req, %struct.l2cap_create_chan_req* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call %struct.l2cap_chan* @l2cap_connect(%struct.l2cap_conn* %89, %struct.l2cap_cmd_hdr* %90, i8* %91, i32 %92, i64 %95)
  store %struct.l2cap_chan* %96, %struct.l2cap_chan** %12, align 8
  %97 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %98 = icmp ne %struct.l2cap_chan* %97, null
  br i1 %98, label %99, label %147

99:                                               ; preds = %88
  %100 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %101 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %100, i32 0, i32 2
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load %struct.amp_mgr*, %struct.amp_mgr** %103, align 8
  store %struct.amp_mgr* %104, %struct.amp_mgr** %16, align 8
  %105 = load %struct.hci_dev*, %struct.hci_dev** %13, align 8
  %106 = load i32, i32* @AMP_LINK, align 4
  %107 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %108 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %107, i32 0, i32 2
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = call %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev* %105, i32 %106, i32* %110)
  store %struct.hci_conn* %111, %struct.hci_conn** %17, align 8
  %112 = load %struct.hci_conn*, %struct.hci_conn** %17, align 8
  %113 = icmp ne %struct.hci_conn* %112, null
  br i1 %113, label %128, label %114

114:                                              ; preds = %99
  %115 = load %struct.hci_dev*, %struct.hci_dev** %13, align 8
  %116 = call i32 @hci_dev_put(%struct.hci_dev* %115)
  %117 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %118 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %7, align 8
  %119 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %122 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %125 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @cmd_reject_invalid_cid(%struct.l2cap_conn* %117, i32 %120, i32 %123, i32 %126)
  store i32 0, i32* %5, align 4
  br label %167

128:                                              ; preds = %99
  %129 = load %struct.amp_mgr*, %struct.amp_mgr** %16, align 8
  %130 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %131 = load %struct.hci_conn*, %struct.hci_conn** %17, align 8
  %132 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), %struct.amp_mgr* %129, %struct.l2cap_chan* %130, %struct.hci_conn* %131)
  %133 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %134 = load %struct.amp_mgr*, %struct.amp_mgr** %16, align 8
  %135 = getelementptr inbounds %struct.amp_mgr, %struct.amp_mgr* %134, i32 0, i32 0
  store %struct.l2cap_chan* %133, %struct.l2cap_chan** %135, align 8
  %136 = load %struct.hci_conn*, %struct.hci_conn** %17, align 8
  %137 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %138 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %137, i32 0, i32 1
  store %struct.hci_conn* %136, %struct.hci_conn** %138, align 8
  %139 = load i32, i32* @L2CAP_FCS_NONE, align 4
  %140 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  %141 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load %struct.hci_dev*, %struct.hci_dev** %13, align 8
  %143 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %146 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  br label %147

147:                                              ; preds = %128, %88
  %148 = load %struct.hci_dev*, %struct.hci_dev** %13, align 8
  %149 = call i32 @hci_dev_put(%struct.hci_dev* %148)
  store i32 0, i32* %5, align 4
  br label %167

150:                                              ; preds = %85, %72
  %151 = getelementptr inbounds %struct.l2cap_create_chan_rsp, %struct.l2cap_create_chan_rsp* %11, i32 0, i32 3
  store i64 0, i64* %151, align 8
  %152 = load i32, i32* %15, align 4
  %153 = call i8* @cpu_to_le16(i32 %152)
  %154 = getelementptr inbounds %struct.l2cap_create_chan_rsp, %struct.l2cap_create_chan_rsp* %11, i32 0, i32 2
  store i8* %153, i8** %154, align 8
  %155 = load i32, i32* @L2CAP_CR_BAD_AMP, align 4
  %156 = call i8* @cpu_to_le16(i32 %155)
  %157 = getelementptr inbounds %struct.l2cap_create_chan_rsp, %struct.l2cap_create_chan_rsp* %11, i32 0, i32 1
  store i8* %156, i8** %157, align 8
  %158 = load i32, i32* @L2CAP_CS_NO_INFO, align 4
  %159 = call i8* @cpu_to_le16(i32 %158)
  %160 = getelementptr inbounds %struct.l2cap_create_chan_rsp, %struct.l2cap_create_chan_rsp* %11, i32 0, i32 0
  store i8* %159, i8** %160, align 8
  %161 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %162 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %7, align 8
  %163 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @L2CAP_CREATE_CHAN_RSP, align 4
  %166 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %161, i32 %164, i32 %165, i32 32, %struct.l2cap_create_chan_rsp* %11)
  store i32 0, i32* %5, align 4
  br label %167

167:                                              ; preds = %150, %147, %114, %56, %33, %23
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @BT_DBG(i8*, ...) #1

declare dso_local %struct.l2cap_chan* @l2cap_connect(%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i8*, i32, i64) #1

declare dso_local %struct.hci_dev* @hci_dev_get(i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @hci_dev_put(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev*, i32, i32*) #1

declare dso_local i32 @cmd_reject_invalid_cid(%struct.l2cap_conn*, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @l2cap_send_cmd(%struct.l2cap_conn*, i32, i32, i32, %struct.l2cap_create_chan_rsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
