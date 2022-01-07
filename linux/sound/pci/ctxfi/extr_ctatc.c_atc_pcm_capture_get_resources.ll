; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctatc.c_atc_pcm_capture_get_resources.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctatc.c_atc_pcm_capture_get_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_atc = type { i32, i32, %struct.sum_mgr** }
%struct.sum_mgr = type { i32 (%struct.sum_mgr*, %struct.src_desc*, %struct.src**)*, i32 (%struct.sum_mgr*, %struct.amixer_desc*, %struct.amixer**)*, i32 (%struct.sum_mgr*, %struct.sum_desc*, %struct.sum**)*, i32 (%struct.sum_mgr*, %struct.srcimp_desc*, %struct.srcimp**)* }
%struct.src_desc = type opaque
%struct.src = type opaque
%struct.amixer_desc = type opaque
%struct.amixer = type opaque
%struct.sum_desc = type opaque
%struct.sum = type opaque
%struct.srcimp_desc = type opaque
%struct.srcimp = type opaque
%struct.ct_atc_pcm = type { %struct.src.0*, %struct.TYPE_5__*, i64, %struct.srcimp.1**, i32, i64, i32*, i64, %struct.src.0** }
%struct.src.0 = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.src.0*, i32)*, i32 (%struct.src.0*, i32)*, i32 (%struct.src.0*, i32)* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.srcimp.1 = type { i32 }
%struct.src_mgr = type { i32 (%struct.sum_mgr*, %struct.src_desc.2*, %struct.src.3**)*, i32 (%struct.sum_mgr*, %struct.amixer_desc.4*, %struct.amixer.5**)*, i32 (%struct.sum_mgr*, %struct.sum_desc.6*, %struct.sum.7**)*, i32 (%struct.sum_mgr*, %struct.srcimp_desc.8*, %struct.srcimp.1**)* }
%struct.src_desc.2 = type opaque
%struct.src.3 = type opaque
%struct.amixer_desc.4 = type opaque
%struct.amixer.5 = type opaque
%struct.sum_desc.6 = type { i32, i32 }
%struct.sum.7 = type { i32 }
%struct.srcimp_desc.8 = type { i32, i32 }
%struct.srcimp_mgr = type { i32 (%struct.sum_mgr*, %struct.src_desc.9*, %struct.src.10**)*, i32 (%struct.sum_mgr*, %struct.amixer_desc.11*, %struct.amixer.12**)*, i32 (%struct.sum_mgr*, %struct.sum_desc.6*, %struct.sum.7**)*, i32 (%struct.sum_mgr*, %struct.srcimp_desc.13*, %struct.srcimp.14**)* }
%struct.src_desc.9 = type opaque
%struct.src.10 = type opaque
%struct.amixer_desc.11 = type opaque
%struct.amixer.12 = type opaque
%struct.srcimp_desc.13 = type opaque
%struct.srcimp.14 = type opaque
%struct.amixer_mgr = type { i32 (%struct.sum_mgr*, %struct.src_desc.15*, %struct.src.0**)*, i32 (%struct.sum_mgr*, %struct.amixer_desc.16*, %struct.amixer.17**)*, i32 (%struct.sum_mgr*, %struct.sum_desc.6*, %struct.sum.7**)*, i32 (%struct.sum_mgr*, %struct.srcimp_desc.8*, %struct.srcimp.1**)* }
%struct.src_desc.15 = type { i32, i32, i32, i32 }
%struct.amixer_desc.16 = type opaque
%struct.amixer.17 = type opaque
%struct.amixer_desc.18 = type { i32, i32 }
%struct.src_node_conf_t = type { i32, i32, i32, i32, i32, i32 }
%struct.amixer.19 = type { i32 }

