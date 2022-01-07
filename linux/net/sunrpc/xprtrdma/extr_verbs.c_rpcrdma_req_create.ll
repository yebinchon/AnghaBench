; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_req_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_req_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_req = type { %struct.rpcrdma_req*, %struct.rpcrdma_req*, i32, i32, i32, i8*, i32 }
%struct.rpcrdma_xprt = type { %struct.TYPE_2__, %struct.rpcrdma_buffer }
%struct.TYPE_2__ = type { i32 }
%struct.rpcrdma_buffer = type { i32, i32 }
%struct.rpcrdma_regbuf = type { %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf*, i32, i32, i32, i8*, i32 }

@rpcrdma_fixed_maxsz = common dso_local global i32 0, align 4
@rpcrdma_readchunk_maxsz = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpcrdma_req* @rpcrdma_req_create(%struct.rpcrdma_xprt* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.rpcrdma_req*, align 8
  %5 = alloca %struct.rpcrdma_xprt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rpcrdma_buffer*, align 8
  %9 = alloca %struct.rpcrdma_regbuf*, align 8
  %10 = alloca %struct.rpcrdma_req*, align 8
  %11 = alloca i64, align 8
  store %struct.rpcrdma_xprt* %0, %struct.rpcrdma_xprt** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %13 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %12, i32 0, i32 1
  store %struct.rpcrdma_buffer* %13, %struct.rpcrdma_buffer** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.rpcrdma_req* @kzalloc(i32 48, i32 %14)
  store %struct.rpcrdma_req* %15, %struct.rpcrdma_req** %10, align 8
  %16 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %10, align 8
  %17 = icmp eq %struct.rpcrdma_req* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %111

19:                                               ; preds = %3
  %20 = load i32, i32* @rpcrdma_fixed_maxsz, align 4
  %21 = add nsw i32 %20, 3
  %22 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %23 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @rpcrdma_readchunk_maxsz, align 4
  %27 = mul nsw i32 %25, %26
  %28 = add nsw i32 %21, %27
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = mul i64 %30, 4
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %11, align 8
  %33 = call i64 @__roundup_pow_of_two(i64 %32)
  %34 = load i32, i32* @DMA_TO_DEVICE, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i8* @rpcrdma_regbuf_alloc(i64 %33, i32 %34, i32 %35)
  %37 = bitcast i8* %36 to %struct.rpcrdma_regbuf*
  store %struct.rpcrdma_regbuf* %37, %struct.rpcrdma_regbuf** %9, align 8
  %38 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %9, align 8
  %39 = icmp ne %struct.rpcrdma_regbuf* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %19
  br label %108

41:                                               ; preds = %19
  %42 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %9, align 8
  %43 = bitcast %struct.rpcrdma_regbuf* %42 to %struct.rpcrdma_req*
  %44 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %10, align 8
  %45 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %44, i32 0, i32 0
  store %struct.rpcrdma_req* %43, %struct.rpcrdma_req** %45, align 8
  %46 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %10, align 8
  %47 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %46, i32 0, i32 6
  %48 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %9, align 8
  %49 = bitcast %struct.rpcrdma_regbuf* %48 to %struct.rpcrdma_req*
  %50 = call i32 @rdmab_data(%struct.rpcrdma_req* %49)
  %51 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %9, align 8
  %52 = bitcast %struct.rpcrdma_regbuf* %51 to %struct.rpcrdma_req*
  %53 = call i32 @rdmab_length(%struct.rpcrdma_req* %52)
  %54 = call i32 @xdr_buf_init(i32* %47, i32 %50, i32 %53)
  %55 = load i64, i64* %6, align 8
  %56 = load i32, i32* @DMA_TO_DEVICE, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i8* @rpcrdma_regbuf_alloc(i64 %55, i32 %56, i32 %57)
  %59 = bitcast i8* %58 to %struct.rpcrdma_req*
  %60 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %10, align 8
  %61 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %60, i32 0, i32 1
  store %struct.rpcrdma_req* %59, %struct.rpcrdma_req** %61, align 8
  %62 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %10, align 8
  %63 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %62, i32 0, i32 1
  %64 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %63, align 8
  %65 = icmp ne %struct.rpcrdma_req* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %41
  br label %103

67:                                               ; preds = %41
  %68 = load i64, i64* %6, align 8
  %69 = load i32, i32* @DMA_NONE, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i8* @rpcrdma_regbuf_alloc(i64 %68, i32 %69, i32 %70)
  %72 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %10, align 8
  %73 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %72, i32 0, i32 5
  store i8* %71, i8** %73, align 8
  %74 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %10, align 8
  %75 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %74, i32 0, i32 5
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %67
  br label %98

79:                                               ; preds = %67
  %80 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %10, align 8
  %81 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %80, i32 0, i32 4
  %82 = call i32 @INIT_LIST_HEAD(i32* %81)
  %83 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %10, align 8
  %84 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %83, i32 0, i32 3
  %85 = call i32 @INIT_LIST_HEAD(i32* %84)
  %86 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %8, align 8
  %87 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %86, i32 0, i32 0
  %88 = call i32 @spin_lock(i32* %87)
  %89 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %10, align 8
  %90 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %89, i32 0, i32 2
  %91 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %8, align 8
  %92 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %91, i32 0, i32 1
  %93 = call i32 @list_add(i32* %90, i32* %92)
  %94 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %8, align 8
  %95 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %94, i32 0, i32 0
  %96 = call i32 @spin_unlock(i32* %95)
  %97 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %10, align 8
  store %struct.rpcrdma_req* %97, %struct.rpcrdma_req** %4, align 8
  br label %112

98:                                               ; preds = %78
  %99 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %10, align 8
  %100 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %99, i32 0, i32 1
  %101 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %100, align 8
  %102 = call i32 @kfree(%struct.rpcrdma_req* %101)
  br label %103

103:                                              ; preds = %98, %66
  %104 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %10, align 8
  %105 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %104, i32 0, i32 0
  %106 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %105, align 8
  %107 = call i32 @kfree(%struct.rpcrdma_req* %106)
  br label %108

108:                                              ; preds = %103, %40
  %109 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %10, align 8
  %110 = call i32 @kfree(%struct.rpcrdma_req* %109)
  br label %111

111:                                              ; preds = %108, %18
  store %struct.rpcrdma_req* null, %struct.rpcrdma_req** %4, align 8
  br label %112

112:                                              ; preds = %111, %79
  %113 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %4, align 8
  ret %struct.rpcrdma_req* %113
}

declare dso_local %struct.rpcrdma_req* @kzalloc(i32, i32) #1

declare dso_local i8* @rpcrdma_regbuf_alloc(i64, i32, i32) #1

declare dso_local i64 @__roundup_pow_of_two(i64) #1

declare dso_local i32 @xdr_buf_init(i32*, i32, i32) #1

declare dso_local i32 @rdmab_data(%struct.rpcrdma_req*) #1

declare dso_local i32 @rdmab_length(%struct.rpcrdma_req*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.rpcrdma_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
