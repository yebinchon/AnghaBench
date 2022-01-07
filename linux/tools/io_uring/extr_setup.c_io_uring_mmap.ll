; ModuleID = '/home/carl/AnghaBench/linux/tools/io_uring/extr_setup.c_io_uring_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/tools/io_uring/extr_setup.c_io_uring_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_uring_params = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.io_uring_sq = type { i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.io_uring_cq = type { i64, i8*, i8*, i8*, i8*, i8*, i8* }

@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_POPULATE = common dso_local global i32 0, align 4
@IORING_OFF_SQ_RING = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4
@IORING_OFF_SQES = common dso_local global i32 0, align 4
@IORING_OFF_CQ_RING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.io_uring_params*, %struct.io_uring_sq*, %struct.io_uring_cq*)* @io_uring_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_uring_mmap(i32 %0, %struct.io_uring_params* %1, %struct.io_uring_sq* %2, %struct.io_uring_cq* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.io_uring_params*, align 8
  %8 = alloca %struct.io_uring_sq*, align 8
  %9 = alloca %struct.io_uring_cq*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.io_uring_params* %1, %struct.io_uring_params** %7, align 8
  store %struct.io_uring_sq* %2, %struct.io_uring_sq** %8, align 8
  store %struct.io_uring_cq* %3, %struct.io_uring_cq** %9, align 8
  %13 = load %struct.io_uring_params*, %struct.io_uring_params** %7, align 8
  %14 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.io_uring_params*, %struct.io_uring_params** %7, align 8
  %18 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = add i64 %16, %21
  %23 = load %struct.io_uring_sq*, %struct.io_uring_sq** %8, align 8
  %24 = getelementptr inbounds %struct.io_uring_sq, %struct.io_uring_sq* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.io_uring_sq*, %struct.io_uring_sq** %8, align 8
  %26 = getelementptr inbounds %struct.io_uring_sq, %struct.io_uring_sq* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @PROT_READ, align 4
  %29 = load i32, i32* @PROT_WRITE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @MAP_SHARED, align 4
  %32 = load i32, i32* @MAP_POPULATE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @IORING_OFF_SQ_RING, align 4
  %36 = call i8* @mmap(i32 0, i64 %27, i32 %30, i32 %33, i32 %34, i32 %35)
  store i8* %36, i8** %11, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = load i8*, i8** @MAP_FAILED, align 8
  %39 = icmp eq i8* %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %4
  %41 = load i32, i32* @errno, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %236

43:                                               ; preds = %4
  %44 = load i8*, i8** %11, align 8
  %45 = load %struct.io_uring_params*, %struct.io_uring_params** %7, align 8
  %46 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr i8, i8* %44, i64 %49
  %51 = load %struct.io_uring_sq*, %struct.io_uring_sq** %8, align 8
  %52 = getelementptr inbounds %struct.io_uring_sq, %struct.io_uring_sq* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = load %struct.io_uring_params*, %struct.io_uring_params** %7, align 8
  %55 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr i8, i8* %53, i64 %58
  %60 = load %struct.io_uring_sq*, %struct.io_uring_sq** %8, align 8
  %61 = getelementptr inbounds %struct.io_uring_sq, %struct.io_uring_sq* %60, i32 0, i32 8
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = load %struct.io_uring_params*, %struct.io_uring_params** %7, align 8
  %64 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = getelementptr i8, i8* %62, i64 %67
  %69 = load %struct.io_uring_sq*, %struct.io_uring_sq** %8, align 8
  %70 = getelementptr inbounds %struct.io_uring_sq, %struct.io_uring_sq* %69, i32 0, i32 7
  store i8* %68, i8** %70, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = load %struct.io_uring_params*, %struct.io_uring_params** %7, align 8
  %73 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr i8, i8* %71, i64 %76
  %78 = load %struct.io_uring_sq*, %struct.io_uring_sq** %8, align 8
  %79 = getelementptr inbounds %struct.io_uring_sq, %struct.io_uring_sq* %78, i32 0, i32 6
  store i8* %77, i8** %79, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = load %struct.io_uring_params*, %struct.io_uring_params** %7, align 8
  %82 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = getelementptr i8, i8* %80, i64 %85
  %87 = load %struct.io_uring_sq*, %struct.io_uring_sq** %8, align 8
  %88 = getelementptr inbounds %struct.io_uring_sq, %struct.io_uring_sq* %87, i32 0, i32 5
  store i8* %86, i8** %88, align 8
  %89 = load i8*, i8** %11, align 8
  %90 = load %struct.io_uring_params*, %struct.io_uring_params** %7, align 8
  %91 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr i8, i8* %89, i64 %94
  %96 = load %struct.io_uring_sq*, %struct.io_uring_sq** %8, align 8
  %97 = getelementptr inbounds %struct.io_uring_sq, %struct.io_uring_sq* %96, i32 0, i32 4
  store i8* %95, i8** %97, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = load %struct.io_uring_params*, %struct.io_uring_params** %7, align 8
  %100 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr i8, i8* %98, i64 %102
  %104 = load %struct.io_uring_sq*, %struct.io_uring_sq** %8, align 8
  %105 = getelementptr inbounds %struct.io_uring_sq, %struct.io_uring_sq* %104, i32 0, i32 3
  store i8* %103, i8** %105, align 8
  %106 = load %struct.io_uring_params*, %struct.io_uring_params** %7, align 8
  %107 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = mul i64 %109, 4
  store i64 %110, i64* %10, align 8
  %111 = load i64, i64* %10, align 8
  %112 = load i32, i32* @PROT_READ, align 4
  %113 = load i32, i32* @PROT_WRITE, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @MAP_SHARED, align 4
  %116 = load i32, i32* @MAP_POPULATE, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @IORING_OFF_SQES, align 4
  %120 = call i8* @mmap(i32 0, i64 %111, i32 %114, i32 %117, i32 %118, i32 %119)
  %121 = load %struct.io_uring_sq*, %struct.io_uring_sq** %8, align 8
  %122 = getelementptr inbounds %struct.io_uring_sq, %struct.io_uring_sq* %121, i32 0, i32 2
  store i8* %120, i8** %122, align 8
  %123 = load %struct.io_uring_sq*, %struct.io_uring_sq** %8, align 8
  %124 = getelementptr inbounds %struct.io_uring_sq, %struct.io_uring_sq* %123, i32 0, i32 2
  %125 = load i8*, i8** %124, align 8
  %126 = load i8*, i8** @MAP_FAILED, align 8
  %127 = icmp eq i8* %125, %126
  br i1 %127, label %128, label %141

128:                                              ; preds = %43
  %129 = load i32, i32* @errno, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %12, align 4
  br label %131

131:                                              ; preds = %169, %128
  %132 = load %struct.io_uring_sq*, %struct.io_uring_sq** %8, align 8
  %133 = getelementptr inbounds %struct.io_uring_sq, %struct.io_uring_sq* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = load %struct.io_uring_sq*, %struct.io_uring_sq** %8, align 8
  %136 = getelementptr inbounds %struct.io_uring_sq, %struct.io_uring_sq* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = trunc i64 %137 to i32
  %139 = call i32 @munmap(i8* %134, i32 %138)
  %140 = load i32, i32* %12, align 4
  store i32 %140, i32* %5, align 4
  br label %236

141:                                              ; preds = %43
  %142 = load %struct.io_uring_params*, %struct.io_uring_params** %7, align 8
  %143 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.io_uring_params*, %struct.io_uring_params** %7, align 8
  %147 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = mul i64 %149, 4
  %151 = add i64 %145, %150
  %152 = load %struct.io_uring_cq*, %struct.io_uring_cq** %9, align 8
  %153 = getelementptr inbounds %struct.io_uring_cq, %struct.io_uring_cq* %152, i32 0, i32 0
  store i64 %151, i64* %153, align 8
  %154 = load %struct.io_uring_cq*, %struct.io_uring_cq** %9, align 8
  %155 = getelementptr inbounds %struct.io_uring_cq, %struct.io_uring_cq* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i32, i32* @PROT_READ, align 4
  %158 = load i32, i32* @PROT_WRITE, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @MAP_SHARED, align 4
  %161 = load i32, i32* @MAP_POPULATE, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* @IORING_OFF_CQ_RING, align 4
  %165 = call i8* @mmap(i32 0, i64 %156, i32 %159, i32 %162, i32 %163, i32 %164)
  store i8* %165, i8** %11, align 8
  %166 = load i8*, i8** %11, align 8
  %167 = load i8*, i8** @MAP_FAILED, align 8
  %168 = icmp eq i8* %166, %167
  br i1 %168, label %169, label %182

169:                                              ; preds = %141
  %170 = load i32, i32* @errno, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %12, align 4
  %172 = load %struct.io_uring_sq*, %struct.io_uring_sq** %8, align 8
  %173 = getelementptr inbounds %struct.io_uring_sq, %struct.io_uring_sq* %172, i32 0, i32 2
  %174 = load i8*, i8** %173, align 8
  %175 = load %struct.io_uring_params*, %struct.io_uring_params** %7, align 8
  %176 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = sext i32 %177 to i64
  %179 = mul i64 %178, 4
  %180 = trunc i64 %179 to i32
  %181 = call i32 @munmap(i8* %174, i32 %180)
  br label %131

182:                                              ; preds = %141
  %183 = load i8*, i8** %11, align 8
  %184 = load %struct.io_uring_params*, %struct.io_uring_params** %7, align 8
  %185 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = sext i32 %187 to i64
  %189 = getelementptr i8, i8* %183, i64 %188
  %190 = load %struct.io_uring_cq*, %struct.io_uring_cq** %9, align 8
  %191 = getelementptr inbounds %struct.io_uring_cq, %struct.io_uring_cq* %190, i32 0, i32 6
  store i8* %189, i8** %191, align 8
  %192 = load i8*, i8** %11, align 8
  %193 = load %struct.io_uring_params*, %struct.io_uring_params** %7, align 8
  %194 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr i8, i8* %192, i64 %197
  %199 = load %struct.io_uring_cq*, %struct.io_uring_cq** %9, align 8
  %200 = getelementptr inbounds %struct.io_uring_cq, %struct.io_uring_cq* %199, i32 0, i32 5
  store i8* %198, i8** %200, align 8
  %201 = load i8*, i8** %11, align 8
  %202 = load %struct.io_uring_params*, %struct.io_uring_params** %7, align 8
  %203 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 8
  %206 = sext i32 %205 to i64
  %207 = getelementptr i8, i8* %201, i64 %206
  %208 = load %struct.io_uring_cq*, %struct.io_uring_cq** %9, align 8
  %209 = getelementptr inbounds %struct.io_uring_cq, %struct.io_uring_cq* %208, i32 0, i32 4
  store i8* %207, i8** %209, align 8
  %210 = load i8*, i8** %11, align 8
  %211 = load %struct.io_uring_params*, %struct.io_uring_params** %7, align 8
  %212 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr i8, i8* %210, i64 %215
  %217 = load %struct.io_uring_cq*, %struct.io_uring_cq** %9, align 8
  %218 = getelementptr inbounds %struct.io_uring_cq, %struct.io_uring_cq* %217, i32 0, i32 3
  store i8* %216, i8** %218, align 8
  %219 = load i8*, i8** %11, align 8
  %220 = load %struct.io_uring_params*, %struct.io_uring_params** %7, align 8
  %221 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 5
  %223 = load i32, i32* %222, align 8
  %224 = sext i32 %223 to i64
  %225 = getelementptr i8, i8* %219, i64 %224
  %226 = load %struct.io_uring_cq*, %struct.io_uring_cq** %9, align 8
  %227 = getelementptr inbounds %struct.io_uring_cq, %struct.io_uring_cq* %226, i32 0, i32 2
  store i8* %225, i8** %227, align 8
  %228 = load i8*, i8** %11, align 8
  %229 = load %struct.io_uring_params*, %struct.io_uring_params** %7, align 8
  %230 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = getelementptr i8, i8* %228, i64 %232
  %234 = load %struct.io_uring_cq*, %struct.io_uring_cq** %9, align 8
  %235 = getelementptr inbounds %struct.io_uring_cq, %struct.io_uring_cq* %234, i32 0, i32 1
  store i8* %233, i8** %235, align 8
  store i32 0, i32* %5, align 4
  br label %236

236:                                              ; preds = %182, %131, %40
  %237 = load i32, i32* %5, align 4
  ret i32 %237
}

declare dso_local i8* @mmap(i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @munmap(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