@SRC = common dso_local global i64 0, align 8
@SRCIMP = common dso_local global i64 0, align 8
@AMIXER = common dso_local global i64 0, align 8
@SUM = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ARCRW = common dso_local global i32 0, align 4
@MEMWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ct_atc*, %struct.ct_atc_pcm*)* @atc_pcm_capture_get_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atc_pcm_capture_get_resources(%struct.ct_atc* %0, %struct.ct_atc_pcm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ct_atc*, align 8
  %5 = alloca %struct.ct_atc_pcm*, align 8
  %6 = alloca %struct.src_mgr*, align 8
  %7 = alloca %struct.srcimp_mgr*, align 8
  %8 = alloca %struct.amixer_mgr*, align 8
  %9 = alloca %struct.sum_mgr*, align 8
  %10 = alloca %struct.src_desc.15, align 4
  %11 = alloca %struct.src.0*, align 8
  %12 = alloca %struct.srcimp_desc.8, align 4
  %13 = alloca %struct.srcimp.1*, align 8
  %14 = alloca %struct.amixer_desc.18, align 4
  %15 = alloca %struct.sum_desc.6, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [2 x %struct.src_node_conf_t], align 16
  store %struct.ct_atc* %0, %struct.ct_atc** %4, align 8
  store %struct.ct_atc_pcm* %1, %struct.ct_atc_pcm** %5, align 8
  %25 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %26 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %25, i32 0, i32 2
  %27 = load %struct.sum_mgr**, %struct.sum_mgr*** %26, align 8
  %28 = load i64, i64* @SRC, align 8
  %29 = getelementptr inbounds %struct.sum_mgr*, %struct.sum_mgr** %27, i64 %28
  %30 = load %struct.sum_mgr*, %struct.sum_mgr** %29, align 8
  %31 = bitcast %struct.sum_mgr* %30 to %struct.src_mgr*
  store %struct.src_mgr* %31, %struct.src_mgr** %6, align 8
  %32 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %33 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %32, i32 0, i32 2
  %34 = load %struct.sum_mgr**, %struct.sum_mgr*** %33, align 8
  %35 = load i64, i64* @SRCIMP, align 8
  %36 = getelementptr inbounds %struct.sum_mgr*, %struct.sum_mgr** %34, i64 %35
  %37 = load %struct.sum_mgr*, %struct.sum_mgr** %36, align 8
  %38 = bitcast %struct.sum_mgr* %37 to %struct.srcimp_mgr*
  store %struct.srcimp_mgr* %38, %struct.srcimp_mgr** %7, align 8
  %39 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %40 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %39, i32 0, i32 2
  %41 = load %struct.sum_mgr**, %struct.sum_mgr*** %40, align 8
  %42 = load i64, i64* @AMIXER, align 8
  %43 = getelementptr inbounds %struct.sum_mgr*, %struct.sum_mgr** %41, i64 %42
  %44 = load %struct.sum_mgr*, %struct.sum_mgr** %43, align 8
  %45 = bitcast %struct.sum_mgr* %44 to %struct.amixer_mgr*
  store %struct.amixer_mgr* %45, %struct.amixer_mgr** %8, align 8
  %46 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %47 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %46, i32 0, i32 2
  %48 = load %struct.sum_mgr**, %struct.sum_mgr*** %47, align 8
  %49 = load i64, i64* @SUM, align 8
  %50 = getelementptr inbounds %struct.sum_mgr*, %struct.sum_mgr** %48, i64 %49
  %51 = load %struct.sum_mgr*, %struct.sum_mgr** %50, align 8
  store %struct.sum_mgr* %51, %struct.sum_mgr** %9, align 8
  %52 = bitcast %struct.src_desc.15* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %52, i8 0, i64 16, i1 false)
  %53 = bitcast %struct.srcimp_desc.8* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %53, i8 0, i64 8, i1 false)
  %54 = bitcast %struct.amixer_desc.18* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %54, i8 0, i64 8, i1 false)
  %55 = bitcast %struct.sum_desc.6* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %55, i8 0, i64 8, i1 false)
  %56 = bitcast [2 x %struct.src_node_conf_t]* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %56, i8 0, i64 48, i1 false)
  %57 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %58 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %59 = call i32 @atc_pcm_release_resources(%struct.ct_atc* %57, %struct.ct_atc_pcm* %58)
  %60 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %61 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %17, align 4
  %67 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %68 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %71 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %69, %72
  %74 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %75 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @atc_get_pitch(i32 %73, i32 %80)
  store i32 %81, i32* %16, align 4
  %82 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %83 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %84 = getelementptr inbounds [2 x %struct.src_node_conf_t], [2 x %struct.src_node_conf_t]* %24, i64 0, i64 0
  %85 = call i32 @setup_src_node_conf(%struct.ct_atc* %82, %struct.ct_atc_pcm* %83, %struct.src_node_conf_t* %84, i32* %22)
  %86 = load i32, i32* %17, align 4
  %87 = icmp eq i32 1, %86
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 1, i32 0
  store i32 %89, i32* %23, align 4
  %90 = load i32, i32* %23, align 4
  %91 = mul nsw i32 %90, 2
  %92 = load i32, i32* %22, align 4
  %93 = add nsw i32 %91, %92
  store i32 %93, i32* %21, align 4
  %94 = load i32, i32* %22, align 4
  store i32 %94, i32* %20, align 4
  %95 = load i32, i32* %17, align 4
  %96 = icmp sgt i32 %95, 1
  br i1 %96, label %97, label %115

