; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-rsp.c_ncsi_validate_rsp_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-rsp.c_ncsi_validate_rsp_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncsi_request = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ncsi_rsp_pkt_hdr = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@NCSI_PKT_REVISION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"NCSI: unsupported header revision\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"NCSI: payload length mismatched\0A\00", align 1
@NCSI_PKT_RSP_C_COMPLETED = common dso_local global i16 0, align 2
@NCSI_PKT_RSP_R_NO_ERROR = common dso_local global i16 0, align 2
@.str.2 = private unnamed_addr constant [50 x i8] c"NCSI: non zero response/reason code %04xh, %04xh\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"NCSI: checksum mismatched; recd: %08x calc: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ncsi_request*, i16)* @ncsi_validate_rsp_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ncsi_validate_rsp_pkt(%struct.ncsi_request* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ncsi_request*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.ncsi_rsp_pkt_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16*, align 8
  store %struct.ncsi_request* %0, %struct.ncsi_request** %4, align 8
  store i16 %1, i16* %5, align 2
  %9 = load %struct.ncsi_request*, %struct.ncsi_request** %4, align 8
  %10 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @skb_network_header(i32 %11)
  %13 = inttoptr i64 %12 to %struct.ncsi_rsp_pkt_hdr*
  store %struct.ncsi_rsp_pkt_hdr* %13, %struct.ncsi_rsp_pkt_hdr** %6, align 8
  %14 = load %struct.ncsi_rsp_pkt_hdr*, %struct.ncsi_rsp_pkt_hdr** %6, align 8
  %15 = getelementptr inbounds %struct.ncsi_rsp_pkt_hdr, %struct.ncsi_rsp_pkt_hdr* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NCSI_PKT_REVISION, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load %struct.ncsi_request*, %struct.ncsi_request** %4, align 8
  %22 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %136

30:                                               ; preds = %2
  %31 = load %struct.ncsi_rsp_pkt_hdr*, %struct.ncsi_rsp_pkt_hdr** %6, align 8
  %32 = getelementptr inbounds %struct.ncsi_rsp_pkt_hdr, %struct.ncsi_rsp_pkt_hdr* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call zeroext i16 @ntohs(i32 %34)
  %36 = zext i16 %35 to i32
  %37 = load i16, i16* %5, align 2
  %38 = zext i16 %37 to i32
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %30
  %41 = load %struct.ncsi_request*, %struct.ncsi_request** %4, align 8
  %42 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %136

50:                                               ; preds = %30
  %51 = load %struct.ncsi_rsp_pkt_hdr*, %struct.ncsi_rsp_pkt_hdr** %6, align 8
  %52 = getelementptr inbounds %struct.ncsi_rsp_pkt_hdr, %struct.ncsi_rsp_pkt_hdr* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call zeroext i16 @ntohs(i32 %53)
  %55 = zext i16 %54 to i32
  %56 = load i16, i16* @NCSI_PKT_RSP_C_COMPLETED, align 2
  %57 = zext i16 %56 to i32
  %58 = icmp ne i32 %55, %57
  br i1 %58, label %68, label %59

59:                                               ; preds = %50
  %60 = load %struct.ncsi_rsp_pkt_hdr*, %struct.ncsi_rsp_pkt_hdr** %6, align 8
  %61 = getelementptr inbounds %struct.ncsi_rsp_pkt_hdr, %struct.ncsi_rsp_pkt_hdr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call zeroext i16 @ntohs(i32 %62)
  %64 = zext i16 %63 to i32
  %65 = load i16, i16* @NCSI_PKT_RSP_R_NO_ERROR, align 2
  %66 = zext i16 %65 to i32
  %67 = icmp ne i32 %64, %66
  br i1 %67, label %68, label %88

68:                                               ; preds = %59, %50
  %69 = load %struct.ncsi_request*, %struct.ncsi_request** %4, align 8
  %70 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ncsi_rsp_pkt_hdr*, %struct.ncsi_rsp_pkt_hdr** %6, align 8
  %76 = getelementptr inbounds %struct.ncsi_rsp_pkt_hdr, %struct.ncsi_rsp_pkt_hdr* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call zeroext i16 @ntohs(i32 %77)
  %79 = zext i16 %78 to i32
  %80 = load %struct.ncsi_rsp_pkt_hdr*, %struct.ncsi_rsp_pkt_hdr** %6, align 8
  %81 = getelementptr inbounds %struct.ncsi_rsp_pkt_hdr, %struct.ncsi_rsp_pkt_hdr* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call zeroext i16 @ntohs(i32 %82)
  %84 = zext i16 %83 to i32
  %85 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %74, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %79, i32 %84)
  %86 = load i32, i32* @EPERM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %136

