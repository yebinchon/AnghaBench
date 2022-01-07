; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfctrl.c_cfctrl_linkup_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfctrl.c_cfctrl_linkup_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfctrl_link_param = type { i32, i32, i32, i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i8, i8*, i32, i32, i32 }
%struct.TYPE_12__ = type { i8*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.cflayer = type { i32 (%struct.cflayer*, %struct.cfpkt*)*, %struct.cflayer* }
%struct.cfpkt = type { i32 }
%struct.cfctrl = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.cflayer }
%struct.cfctrl_request_info = type { i8, %struct.cfctrl_link_param, %struct.cflayer* }
%struct.TYPE_17__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"not able to send linkup request\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Duplicate connect request for same client\0A\00", align 1
@EALREADY = common dso_local global i32 0, align 4
@CFPKT_CTRL_PKT_LEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CFCTRL_CMD_LINK_SETUP = common dso_local global i8 0, align 1
@UTILITY_NAME_LENGTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Request setup of bad link type = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@TC_PRIO_CONTROL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Could not remove request (%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfctrl_linkup_request(%struct.cflayer* %0, %struct.cfctrl_link_param* %1, %struct.cflayer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cflayer*, align 8
  %6 = alloca %struct.cfctrl_link_param*, align 8
  %7 = alloca %struct.cflayer*, align 8
  %8 = alloca %struct.cfctrl*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca %struct.cfctrl_request_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [16 x i8], align 16
  %15 = alloca %struct.cfpkt*, align 8
  %16 = alloca %struct.cflayer*, align 8
  %17 = alloca i32, align 4
  store %struct.cflayer* %0, %struct.cflayer** %5, align 8
  store %struct.cfctrl_link_param* %1, %struct.cfctrl_link_param** %6, align 8
  store %struct.cflayer* %2, %struct.cflayer** %7, align 8
  %18 = load %struct.cflayer*, %struct.cflayer** %5, align 8
  %19 = call %struct.cfctrl* @container_obj(%struct.cflayer* %18)
  store %struct.cfctrl* %19, %struct.cfctrl** %8, align 8
  %20 = load %struct.cfctrl*, %struct.cfctrl** %8, align 8
  %21 = getelementptr inbounds %struct.cfctrl, %struct.cfctrl* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %22, i32 0, i32 1
  %24 = load %struct.cflayer*, %struct.cflayer** %23, align 8
  store %struct.cflayer* %24, %struct.cflayer** %16, align 8
  %25 = load %struct.cflayer*, %struct.cflayer** %16, align 8
  %26 = icmp ne %struct.cflayer* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %3
  %28 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %247

31:                                               ; preds = %3
  %32 = load %struct.cflayer*, %struct.cflayer** %5, align 8
  %33 = load %struct.cflayer*, %struct.cflayer** %7, align 8
  %34 = call i32 @cfctrl_cancel_req(%struct.cflayer* %32, %struct.cflayer* %33)
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %38 = call i32 @WARN_ON(i32 1)
  %39 = load i32, i32* @EALREADY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %247

41:                                               ; preds = %31
  %42 = load i32, i32* @CFPKT_CTRL_PKT_LEN, align 4
  %43 = call %struct.cfpkt* @cfpkt_create(i32 %42)
  store %struct.cfpkt* %43, %struct.cfpkt** %15, align 8
  %44 = load %struct.cfpkt*, %struct.cfpkt** %15, align 8
  %45 = icmp ne %struct.cfpkt* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %247

49:                                               ; preds = %41
  %50 = load %struct.cfpkt*, %struct.cfpkt** %15, align 8
  %51 = load i8, i8* @CFCTRL_CMD_LINK_SETUP, align 1
  %52 = call i32 @cfpkt_addbdy(%struct.cfpkt* %50, i8 signext %51)
  %53 = load %struct.cfpkt*, %struct.cfpkt** %15, align 8
  %54 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %6, align 8
  %55 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = shl i32 %56, 4
  %58 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %6, align 8
  %59 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %57, %60
  %62 = trunc i32 %61 to i8
  %63 = call i32 @cfpkt_addbdy(%struct.cfpkt* %53, i8 signext %62)
  %64 = load %struct.cfpkt*, %struct.cfpkt** %15, align 8
  %65 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %6, align 8
  %66 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = shl i32 %67, 3
  %69 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %6, align 8
  %70 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %68, %71
  %73 = trunc i32 %72 to i8
  %74 = call i32 @cfpkt_addbdy(%struct.cfpkt* %64, i8 signext %73)
  %75 = load %struct.cfpkt*, %struct.cfpkt** %15, align 8
  %76 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %6, align 8
  %77 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %78, 3
  %80 = trunc i32 %79 to i8
  %81 = call i32 @cfpkt_addbdy(%struct.cfpkt* %75, i8 signext %80)
  %82 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %6, align 8
  %83 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  switch i32 %84, label %179 [
    i32 129, label %85
    i32 128, label %86
    i32 132, label %95
    i32 133, label %96
    i32 131, label %105
    i32 130, label %128
  ]

85:                                               ; preds = %49
  br label %186

86:                                               ; preds = %49
  %87 = load %struct.cfpkt*, %struct.cfpkt** %15, align 8
  %88 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %6, align 8
  %89 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = trunc i32 %92 to i8
  %94 = call i32 @cfpkt_addbdy(%struct.cfpkt* %87, i8 signext %93)
  br label %186

95:                                               ; preds = %49
  br label %186

96:                                               ; preds = %49
  %97 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %6, align 8
  %98 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call signext i8 @cpu_to_le32(i32 %101)
  store i8 %102, i8* %9, align 1
  %103 = load %struct.cfpkt*, %struct.cfpkt** %15, align 8
  %104 = call i32 @cfpkt_add_body(%struct.cfpkt* %103, i8* %9, i32 4)
  br label %186

105:                                              ; preds = %49
  %106 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %6, align 8
  %107 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call signext i8 @cpu_to_le32(i32 %110)
  store i8 %111, i8* %9, align 1
  %112 = load %struct.cfpkt*, %struct.cfpkt** %15, align 8
  %113 = call i32 @cfpkt_add_body(%struct.cfpkt* %112, i8* %9, i32 4)
  %114 = load %struct.cfpkt*, %struct.cfpkt** %15, align 8
  %115 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %6, align 8
  %116 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %115, i32 0, i32 5
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %6, align 8
  %121 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %120, i32 0, i32 5
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @strlen(i8* %124)
  %126 = add nsw i32 %125, 1
  %127 = call i32 @cfpkt_add_body(%struct.cfpkt* %114, i8* %119, i32 %126)
  br label %186

128:                                              ; preds = %49
  %129 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %6, align 8
  %130 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %129, i32 0, i32 5
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = call signext i8 @cpu_to_le16(i32 %133)
  store i8 %134, i8* %10, align 1
  %135 = load %struct.cfpkt*, %struct.cfpkt** %15, align 8
  %136 = call i32 @cfpkt_add_body(%struct.cfpkt* %135, i8* %10, i32 2)
  %137 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %6, align 8
  %138 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %137, i32 0, i32 5
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = call signext i8 @cpu_to_le16(i32 %141)
  store i8 %142, i8* %10, align 1
  %143 = load %struct.cfpkt*, %struct.cfpkt** %15, align 8
  %144 = call i32 @cfpkt_add_body(%struct.cfpkt* %143, i8* %10, i32 2)
  %145 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %146 = call i32 @memset(i8* %145, i32 0, i32 16)
  %147 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %148 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %6, align 8
  %149 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %148, i32 0, i32 5
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @UTILITY_NAME_LENGTH, align 4
  %154 = call i32 @strlcpy(i8* %147, i32 %152, i32 %153)
  %155 = load %struct.cfpkt*, %struct.cfpkt** %15, align 8
  %156 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %157 = load i32, i32* @UTILITY_NAME_LENGTH, align 4
  %158 = call i32 @cfpkt_add_body(%struct.cfpkt* %155, i8* %156, i32 %157)
  %159 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %6, align 8
  %160 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %159, i32 0, i32 5
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 0
  %163 = load i8, i8* %162, align 8
  store i8 %163, i8* %11, align 1
  %164 = load %struct.cfpkt*, %struct.cfpkt** %15, align 8
  %165 = call i32 @cfpkt_add_body(%struct.cfpkt* %164, i8* %11, i32 1)
  %166 = load %struct.cfpkt*, %struct.cfpkt** %15, align 8
  %167 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %6, align 8
  %168 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %167, i32 0, i32 5
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 1
  %171 = load i8*, i8** %170, align 8
  %172 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %6, align 8
  %173 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %172, i32 0, i32 5
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = load i8, i8* %175, align 8
  %177 = sext i8 %176 to i32
  %178 = call i32 @cfpkt_add_body(%struct.cfpkt* %166, i8* %171, i32 %177)
  br label %186

179:                                              ; preds = %49
  %180 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %6, align 8
  %181 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %182)
  %184 = load i32, i32* @EINVAL, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %4, align 4
  br label %247

186:                                              ; preds = %128, %105, %96, %95, %86, %85
  %187 = load i32, i32* @GFP_KERNEL, align 4
  %188 = call %struct.cfctrl_request_info* @kzalloc(i32 96, i32 %187)
  store %struct.cfctrl_request_info* %188, %struct.cfctrl_request_info** %12, align 8
  %189 = load %struct.cfctrl_request_info*, %struct.cfctrl_request_info** %12, align 8
  %190 = icmp ne %struct.cfctrl_request_info* %189, null
  br i1 %190, label %194, label %191

191:                                              ; preds = %186
  %192 = load i32, i32* @ENOMEM, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %4, align 4
  br label %247

194:                                              ; preds = %186
  %195 = load %struct.cflayer*, %struct.cflayer** %7, align 8
  %196 = load %struct.cfctrl_request_info*, %struct.cfctrl_request_info** %12, align 8
  %197 = getelementptr inbounds %struct.cfctrl_request_info, %struct.cfctrl_request_info* %196, i32 0, i32 2
  store %struct.cflayer* %195, %struct.cflayer** %197, align 8
  %198 = load i8, i8* @CFCTRL_CMD_LINK_SETUP, align 1
  %199 = load %struct.cfctrl_request_info*, %struct.cfctrl_request_info** %12, align 8
  %200 = getelementptr inbounds %struct.cfctrl_request_info, %struct.cfctrl_request_info* %199, i32 0, i32 0
  store i8 %198, i8* %200, align 8
  %201 = load %struct.cfctrl_request_info*, %struct.cfctrl_request_info** %12, align 8
  %202 = getelementptr inbounds %struct.cfctrl_request_info, %struct.cfctrl_request_info* %201, i32 0, i32 1
  %203 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %6, align 8
  %204 = bitcast %struct.cfctrl_link_param* %202 to i8*
  %205 = bitcast %struct.cfctrl_link_param* %203 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %204, i8* align 8 %205, i64 80, i1 false)
  %206 = load %struct.cfctrl*, %struct.cfctrl** %8, align 8
  %207 = load %struct.cfctrl_request_info*, %struct.cfctrl_request_info** %12, align 8
  %208 = call i32 @cfctrl_insert_req(%struct.cfctrl* %206, %struct.cfctrl_request_info* %207)
  %209 = load %struct.cfpkt*, %struct.cfpkt** %15, align 8
  %210 = call %struct.TYPE_17__* @cfpkt_info(%struct.cfpkt* %209)
  %211 = load %struct.cfctrl*, %struct.cfctrl** %8, align 8
  %212 = call i32 @init_info(%struct.TYPE_17__* %210, %struct.cfctrl* %211)
  %213 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %6, align 8
  %214 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.cfpkt*, %struct.cfpkt** %15, align 8
  %217 = call %struct.TYPE_17__* @cfpkt_info(%struct.cfpkt* %216)
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 0
  store i32 %215, i32* %220, align 4
  %221 = load %struct.cfpkt*, %struct.cfpkt** %15, align 8
  %222 = load i32, i32* @TC_PRIO_CONTROL, align 4
  %223 = call i32 @cfpkt_set_prio(%struct.cfpkt* %221, i32 %222)
  %224 = load %struct.cflayer*, %struct.cflayer** %16, align 8
  %225 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %224, i32 0, i32 0
  %226 = load i32 (%struct.cflayer*, %struct.cfpkt*)*, i32 (%struct.cflayer*, %struct.cfpkt*)** %225, align 8
  %227 = load %struct.cflayer*, %struct.cflayer** %16, align 8
  %228 = load %struct.cfpkt*, %struct.cfpkt** %15, align 8
  %229 = call i32 %226(%struct.cflayer* %227, %struct.cfpkt* %228)
  store i32 %229, i32* %13, align 4
  %230 = load i32, i32* %13, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %246