97:                                               ; preds = %2
  %98 = load i32, i32* %16, align 4
  %99 = icmp uge i32 134217728, %98
  br i1 %99, label %100, label %115

100:                                              ; preds = %97
  %101 = load i32, i32* %17, align 4
  %102 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %103 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 %101, %104
  %106 = load i32, i32* %21, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* %21, align 4
  %108 = load i32, i32* %17, align 4
  %109 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %110 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = mul nsw i32 %108, %111
  %113 = load i32, i32* %20, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %20, align 4
  br label %119

115:                                              ; preds = %97, %2
  %116 = load i32, i32* %17, align 4
  %117 = load i32, i32* %20, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %20, align 4
  br label %119

119:                                              ; preds = %115, %100
  %120 = load i32, i32* %22, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %137

122:                                              ; preds = %119
  %123 = load i32, i32* %22, align 4
  %124 = load i32, i32* @GFP_KERNEL, align 4
  %125 = call i8* @kcalloc(i32 %123, i32 8, i32 %124)
  %126 = bitcast i8* %125 to %struct.src.0**
  %127 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %128 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %127, i32 0, i32 8
  store %struct.src.0** %126, %struct.src.0*** %128, align 8
  %129 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %130 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %129, i32 0, i32 8
  %131 = load %struct.src.0**, %struct.src.0*** %130, align 8
  %132 = icmp ne %struct.src.0** %131, null
  br i1 %132, label %136, label %133

133:                                              ; preds = %122
  %134 = load i32, i32* @ENOMEM, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %3, align 4
  br label %470

136:                                              ; preds = %122
  br label %137

137:                                              ; preds = %136, %119
  %138 = load i32, i32* %21, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %155

140:                                              ; preds = %137
  %141 = load i32, i32* %21, align 4
  %142 = load i32, i32* @GFP_KERNEL, align 4
  %143 = call i8* @kcalloc(i32 %141, i32 8, i32 %142)
  %144 = bitcast i8* %143 to i32*
  %145 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %146 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %145, i32 0, i32 6
  store i32* %144, i32** %146, align 8
  %147 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %148 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %147, i32 0, i32 6
  %149 = load i32*, i32** %148, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %154, label %151

151:                                              ; preds = %140
  %152 = load i32, i32* @ENOMEM, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %18, align 4
  br label %465

154:                                              ; preds = %140
  br label %155

