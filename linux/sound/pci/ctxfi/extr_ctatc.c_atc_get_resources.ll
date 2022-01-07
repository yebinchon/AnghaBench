; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctatc.c_atc_get_resources.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctatc.c_atc_get_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_atc = type { i64, i64, i32*, i32, %struct.sum_mgr**, i64, i32*, i64, i32*, i64, %struct.TYPE_2__*, i32* }
%struct.sum_mgr = type { i32 (%struct.sum_mgr*, %struct.src_desc*, %struct.src**)*, i32 (%struct.sum_mgr*, %struct.srcimp_desc*, %struct.srcimp**)*, i32 (%struct.sum_mgr*, %struct.sum_desc*, %struct.sum**)* }
%struct.src_desc = type opaque
%struct.src = type opaque
%struct.srcimp_desc = type opaque
%struct.srcimp = type opaque
%struct.sum_desc = type opaque
%struct.sum = type opaque
%struct.TYPE_2__ = type { i32 }
%struct.daio_desc = type { i32, i32, i32 }
%struct.daio_mgr = type { i32 (%struct.daio_mgr*, %struct.daio_desc.0*, %struct.daio**)* }
%struct.daio_desc.0 = type opaque
%struct.daio = type opaque
%struct.src_desc.1 = type { i32, i32, i32, i32 }
%struct.src_mgr = type { i32 (%struct.sum_mgr*, %struct.src_desc.2*, %struct.src.3**)*, i32 (%struct.sum_mgr*, %struct.srcimp_desc.4*, %struct.srcimp.5**)*, i32 (%struct.sum_mgr*, %struct.sum_desc.6*, %struct.sum.7**)* }
%struct.src_desc.2 = type opaque
%struct.src.3 = type opaque
%struct.srcimp_desc.4 = type { i32, i32 }
%struct.srcimp.5 = type { i32 }
%struct.sum_desc.6 = type { i32, i32 }
%struct.sum.7 = type { i32 }
%struct.srcimp_mgr = type { i32 (%struct.sum_mgr*, %struct.src_desc.8*, %struct.src.9**)*, i32 (%struct.sum_mgr*, %struct.srcimp_desc.10*, %struct.srcimp.11**)*, i32 (%struct.sum_mgr*, %struct.sum_desc.6*, %struct.sum.7**)* }
%struct.src_desc.8 = type opaque
%struct.src.9 = type opaque
%struct.srcimp_desc.10 = type opaque
%struct.srcimp.11 = type opaque
%struct.daio.12 = type { i32 }
%struct.src.13 = type { i32 }

@CTSB1270 = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DAIO = common dso_local global i64 0, align 8
@CTSB073X = common dso_local global i64 0, align 8
@SPDIFIO = common dso_local global i32 0, align 4
@SPDIFI1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to get DAIO resource %d!!!\0A\00", align 1
@SRC = common dso_local global i64 0, align 8
@ARCRW = common dso_local global i32 0, align 4
@SRCIMP = common dso_local global i64 0, align 8
@SUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ct_atc*)* @atc_get_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atc_get_resources(%struct.ct_atc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ct_atc*, align 8
  %4 = alloca %struct.daio_desc, align 4
  %5 = alloca %struct.daio_mgr*, align 8
  %6 = alloca %struct.src_desc.1, align 4
  %7 = alloca %struct.src_mgr*, align 8
  %8 = alloca %struct.srcimp_desc.4, align 4
  %9 = alloca %struct.srcimp_mgr*, align 8
  %10 = alloca %struct.sum_desc.6, align 4
  %11 = alloca %struct.sum_mgr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ct_atc* %0, %struct.ct_atc** %3, align 8
  %16 = bitcast %struct.daio_desc* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 12, i1 false)
  %17 = bitcast %struct.src_desc.1* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 16, i1 false)
  %18 = bitcast %struct.srcimp_desc.4* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 8, i1 false)
  %19 = bitcast %struct.sum_desc.6* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 8, i1 false)
  %20 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %21 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CTSB1270, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 8, i32 7
  store i32 %26, i32* %15, align 4
  %27 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %28 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CTSB1270, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 6, i32 4
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @kcalloc(i32 %34, i32 8, i32 %35)
  %37 = bitcast i8* %36 to i32*
  %38 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %39 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %38, i32 0, i32 11
  store i32* %37, i32** %39, align 8
  %40 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %41 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %40, i32 0, i32 11
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %1
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %296

