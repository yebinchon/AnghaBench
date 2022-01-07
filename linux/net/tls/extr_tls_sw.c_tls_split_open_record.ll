; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_tls_split_open_record.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_tls_split_open_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tls_rec = type { %struct.sk_msg, i32 }
%struct.sk_msg = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }
%struct.scatterlist = type { i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.tls_rec*, %struct.tls_rec**, %struct.sk_msg*, %struct.sk_msg*, i64, i64, i64*)* @tls_split_open_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_split_open_record(%struct.sock* %0, %struct.tls_rec* %1, %struct.tls_rec** %2, %struct.sk_msg* %3, %struct.sk_msg* %4, i64 %5, i64 %6, i64* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.tls_rec*, align 8
  %12 = alloca %struct.tls_rec**, align 8
  %13 = alloca %struct.sk_msg*, align 8
  %14 = alloca %struct.sk_msg*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.scatterlist*, align 8
  %23 = alloca %struct.scatterlist*, align 8
  %24 = alloca %struct.scatterlist*, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.scatterlist, align 8
  %27 = alloca %struct.sk_msg*, align 8
  %28 = alloca %struct.tls_rec*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %10, align 8
  store %struct.tls_rec* %1, %struct.tls_rec** %11, align 8
  store %struct.tls_rec** %2, %struct.tls_rec*** %12, align 8
  store %struct.sk_msg* %3, %struct.sk_msg** %13, align 8
  store %struct.sk_msg* %4, %struct.sk_msg** %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i64* %7, i64** %17, align 8
  store i64 0, i64* %20, align 8
  %31 = load %struct.sk_msg*, %struct.sk_msg** %13, align 8
  %32 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %21, align 8
  %34 = load %struct.sk_msg*, %struct.sk_msg** %13, align 8
  %35 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %25, align 8
  %38 = bitcast %struct.scatterlist* %26 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %38, i8 0, i64 16, i1 false)
  %39 = load %struct.sock*, %struct.sock** %10, align 8
  %40 = call %struct.tls_rec* @tls_get_rec(%struct.sock* %39)
  store %struct.tls_rec* %40, %struct.tls_rec** %28, align 8
  %41 = load %struct.tls_rec*, %struct.tls_rec** %28, align 8
  %42 = icmp ne %struct.tls_rec* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %8
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %9, align 4
  br label %234

46:                                               ; preds = %8
  %47 = load %struct.sock*, %struct.sock** %10, align 8
  %48 = load %struct.tls_rec*, %struct.tls_rec** %28, align 8
  %49 = getelementptr inbounds %struct.tls_rec, %struct.tls_rec* %48, i32 0, i32 1
  %50 = load %struct.sk_msg*, %struct.sk_msg** %13, align 8
  %51 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %16, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @sk_msg_alloc(%struct.sock* %47, i32* %49, i64 %55, i32 0)
  store i32 %56, i32* %29, align 4
  %57 = load i32, i32* %29, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %46
  %60 = load %struct.sock*, %struct.sock** %10, align 8
  %61 = load %struct.tls_rec*, %struct.tls_rec** %28, align 8
  %62 = call i32 @tls_free_rec(%struct.sock* %60, %struct.tls_rec* %61)
  %63 = load i32, i32* %29, align 4
  store i32 %63, i32* %9, align 4
  br label %234

64:                                               ; preds = %46
  %65 = load %struct.sk_msg*, %struct.sk_msg** %13, align 8
  %66 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64*, i64** %17, align 8
  store i64 %68, i64* %69, align 8
  %70 = load %struct.sk_msg*, %struct.sk_msg** %13, align 8
  %71 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %18, align 8
  %74 = load %struct.sk_msg*, %struct.sk_msg** %13, align 8
  %75 = load i64, i64* %18, align 8
  %76 = call %struct.scatterlist* @sk_msg_elem(%struct.sk_msg* %74, i64 %75)
  store %struct.scatterlist* %76, %struct.scatterlist** %22, align 8
  br label %77

77:                                               ; preds = %138, %64
  %78 = load i64, i64* %21, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load %struct.scatterlist*, %struct.scatterlist** %22, align 8
  %82 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br label %85

85:                                               ; preds = %80, %77
  %86 = phi i1 [ false, %77 ], [ %84, %80 ]
  br i1 %86, label %87, label %142

87:                                               ; preds = %85
  %88 = load %struct.scatterlist*, %struct.scatterlist** %22, align 8
  %89 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %21, align 8
  %92 = icmp sgt i64 %90, %91
  br i1 %92, label %93, label %117