155:                                              ; preds = %154, %137
  %156 = load i32, i32* %20, align 4
  %157 = load i32, i32* @GFP_KERNEL, align 4
  %158 = call i8* @kcalloc(i32 %156, i32 8, i32 %157)
  %159 = bitcast i8* %158 to %struct.srcimp.1**
  %160 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %161 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %160, i32 0, i32 3
  store %struct.srcimp.1** %159, %struct.srcimp.1*** %161, align 8
  %162 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %163 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %162, i32 0, i32 3
  %164 = load %struct.srcimp.1**, %struct.srcimp.1*** %163, align 8
  %165 = icmp ne %struct.srcimp.1** %164, null
  br i1 %165, label %169, label %166

166:                                              ; preds = %155
  %167 = load i32, i32* @ENOMEM, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %18, align 4
  br label %465

169:                                              ; preds = %155
  %170 = getelementptr inbounds %struct.src_desc.15, %struct.src_desc.15* %10, i32 0, i32 0
  store i32 1, i32* %170, align 4
  %171 = load i32, i32* @ARCRW, align 4
  %172 = getelementptr inbounds %struct.src_desc.15, %struct.src_desc.15* %10, i32 0, i32 2
  store i32 %171, i32* %172, align 4
  store i32 0, i32* %19, align 4
  %173 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %174 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %173, i32 0, i32 7
  store i64 0, i64* %174, align 8
  br label %175

175:                                              ; preds = %255, %169
  %176 = load i32, i32* %19, align 4
  %177 = load i32, i32* %22, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %258

179:                                              ; preds = %175
  %180 = load i32, i32* %19, align 4
  %181 = load i32, i32* %17, align 4
  %182 = sdiv i32 %180, %181
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [2 x %struct.src_node_conf_t], [2 x %struct.src_node_conf_t]* %24, i64 0, i64 %183
  %185 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = getelementptr inbounds %struct.src_desc.15, %struct.src_desc.15* %10, i32 0, i32 1
  store i32 %186, i32* %187, align 4
  %188 = load %struct.src_mgr*, %struct.src_mgr** %6, align 8
  %189 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %188, i32 0, i32 0
  %190 = load i32 (%struct.sum_mgr*, %struct.src_desc.2*, %struct.src.3**)*, i32 (%struct.sum_mgr*, %struct.src_desc.2*, %struct.src.3**)** %189, align 8
  %191 = load %struct.src_mgr*, %struct.src_mgr** %6, align 8
  %192 = bitcast %struct.src_mgr* %191 to %struct.sum_mgr*
  %193 = bitcast %struct.src_desc.15* %10 to %struct.src_desc.2*
  %194 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %195 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %194, i32 0, i32 8
  %196 = load %struct.src.0**, %struct.src.0*** %195, align 8
  %197 = load i32, i32* %19, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.src.0*, %struct.src.0** %196, i64 %198
  %200 = bitcast %struct.src.0** %199 to %struct.src.3**
  %201 = call i32 %190(%struct.sum_mgr* %192, %struct.src_desc.2* %193, %struct.src.3** %200)
  store i32 %201, i32* %18, align 4
  %202 = load i32, i32* %18, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %179
  br label %465

