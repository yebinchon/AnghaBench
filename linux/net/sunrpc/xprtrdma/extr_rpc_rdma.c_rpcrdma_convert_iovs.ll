; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_rpc_rdma.c_rpcrdma_convert_iovs.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_rpc_rdma.c_rpcrdma_convert_iovs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_xprt = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.xdr_buf = type { i32, i64, i32, %struct.TYPE_4__*, %struct.page**, %struct.TYPE_4__* }
%struct.page = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.rpcrdma_mr_seg = type { i8*, i32, %struct.page* }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@XDRBUF_SPARSE_PAGES = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@rpcrdma_readch = common dso_local global i32 0, align 4
@rpcrdma_writech = common dso_local global i32 0, align 4
@RPCRDMA_MAX_SEGS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpcrdma_xprt*, %struct.xdr_buf*, i32, i32, %struct.rpcrdma_mr_seg*)* @rpcrdma_convert_iovs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcrdma_convert_iovs(%struct.rpcrdma_xprt* %0, %struct.xdr_buf* %1, i32 %2, i32 %3, %struct.rpcrdma_mr_seg* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rpcrdma_xprt*, align 8
  %8 = alloca %struct.xdr_buf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rpcrdma_mr_seg*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.page**, align 8
  store %struct.rpcrdma_xprt* %0, %struct.rpcrdma_xprt** %7, align 8
  store %struct.xdr_buf* %1, %struct.xdr_buf** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.rpcrdma_mr_seg* %4, %struct.rpcrdma_mr_seg** %11, align 8
  store i32 0, i32* %14, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %5
  %19 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %20 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %19, i32 0, i32 5
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 0
  %23 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %11, align 8
  %24 = call %struct.rpcrdma_mr_seg* @rpcrdma_convert_kvec(%struct.TYPE_4__* %22, %struct.rpcrdma_mr_seg* %23, i32* %14)
  store %struct.rpcrdma_mr_seg* %24, %struct.rpcrdma_mr_seg** %11, align 8
  br label %25

25:                                               ; preds = %18, %5
  %26 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %27 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %13, align 4
  %29 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %30 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %29, i32 0, i32 4
  %31 = load %struct.page**, %struct.page*** %30, align 8
  %32 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %33 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PAGE_SHIFT, align 8
  %36 = ashr i64 %34, %35
  %37 = getelementptr inbounds %struct.page*, %struct.page** %31, i64 %36
  store %struct.page** %37, %struct.page*** %15, align 8
  %38 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %39 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @offset_in_page(i64 %40)
  store i64 %41, i64* %12, align 8
  br label %42

42:                                               ; preds = %71, %25
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %99

45:                                               ; preds = %42
  %46 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %47 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @XDRBUF_SPARSE_PAGES, align 4
  %50 = and i32 %48, %49
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %45
  %54 = load %struct.page**, %struct.page*** %15, align 8
  %55 = load %struct.page*, %struct.page** %54, align 8
  %56 = icmp ne %struct.page* %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @GFP_NOWAIT, align 4
  %59 = load i32, i32* @__GFP_NOWARN, align 4
  %60 = or i32 %58, %59
  %61 = call %struct.page* @alloc_page(i32 %60)
  %62 = load %struct.page**, %struct.page*** %15, align 8
  store %struct.page* %61, %struct.page** %62, align 8
  br label %63

63:                                               ; preds = %57, %53
  %64 = load %struct.page**, %struct.page*** %15, align 8
  %65 = load %struct.page*, %struct.page** %64, align 8
  %66 = icmp ne %struct.page* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* @ENOBUFS, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %6, align 4
  br label %149

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70, %45
  %72 = load %struct.page**, %struct.page*** %15, align 8
  %73 = load %struct.page*, %struct.page** %72, align 8
  %74 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %11, align 8
  %75 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %74, i32 0, i32 2
  store %struct.page* %73, %struct.page** %75, align 8
  %76 = load i64, i64* %12, align 8
  %77 = inttoptr i64 %76 to i8*
  %78 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %11, align 8
  %79 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  %80 = load i32, i32* @u32, align 4
  %81 = load i64, i64* @PAGE_SIZE, align 8
  %82 = load i64, i64* %12, align 8
  %83 = sub i64 %81, %82
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @min_t(i32 %80, i64 %83, i32 %84)
  %86 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %11, align 8
  %87 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 8
  %88 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %11, align 8
  %89 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sub i32 %91, %90
  store i32 %92, i32* %13, align 4
  %93 = load %struct.page**, %struct.page*** %15, align 8
  %94 = getelementptr inbounds %struct.page*, %struct.page** %93, i32 1
  store %struct.page** %94, %struct.page*** %15, align 8
  %95 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %11, align 8
  %96 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %95, i32 1
  store %struct.rpcrdma_mr_seg* %96, %struct.rpcrdma_mr_seg** %11, align 8
  %97 = load i32, i32* %14, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %14, align 4
  store i64 0, i64* %12, align 8
  br label %42

99:                                               ; preds = %42
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @rpcrdma_readch, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %99
  %104 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %7, align 8
  %105 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %137

110:                                              ; preds = %103, %99
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* @rpcrdma_writech, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %110
  %115 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %7, align 8
  %116 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  br label %137

121:                                              ; preds = %114, %110
  %122 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %123 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %122, i32 0, i32 3
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %121
  %130 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %131 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %130, i32 0, i32 3
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i64 0
  %134 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %11, align 8
  %135 = call %struct.rpcrdma_mr_seg* @rpcrdma_convert_kvec(%struct.TYPE_4__* %133, %struct.rpcrdma_mr_seg* %134, i32* %14)
  store %struct.rpcrdma_mr_seg* %135, %struct.rpcrdma_mr_seg** %11, align 8
  br label %136

136:                                              ; preds = %129, %121
  br label %137

137:                                              ; preds = %136, %120, %109
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* @RPCRDMA_MAX_SEGS, align 4
  %140 = icmp ugt i32 %138, %139
  %141 = zext i1 %140 to i32
  %142 = call i64 @unlikely(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %137
  %145 = load i32, i32* @EIO, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %6, align 4
  br label %149

147:                                              ; preds = %137
  %148 = load i32, i32* %14, align 4
  store i32 %148, i32* %6, align 4
  br label %149

149:                                              ; preds = %147, %144, %67
  %150 = load i32, i32* %6, align 4
  ret i32 %150
}

declare dso_local %struct.rpcrdma_mr_seg* @rpcrdma_convert_kvec(%struct.TYPE_4__*, %struct.rpcrdma_mr_seg*, i32*) #1

declare dso_local i64 @offset_in_page(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @min_t(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