47:                                               ; preds = %1
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i8* @kcalloc(i32 %48, i32 8, i32 %49)
  %51 = bitcast i8* %50 to i32*
  %52 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %53 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %52, i32 0, i32 8
  store i32* %51, i32** %53, align 8
  %54 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %55 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %54, i32 0, i32 8
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %47
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %296

61:                                               ; preds = %47
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i8* @kcalloc(i32 %62, i32 8, i32 %63)
  %65 = bitcast i8* %64 to i32*
  %66 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %67 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %66, i32 0, i32 6
  store i32* %65, i32** %67, align 8
  %68 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %69 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %68, i32 0, i32 6
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %61
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %296

75:                                               ; preds = %61
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call i8* @kcalloc(i32 8, i32 8, i32 %76)
  %78 = bitcast i8* %77 to i32*
  %79 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %80 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %79, i32 0, i32 2
  store i32* %78, i32** %80, align 8
  %81 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %82 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %75
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %296

88:                                               ; preds = %75
  %89 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %90 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %89, i32 0, i32 4
  %91 = load %struct.sum_mgr**, %struct.sum_mgr*** %90, align 8
  %92 = load i64, i64* @DAIO, align 8
  %93 = getelementptr inbounds %struct.sum_mgr*, %struct.sum_mgr** %91, i64 %92
  %94 = load %struct.sum_mgr*, %struct.sum_mgr** %93, align 8
  %95 = bitcast %struct.sum_mgr* %94 to %struct.daio_mgr*
  store %struct.daio_mgr* %95, %struct.daio_mgr** %5, align 8
  %96 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %97 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = getelementptr inbounds %struct.daio_desc, %struct.daio_desc* %4, i32 0, i32 1
  store i32 %98, i32* %99, align 4
  store i32 0, i32* %13, align 4
  %100 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %101 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %100, i32 0, i32 9
  store i64 0, i64* %101, align 8
  br label %102

102:                                              ; preds = %157, %88
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %15, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %160

106:                                              ; preds = %102
  %107 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %108 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @CTSB073X, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = load i32, i32* %13, align 4
  br label %124

114:                                              ; preds = %106
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* @SPDIFIO, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = load i32, i32* @SPDIFI1, align 4
  br label %122

120:                                              ; preds = %114
  %121 = load i32, i32* %13, align 4
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi i32 [ %119, %118 ], [ %121, %120 ]
  br label %124

124:                                              ; preds = %122, %112
  %125 = phi i32 [ %113, %112 ], [ %123, %122 ]
  %126 = getelementptr inbounds %struct.daio_desc, %struct.daio_desc* %4, i32 0, i32 0
  store i32 %125, i32* %126, align 4
  %127 = load %struct.daio_mgr*, %struct.daio_mgr** %5, align 8
  %128 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %127, i32 0, i32 0
  %129 = load i32 (%struct.daio_mgr*, %struct.daio_desc.0*, %struct.daio**)*, i32 (%struct.daio_mgr*, %struct.daio_desc.0*, %struct.daio**)** %128, align 8
  %130 = load %struct.daio_mgr*, %struct.daio_mgr** %5, align 8
  %131 = bitcast %struct.daio_desc* %4 to %struct.daio_desc.0*
  %132 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %133 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %132, i32 0, i32 11
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = bitcast i32* %137 to %struct.daio.12**
  %139 = bitcast %struct.daio.12** %138 to %struct.daio**
  %140 = call i32 %129(%struct.daio_mgr* %130, %struct.daio_desc.0* %131, %struct.daio** %139)
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* %12, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %124
  %144 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %145 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %144, i32 0, i32 10
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %13, align 4
  %150 = call i32 @dev_err(i32 %148, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %149)
  %151 = load i32, i32* %12, align 4
  store i32 %151, i32* %2, align 4
  br label %296

152:                                              ; preds = %124
  %153 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %154 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %153, i32 0, i32 9
  %155 = load i64, i64* %154, align 8
  %156 = add nsw i64 %155, 1
  store i64 %156, i64* %154, align 8
  br label %157

157:                                              ; preds = %152
  %158 = load i32, i32* %13, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %13, align 4
  br label %102