205:                                              ; preds = %179
  %206 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %207 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %206, i32 0, i32 8
  %208 = load %struct.src.0**, %struct.src.0*** %207, align 8
  %209 = load i32, i32* %19, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.src.0*, %struct.src.0** %208, i64 %210
  %212 = load %struct.src.0*, %struct.src.0** %211, align 8
  store %struct.src.0* %212, %struct.src.0** %11, align 8
  %213 = load i32, i32* %19, align 4
  %214 = load i32, i32* %17, align 4
  %215 = sdiv i32 %213, %214
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [2 x %struct.src_node_conf_t], [2 x %struct.src_node_conf_t]* %24, i64 0, i64 %216
  %218 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  store i32 %219, i32* %16, align 4
  %220 = load %struct.src.0*, %struct.src.0** %11, align 8
  %221 = getelementptr inbounds %struct.src.0, %struct.src.0* %220, i32 0, i32 0
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  %224 = load i32 (%struct.src.0*, i32)*, i32 (%struct.src.0*, i32)** %223, align 8
  %225 = load %struct.src.0*, %struct.src.0** %11, align 8
  %226 = load i32, i32* %16, align 4
  %227 = call i32 %224(%struct.src.0* %225, i32 %226)
  %228 = load %struct.src.0*, %struct.src.0** %11, align 8
  %229 = getelementptr inbounds %struct.src.0, %struct.src.0* %228, i32 0, i32 0
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 2
  %232 = load i32 (%struct.src.0*, i32)*, i32 (%struct.src.0*, i32)** %231, align 8
  %233 = load %struct.src.0*, %struct.src.0** %11, align 8
  %234 = load i32, i32* %16, align 4
  %235 = call i32 @select_rom(i32 %234)
  %236 = call i32 %232(%struct.src.0* %233, i32 %235)
  %237 = load %struct.src.0*, %struct.src.0** %11, align 8
  %238 = getelementptr inbounds %struct.src.0, %struct.src.0* %237, i32 0, i32 0
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 1
  %241 = load i32 (%struct.src.0*, i32)*, i32 (%struct.src.0*, i32)** %240, align 8
  %242 = load %struct.src.0*, %struct.src.0** %11, align 8
  %243 = load i32, i32* %19, align 4
  %244 = load i32, i32* %17, align 4
  %245 = sdiv i32 %243, %244
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [2 x %struct.src_node_conf_t], [2 x %struct.src_node_conf_t]* %24, i64 0, i64 %246
  %248 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 8
  %250 = call i32 %241(%struct.src.0* %242, i32 %249)
  %251 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %252 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %251, i32 0, i32 7
  %253 = load i64, i64* %252, align 8
  %254 = add nsw i64 %253, 1
  store i64 %254, i64* %252, align 8
  br label %255

255:                                              ; preds = %205
  %256 = load i32, i32* %19, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %19, align 4
  br label %175

258:                                              ; preds = %175
  store i32 0, i32* %19, align 4
  %259 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %260 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %259, i32 0, i32 5
  store i64 0, i64* %260, align 8
  br label %261

261:                                              ; preds = %321, %258
  %262 = load i32, i32* %19, align 4
  %263 = load i32, i32* %21, align 4
  %264 = icmp slt i32 %262, %263
  br i1 %264, label %265, label %324

265:                                              ; preds = %261
  %266 = load i32, i32* %19, align 4
  %267 = load i32, i32* %23, align 4
  %268 = mul nsw i32 %267, 2
  %269 = icmp slt i32 %266, %268
  br i1 %269, label %270, label %275

270:                                              ; preds = %265
  %271 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %272 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = getelementptr inbounds %struct.amixer_desc.18, %struct.amixer_desc.18* %14, i32 0, i32 0
  store i32 %273, i32* %274, align 4
  br label %297

275:                                              ; preds = %265
  %276 = load i32, i32* %19, align 4
  %277 = load i32, i32* %23, align 4
  %278 = mul nsw i32 %277, 2
  %279 = load i32, i32* %22, align 4
  %280 = add nsw i32 %278, %279
  %281 = icmp slt i32 %276, %280
  br i1 %281, label %282, label %294

282:                                              ; preds = %275
  %283 = load i32, i32* %19, align 4
  %284 = load i32, i32* %23, align 4
  %285 = mul nsw i32 %284, 2
  %286 = sub nsw i32 %283, %285
  %287 = load i32, i32* %17, align 4
  %288 = sdiv i32 %286, %287
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [2 x %struct.src_node_conf_t], [2 x %struct.src_node_conf_t]* %24, i64 0, i64 %289
  %291 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = getelementptr inbounds %struct.amixer_desc.18, %struct.amixer_desc.18* %14, i32 0, i32 0
  store i32 %292, i32* %293, align 4
  br label %296

294:                                              ; preds = %275
  %295 = getelementptr inbounds %struct.amixer_desc.18, %struct.amixer_desc.18* %14, i32 0, i32 0
  store i32 1, i32* %295, align 4
  br label %296

296:                                              ; preds = %294, %282
  br label %297

