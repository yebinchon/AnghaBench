; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_frwr_ops.c_frwr_map.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_frwr_ops.c_frwr_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_xprt = type { %struct.rpcrdma_ia }
%struct.rpcrdma_ia = type { i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.rpcrdma_mr_seg = type { i64, i64, i32 }
%struct.rpcrdma_mr = type { i32, i32, i32, i32, i32, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { %struct.ib_reg_wr, %struct.ib_mr* }
%struct.ib_reg_wr = type { i32, i32, %struct.ib_mr* }
%struct.ib_mr = type { i32, i32, i32 }

@IB_MR_TYPE_SG_GAPS = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpcrdma_mr_seg* @frwr_map(%struct.rpcrdma_xprt* %0, %struct.rpcrdma_mr_seg* %1, i32 %2, i32 %3, i32 %4, %struct.rpcrdma_mr* %5) #0 {
  %7 = alloca %struct.rpcrdma_mr_seg*, align 8
  %8 = alloca %struct.rpcrdma_xprt*, align 8
  %9 = alloca %struct.rpcrdma_mr_seg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.rpcrdma_mr*, align 8
  %14 = alloca %struct.rpcrdma_ia*, align 8
  %15 = alloca %struct.ib_reg_wr*, align 8
  %16 = alloca %struct.ib_mr*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.rpcrdma_xprt* %0, %struct.rpcrdma_xprt** %8, align 8
  store %struct.rpcrdma_mr_seg* %1, %struct.rpcrdma_mr_seg** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.rpcrdma_mr* %5, %struct.rpcrdma_mr** %13, align 8
  %20 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %8, align 8
  %21 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %20, i32 0, i32 0
  store %struct.rpcrdma_ia* %21, %struct.rpcrdma_ia** %14, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %14, align 8
  %24 = getelementptr inbounds %struct.rpcrdma_ia, %struct.rpcrdma_ia* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %6
  %28 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %14, align 8
  %29 = getelementptr inbounds %struct.rpcrdma_ia, %struct.rpcrdma_ia* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %27, %6
  store i32 0, i32* %17, align 4
  br label %32

32:                                               ; preds = %107, %83, %31
  %33 = load i32, i32* %17, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %108

36:                                               ; preds = %32
  %37 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %9, align 8
  %38 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %36
  %42 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %13, align 8
  %43 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %42, i32 0, i32 6
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %17, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %9, align 8
  %49 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %9, align 8
  %52 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %9, align 8
  %55 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @offset_in_page(i64 %56)
  %58 = call i32 @sg_set_page(i32* %47, i32 %50, i64 %53, i64 %57)
  br label %73

59:                                               ; preds = %36
  %60 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %13, align 8
  %61 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %60, i32 0, i32 6
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %17, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %9, align 8
  %67 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %9, align 8
  %70 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @sg_set_buf(i32* %65, i64 %68, i64 %71)
  br label %73

73:                                               ; preds = %59, %41
  %74 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %9, align 8
  %75 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %74, i32 1
  store %struct.rpcrdma_mr_seg* %75, %struct.rpcrdma_mr_seg** %9, align 8
  %76 = load i32, i32* %17, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %17, align 4
  %78 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %14, align 8
  %79 = getelementptr inbounds %struct.rpcrdma_ia, %struct.rpcrdma_ia* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @IB_MR_TYPE_SG_GAPS, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  br label %32

84:                                               ; preds = %73
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %9, align 8
  %90 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i64 @offset_in_page(i64 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %106, label %94

94:                                               ; preds = %88, %84
  %95 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %9, align 8
  %96 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %95, i64 -1
  %97 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %9, align 8
  %100 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %99, i64 -1
  %101 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %98, %102
  %104 = call i64 @offset_in_page(i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %94, %88
  br label %108

107:                                              ; preds = %94
  br label %32

108:                                              ; preds = %106, %32
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @rpcrdma_data_dir(i32 %109)
  %111 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %13, align 8
  %112 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 4
  %113 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %14, align 8
  %114 = getelementptr inbounds %struct.rpcrdma_ia, %struct.rpcrdma_ia* %113, i32 0, i32 2
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %13, align 8
  %119 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %118, i32 0, i32 6
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %17, align 4
  %122 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %13, align 8
  %123 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @ib_dma_map_sg(i32 %117, i32* %120, i32 %121, i32 %124)
  %126 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %13, align 8
  %127 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %13, align 8
  %129 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %108
  br label %218

133:                                              ; preds = %108
  %134 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %13, align 8
  %135 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %134, i32 0, i32 5
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = load %struct.ib_mr*, %struct.ib_mr** %136, align 8
  store %struct.ib_mr* %137, %struct.ib_mr** %16, align 8
  %138 = load %struct.ib_mr*, %struct.ib_mr** %16, align 8
  %139 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %13, align 8
  %140 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %139, i32 0, i32 6
  %141 = load i32*, i32** %140, align 8
  %142 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %13, align 8
  %143 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @PAGE_SIZE, align 4
  %146 = call i32 @ib_map_mr_sg(%struct.ib_mr* %138, i32* %141, i32 %144, i32* null, i32 %145)
  store i32 %146, i32* %18, align 4
  %147 = load i32, i32* %18, align 4
  %148 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %13, align 8
  %149 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %147, %150
  %152 = zext i1 %151 to i32
  %153 = call i64 @unlikely(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %133
  br label %228

156:                                              ; preds = %133
  %157 = load %struct.ib_mr*, %struct.ib_mr** %16, align 8
  %158 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* %158, align 4
  %160 = load i32, i32* %12, align 4
  %161 = call i64 @be32_to_cpu(i32 %160)
  %162 = trunc i64 %161 to i32
  %163 = shl i32 %162, 32
  %164 = load %struct.ib_mr*, %struct.ib_mr** %16, align 8
  %165 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 4
  %168 = load %struct.ib_mr*, %struct.ib_mr** %16, align 8
  %169 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, 255
  %172 = sext i32 %171 to i64
  store i64 %172, i64* %19, align 8
  %173 = load %struct.ib_mr*, %struct.ib_mr** %16, align 8
  %174 = load i64, i64* %19, align 8
  %175 = add nsw i64 %174, 1
  store i64 %175, i64* %19, align 8
  %176 = call i32 @ib_update_fast_reg_key(%struct.ib_mr* %173, i64 %175)
  %177 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %13, align 8
  %178 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %177, i32 0, i32 5
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  store %struct.ib_reg_wr* %179, %struct.ib_reg_wr** %15, align 8
  %180 = load %struct.ib_mr*, %struct.ib_mr** %16, align 8
  %181 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %15, align 8
  %182 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %181, i32 0, i32 2
  store %struct.ib_mr* %180, %struct.ib_mr** %182, align 8
  %183 = load %struct.ib_mr*, %struct.ib_mr** %16, align 8
  %184 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %15, align 8
  %187 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %186, i32 0, i32 0
  store i32 %185, i32* %187, align 8
  %188 = load i32, i32* %11, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %156
  %191 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %192 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %193 = or i32 %191, %192
  br label %196

194:                                              ; preds = %156
  %195 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  br label %196

196:                                              ; preds = %194, %190
  %197 = phi i32 [ %193, %190 ], [ %195, %194 ]
  %198 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %15, align 8
  %199 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 4
  %200 = load %struct.ib_mr*, %struct.ib_mr** %16, align 8
  %201 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %13, align 8
  %204 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %203, i32 0, i32 1
  store i32 %202, i32* %204, align 4
  %205 = load %struct.ib_mr*, %struct.ib_mr** %16, align 8
  %206 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %13, align 8
  %209 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %208, i32 0, i32 4
  store i32 %207, i32* %209, align 8
  %210 = load %struct.ib_mr*, %struct.ib_mr** %16, align 8
  %211 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %13, align 8
  %214 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %213, i32 0, i32 2
  store i32 %212, i32* %214, align 8
  %215 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %13, align 8
  %216 = call i32 @trace_xprtrdma_mr_map(%struct.rpcrdma_mr* %215)
  %217 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %9, align 8
  store %struct.rpcrdma_mr_seg* %217, %struct.rpcrdma_mr_seg** %7, align 8
  br label %235

218:                                              ; preds = %132
  %219 = load i32, i32* @DMA_NONE, align 4
  %220 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %13, align 8
  %221 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %220, i32 0, i32 3
  store i32 %219, i32* %221, align 4
  %222 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %13, align 8
  %223 = load i32, i32* %17, align 4
  %224 = call i32 @trace_xprtrdma_frwr_sgerr(%struct.rpcrdma_mr* %222, i32 %223)
  %225 = load i32, i32* @EIO, align 4
  %226 = sub nsw i32 0, %225
  %227 = call %struct.rpcrdma_mr_seg* @ERR_PTR(i32 %226)
  store %struct.rpcrdma_mr_seg* %227, %struct.rpcrdma_mr_seg** %7, align 8
  br label %235

228:                                              ; preds = %155
  %229 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %13, align 8
  %230 = load i32, i32* %18, align 4
  %231 = call i32 @trace_xprtrdma_frwr_maperr(%struct.rpcrdma_mr* %229, i32 %230)
  %232 = load i32, i32* @EIO, align 4
  %233 = sub nsw i32 0, %232
  %234 = call %struct.rpcrdma_mr_seg* @ERR_PTR(i32 %233)
  store %struct.rpcrdma_mr_seg* %234, %struct.rpcrdma_mr_seg** %7, align 8
  br label %235

235:                                              ; preds = %228, %218, %196
  %236 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %7, align 8
  ret %struct.rpcrdma_mr_seg* %236
}

declare dso_local i32 @sg_set_page(i32*, i32, i64, i64) #1

declare dso_local i64 @offset_in_page(i64) #1

declare dso_local i32 @sg_set_buf(i32*, i64, i64) #1

declare dso_local i32 @rpcrdma_data_dir(i32) #1

declare dso_local i32 @ib_dma_map_sg(i32, i32*, i32, i32) #1

declare dso_local i32 @ib_map_mr_sg(%struct.ib_mr*, i32*, i32, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @ib_update_fast_reg_key(%struct.ib_mr*, i64) #1

declare dso_local i32 @trace_xprtrdma_mr_map(%struct.rpcrdma_mr*) #1

declare dso_local i32 @trace_xprtrdma_frwr_sgerr(%struct.rpcrdma_mr*, i32) #1

declare dso_local %struct.rpcrdma_mr_seg* @ERR_PTR(i32) #1

declare dso_local i32 @trace_xprtrdma_frwr_maperr(%struct.rpcrdma_mr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