93:                                               ; preds = %87
  %94 = load %struct.scatterlist*, %struct.scatterlist** %22, align 8
  %95 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %21, align 8
  %98 = sub nsw i64 %96, %97
  store i64 %98, i64* %30, align 8
  %99 = load %struct.scatterlist*, %struct.scatterlist** %22, align 8
  %100 = call i32 @sg_page(%struct.scatterlist* %99)
  %101 = call i32 @get_page(i32 %100)
  %102 = load %struct.scatterlist*, %struct.scatterlist** %22, align 8
  %103 = call i32 @sg_page(%struct.scatterlist* %102)
  %104 = load i64, i64* %30, align 8
  %105 = load %struct.scatterlist*, %struct.scatterlist** %22, align 8
  %106 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %21, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @sg_set_page(%struct.scatterlist* %26, i32 %103, i64 %104, i64 %109)
  %111 = load i64, i64* %21, align 8
  %112 = load %struct.scatterlist*, %struct.scatterlist** %22, align 8
  %113 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load i64, i64* %21, align 8
  %115 = load i64, i64* %20, align 8
  %116 = add nsw i64 %115, %114
  store i64 %116, i64* %20, align 8
  store i64 0, i64* %21, align 8
  br label %128

117:                                              ; preds = %87
  %118 = load %struct.scatterlist*, %struct.scatterlist** %22, align 8
  %119 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %21, align 8
  %122 = sub nsw i64 %121, %120
  store i64 %122, i64* %21, align 8
  %123 = load %struct.scatterlist*, %struct.scatterlist** %22, align 8
  %124 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* %20, align 8
  %127 = add nsw i64 %126, %125
  store i64 %127, i64* %20, align 8
  br label %128

128:                                              ; preds = %117, %93
  %129 = load i64, i64* %18, align 8
  %130 = call i32 @sk_msg_iter_var_next(i64 %129)
  %131 = load i64, i64* %18, align 8
  %132 = load %struct.sk_msg*, %struct.sk_msg** %13, align 8
  %133 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %131, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %128
  br label %142

138:                                              ; preds = %128
  %139 = load %struct.sk_msg*, %struct.sk_msg** %13, align 8
  %140 = load i64, i64* %18, align 8
  %141 = call %struct.scatterlist* @sk_msg_elem(%struct.sk_msg* %139, i64 %140)
  store %struct.scatterlist* %141, %struct.scatterlist** %22, align 8
  br label %77

142:                                              ; preds = %137, %85
  %143 = load i64, i64* %18, align 8
  %144 = load %struct.sk_msg*, %struct.sk_msg** %13, align 8
  %145 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 1
  store i64 %143, i64* %146, align 8
  %147 = load i64, i64* %18, align 8
  %148 = load %struct.sk_msg*, %struct.sk_msg** %13, align 8
  %149 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 4
  store i64 %147, i64* %150, align 8
  %151 = load %struct.sk_msg*, %struct.sk_msg** %13, align 8
  %152 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 3
  store i64 0, i64* %153, align 8
  %154 = load %struct.sk_msg*, %struct.sk_msg** %13, align 8
  %155 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %154, i32 0, i32 0
  store i64 0, i64* %155, align 8
  %156 = load i64, i64* %20, align 8
  %157 = load %struct.sk_msg*, %struct.sk_msg** %13, align 8
  %158 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  store i64 %156, i64* %159, align 8
  %160 = load %struct.tls_rec*, %struct.tls_rec** %28, align 8
  %161 = getelementptr inbounds %struct.tls_rec, %struct.tls_rec* %160, i32 0, i32 0
  store %struct.sk_msg* %161, %struct.sk_msg** %27, align 8
  %162 = load i64, i64* %21, align 8
  %163 = load %struct.sk_msg*, %struct.sk_msg** %27, align 8
  %164 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %163, i32 0, i32 0
  store i64 %162, i64* %164, align 8
  %165 = load i64, i64* %25, align 8
  %166 = load i64, i64* %20, align 8
  %167 = sub nsw i64 %165, %166
  %168 = load %struct.sk_msg*, %struct.sk_msg** %27, align 8
  %169 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  store i64 %167, i64* %170, align 8
  %171 = load %struct.sk_msg*, %struct.sk_msg** %27, align 8
  %172 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  store i64 %174, i64* %19, align 8
  %175 = load %struct.sk_msg*, %struct.sk_msg** %27, align 8
  %176 = load i64, i64* %19, align 8
  %177 = call %struct.scatterlist* @sk_msg_elem(%struct.sk_msg* %175, i64 %176)
  store %struct.scatterlist* %177, %struct.scatterlist** %24, align 8
  %178 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %26, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %142
  %182 = load %struct.scatterlist*, %struct.scatterlist** %24, align 8
  %183 = call i32 @memcpy(%struct.scatterlist* %182, %struct.scatterlist* %26, i32 16)
  %184 = load i64, i64* %19, align 8
  %185 = call i32 @sk_msg_iter_var_next(i64 %184)
  %186 = load %struct.sk_msg*, %struct.sk_msg** %27, align 8
  %187 = load i64, i64* %19, align 8
  %188 = call %struct.scatterlist* @sk_msg_elem(%struct.sk_msg* %186, i64 %187)
  store %struct.scatterlist* %188, %struct.scatterlist** %24, align 8
  br label %189