297:                                              ; preds = %296, %270
  %298 = load %struct.amixer_mgr*, %struct.amixer_mgr** %8, align 8
  %299 = getelementptr inbounds %struct.amixer_mgr, %struct.amixer_mgr* %298, i32 0, i32 1
  %300 = load i32 (%struct.sum_mgr*, %struct.amixer_desc.16*, %struct.amixer.17**)*, i32 (%struct.sum_mgr*, %struct.amixer_desc.16*, %struct.amixer.17**)** %299, align 8
  %301 = load %struct.amixer_mgr*, %struct.amixer_mgr** %8, align 8
  %302 = bitcast %struct.amixer_mgr* %301 to %struct.sum_mgr*
  %303 = bitcast %struct.amixer_desc.18* %14 to %struct.amixer_desc.16*
  %304 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %305 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %304, i32 0, i32 6
  %306 = load i32*, i32** %305, align 8
  %307 = load i32, i32* %19, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, i32* %306, i64 %308
  %310 = bitcast i32* %309 to %struct.amixer.19**
  %311 = bitcast %struct.amixer.19** %310 to %struct.amixer.17**
  %312 = call i32 %300(%struct.sum_mgr* %302, %struct.amixer_desc.16* %303, %struct.amixer.17** %311)
  store i32 %312, i32* %18, align 4
  %313 = load i32, i32* %18, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %297
  br label %465

316:                                              ; preds = %297
  %317 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %318 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %317, i32 0, i32 5
  %319 = load i64, i64* %318, align 8
  %320 = add nsw i64 %319, 1
  store i64 %320, i64* %318, align 8
  br label %321

321:                                              ; preds = %316
  %322 = load i32, i32* %19, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %19, align 4
  br label %261

324:                                              ; preds = %261
  %325 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %326 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = getelementptr inbounds %struct.sum_desc.6, %struct.sum_desc.6* %15, i32 0, i32 0
  store i32 %327, i32* %328, align 4
  %329 = load %struct.sum_mgr*, %struct.sum_mgr** %9, align 8
  %330 = getelementptr inbounds %struct.sum_mgr, %struct.sum_mgr* %329, i32 0, i32 2
  %331 = load i32 (%struct.sum_mgr*, %struct.sum_desc*, %struct.sum**)*, i32 (%struct.sum_mgr*, %struct.sum_desc*, %struct.sum**)** %330, align 8
  %332 = load %struct.sum_mgr*, %struct.sum_mgr** %9, align 8
  %333 = bitcast %struct.sum_desc.6* %15 to %struct.sum_desc*
  %334 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %335 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %334, i32 0, i32 4
  %336 = bitcast i32* %335 to %struct.sum.7**
  %337 = bitcast %struct.sum.7** %336 to %struct.sum**
  %338 = call i32 %331(%struct.sum_mgr* %332, %struct.sum_desc* %333, %struct.sum** %337)
  store i32 %338, i32* %18, align 4
  %339 = load i32, i32* %18, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %342

341:                                              ; preds = %324
  br label %465

342:                                              ; preds = %324
  %343 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %344 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %347 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = mul nsw i32 %345, %348
  %350 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %351 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %350, i32 0, i32 1
  %352 = load %struct.TYPE_5__*, %struct.TYPE_5__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %352, i32 0, i32 0
  %354 = load %struct.TYPE_4__*, %struct.TYPE_4__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = call i32 @atc_get_pitch(i32 %349, i32 %356)
  store i32 %357, i32* %16, align 4
  store i32 0, i32* %19, align 4
  %358 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %359 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %358, i32 0, i32 2
  store i64 0, i64* %359, align 8
  br label %360

360:                                              ; preds = %418, %342
  %361 = load i32, i32* %19, align 4
  %362 = load i32, i32* %20, align 4
  %363 = icmp slt i32 %361, %362
  br i1 %363, label %364, label %421

364:                                              ; preds = %360
  %365 = load i32, i32* %19, align 4
  %366 = load i32, i32* %22, align 4
  %367 = icmp slt i32 %365, %366
  br i1 %367, label %368, label %377