160:                                              ; preds = %102
  %161 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %162 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %161, i32 0, i32 4
  %163 = load %struct.sum_mgr**, %struct.sum_mgr*** %162, align 8
  %164 = load i64, i64* @SRC, align 8
  %165 = getelementptr inbounds %struct.sum_mgr*, %struct.sum_mgr** %163, i64 %164
  %166 = load %struct.sum_mgr*, %struct.sum_mgr** %165, align 8
  %167 = bitcast %struct.sum_mgr* %166 to %struct.src_mgr*
  store %struct.src_mgr* %167, %struct.src_mgr** %7, align 8
  %168 = getelementptr inbounds %struct.src_desc.1, %struct.src_desc.1* %6, i32 0, i32 0
  store i32 1, i32* %168, align 4
  %169 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %170 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = getelementptr inbounds %struct.src_desc.1, %struct.src_desc.1* %6, i32 0, i32 2
  store i32 %171, i32* %172, align 4
  %173 = load i32, i32* @ARCRW, align 4
  %174 = getelementptr inbounds %struct.src_desc.1, %struct.src_desc.1* %6, i32 0, i32 1
  store i32 %173, i32* %174, align 4
  store i32 0, i32* %13, align 4
  %175 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %176 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %175, i32 0, i32 7
  store i64 0, i64* %176, align 8
  br label %177

177:                                              ; preds = %206, %160
  %178 = load i32, i32* %13, align 4
  %179 = load i32, i32* %14, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %209

181:                                              ; preds = %177
  %182 = load %struct.src_mgr*, %struct.src_mgr** %7, align 8
  %183 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %182, i32 0, i32 0
  %184 = load i32 (%struct.sum_mgr*, %struct.src_desc.2*, %struct.src.3**)*, i32 (%struct.sum_mgr*, %struct.src_desc.2*, %struct.src.3**)** %183, align 8
  %185 = load %struct.src_mgr*, %struct.src_mgr** %7, align 8
  %186 = bitcast %struct.src_mgr* %185 to %struct.sum_mgr*
  %187 = bitcast %struct.src_desc.1* %6 to %struct.src_desc.2*
  %188 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %189 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %188, i32 0, i32 8
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %13, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = bitcast i32* %193 to %struct.src.13**
  %195 = bitcast %struct.src.13** %194 to %struct.src.3**
  %196 = call i32 %184(%struct.sum_mgr* %186, %struct.src_desc.2* %187, %struct.src.3** %195)
  store i32 %196, i32* %12, align 4
  %197 = load i32, i32* %12, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %181
  %200 = load i32, i32* %12, align 4
  store i32 %200, i32* %2, align 4
  br label %296

201:                                              ; preds = %181
  %202 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %203 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %202, i32 0, i32 7
  %204 = load i64, i64* %203, align 8
  %205 = add nsw i64 %204, 1
  store i64 %205, i64* %203, align 8
  br label %206

206:                                              ; preds = %201
  %207 = load i32, i32* %13, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %13, align 4
  br label %177

209:                                              ; preds = %177
  %210 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %211 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %210, i32 0, i32 4
  %212 = load %struct.sum_mgr**, %struct.sum_mgr*** %211, align 8
  %213 = load i64, i64* @SRCIMP, align 8
  %214 = getelementptr inbounds %struct.sum_mgr*, %struct.sum_mgr** %212, i64 %213
  %215 = load %struct.sum_mgr*, %struct.sum_mgr** %214, align 8
  %216 = bitcast %struct.sum_mgr* %215 to %struct.srcimp_mgr*
  store %struct.srcimp_mgr* %216, %struct.srcimp_mgr** %9, align 8
  %217 = getelementptr inbounds %struct.srcimp_desc.4, %struct.srcimp_desc.4* %8, i32 0, i32 0
  store i32 8, i32* %217, align 4
  store i32 0, i32* %13, align 4
  %218 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %219 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %218, i32 0, i32 5
  store i64 0, i64* %219, align 8
  br label %220

220:                                              ; preds = %249, %209
  %221 = load i32, i32* %13, align 4
  %222 = load i32, i32* %14, align 4
  %223 = icmp slt i32 %221, %222
  br i1 %223, label %224, label %252

