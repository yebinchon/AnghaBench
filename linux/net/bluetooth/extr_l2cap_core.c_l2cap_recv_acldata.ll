; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_recv_acldata.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_recv_acldata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { %struct.TYPE_2__*, %struct.l2cap_conn* }
%struct.TYPE_2__ = type { i64 }
%struct.l2cap_conn = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32, i64 }
%struct.l2cap_hdr = type { i32 }

@HCI_PRIMARY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"conn %p len %d flags 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Unexpected start frame (len %d)\00", align 1
@ECOMM = common dso_local global i32 0, align 4
@L2CAP_HDR_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Frame is too short (len %d)\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Start: total len %d, frag len %d\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Frame is too long (len %d, expected len %d)\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Cont: frag len %d (expecting %d)\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Unexpected continuation frame (len %d)\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Fragment is too long (len %d, expected %d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2cap_recv_acldata(%struct.hci_conn* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.hci_conn*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.l2cap_conn*, align 8
  %8 = alloca %struct.l2cap_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.hci_conn* %0, %struct.hci_conn** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %12 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %11, i32 0, i32 1
  %13 = load %struct.l2cap_conn*, %struct.l2cap_conn** %12, align 8
  store %struct.l2cap_conn* %13, %struct.l2cap_conn** %7, align 8
  %14 = load %struct.l2cap_conn*, %struct.l2cap_conn** %7, align 8
  %15 = icmp ne %struct.l2cap_conn* %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %3
  %17 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %18 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @HCI_PRIMARY, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %231

25:                                               ; preds = %16, %3
  %26 = load %struct.l2cap_conn*, %struct.l2cap_conn** %7, align 8
  %27 = icmp ne %struct.l2cap_conn* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %30 = call %struct.l2cap_conn* @l2cap_conn_add(%struct.hci_conn* %29)
  store %struct.l2cap_conn* %30, %struct.l2cap_conn** %7, align 8
  br label %31

31:                                               ; preds = %28, %25
  %32 = load %struct.l2cap_conn*, %struct.l2cap_conn** %7, align 8
  %33 = icmp ne %struct.l2cap_conn* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  br label %231

35:                                               ; preds = %31
  %36 = load %struct.l2cap_conn*, %struct.l2cap_conn** %7, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.l2cap_conn* %36, i32 %39, i32 %40)
  %42 = load i32, i32* %6, align 4
  switch i32 %42, label %230 [
    i32 129, label %43
    i32 128, label %43
    i32 131, label %43
    i32 130, label %149
  ]

43:                                               ; preds = %35, %35, %35
  %44 = load %struct.l2cap_conn*, %struct.l2cap_conn** %7, align 8
  %45 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %43
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i8*, i32, ...) @BT_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load %struct.l2cap_conn*, %struct.l2cap_conn** %7, align 8
  %54 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %53, i32 0, i32 1
  %55 = load %struct.sk_buff*, %struct.sk_buff** %54, align 8
  %56 = call i32 @kfree_skb(%struct.sk_buff* %55)
  %57 = load %struct.l2cap_conn*, %struct.l2cap_conn** %7, align 8
  %58 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %57, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %58, align 8
  %59 = load %struct.l2cap_conn*, %struct.l2cap_conn** %7, align 8
  %60 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  %61 = load %struct.l2cap_conn*, %struct.l2cap_conn** %7, align 8
  %62 = load i32, i32* @ECOMM, align 4
  %63 = call i32 @l2cap_conn_unreliable(%struct.l2cap_conn* %61, i32 %62)
  br label %64

64:                                               ; preds = %48, %43
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @L2CAP_HDR_SIZE, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %64
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (i8*, i32, ...) @BT_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = load %struct.l2cap_conn*, %struct.l2cap_conn** %7, align 8
  %76 = load i32, i32* @ECOMM, align 4
  %77 = call i32 @l2cap_conn_unreliable(%struct.l2cap_conn* %75, i32 %76)
  br label %231

78:                                               ; preds = %64
  %79 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to %struct.l2cap_hdr*
  store %struct.l2cap_hdr* %82, %struct.l2cap_hdr** %8, align 8
  %83 = load %struct.l2cap_hdr*, %struct.l2cap_hdr** %8, align 8
  %84 = getelementptr inbounds %struct.l2cap_hdr, %struct.l2cap_hdr* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @__le16_to_cpu(i32 %85)
  %87 = load i32, i32* @L2CAP_HDR_SIZE, align 4
  %88 = add nsw i32 %86, %87
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %89, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %78
  %95 = load %struct.l2cap_conn*, %struct.l2cap_conn** %7, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %97 = call i32 @l2cap_recv_frame(%struct.l2cap_conn* %95, %struct.sk_buff* %96)
  br label %234

98:                                               ; preds = %78
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %99, i32 %102)
  %104 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %98
  %110 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32 (i8*, i32, ...) @BT_ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %112, i32 %113)
  %115 = load %struct.l2cap_conn*, %struct.l2cap_conn** %7, align 8
  %116 = load i32, i32* @ECOMM, align 4
  %117 = call i32 @l2cap_conn_unreliable(%struct.l2cap_conn* %115, i32 %116)
  br label %231