88:                                               ; preds = %59
  %89 = load %struct.ncsi_rsp_pkt_hdr*, %struct.ncsi_rsp_pkt_hdr** %6, align 8
  %90 = getelementptr inbounds %struct.ncsi_rsp_pkt_hdr, %struct.ncsi_rsp_pkt_hdr* %89, i64 1
  %91 = bitcast %struct.ncsi_rsp_pkt_hdr* %90 to i8*
  %92 = load i16, i16* %5, align 2
  %93 = call i32 @ALIGN(i16 zeroext %92, i32 4)
  %94 = sext i32 %93 to i64
  %95 = getelementptr i8, i8* %91, i64 %94
  %96 = getelementptr i8, i8* %95, i64 -4
  %97 = bitcast i8* %96 to i16*
  store i16* %97, i16** %8, align 8
  %98 = load i16*, i16** %8, align 8
  %99 = load i16, i16* %98, align 2
  %100 = call i64 @ntohl(i16 zeroext %99)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %88
  store i32 0, i32* %3, align 4
  br label %136

103:                                              ; preds = %88
  %104 = load %struct.ncsi_rsp_pkt_hdr*, %struct.ncsi_rsp_pkt_hdr** %6, align 8
  %105 = bitcast %struct.ncsi_rsp_pkt_hdr* %104 to i8*
  %106 = load i16, i16* %5, align 2
  %107 = zext i16 %106 to i64
  %108 = add i64 24, %107
  %109 = sub i64 %108, 4
  %110 = trunc i64 %109 to i32
  %111 = call i32 @ncsi_calculate_checksum(i8* %105, i32 %110)
  store i32 %111, i32* %7, align 4
  %112 = load i16*, i16** %8, align 8
  %113 = load i16, i16* %112, align 2
  %114 = zext i16 %113 to i32
  %115 = load i32, i32* %7, align 4
  %116 = call zeroext i16 @htonl(i32 %115)
  %117 = zext i16 %116 to i32
  %118 = icmp ne i32 %114, %117
  br i1 %118, label %119, label %135

119:                                              ; preds = %103
  %120 = load %struct.ncsi_request*, %struct.ncsi_request** %4, align 8
  %121 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %120, i32 0, i32 0
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i16*, i16** %8, align 8
  %127 = load i16, i16* %126, align 2
  %128 = zext i16 %127 to i32
  %129 = load i32, i32* %7, align 4
  %130 = call zeroext i16 @htonl(i32 %129)
  %131 = zext i16 %130 to i32
  %132 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %125, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %128, i32 %131)
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %3, align 4
  br label %136

135:                                              ; preds = %103
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %135, %119, %102, %68, %40, %20
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i64 @skb_network_header(i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, ...) #1

declare dso_local zeroext i16 @ntohs(i32) #1

declare dso_local i32 @ALIGN(i16 zeroext, i32) #1

declare dso_local i64 @ntohl(i16 zeroext) #1

declare dso_local i32 @ncsi_calculate_checksum(i8*, i32) #1

declare dso_local zeroext i16 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