224:                                              ; preds = %220
  %225 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %9, align 8
  %226 = getelementptr inbounds %struct.srcimp_mgr, %struct.srcimp_mgr* %225, i32 0, i32 1
  %227 = load i32 (%struct.sum_mgr*, %struct.srcimp_desc.10*, %struct.srcimp.11**)*, i32 (%struct.sum_mgr*, %struct.srcimp_desc.10*, %struct.srcimp.11**)** %226, align 8
  %228 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %9, align 8
  %229 = bitcast %struct.srcimp_mgr* %228 to %struct.sum_mgr*
  %230 = bitcast %struct.srcimp_desc.4* %8 to %struct.srcimp_desc.10*
  %231 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %232 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %231, i32 0, i32 6
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %13, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = bitcast i32* %236 to %struct.srcimp.5**
  %238 = bitcast %struct.srcimp.5** %237 to %struct.srcimp.11**
  %239 = call i32 %227(%struct.sum_mgr* %229, %struct.srcimp_desc.10* %230, %struct.srcimp.11** %238)
  store i32 %239, i32* %12, align 4
  %240 = load i32, i32* %12, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %244

242:                                              ; preds = %224
  %243 = load i32, i32* %12, align 4
  store i32 %243, i32* %2, align 4
  br label %296

244:                                              ; preds = %224
  %245 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %246 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %245, i32 0, i32 5
  %247 = load i64, i64* %246, align 8
  %248 = add nsw i64 %247, 1
  store i64 %248, i64* %246, align 8
  br label %249

249:                                              ; preds = %244
  %250 = load i32, i32* %13, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %13, align 4
  br label %220

252:                                              ; preds = %220
  %253 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %254 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %253, i32 0, i32 4
  %255 = load %struct.sum_mgr**, %struct.sum_mgr*** %254, align 8
  %256 = load i64, i64* @SUM, align 8
  %257 = getelementptr inbounds %struct.sum_mgr*, %struct.sum_mgr** %255, i64 %256
  %258 = load %struct.sum_mgr*, %struct.sum_mgr** %257, align 8
  store %struct.sum_mgr* %258, %struct.sum_mgr** %11, align 8
  %259 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %260 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 8
  %262 = getelementptr inbounds %struct.sum_desc.6, %struct.sum_desc.6* %10, i32 0, i32 0
  store i32 %261, i32* %262, align 4
  store i32 0, i32* %13, align 4
  %263 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %264 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %263, i32 0, i32 1
  store i64 0, i64* %264, align 8
  br label %265

265:                                              ; preds = %292, %252
  %266 = load i32, i32* %13, align 4
  %267 = icmp slt i32 %266, 8
  br i1 %267, label %268, label %295

268:                                              ; preds = %265
  %269 = load %struct.sum_mgr*, %struct.sum_mgr** %11, align 8
  %270 = getelementptr inbounds %struct.sum_mgr, %struct.sum_mgr* %269, i32 0, i32 2
  %271 = load i32 (%struct.sum_mgr*, %struct.sum_desc*, %struct.sum**)*, i32 (%struct.sum_mgr*, %struct.sum_desc*, %struct.sum**)** %270, align 8
  %272 = load %struct.sum_mgr*, %struct.sum_mgr** %11, align 8
  %273 = bitcast %struct.sum_desc.6* %10 to %struct.sum_desc*
  %274 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %275 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %274, i32 0, i32 2
  %276 = load i32*, i32** %275, align 8
  %277 = load i32, i32* %13, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  %280 = bitcast i32* %279 to %struct.sum.7**
  %281 = bitcast %struct.sum.7** %280 to %struct.sum**
  %282 = call i32 %271(%struct.sum_mgr* %272, %struct.sum_desc* %273, %struct.sum** %281)
  store i32 %282, i32* %12, align 4
  %283 = load i32, i32* %12, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %287

285:                                              ; preds = %268
  %286 = load i32, i32* %12, align 4
  store i32 %286, i32* %2, align 4
  br label %296

287:                                              ; preds = %268
  %288 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %289 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %288, i32 0, i32 1
  %290 = load i64, i64* %289, align 8
  %291 = add nsw i64 %290, 1
  store i64 %291, i64* %289, align 8
  br label %292

292:                                              ; preds = %287
  %293 = load i32, i32* %13, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %13, align 4
  br label %265

295:                                              ; preds = %265
  store i32 0, i32* %2, align 4
  br label %296

296:                                              ; preds = %295, %285, %242, %199, %143, %85, %72, %58, %44
  %297 = load i32, i32* %2, align 4
  ret i32 %297
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