118:                                              ; preds = %98
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @GFP_KERNEL, align 4
  %121 = call %struct.sk_buff* @bt_skb_alloc(i32 %119, i32 %120)
  %122 = load %struct.l2cap_conn*, %struct.l2cap_conn** %7, align 8
  %123 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %122, i32 0, i32 1
  store %struct.sk_buff* %121, %struct.sk_buff** %123, align 8
  %124 = load %struct.l2cap_conn*, %struct.l2cap_conn** %7, align 8
  %125 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %124, i32 0, i32 1
  %126 = load %struct.sk_buff*, %struct.sk_buff** %125, align 8
  %127 = icmp ne %struct.sk_buff* %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %118
  br label %231

129:                                              ; preds = %118
  %130 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %131 = load %struct.l2cap_conn*, %struct.l2cap_conn** %7, align 8
  %132 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %131, i32 0, i32 1
  %133 = load %struct.sk_buff*, %struct.sk_buff** %132, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %135 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @skb_put(%struct.sk_buff* %133, i32 %136)
  %138 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %139 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %130, i32 %137, i32 %140)
  %142 = load i32, i32* %9, align 4
  %143 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %144 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = sub nsw i32 %142, %145
  %147 = load %struct.l2cap_conn*, %struct.l2cap_conn** %7, align 8
  %148 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  br label %230

149:                                              ; preds = %35
  %150 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %151 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.l2cap_conn*, %struct.l2cap_conn** %7, align 8
  %154 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %152, i32 %155)
  %157 = load %struct.l2cap_conn*, %struct.l2cap_conn** %7, align 8
  %158 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %169, label %161

161:                                              ; preds = %149
  %162 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %163 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 (i8*, i32, ...) @BT_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %164)
  %166 = load %struct.l2cap_conn*, %struct.l2cap_conn** %7, align 8
  %167 = load i32, i32* @ECOMM, align 4
  %168 = call i32 @l2cap_conn_unreliable(%struct.l2cap_conn* %166, i32 %167)
  br label %231

169:                                              ; preds = %149
  %170 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %171 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.l2cap_conn*, %struct.l2cap_conn** %7, align 8
  %174 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp sgt i32 %172, %175
  br i1 %176, label %177, label %196

177:                                              ; preds = %169
  %178 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %179 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.l2cap_conn*, %struct.l2cap_conn** %7, align 8
  %182 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 (i8*, i32, ...) @BT_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %180, i32 %183)
  %185 = load %struct.l2cap_conn*, %struct.l2cap_conn** %7, align 8
  %186 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %185, i32 0, i32 1
  %187 = load %struct.sk_buff*, %struct.sk_buff** %186, align 8
  %188 = call i32 @kfree_skb(%struct.sk_buff* %187)
  %189 = load %struct.l2cap_conn*, %struct.l2cap_conn** %7, align 8
  %190 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %189, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %190, align 8
  %191 = load %struct.l2cap_conn*, %struct.l2cap_conn** %7, align 8
  %192 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %191, i32 0, i32 0
  store i32 0, i32* %192, align 8
  %193 = load %struct.l2cap_conn*, %struct.l2cap_conn** %7, align 8
  %194 = load i32, i32* @ECOMM, align 4
  %195 = call i32 @l2cap_conn_unreliable(%struct.l2cap_conn* %193, i32 %194)
  br label %231

196:                                              ; preds = %169
  %197 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %198 = load %struct.l2cap_conn*, %struct.l2cap_conn** %7, align 8
  %199 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %198, i32 0, i32 1
  %200 = load %struct.sk_buff*, %struct.sk_buff** %199, align 8
  %201 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %202 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @skb_put(%struct.sk_buff* %200, i32 %203)
  %205 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %206 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %197, i32 %204, i32 %207)
  %209 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %210 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.l2cap_conn*, %struct.l2cap_conn** %7, align 8
  %213 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = sub nsw i32 %214, %211
  store i32 %215, i32* %213, align 8
  %216 = load %struct.l2cap_conn*, %struct.l2cap_conn** %7, align 8
  %217 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %229, label %220

220:                                              ; preds = %196
  %221 = load %struct.l2cap_conn*, %struct.l2cap_conn** %7, align 8
  %222 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %221, i32 0, i32 1
  %223 = load %struct.sk_buff*, %struct.sk_buff** %222, align 8
  store %struct.sk_buff* %223, %struct.sk_buff** %10, align 8
  %224 = load %struct.l2cap_conn*, %struct.l2cap_conn** %7, align 8
  %225 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %224, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %225, align 8
  %226 = load %struct.l2cap_conn*, %struct.l2cap_conn** %7, align 8
  %227 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %228 = call i32 @l2cap_recv_frame(%struct.l2cap_conn* %226, %struct.sk_buff* %227)
  br label %229

229:                                              ; preds = %220, %196
  br label %230

230:                                              ; preds = %35, %229, %129
  br label %231

231:                                              ; preds = %230, %177, %161, %128, %109, %70, %34, %24
  %232 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %233 = call i32 @kfree_skb(%struct.sk_buff* %232)
  br label %234

234:                                              ; preds = %231, %94
  ret void
}

declare dso_local %struct.l2cap_conn* @l2cap_conn_add(%struct.hci_conn*) #1

declare dso_local i32 @BT_DBG(i8*, ...) #1

declare dso_local i32 @BT_ERR(i8*, i32, ...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @l2cap_conn_unreliable(%struct.l2cap_conn*, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @l2cap_recv_frame(%struct.l2cap_conn*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @bt_skb_alloc(i32, i32) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
