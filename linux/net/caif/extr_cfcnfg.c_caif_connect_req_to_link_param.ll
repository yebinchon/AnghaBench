; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfcnfg.c_caif_connect_req_to_link_param.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfcnfg.c_caif_connect_req_to_link_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfcnfg = type { i32 }
%struct.caif_connect_request = type { i64, i32, i32, %struct.TYPE_15__, %struct.TYPE_22__, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.cfctrl_link_param = type { i32, i32, i32, i8*, %struct.TYPE_24__, i64 }
%struct.TYPE_24__ = type { %struct.TYPE_23__, %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.dev_info = type { i32 }

@CAIF_PRIO_MAX = common dso_local global i64 0, align 8
@CFPHYPREF_HIGH_BW = common dso_local global i32 0, align 4
@CFPHYPREF_LOW_LAT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@CFCTRL_SRV_VEI = common dso_local global i8* null, align 8
@CFCTRL_SRV_DATAGRAM = common dso_local global i8* null, align 8
@CFCTRL_SRV_RFM = common dso_local global i8* null, align 8
@CFCTRL_SRV_UTIL = common dso_local global i8* null, align 8
@CFCTRL_SRV_DBG = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfcnfg*, %struct.caif_connect_request*, %struct.cfctrl_link_param*)* @caif_connect_req_to_link_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @caif_connect_req_to_link_param(%struct.cfcnfg* %0, %struct.caif_connect_request* %1, %struct.cfctrl_link_param* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfcnfg*, align 8
  %6 = alloca %struct.caif_connect_request*, align 8
  %7 = alloca %struct.cfctrl_link_param*, align 8
  %8 = alloca %struct.dev_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cfcnfg* %0, %struct.cfcnfg** %5, align 8
  store %struct.caif_connect_request* %1, %struct.caif_connect_request** %6, align 8
  store %struct.cfctrl_link_param* %2, %struct.cfctrl_link_param** %7, align 8
  %11 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %7, align 8
  %12 = call i32 @memset(%struct.cfctrl_link_param* %11, i32 0, i32 56)
  %13 = load i64, i64* @CAIF_PRIO_MAX, align 8
  %14 = load %struct.caif_connect_request*, %struct.caif_connect_request** %6, align 8
  %15 = getelementptr inbounds %struct.caif_connect_request, %struct.caif_connect_request* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %13, %16
  %18 = add nsw i64 %17, 1
  %19 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %7, align 8
  %20 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %19, i32 0, i32 5
  store i64 %18, i64* %20, align 8
  %21 = load %struct.caif_connect_request*, %struct.caif_connect_request** %6, align 8
  %22 = getelementptr inbounds %struct.caif_connect_request, %struct.caif_connect_request* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %3
  %26 = load %struct.cfcnfg*, %struct.cfcnfg** %5, align 8
  %27 = load %struct.caif_connect_request*, %struct.caif_connect_request** %6, align 8
  %28 = getelementptr inbounds %struct.caif_connect_request, %struct.caif_connect_request* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @cfcnfg_get_id_from_ifi(%struct.cfcnfg* %26, i64 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %4, align 4
  br label %233

35:                                               ; preds = %25
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %7, align 8
  %38 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %65

39:                                               ; preds = %3
  %40 = load %struct.caif_connect_request*, %struct.caif_connect_request** %6, align 8
  %41 = getelementptr inbounds %struct.caif_connect_request, %struct.caif_connect_request* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %47 [
    i32 129, label %43
    i32 128, label %45
  ]

43:                                               ; preds = %39
  %44 = load i32, i32* @CFPHYPREF_HIGH_BW, align 4
  store i32 %44, i32* %9, align 4
  br label %50

45:                                               ; preds = %39
  %46 = load i32, i32* @CFPHYPREF_LOW_LAT, align 4
  store i32 %46, i32* %9, align 4
  br label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %233

50:                                               ; preds = %45, %43
  %51 = load %struct.cfcnfg*, %struct.cfcnfg** %5, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call %struct.dev_info* @cfcnfg_get_phyid(%struct.cfcnfg* %51, i32 %52)
  store %struct.dev_info* %53, %struct.dev_info** %8, align 8
  %54 = load %struct.dev_info*, %struct.dev_info** %8, align 8
  %55 = icmp eq %struct.dev_info* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %233

59:                                               ; preds = %50
  %60 = load %struct.dev_info*, %struct.dev_info** %8, align 8
  %61 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %7, align 8
  %64 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %59, %35
  %66 = load %struct.caif_connect_request*, %struct.caif_connect_request** %6, align 8
  %67 = getelementptr inbounds %struct.caif_connect_request, %struct.caif_connect_request* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  switch i32 %68, label %229 [
    i32 135, label %69
    i32 134, label %92
    i32 133, label %108
    i32 131, label %126
    i32 130, label %152
    i32 132, label %209
  ]

69:                                               ; preds = %65
  %70 = load i8*, i8** @CFCTRL_SRV_VEI, align 8
  %71 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %7, align 8
  %72 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  %73 = load %struct.caif_connect_request*, %struct.caif_connect_request** %6, align 8
  %74 = getelementptr inbounds %struct.caif_connect_request, %struct.caif_connect_request* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = ashr i32 %78, 2
  %80 = and i32 %79, 3
  %81 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %7, align 8
  %82 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.caif_connect_request*, %struct.caif_connect_request** %6, align 8
  %84 = getelementptr inbounds %struct.caif_connect_request, %struct.caif_connect_request* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = and i32 %88, 3
  %90 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %7, align 8
  %91 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  br label %232

92:                                               ; preds = %65
  %93 = load i8*, i8** @CFCTRL_SRV_DATAGRAM, align 8
  %94 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %7, align 8
  %95 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %94, i32 0, i32 3
  store i8* %93, i8** %95, align 8
  %96 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %7, align 8
  %97 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %96, i32 0, i32 2
  store i32 0, i32* %97, align 8
  %98 = load %struct.caif_connect_request*, %struct.caif_connect_request** %6, align 8
  %99 = getelementptr inbounds %struct.caif_connect_request, %struct.caif_connect_request* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %7, align 8
  %105 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  store i32 %103, i32* %107, align 8
  br label %232

108:                                              ; preds = %65
  %109 = load i8*, i8** @CFCTRL_SRV_DATAGRAM, align 8
  %110 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %7, align 8
  %111 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %110, i32 0, i32 3
  store i8* %109, i8** %111, align 8
  %112 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %7, align 8
  %113 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %112, i32 0, i32 2
  store i32 3, i32* %113, align 8
  %114 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %7, align 8
  %115 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %114, i32 0, i32 1
  store i32 0, i32* %115, align 4
  %116 = load %struct.caif_connect_request*, %struct.caif_connect_request** %6, align 8
  %117 = getelementptr inbounds %struct.caif_connect_request, %struct.caif_connect_request* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %7, align 8
  %123 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  store i32 %121, i32* %125, align 8
  br label %232

126:                                              ; preds = %65
  %127 = load i8*, i8** @CFCTRL_SRV_RFM, align 8
  %128 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %7, align 8
  %129 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %128, i32 0, i32 3
  store i8* %127, i8** %129, align 8
  %130 = load %struct.caif_connect_request*, %struct.caif_connect_request** %6, align 8
  %131 = getelementptr inbounds %struct.caif_connect_request, %struct.caif_connect_request* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %7, align 8
  %137 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 0
  store i32 %135, i32* %139, align 8
  %140 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %7, align 8
  %141 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.caif_connect_request*, %struct.caif_connect_request** %6, align 8
  %146 = getelementptr inbounds %struct.caif_connect_request, %struct.caif_connect_request* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @strlcpy(i32 %144, i32 %150, i32 4)
  br label %232

152:                                              ; preds = %65
  %153 = load i8*, i8** @CFCTRL_SRV_UTIL, align 8
  %154 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %7, align 8
  %155 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %154, i32 0, i32 3
  store i8* %153, i8** %155, align 8
  %156 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %7, align 8
  %157 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %156, i32 0, i32 1
  store i32 0, i32* %157, align 4
  %158 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %7, align 8
  %159 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %158, i32 0, i32 2
  store i32 0, i32* %159, align 8
  %160 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %7, align 8
  %161 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.caif_connect_request*, %struct.caif_connect_request** %6, align 8
  %166 = getelementptr inbounds %struct.caif_connect_request, %struct.caif_connect_request* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @strlcpy(i32 %164, i32 %170, i32 4)
  %172 = call i32 @caif_assert(i32 0)
  %173 = load %struct.caif_connect_request*, %struct.caif_connect_request** %6, align 8
  %174 = getelementptr inbounds %struct.caif_connect_request, %struct.caif_connect_request* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %7, align 8
  %178 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 0
  store i32 %176, i32* %180, align 8
  %181 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %7, align 8
  %182 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %181, i32 0, i32 4
  %183 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = sext i32 %185 to i64
  %187 = icmp ugt i64 %186, 4
  br i1 %187, label %188, label %193

188:                                              ; preds = %152
  %189 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %7, align 8
  %190 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %189, i32 0, i32 4
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i32 0, i32 0
  store i32 4, i32* %192, align 8
  br label %193

193:                                              ; preds = %188, %152
  %194 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %7, align 8
  %195 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %194, i32 0, i32 4
  %196 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.caif_connect_request*, %struct.caif_connect_request** %6, align 8
  %200 = getelementptr inbounds %struct.caif_connect_request, %struct.caif_connect_request* %199, i32 0, i32 4
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %7, align 8
  %204 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %203, i32 0, i32 4
  %205 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @memcpy(i32 %198, i32 %202, i32 %207)
  br label %232

209:                                              ; preds = %65
  %210 = load i8*, i8** @CFCTRL_SRV_DBG, align 8
  %211 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %7, align 8
  %212 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %211, i32 0, i32 3
  store i8* %210, i8** %212, align 8
  %213 = load %struct.caif_connect_request*, %struct.caif_connect_request** %6, align 8
  %214 = getelementptr inbounds %struct.caif_connect_request, %struct.caif_connect_request* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %7, align 8
  %220 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %219, i32 0, i32 1
  store i32 %218, i32* %220, align 4
  %221 = load %struct.caif_connect_request*, %struct.caif_connect_request** %6, align 8
  %222 = getelementptr inbounds %struct.caif_connect_request, %struct.caif_connect_request* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %7, align 8
  %228 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %227, i32 0, i32 2
  store i32 %226, i32* %228, align 8
  br label %232

229:                                              ; preds = %65
  %230 = load i32, i32* @EINVAL, align 4
  %231 = sub nsw i32 0, %230
  store i32 %231, i32* %4, align 4
  br label %233

232:                                              ; preds = %209, %193, %126, %108, %92, %69
  store i32 0, i32* %4, align 4
  br label %233

233:                                              ; preds = %232, %229, %56, %47, %33
  %234 = load i32, i32* %4, align 4
  ret i32 %234
}

declare dso_local i32 @memset(%struct.cfctrl_link_param*, i32, i32) #1

declare dso_local i32 @cfcnfg_get_id_from_ifi(%struct.cfcnfg*, i64) #1

declare dso_local %struct.dev_info* @cfcnfg_get_phyid(%struct.cfcnfg*, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @caif_assert(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