232:                                              ; preds = %194
  %233 = load %struct.cfctrl*, %struct.cfctrl** %8, align 8
  %234 = getelementptr inbounds %struct.cfctrl, %struct.cfctrl* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 0
  %236 = load %struct.cflayer*, %struct.cflayer** %7, align 8
  %237 = call i32 @cfctrl_cancel_req(%struct.cflayer* %235, %struct.cflayer* %236)
  store i32 %237, i32* %17, align 4
  %238 = load i32, i32* %17, align 4
  %239 = icmp ne i32 %238, 1
  br i1 %239, label %240, label %245

240:                                              ; preds = %232
  %241 = load i32, i32* %17, align 4
  %242 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %241)
  %243 = load i32, i32* @ENODEV, align 4
  %244 = sub nsw i32 0, %243
  store i32 %244, i32* %4, align 4
  br label %247

245:                                              ; preds = %232
  br label %246

246:                                              ; preds = %245, %194
  store i32 0, i32* %4, align 4
  br label %247

247:                                              ; preds = %246, %240, %191, %179, %46, %36, %27
  %248 = load i32, i32* %4, align 4
  ret i32 %248
}

declare dso_local %struct.cfctrl* @container_obj(%struct.cflayer*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @cfctrl_cancel_req(%struct.cflayer*, %struct.cflayer*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.cfpkt* @cfpkt_create(i32) #1

declare dso_local i32 @cfpkt_addbdy(%struct.cfpkt*, i8 signext) #1

declare dso_local signext i8 @cpu_to_le32(i32) #1

declare dso_local i32 @cfpkt_add_body(%struct.cfpkt*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local signext i8 @cpu_to_le16(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local %struct.cfctrl_request_info* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cfctrl_insert_req(%struct.cfctrl*, %struct.cfctrl_request_info*) #1

declare dso_local i32 @init_info(%struct.TYPE_17__*, %struct.cfctrl*) #1

declare dso_local %struct.TYPE_17__* @cfpkt_info(%struct.cfpkt*) #1

declare dso_local i32 @cfpkt_set_prio(%struct.cfpkt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
