; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_le_connect_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_le_connect_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32, %struct.hci_conn* }
%struct.hci_conn = type { i32 }
%struct.l2cap_cmd_hdr = type { i32 }
%struct.l2cap_le_conn_rsp = type { i32, i32, i32, i32, i32 }
%struct.l2cap_chan = type { i32, i32, i32, i32, i32, i32, i32 }

@EPROTO = common dso_local global i32 0, align 4
@L2CAP_CID_DYN_START = common dso_local global i32 0, align 4
@L2CAP_CID_LE_DYN_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"dcid 0x%4.4x mtu %u mps %u credits %u result 0x%2.2x\00", align 1
@EBADSLT = common dso_local global i32 0, align 4
@BT_SECURITY_MEDIUM = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@FLAG_LE_CONN_REQ_SENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32, i32*)* @l2cap_le_connect_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_le_connect_rsp(%struct.l2cap_conn* %0, %struct.l2cap_cmd_hdr* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.l2cap_conn*, align 8
  %7 = alloca %struct.l2cap_cmd_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.l2cap_le_conn_rsp*, align 8
  %11 = alloca %struct.hci_conn*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.l2cap_chan*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %6, align 8
  store %struct.l2cap_cmd_hdr* %1, %struct.l2cap_cmd_hdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = bitcast i32* %20 to %struct.l2cap_le_conn_rsp*
  store %struct.l2cap_le_conn_rsp* %21, %struct.l2cap_le_conn_rsp** %10, align 8
  %22 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %23 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %22, i32 0, i32 1
  %24 = load %struct.hci_conn*, %struct.hci_conn** %23, align 8
  store %struct.hci_conn* %24, %struct.hci_conn** %11, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ult i64 %26, 20
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @EPROTO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %166

31:                                               ; preds = %4
  %32 = load %struct.l2cap_le_conn_rsp*, %struct.l2cap_le_conn_rsp** %10, align 8
  %33 = getelementptr inbounds %struct.l2cap_le_conn_rsp, %struct.l2cap_le_conn_rsp* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @__le16_to_cpu(i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load %struct.l2cap_le_conn_rsp*, %struct.l2cap_le_conn_rsp** %10, align 8
  %37 = getelementptr inbounds %struct.l2cap_le_conn_rsp, %struct.l2cap_le_conn_rsp* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @__le16_to_cpu(i32 %38)
  store i32 %39, i32* %13, align 4
  %40 = load %struct.l2cap_le_conn_rsp*, %struct.l2cap_le_conn_rsp** %10, align 8
  %41 = getelementptr inbounds %struct.l2cap_le_conn_rsp, %struct.l2cap_le_conn_rsp* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @__le16_to_cpu(i32 %42)
  store i32 %43, i32* %14, align 4
  %44 = load %struct.l2cap_le_conn_rsp*, %struct.l2cap_le_conn_rsp** %10, align 8
  %45 = getelementptr inbounds %struct.l2cap_le_conn_rsp, %struct.l2cap_le_conn_rsp* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @__le16_to_cpu(i32 %46)
  store i32 %47, i32* %15, align 4
  %48 = load %struct.l2cap_le_conn_rsp*, %struct.l2cap_le_conn_rsp** %10, align 8
  %49 = getelementptr inbounds %struct.l2cap_le_conn_rsp, %struct.l2cap_le_conn_rsp* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @__le16_to_cpu(i32 %50)
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  %53 = icmp eq i32 %52, 128
  br i1 %53, label %54, label %71

54:                                               ; preds = %31
  %55 = load i32, i32* %13, align 4
  %56 = icmp slt i32 %55, 23
  br i1 %56, label %68, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %14, align 4
  %59 = icmp slt i32 %58, 23
  br i1 %59, label %68, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @L2CAP_CID_DYN_START, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @L2CAP_CID_LE_DYN_END, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64, %60, %57, %54
  %69 = load i32, i32* @EPROTO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %166

71:                                               ; preds = %64, %31
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %16, align 4
  %77 = call i32 @BT_DBG(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %73, i32 %74, i32 %75, i32 %76)
  %78 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %79 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %78, i32 0, i32 0
  %80 = call i32 @mutex_lock(i32* %79)
  %81 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %82 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %7, align 8
  %83 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call %struct.l2cap_chan* @__l2cap_get_chan_by_ident(%struct.l2cap_conn* %81, i32 %84)
  store %struct.l2cap_chan* %85, %struct.l2cap_chan** %17, align 8
  %86 = load %struct.l2cap_chan*, %struct.l2cap_chan** %17, align 8
  %87 = icmp ne %struct.l2cap_chan* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %71
  %89 = load i32, i32* @EBADSLT, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %18, align 4
  br label %161

91:                                               ; preds = %71
  store i32 0, i32* %18, align 4
  %92 = load %struct.l2cap_chan*, %struct.l2cap_chan** %17, align 8
  %93 = call i32 @l2cap_chan_lock(%struct.l2cap_chan* %92)
  %94 = load i32, i32* %16, align 4
  switch i32 %94, label %154 [
    i32 128, label %95
    i32 130, label %120
    i32 129, label %120
  ]

95:                                               ; preds = %91
  %96 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @__l2cap_get_chan_by_dcid(%struct.l2cap_conn* %96, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32, i32* @EBADSLT, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %18, align 4
  br label %158

103:                                              ; preds = %95
  %104 = load %struct.l2cap_chan*, %struct.l2cap_chan** %17, align 8
  %105 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %104, i32 0, i32 6
  store i32 0, i32* %105, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load %struct.l2cap_chan*, %struct.l2cap_chan** %17, align 8
  %108 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %13, align 4
  %110 = load %struct.l2cap_chan*, %struct.l2cap_chan** %17, align 8
  %111 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %14, align 4
  %113 = load %struct.l2cap_chan*, %struct.l2cap_chan** %17, align 8
  %114 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* %15, align 4
  %116 = load %struct.l2cap_chan*, %struct.l2cap_chan** %17, align 8
  %117 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  %118 = load %struct.l2cap_chan*, %struct.l2cap_chan** %17, align 8
  %119 = call i32 @l2cap_chan_ready(%struct.l2cap_chan* %118)
  br label %158

120:                                              ; preds = %91, %91
  %121 = load %struct.hci_conn*, %struct.hci_conn** %11, align 8
  %122 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @BT_SECURITY_MEDIUM, align 4
  %125 = icmp sgt i32 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load %struct.l2cap_chan*, %struct.l2cap_chan** %17, align 8
  %128 = load i32, i32* @ECONNREFUSED, align 4
  %129 = call i32 @l2cap_chan_del(%struct.l2cap_chan* %127, i32 %128)
  br label %158

130:                                              ; preds = %120
  %131 = load %struct.hci_conn*, %struct.hci_conn** %11, align 8
  %132 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %19, align 4
  %135 = load %struct.l2cap_chan*, %struct.l2cap_chan** %17, align 8
  %136 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %19, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %130
  %141 = load i32, i32* %19, align 4
  %142 = load %struct.l2cap_chan*, %struct.l2cap_chan** %17, align 8
  %143 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %142, i32 0, i32 4
  store i32 %141, i32* %143, align 4
  br label %144

144:                                              ; preds = %140, %130
  %145 = load i32, i32* @FLAG_LE_CONN_REQ_SENT, align 4
  %146 = load %struct.l2cap_chan*, %struct.l2cap_chan** %17, align 8
  %147 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %146, i32 0, i32 5
  %148 = call i32 @clear_bit(i32 %145, i32* %147)
  %149 = load %struct.hci_conn*, %struct.hci_conn** %11, align 8
  %150 = load %struct.l2cap_chan*, %struct.l2cap_chan** %17, align 8
  %151 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @smp_conn_security(%struct.hci_conn* %149, i32 %152)
  br label %158

154:                                              ; preds = %91
  %155 = load %struct.l2cap_chan*, %struct.l2cap_chan** %17, align 8
  %156 = load i32, i32* @ECONNREFUSED, align 4
  %157 = call i32 @l2cap_chan_del(%struct.l2cap_chan* %155, i32 %156)
  br label %158

158:                                              ; preds = %154, %144, %126, %103, %100
  %159 = load %struct.l2cap_chan*, %struct.l2cap_chan** %17, align 8
  %160 = call i32 @l2cap_chan_unlock(%struct.l2cap_chan* %159)
  br label %161

161:                                              ; preds = %158, %88
  %162 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %163 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %162, i32 0, i32 0
  %164 = call i32 @mutex_unlock(i32* %163)
  %165 = load i32, i32* %18, align 4
  store i32 %165, i32* %5, align 4
  br label %166

166:                                              ; preds = %161, %68, %28
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.l2cap_chan* @__l2cap_get_chan_by_ident(%struct.l2cap_conn*, i32) #1

declare dso_local i32 @l2cap_chan_lock(%struct.l2cap_chan*) #1

declare dso_local i32 @__l2cap_get_chan_by_dcid(%struct.l2cap_conn*, i32) #1

declare dso_local i32 @l2cap_chan_ready(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_chan_del(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @smp_conn_security(%struct.hci_conn*, i32) #1

declare dso_local i32 @l2cap_chan_unlock(%struct.l2cap_chan*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