189:                                              ; preds = %181, %142
  %190 = load %struct.sk_msg*, %struct.sk_msg** %13, align 8
  %191 = load i64, i64* %18, align 8
  %192 = call %struct.scatterlist* @sk_msg_elem(%struct.sk_msg* %190, i64 %191)
  store %struct.scatterlist* %192, %struct.scatterlist** %23, align 8
  br label %193

193:                                              ; preds = %213, %189
  %194 = load %struct.scatterlist*, %struct.scatterlist** %23, align 8
  %195 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %220

198:                                              ; preds = %193
  %199 = load %struct.scatterlist*, %struct.scatterlist** %24, align 8
  %200 = load %struct.scatterlist*, %struct.scatterlist** %23, align 8
  %201 = call i32 @memcpy(%struct.scatterlist* %199, %struct.scatterlist* %200, i32 16)
  %202 = load %struct.scatterlist*, %struct.scatterlist** %24, align 8
  %203 = call i32 @sg_unmark_end(%struct.scatterlist* %202)
  %204 = load i64, i64* %18, align 8
  %205 = call i32 @sk_msg_iter_var_next(i64 %204)
  %206 = load i64, i64* %19, align 8
  %207 = call i32 @sk_msg_iter_var_next(i64 %206)
  %208 = load i64, i64* %18, align 8
  %209 = load i64*, i64** %17, align 8
  %210 = load i64, i64* %209, align 8
  %211 = icmp eq i64 %208, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %198
  br label %220

213:                                              ; preds = %198
  %214 = load %struct.sk_msg*, %struct.sk_msg** %13, align 8
  %215 = load i64, i64* %18, align 8
  %216 = call %struct.scatterlist* @sk_msg_elem(%struct.sk_msg* %214, i64 %215)
  store %struct.scatterlist* %216, %struct.scatterlist** %23, align 8
  %217 = load %struct.sk_msg*, %struct.sk_msg** %27, align 8
  %218 = load i64, i64* %19, align 8
  %219 = call %struct.scatterlist* @sk_msg_elem(%struct.sk_msg* %217, i64 %218)
  store %struct.scatterlist* %219, %struct.scatterlist** %24, align 8
  br label %193

220:                                              ; preds = %212, %193
  %221 = load i64, i64* %19, align 8
  %222 = load %struct.sk_msg*, %struct.sk_msg** %27, align 8
  %223 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 1
  store i64 %221, i64* %224, align 8
  %225 = load i64, i64* %19, align 8
  %226 = load %struct.sk_msg*, %struct.sk_msg** %27, align 8
  %227 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 4
  store i64 %225, i64* %228, align 8
  %229 = load %struct.sk_msg*, %struct.sk_msg** %27, align 8
  %230 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 3
  store i64 0, i64* %231, align 8
  %232 = load %struct.tls_rec*, %struct.tls_rec** %28, align 8
  %233 = load %struct.tls_rec**, %struct.tls_rec*** %12, align 8
  store %struct.tls_rec* %232, %struct.tls_rec** %233, align 8
  store i32 0, i32* %9, align 4
  br label %234

234:                                              ; preds = %220, %59, %43
  %235 = load i32, i32* %9, align 4
  ret i32 %235
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.tls_rec* @tls_get_rec(%struct.sock*) #2

declare dso_local i32 @sk_msg_alloc(%struct.sock*, i32*, i64, i32) #2

declare dso_local i32 @tls_free_rec(%struct.sock*, %struct.tls_rec*) #2

declare dso_local %struct.scatterlist* @sk_msg_elem(%struct.sk_msg*, i64) #2

declare dso_local i32 @get_page(i32) #2

declare dso_local i32 @sg_page(%struct.scatterlist*) #2

declare dso_local i32 @sg_set_page(%struct.scatterlist*, i32, i64, i64) #2

declare dso_local i32 @sk_msg_iter_var_next(i64) #2

declare dso_local i32 @memcpy(%struct.scatterlist*, %struct.scatterlist*, i32) #2

declare dso_local i32 @sg_unmark_end(%struct.scatterlist*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
