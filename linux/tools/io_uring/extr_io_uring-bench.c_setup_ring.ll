; ModuleID = '/home/carl/AnghaBench/linux/tools/io_uring/extr_io_uring-bench.c_setup_ring.c'
source_filename = "/home/carl/AnghaBench/linux/tools/io_uring/extr_io_uring-bench.c_setup_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.submitter = type { i32, i8*, %struct.io_cq_ring, %struct.io_sq_ring }
%struct.io_cq_ring = type { i32*, i8*, i8*, i8*, i8* }
%struct.io_sq_ring = type { i32*, i8*, i8*, i8*, i8*, i8* }
%struct.io_uring_params = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@polled = common dso_local global i64 0, align 8
@do_nop = common dso_local global i32 0, align 4
@IORING_SETUP_IOPOLL = common dso_local global i32 0, align 4
@sq_thread_poll = common dso_local global i64 0, align 8
@IORING_SETUP_SQPOLL = common dso_local global i32 0, align 4
@sq_thread_cpu = common dso_local global i32 0, align 4
@IORING_SETUP_SQ_AFF = common dso_local global i32 0, align 4
@DEPTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"io_uring_setup\00", align 1
@fixedbufs = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"io_uring_register_buffers\00", align 1
@register_files = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"io_uring_register_files\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_POPULATE = common dso_local global i32 0, align 4
@IORING_OFF_SQ_RING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"sq_ring ptr = 0x%p\0A\00", align 1
@sq_ring_mask = common dso_local global i32 0, align 4
@IORING_OFF_SQES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"sqes ptr    = 0x%p\0A\00", align 1
@IORING_OFF_CQ_RING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"cq_ring ptr = 0x%p\0A\00", align 1
@cq_ring_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.submitter*)* @setup_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_ring(%struct.submitter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.submitter*, align 8
  %4 = alloca %struct.io_sq_ring*, align 8
  %5 = alloca %struct.io_cq_ring*, align 8
  %6 = alloca %struct.io_uring_params, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.submitter* %0, %struct.submitter** %3, align 8
  %10 = load %struct.submitter*, %struct.submitter** %3, align 8
  %11 = getelementptr inbounds %struct.submitter, %struct.submitter* %10, i32 0, i32 3
  store %struct.io_sq_ring* %11, %struct.io_sq_ring** %4, align 8
  %12 = load %struct.submitter*, %struct.submitter** %3, align 8
  %13 = getelementptr inbounds %struct.submitter, %struct.submitter* %12, i32 0, i32 2
  store %struct.io_cq_ring* %13, %struct.io_cq_ring** %5, align 8
  %14 = call i32 @memset(%struct.io_uring_params* %6, i32 0, i32 60)
  %15 = load i64, i64* @polled, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load i32, i32* @do_nop, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @IORING_SETUP_IOPOLL, align 4
  %22 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %6, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %21
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %20, %17, %1
  %26 = load i64, i64* @sq_thread_poll, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %25
  %29 = load i32, i32* @IORING_SETUP_SQPOLL, align 4
  %30 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %6, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %29
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* @sq_thread_cpu, align 4
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %42

35:                                               ; preds = %28
  %36 = load i32, i32* @IORING_SETUP_SQ_AFF, align 4
  %37 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %6, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %36
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* @sq_thread_cpu, align 4
  %41 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %6, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %35, %28
  br label %43

43:                                               ; preds = %42, %25
  %44 = load i32, i32* @DEPTH, align 4
  %45 = call i32 @io_uring_setup(i32 %44, %struct.io_uring_params* %6)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %236

50:                                               ; preds = %43
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.submitter*, %struct.submitter** %3, align 8
  %53 = getelementptr inbounds %struct.submitter, %struct.submitter* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i64, i64* @fixedbufs, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load %struct.submitter*, %struct.submitter** %3, align 8
  %58 = call i32 @io_uring_register_buffers(%struct.submitter* %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = call i32 @perror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %236

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %50
  %65 = load i64, i64* @register_files, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load %struct.submitter*, %struct.submitter** %3, align 8
  %69 = call i32 @io_uring_register_files(%struct.submitter* %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = call i32 @perror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %236

74:                                               ; preds = %67
  br label %75

75:                                               ; preds = %74, %64
  %76 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %6, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %6, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 4
  %84 = add i64 %79, %83
  %85 = trunc i64 %84 to i32
  %86 = load i32, i32* @PROT_READ, align 4
  %87 = load i32, i32* @PROT_WRITE, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @MAP_SHARED, align 4
  %90 = load i32, i32* @MAP_POPULATE, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @IORING_OFF_SQ_RING, align 4
  %94 = call i8* @mmap(i32 0, i32 %85, i32 %88, i32 %91, i32 %92, i32 %93)
  store i8* %94, i8** %9, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %95)
  %97 = load i8*, i8** %9, align 8
  %98 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %6, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr i8, i8* %97, i64 %101
  %103 = load %struct.io_sq_ring*, %struct.io_sq_ring** %4, align 8
  %104 = getelementptr inbounds %struct.io_sq_ring, %struct.io_sq_ring* %103, i32 0, i32 5
  store i8* %102, i8** %104, align 8
  %105 = load i8*, i8** %9, align 8
  %106 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %6, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr i8, i8* %105, i64 %109
  %111 = load %struct.io_sq_ring*, %struct.io_sq_ring** %4, align 8
  %112 = getelementptr inbounds %struct.io_sq_ring, %struct.io_sq_ring* %111, i32 0, i32 4
  store i8* %110, i8** %112, align 8
  %113 = load i8*, i8** %9, align 8
  %114 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %6, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr i8, i8* %113, i64 %117
  %119 = bitcast i8* %118 to i32*
  %120 = load %struct.io_sq_ring*, %struct.io_sq_ring** %4, align 8
  %121 = getelementptr inbounds %struct.io_sq_ring, %struct.io_sq_ring* %120, i32 0, i32 0
  store i32* %119, i32** %121, align 8
  %122 = load i8*, i8** %9, align 8
  %123 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %6, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr i8, i8* %122, i64 %126
  %128 = load %struct.io_sq_ring*, %struct.io_sq_ring** %4, align 8
  %129 = getelementptr inbounds %struct.io_sq_ring, %struct.io_sq_ring* %128, i32 0, i32 3
  store i8* %127, i8** %129, align 8
  %130 = load i8*, i8** %9, align 8
  %131 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %6, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr i8, i8* %130, i64 %134
  %136 = load %struct.io_sq_ring*, %struct.io_sq_ring** %4, align 8
  %137 = getelementptr inbounds %struct.io_sq_ring, %struct.io_sq_ring* %136, i32 0, i32 2
  store i8* %135, i8** %137, align 8
  %138 = load i8*, i8** %9, align 8
  %139 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %6, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr i8, i8* %138, i64 %142
  %144 = load %struct.io_sq_ring*, %struct.io_sq_ring** %4, align 8
  %145 = getelementptr inbounds %struct.io_sq_ring, %struct.io_sq_ring* %144, i32 0, i32 1
  store i8* %143, i8** %145, align 8
  %146 = load %struct.io_sq_ring*, %struct.io_sq_ring** %4, align 8
  %147 = getelementptr inbounds %struct.io_sq_ring, %struct.io_sq_ring* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* @sq_ring_mask, align 4
  %150 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %6, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = mul i64 %152, 4
  %154 = trunc i64 %153 to i32
  %155 = load i32, i32* @PROT_READ, align 4
  %156 = load i32, i32* @PROT_WRITE, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @MAP_SHARED, align 4
  %159 = load i32, i32* @MAP_POPULATE, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* @IORING_OFF_SQES, align 4
  %163 = call i8* @mmap(i32 0, i32 %154, i32 %157, i32 %160, i32 %161, i32 %162)
  %164 = load %struct.submitter*, %struct.submitter** %3, align 8
  %165 = getelementptr inbounds %struct.submitter, %struct.submitter* %164, i32 0, i32 1
  store i8* %163, i8** %165, align 8
  %166 = load %struct.submitter*, %struct.submitter** %3, align 8
  %167 = getelementptr inbounds %struct.submitter, %struct.submitter* %166, i32 0, i32 1
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %168)
  %170 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %6, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %6, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  %177 = mul i64 %176, 4
  %178 = add i64 %173, %177
  %179 = trunc i64 %178 to i32
  %180 = load i32, i32* @PROT_READ, align 4
  %181 = load i32, i32* @PROT_WRITE, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* @MAP_SHARED, align 4
  %184 = load i32, i32* @MAP_POPULATE, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* @IORING_OFF_CQ_RING, align 4
  %188 = call i8* @mmap(i32 0, i32 %179, i32 %182, i32 %185, i32 %186, i32 %187)
  store i8* %188, i8** %9, align 8
  %189 = load i8*, i8** %9, align 8
  %190 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %189)
  %191 = load i8*, i8** %9, align 8
  %192 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %6, i32 0, i32 3
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr i8, i8* %191, i64 %195
  %197 = load %struct.io_cq_ring*, %struct.io_cq_ring** %5, align 8
  %198 = getelementptr inbounds %struct.io_cq_ring, %struct.io_cq_ring* %197, i32 0, i32 4
  store i8* %196, i8** %198, align 8
  %199 = load i8*, i8** %9, align 8
  %200 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %6, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr i8, i8* %199, i64 %203
  %205 = load %struct.io_cq_ring*, %struct.io_cq_ring** %5, align 8
  %206 = getelementptr inbounds %struct.io_cq_ring, %struct.io_cq_ring* %205, i32 0, i32 3
  store i8* %204, i8** %206, align 8
  %207 = load i8*, i8** %9, align 8
  %208 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %6, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr i8, i8* %207, i64 %211
  %213 = bitcast i8* %212 to i32*
  %214 = load %struct.io_cq_ring*, %struct.io_cq_ring** %5, align 8
  %215 = getelementptr inbounds %struct.io_cq_ring, %struct.io_cq_ring* %214, i32 0, i32 0
  store i32* %213, i32** %215, align 8
  %216 = load i8*, i8** %9, align 8
  %217 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %6, i32 0, i32 3
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr i8, i8* %216, i64 %220
  %222 = load %struct.io_cq_ring*, %struct.io_cq_ring** %5, align 8
  %223 = getelementptr inbounds %struct.io_cq_ring, %struct.io_cq_ring* %222, i32 0, i32 2
  store i8* %221, i8** %223, align 8
  %224 = load i8*, i8** %9, align 8
  %225 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %6, i32 0, i32 3
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr i8, i8* %224, i64 %228
  %230 = load %struct.io_cq_ring*, %struct.io_cq_ring** %5, align 8
  %231 = getelementptr inbounds %struct.io_cq_ring, %struct.io_cq_ring* %230, i32 0, i32 1
  store i8* %229, i8** %231, align 8
  %232 = load %struct.io_cq_ring*, %struct.io_cq_ring** %5, align 8
  %233 = getelementptr inbounds %struct.io_cq_ring, %struct.io_cq_ring* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* %234, align 4
  store i32 %235, i32* @cq_ring_mask, align 4
  store i32 0, i32* %2, align 4
  br label %236

236:                                              ; preds = %75, %72, %61, %48
  %237 = load i32, i32* %2, align 4
  ret i32 %237
}

declare dso_local i32 @memset(%struct.io_uring_params*, i32, i32) #1

declare dso_local i32 @io_uring_setup(i32, %struct.io_uring_params*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @io_uring_register_buffers(%struct.submitter*) #1

declare dso_local i32 @io_uring_register_files(%struct.submitter*) #1

declare dso_local i8* @mmap(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