368:                                              ; preds = %364
  %369 = load i32, i32* %19, align 4
  %370 = load i32, i32* %17, align 4
  %371 = sdiv i32 %369, %370
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds [2 x %struct.src_node_conf_t], [2 x %struct.src_node_conf_t]* %24, i64 0, i64 %372
  %374 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %373, i32 0, i32 3
  %375 = load i32, i32* %374, align 4
  %376 = getelementptr inbounds %struct.srcimp_desc.8, %struct.srcimp_desc.8* %12, i32 0, i32 0
  store i32 %375, i32* %376, align 4
  br label %394

377:                                              ; preds = %364
  %378 = load i32, i32* %17, align 4
  %379 = icmp eq i32 1, %378
  br i1 %379, label %380, label %391

380:                                              ; preds = %377
  %381 = load i32, i32* %16, align 4
  %382 = icmp ule i32 %381, 134217728
  br i1 %382, label %383, label %387

383:                                              ; preds = %380
  %384 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %385 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %384, i32 0, i32 1
  %386 = load i32, i32* %385, align 4
  br label %388

387:                                              ; preds = %380
  br label %388

388:                                              ; preds = %387, %383
  %389 = phi i32 [ %386, %383 ], [ 1, %387 ]
  %390 = getelementptr inbounds %struct.srcimp_desc.8, %struct.srcimp_desc.8* %12, i32 0, i32 0
  store i32 %389, i32* %390, align 4
  br label %393

391:                                              ; preds = %377
  %392 = getelementptr inbounds %struct.srcimp_desc.8, %struct.srcimp_desc.8* %12, i32 0, i32 0
  store i32 1, i32* %392, align 4
  br label %393

393:                                              ; preds = %391, %388
  br label %394

394:                                              ; preds = %393, %368
  %395 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %7, align 8
  %396 = getelementptr inbounds %struct.srcimp_mgr, %struct.srcimp_mgr* %395, i32 0, i32 3
  %397 = load i32 (%struct.sum_mgr*, %struct.srcimp_desc.13*, %struct.srcimp.14**)*, i32 (%struct.sum_mgr*, %struct.srcimp_desc.13*, %struct.srcimp.14**)** %396, align 8
  %398 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %7, align 8
  %399 = bitcast %struct.srcimp_mgr* %398 to %struct.sum_mgr*
  %400 = bitcast %struct.srcimp_desc.8* %12 to %struct.srcimp_desc.13*
  %401 = bitcast %struct.srcimp.1** %13 to %struct.srcimp.14**
  %402 = call i32 %397(%struct.sum_mgr* %399, %struct.srcimp_desc.13* %400, %struct.srcimp.14** %401)
  store i32 %402, i32* %18, align 4
  %403 = load i32, i32* %18, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %406

405:                                              ; preds = %394
  br label %465

406:                                              ; preds = %394
  %407 = load %struct.srcimp.1*, %struct.srcimp.1** %13, align 8
  %408 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %409 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %408, i32 0, i32 3
  %410 = load %struct.srcimp.1**, %struct.srcimp.1*** %409, align 8
  %411 = load i32, i32* %19, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds %struct.srcimp.1*, %struct.srcimp.1** %410, i64 %412
  store %struct.srcimp.1* %407, %struct.srcimp.1** %413, align 8
  %414 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %415 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %414, i32 0, i32 2
  %416 = load i64, i64* %415, align 8
  %417 = add nsw i64 %416, 1
  store i64 %417, i64* %415, align 8
  br label %418

418:                                              ; preds = %406
  %419 = load i32, i32* %19, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %19, align 4
  br label %360

