; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-rsp.c_ncsi_rsp_handler_gp.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-rsp.c_ncsi_rsp_handler_gp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncsi_request = type { i32, %struct.ncsi_dev_priv* }
%struct.ncsi_dev_priv = type { i32 }
%struct.ncsi_channel_vlan_filter = type { i8**, i32 }
%struct.ncsi_channel_mac_filter = type { i32*, i32 }
%struct.ncsi_rsp_gp_pkt = type { i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ncsi_channel = type { i32, %struct.ncsi_channel_vlan_filter, %struct.ncsi_channel_mac_filter, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32* }

@ENODEV = common dso_local global i32 0, align 4
@NCSI_MODE_BC = common dso_local global i64 0, align 8
@NCSI_MODE_ENABLE = common dso_local global i64 0, align 8
@NCSI_MODE_TX_ENABLE = common dso_local global i64 0, align 8
@NCSI_MODE_MC = common dso_local global i64 0, align 8
@NCSI_MODE_LINK = common dso_local global i64 0, align 8
@NCSI_MODE_VLAN = common dso_local global i64 0, align 8
@NCSI_MODE_FC = common dso_local global i64 0, align 8
@NCSI_MODE_AEN = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ncsi_request*)* @ncsi_rsp_handler_gp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ncsi_rsp_handler_gp(%struct.ncsi_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ncsi_request*, align 8
  %4 = alloca %struct.ncsi_channel_vlan_filter*, align 8
  %5 = alloca %struct.ncsi_channel_mac_filter*, align 8
  %6 = alloca %struct.ncsi_dev_priv*, align 8
  %7 = alloca %struct.ncsi_rsp_gp_pkt*, align 8
  %8 = alloca %struct.ncsi_channel*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.ncsi_request* %0, %struct.ncsi_request** %3, align 8
  %14 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %15 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %14, i32 0, i32 1
  %16 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %15, align 8
  store %struct.ncsi_dev_priv* %16, %struct.ncsi_dev_priv** %6, align 8
  %17 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %18 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @skb_network_header(i32 %19)
  %21 = inttoptr i64 %20 to %struct.ncsi_rsp_gp_pkt*
  store %struct.ncsi_rsp_gp_pkt* %21, %struct.ncsi_rsp_gp_pkt** %7, align 8
  %22 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %6, align 8
  %23 = load %struct.ncsi_rsp_gp_pkt*, %struct.ncsi_rsp_gp_pkt** %7, align 8
  %24 = getelementptr inbounds %struct.ncsi_rsp_gp_pkt, %struct.ncsi_rsp_gp_pkt* %23, i32 0, i32 10
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ncsi_find_package_and_channel(%struct.ncsi_dev_priv* %22, i32 %27, i32* null, %struct.ncsi_channel** %8)
  %29 = load %struct.ncsi_channel*, %struct.ncsi_channel** %8, align 8
  %30 = icmp ne %struct.ncsi_channel* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %1
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %287

34:                                               ; preds = %1
  %35 = load %struct.ncsi_rsp_gp_pkt*, %struct.ncsi_rsp_gp_pkt** %7, align 8
  %36 = getelementptr inbounds %struct.ncsi_rsp_gp_pkt, %struct.ncsi_rsp_gp_pkt* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ntohl(i32 %37)
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %34
  %42 = load %struct.ncsi_channel*, %struct.ncsi_channel** %8, align 8
  %43 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %42, i32 0, i32 3
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load i64, i64* @NCSI_MODE_BC, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.ncsi_rsp_gp_pkt*, %struct.ncsi_rsp_gp_pkt** %7, align 8
  %49 = getelementptr inbounds %struct.ncsi_rsp_gp_pkt, %struct.ncsi_rsp_gp_pkt* %48, i32 0, i32 9
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ntohl(i32 %50)
  %52 = load %struct.ncsi_channel*, %struct.ncsi_channel** %8, align 8
  %53 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %52, i32 0, i32 3
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = load i64, i64* @NCSI_MODE_BC, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 %51, i32* %59, align 4
  br label %60

60:                                               ; preds = %41, %34
  %61 = load %struct.ncsi_rsp_gp_pkt*, %struct.ncsi_rsp_gp_pkt** %7, align 8
  %62 = getelementptr inbounds %struct.ncsi_rsp_gp_pkt, %struct.ncsi_rsp_gp_pkt* %61, i32 0, i32 8
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ntohl(i32 %63)
  %65 = and i32 %64, 2
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load %struct.ncsi_channel*, %struct.ncsi_channel** %8, align 8
  %69 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %68, i32 0, i32 3
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = load i64, i64* @NCSI_MODE_ENABLE, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  br label %74

74:                                               ; preds = %67, %60
  %75 = load %struct.ncsi_rsp_gp_pkt*, %struct.ncsi_rsp_gp_pkt** %7, align 8
  %76 = getelementptr inbounds %struct.ncsi_rsp_gp_pkt, %struct.ncsi_rsp_gp_pkt* %75, i32 0, i32 8
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ntohl(i32 %77)
  %79 = and i32 %78, 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %74
  %82 = load %struct.ncsi_channel*, %struct.ncsi_channel** %8, align 8
  %83 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %82, i32 0, i32 3
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = load i64, i64* @NCSI_MODE_TX_ENABLE, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  br label %88

88:                                               ; preds = %81, %74
  %89 = load %struct.ncsi_rsp_gp_pkt*, %struct.ncsi_rsp_gp_pkt** %7, align 8
  %90 = getelementptr inbounds %struct.ncsi_rsp_gp_pkt, %struct.ncsi_rsp_gp_pkt* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ntohl(i32 %91)
  %93 = and i32 %92, 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %88
  %96 = load %struct.ncsi_channel*, %struct.ncsi_channel** %8, align 8
  %97 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %96, i32 0, i32 3
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = load i64, i64* @NCSI_MODE_MC, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store i32 1, i32* %101, align 8
  br label %102

102:                                              ; preds = %95, %88
  %103 = load %struct.ncsi_channel*, %struct.ncsi_channel** %8, align 8
  %104 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %103, i32 0, i32 3
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = load i64, i64* @NCSI_MODE_LINK, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  store i32 1, i32* %108, align 8
  %109 = load %struct.ncsi_rsp_gp_pkt*, %struct.ncsi_rsp_gp_pkt** %7, align 8
  %110 = getelementptr inbounds %struct.ncsi_rsp_gp_pkt, %struct.ncsi_rsp_gp_pkt* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @ntohl(i32 %111)
  %113 = load %struct.ncsi_channel*, %struct.ncsi_channel** %8, align 8
  %114 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %113, i32 0, i32 3
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = load i64, i64* @NCSI_MODE_LINK, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  store i32 %112, i32* %120, align 4
  %121 = load %struct.ncsi_channel*, %struct.ncsi_channel** %8, align 8
  %122 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %121, i32 0, i32 3
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = load i64, i64* @NCSI_MODE_VLAN, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  store i32 1, i32* %126, align 8
  %127 = load %struct.ncsi_rsp_gp_pkt*, %struct.ncsi_rsp_gp_pkt** %7, align 8
  %128 = getelementptr inbounds %struct.ncsi_rsp_gp_pkt, %struct.ncsi_rsp_gp_pkt* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.ncsi_channel*, %struct.ncsi_channel** %8, align 8
  %131 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %130, i32 0, i32 3
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = load i64, i64* @NCSI_MODE_VLAN, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  store i32 %129, i32* %137, align 4
  %138 = load %struct.ncsi_channel*, %struct.ncsi_channel** %8, align 8
  %139 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %138, i32 0, i32 3
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = load i64, i64* @NCSI_MODE_FC, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  store i32 1, i32* %143, align 8
  %144 = load %struct.ncsi_rsp_gp_pkt*, %struct.ncsi_rsp_gp_pkt** %7, align 8
  %145 = getelementptr inbounds %struct.ncsi_rsp_gp_pkt, %struct.ncsi_rsp_gp_pkt* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.ncsi_channel*, %struct.ncsi_channel** %8, align 8
  %148 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %147, i32 0, i32 3
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = load i64, i64* @NCSI_MODE_FC, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  store i32 %146, i32* %154, align 4
  %155 = load %struct.ncsi_channel*, %struct.ncsi_channel** %8, align 8
  %156 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %155, i32 0, i32 3
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = load i64, i64* @NCSI_MODE_AEN, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  store i32 1, i32* %160, align 8
  %161 = load %struct.ncsi_rsp_gp_pkt*, %struct.ncsi_rsp_gp_pkt** %7, align 8
  %162 = getelementptr inbounds %struct.ncsi_rsp_gp_pkt, %struct.ncsi_rsp_gp_pkt* %161, i32 0, i32 6
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @ntohl(i32 %163)
  %165 = load %struct.ncsi_channel*, %struct.ncsi_channel** %8, align 8
  %166 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %165, i32 0, i32 3
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = load i64, i64* @NCSI_MODE_AEN, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 0
  store i32 %164, i32* %172, align 4
  %173 = load %struct.ncsi_rsp_gp_pkt*, %struct.ncsi_rsp_gp_pkt** %7, align 8
  %174 = bitcast %struct.ncsi_rsp_gp_pkt* %173 to i8*
  %175 = getelementptr inbounds i8, i8* %174, i64 48
  store i8* %175, i8** %10, align 8
  %176 = load %struct.ncsi_rsp_gp_pkt*, %struct.ncsi_rsp_gp_pkt** %7, align 8
  %177 = getelementptr inbounds %struct.ncsi_rsp_gp_pkt, %struct.ncsi_rsp_gp_pkt* %176, i32 0, i32 2
  %178 = load i16, i16* %177, align 4
  store i16 %178, i16* %9, align 2
  %179 = load %struct.ncsi_channel*, %struct.ncsi_channel** %8, align 8
  %180 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %179, i32 0, i32 2
  store %struct.ncsi_channel_mac_filter* %180, %struct.ncsi_channel_mac_filter** %5, align 8
  %181 = load %struct.ncsi_channel*, %struct.ncsi_channel** %8, align 8
  %182 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %181, i32 0, i32 0
  %183 = load i64, i64* %11, align 8
  %184 = call i32 @spin_lock_irqsave(i32* %182, i64 %183)
  %185 = load %struct.ncsi_channel_mac_filter*, %struct.ncsi_channel_mac_filter** %5, align 8
  %186 = getelementptr inbounds %struct.ncsi_channel_mac_filter, %struct.ncsi_channel_mac_filter* %185, i32 0, i32 1
  %187 = bitcast i32* %186 to i8*
  store i8* %187, i8** %12, align 8
  store i32 0, i32* %13, align 4
  br label %188

188:                                              ; preds = %221, %102
  %189 = load i32, i32* %13, align 4
  %190 = load %struct.ncsi_rsp_gp_pkt*, %struct.ncsi_rsp_gp_pkt** %7, align 8
  %191 = getelementptr inbounds %struct.ncsi_rsp_gp_pkt, %struct.ncsi_rsp_gp_pkt* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = icmp slt i32 %189, %192
  br i1 %193, label %194, label %226

194:                                              ; preds = %188
  %195 = load i16, i16* %9, align 2
  %196 = zext i16 %195 to i32
  %197 = load i32, i32* %13, align 4
  %198 = shl i32 1, %197
  %199 = and i32 %196, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %205, label %201

201:                                              ; preds = %194
  %202 = load i32, i32* %13, align 4
  %203 = load i8*, i8** %12, align 8
  %204 = call i32 @clear_bit(i32 %202, i8* %203)
  br label %209

205:                                              ; preds = %194
  %206 = load i32, i32* %13, align 4
  %207 = load i8*, i8** %12, align 8
  %208 = call i32 @set_bit(i32 %206, i8* %207)
  br label %209

209:                                              ; preds = %205, %201
  %210 = load %struct.ncsi_channel_mac_filter*, %struct.ncsi_channel_mac_filter** %5, align 8
  %211 = getelementptr inbounds %struct.ncsi_channel_mac_filter, %struct.ncsi_channel_mac_filter* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %13, align 4
  %214 = load i32, i32* @ETH_ALEN, align 4
  %215 = mul nsw i32 %213, %214
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %212, i64 %216
  %218 = load i8*, i8** %10, align 8
  %219 = load i32, i32* @ETH_ALEN, align 4
  %220 = call i32 @memcpy(i32* %217, i8* %218, i32 %219)
  br label %221

221:                                              ; preds = %209
  %222 = load i32, i32* %13, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %13, align 4
  %224 = load i8*, i8** %10, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 6
  store i8* %225, i8** %10, align 8
  br label %188

226:                                              ; preds = %188
  %227 = load %struct.ncsi_channel*, %struct.ncsi_channel** %8, align 8
  %228 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %227, i32 0, i32 0
  %229 = load i64, i64* %11, align 8
  %230 = call i32 @spin_unlock_irqrestore(i32* %228, i64 %229)
  %231 = load %struct.ncsi_rsp_gp_pkt*, %struct.ncsi_rsp_gp_pkt** %7, align 8
  %232 = getelementptr inbounds %struct.ncsi_rsp_gp_pkt, %struct.ncsi_rsp_gp_pkt* %231, i32 0, i32 5
  %233 = load i32, i32* %232, align 4
  %234 = call i8* @ntohs(i32 %233)
  %235 = ptrtoint i8* %234 to i16
  store i16 %235, i16* %9, align 2
  %236 = load %struct.ncsi_channel*, %struct.ncsi_channel** %8, align 8
  %237 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %236, i32 0, i32 1
  store %struct.ncsi_channel_vlan_filter* %237, %struct.ncsi_channel_vlan_filter** %4, align 8
  %238 = load %struct.ncsi_channel_vlan_filter*, %struct.ncsi_channel_vlan_filter** %4, align 8
  %239 = getelementptr inbounds %struct.ncsi_channel_vlan_filter, %struct.ncsi_channel_vlan_filter* %238, i32 0, i32 1
  %240 = bitcast i32* %239 to i8*
  store i8* %240, i8** %12, align 8
  %241 = load %struct.ncsi_channel*, %struct.ncsi_channel** %8, align 8
  %242 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %241, i32 0, i32 0
  %243 = load i64, i64* %11, align 8
  %244 = call i32 @spin_lock_irqsave(i32* %242, i64 %243)
  store i32 0, i32* %13, align 4
  br label %245

245:                                              ; preds = %277, %226
  %246 = load i32, i32* %13, align 4
  %247 = load %struct.ncsi_rsp_gp_pkt*, %struct.ncsi_rsp_gp_pkt** %7, align 8
  %248 = getelementptr inbounds %struct.ncsi_rsp_gp_pkt, %struct.ncsi_rsp_gp_pkt* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 4
  %250 = icmp slt i32 %246, %249
  br i1 %250, label %251, label %282

251:                                              ; preds = %245
  %252 = load i16, i16* %9, align 2
  %253 = zext i16 %252 to i32
  %254 = load i32, i32* %13, align 4
  %255 = shl i32 1, %254
  %256 = and i32 %253, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %262, label %258

258:                                              ; preds = %251
  %259 = load i32, i32* %13, align 4
  %260 = load i8*, i8** %12, align 8
  %261 = call i32 @clear_bit(i32 %259, i8* %260)
  br label %266

262:                                              ; preds = %251
  %263 = load i32, i32* %13, align 4
  %264 = load i8*, i8** %12, align 8
  %265 = call i32 @set_bit(i32 %263, i8* %264)
  br label %266

266:                                              ; preds = %262, %258
  %267 = load i8*, i8** %10, align 8
  %268 = bitcast i8* %267 to i32*
  %269 = load i32, i32* %268, align 4
  %270 = call i8* @ntohs(i32 %269)
  %271 = load %struct.ncsi_channel_vlan_filter*, %struct.ncsi_channel_vlan_filter** %4, align 8
  %272 = getelementptr inbounds %struct.ncsi_channel_vlan_filter, %struct.ncsi_channel_vlan_filter* %271, i32 0, i32 0
  %273 = load i8**, i8*** %272, align 8
  %274 = load i32, i32* %13, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8*, i8** %273, i64 %275
  store i8* %270, i8** %276, align 8
  br label %277

277:                                              ; preds = %266
  %278 = load i32, i32* %13, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %13, align 4
  %280 = load i8*, i8** %10, align 8
  %281 = getelementptr inbounds i8, i8* %280, i64 2
  store i8* %281, i8** %10, align 8
  br label %245

282:                                              ; preds = %245
  %283 = load %struct.ncsi_channel*, %struct.ncsi_channel** %8, align 8
  %284 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %283, i32 0, i32 0
  %285 = load i64, i64* %11, align 8
  %286 = call i32 @spin_unlock_irqrestore(i32* %284, i64 %285)
  store i32 0, i32* %2, align 4
  br label %287

287:                                              ; preds = %282, %31
  %288 = load i32, i32* %2, align 4
  ret i32 %288
}

declare dso_local i64 @skb_network_header(i32) #1

declare dso_local i32 @ncsi_find_package_and_channel(%struct.ncsi_dev_priv*, i32, i32*, %struct.ncsi_channel**) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clear_bit(i32, i8*) #1

declare dso_local i32 @set_bit(i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i8* @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
