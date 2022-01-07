; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_recvfrom.c_svc_rdma_xdr_decode_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_recvfrom.c_svc_rdma_xdr_decode_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_buf = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64*, i32 }

@RPCRDMA_HDRLEN_ERR = common dso_local global i64 0, align 8
@rpcrdma_version = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_buf*)* @svc_rdma_xdr_decode_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_rdma_xdr_decode_req(%struct.xdr_buf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xdr_buf*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store %struct.xdr_buf* %0, %struct.xdr_buf** %3, align 8
  %8 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %9 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @RPCRDMA_HDRLEN_ERR, align 8
  %12 = icmp sle i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %101

14:                                               ; preds = %1
  %15 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %16 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  store i64* %20, i64** %6, align 8
  %21 = load i64*, i64** %6, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @rpcrdma_version, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  br label %108

27:                                               ; preds = %14
  %28 = load i64*, i64** %6, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 3
  %30 = load i64, i64* %29, align 8
  switch i64 %30, label %35 [
    i64 129, label %31
    i64 128, label %32
    i64 131, label %33
    i64 130, label %34
  ]

31:                                               ; preds = %27
  br label %36

32:                                               ; preds = %27
  br label %36

33:                                               ; preds = %27
  br label %113

34:                                               ; preds = %27
  br label %113

35:                                               ; preds = %27
  br label %116

36:                                               ; preds = %32, %31
  %37 = load i64*, i64** %6, align 8
  %38 = ptrtoint i64* %37 to i64
  %39 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %40 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %38, %41
  %43 = inttoptr i64 %42 to i64*
  store i64* %43, i64** %5, align 8
  %44 = load i64*, i64** %6, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 4
  %46 = load i64*, i64** %5, align 8
  %47 = call i64* @xdr_check_read_list(i64* %45, i64* %46)
  store i64* %47, i64** %4, align 8
  %48 = load i64*, i64** %4, align 8
  %49 = icmp ne i64* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %36
  br label %121

51:                                               ; preds = %36
  %52 = load i64*, i64** %4, align 8
  %53 = load i64*, i64** %5, align 8
  %54 = call i64* @xdr_check_write_list(i64* %52, i64* %53)
  store i64* %54, i64** %4, align 8
  %55 = load i64*, i64** %4, align 8
  %56 = icmp ne i64* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  br label %121

58:                                               ; preds = %51
  %59 = load i64*, i64** %4, align 8
  %60 = load i64*, i64** %5, align 8
  %61 = call i64* @xdr_check_reply_chunk(i64* %59, i64* %60)
  store i64* %61, i64** %4, align 8
  %62 = load i64*, i64** %4, align 8
  %63 = icmp ne i64* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  br label %121

65:                                               ; preds = %58
  %66 = load i64*, i64** %4, align 8
  %67 = load i64*, i64** %5, align 8
  %68 = icmp ugt i64* %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %121

70:                                               ; preds = %65
  %71 = load i64*, i64** %4, align 8
  %72 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %73 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i64* %71, i64** %76, align 8
  %77 = load i64*, i64** %4, align 8
  %78 = ptrtoint i64* %77 to i64
  %79 = load i64*, i64** %6, align 8
  %80 = ptrtoint i64* %79 to i64
  %81 = sub i64 %78, %80
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %85 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = sub i32 %89, %83
  store i32 %90, i32* %88, align 8
  %91 = load i32, i32* %7, align 4
  %92 = zext i32 %91 to i64
  %93 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %94 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = sub nsw i64 %95, %92
  store i64 %96, i64* %94, align 8
  %97 = load i64*, i64** %6, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @trace_svcrdma_decode_rqst(i64* %97, i32 %98)
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %2, align 4
  br label %126

101:                                              ; preds = %13
  %102 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %103 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @trace_svcrdma_decode_short(i64 %104)
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %2, align 4
  br label %126

108:                                              ; preds = %26
  %109 = load i64*, i64** %6, align 8
  %110 = call i32 @trace_svcrdma_decode_badvers(i64* %109)
  %111 = load i32, i32* @EPROTONOSUPPORT, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %2, align 4
  br label %126

113:                                              ; preds = %34, %33
  %114 = load i64*, i64** %6, align 8
  %115 = call i32 @trace_svcrdma_decode_drop(i64* %114)
  store i32 0, i32* %2, align 4
  br label %126

116:                                              ; preds = %35
  %117 = load i64*, i64** %6, align 8
  %118 = call i32 @trace_svcrdma_decode_badproc(i64* %117)
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %2, align 4
  br label %126

121:                                              ; preds = %69, %64, %57, %50
  %122 = load i64*, i64** %6, align 8
  %123 = call i32 @trace_svcrdma_decode_parse(i64* %122)
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %121, %116, %113, %108, %101, %70
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i64* @xdr_check_read_list(i64*, i64*) #1

declare dso_local i64* @xdr_check_write_list(i64*, i64*) #1

declare dso_local i64* @xdr_check_reply_chunk(i64*, i64*) #1

declare dso_local i32 @trace_svcrdma_decode_rqst(i64*, i32) #1

declare dso_local i32 @trace_svcrdma_decode_short(i64) #1

declare dso_local i32 @trace_svcrdma_decode_badvers(i64*) #1

declare dso_local i32 @trace_svcrdma_decode_drop(i64*) #1

declare dso_local i32 @trace_svcrdma_decode_badproc(i64*) #1

declare dso_local i32 @trace_svcrdma_decode_parse(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