421:                                              ; preds = %360
  %422 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %423 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %422, i32 0, i32 1
  %424 = load %struct.TYPE_5__*, %struct.TYPE_5__** %423, align 8
  %425 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %424, i32 0, i32 0
  %426 = load %struct.TYPE_4__*, %struct.TYPE_4__** %425, align 8
  %427 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 4
  %429 = getelementptr inbounds %struct.src_desc.15, %struct.src_desc.15* %10, i32 0, i32 0
  store i32 %428, i32* %429, align 4
  %430 = getelementptr inbounds %struct.src_desc.15, %struct.src_desc.15* %10, i32 0, i32 1
  store i32 1, i32* %430, align 4
  %431 = load i32, i32* @MEMWR, align 4
  %432 = getelementptr inbounds %struct.src_desc.15, %struct.src_desc.15* %10, i32 0, i32 2
  store i32 %431, i32* %432, align 4
  %433 = load %struct.src_mgr*, %struct.src_mgr** %6, align 8
  %434 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %433, i32 0, i32 0
  %435 = load i32 (%struct.sum_mgr*, %struct.src_desc.2*, %struct.src.3**)*, i32 (%struct.sum_mgr*, %struct.src_desc.2*, %struct.src.3**)** %434, align 8
  %436 = load %struct.src_mgr*, %struct.src_mgr** %6, align 8
  %437 = bitcast %struct.src_mgr* %436 to %struct.sum_mgr*
  %438 = bitcast %struct.src_desc.15* %10 to %struct.src_desc.2*
  %439 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %440 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %439, i32 0, i32 0
  %441 = bitcast %struct.src.0** %440 to %struct.src.3**
  %442 = call i32 %435(%struct.sum_mgr* %437, %struct.src_desc.2* %438, %struct.src.3** %441)
  store i32 %442, i32* %18, align 4
  %443 = load i32, i32* %18, align 4
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %446

445:                                              ; preds = %421
  br label %465

446:                                              ; preds = %421
  %447 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %448 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %447, i32 0, i32 0
  %449 = load %struct.src.0*, %struct.src.0** %448, align 8
  store %struct.src.0* %449, %struct.src.0** %11, align 8
  %450 = load %struct.src.0*, %struct.src.0** %11, align 8
  %451 = getelementptr inbounds %struct.src.0, %struct.src.0* %450, i32 0, i32 0
  %452 = load %struct.TYPE_6__*, %struct.TYPE_6__** %451, align 8
  %453 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %452, i32 0, i32 0
  %454 = load i32 (%struct.src.0*, i32)*, i32 (%struct.src.0*, i32)** %453, align 8
  %455 = load %struct.src.0*, %struct.src.0** %11, align 8
  %456 = load i32, i32* %16, align 4
  %457 = call i32 %454(%struct.src.0* %455, i32 %456)
  %458 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %459 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %460 = call i32 @ct_map_audio_buffer(%struct.ct_atc* %458, %struct.ct_atc_pcm* %459)
  store i32 %460, i32* %18, align 4
  %461 = load i32, i32* %18, align 4
  %462 = icmp slt i32 %461, 0
  br i1 %462, label %463, label %464

463:                                              ; preds = %446
  br label %465

464:                                              ; preds = %446
  store i32 0, i32* %3, align 4
  br label %470

465:                                              ; preds = %463, %445, %405, %341, %315, %204, %166, %151
  %466 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %467 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %468 = call i32 @atc_pcm_release_resources(%struct.ct_atc* %466, %struct.ct_atc_pcm* %467)
  %469 = load i32, i32* %18, align 4
  store i32 %469, i32* %3, align 4
  br label %470

470:                                              ; preds = %465, %464, %133
  %471 = load i32, i32* %3, align 4
  ret i32 %471
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @atc_pcm_release_resources(%struct.ct_atc*, %struct.ct_atc_pcm*) #2

declare dso_local i32 @atc_get_pitch(i32, i32) #2

declare dso_local i32 @setup_src_node_conf(%struct.ct_atc*, %struct.ct_atc_pcm*, %struct.src_node_conf_t*, i32*) #2

declare dso_local i8* @kcalloc(i32, i32, i32) #2

declare dso_local i32 @select_rom(i32) #2

declare dso_local i32 @ct_map_audio_buffer(%struct.ct_atc*, %struct.ct_atc_pcm*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
