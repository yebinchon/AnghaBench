; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_svcxdr_init_encode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_svcxdr_init_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32, i64, %struct.xdr_buf }
%struct.xdr_buf = type { i32, i64, %struct.kvec*, i64 }
%struct.kvec = type { i64, i64 }
%struct.nfsd4_compoundres = type { %struct.xdr_stream }
%struct.xdr_stream = type { i32, %struct.TYPE_2__, i64, i64, %struct.kvec*, %struct.xdr_buf* }
%struct.TYPE_2__ = type { i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_rqst*, %struct.nfsd4_compoundres*)* @svcxdr_init_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svcxdr_init_encode(%struct.svc_rqst* %0, %struct.nfsd4_compoundres* %1) #0 {
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca %struct.nfsd4_compoundres*, align 8
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca %struct.xdr_buf*, align 8
  %7 = alloca %struct.kvec*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  store %struct.nfsd4_compoundres* %1, %struct.nfsd4_compoundres** %4, align 8
  %8 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %4, align 8
  %9 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %8, i32 0, i32 0
  store %struct.xdr_stream* %9, %struct.xdr_stream** %5, align 8
  %10 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %11 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %10, i32 0, i32 2
  store %struct.xdr_buf* %11, %struct.xdr_buf** %6, align 8
  %12 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %13 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %12, i32 0, i32 2
  %14 = load %struct.kvec*, %struct.kvec** %13, align 8
  store %struct.kvec* %14, %struct.kvec** %7, align 8
  %15 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %16 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %17 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %16, i32 0, i32 5
  store %struct.xdr_buf* %15, %struct.xdr_buf** %17, align 8
  %18 = load %struct.kvec*, %struct.kvec** %7, align 8
  %19 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %20 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %19, i32 0, i32 4
  store %struct.kvec* %18, %struct.kvec** %20, align 8
  %21 = load %struct.kvec*, %struct.kvec** %7, align 8
  %22 = getelementptr inbounds %struct.kvec, %struct.kvec* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.kvec*, %struct.kvec** %7, align 8
  %25 = getelementptr inbounds %struct.kvec, %struct.kvec* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %29 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %28, i32 0, i32 3
  store i64 %27, i64* %29, align 8
  %30 = load %struct.kvec*, %struct.kvec** %7, align 8
  %31 = getelementptr inbounds %struct.kvec, %struct.kvec* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %37 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %35, %38
  %40 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %41 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  %42 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %43 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %42, i32 0, i32 2
  %44 = load %struct.kvec*, %struct.kvec** %43, align 8
  %45 = getelementptr inbounds %struct.kvec, %struct.kvec* %44, i64 0
  %46 = getelementptr inbounds %struct.kvec, %struct.kvec* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %49 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %48, i32 0, i32 3
  store i64 %47, i64* %49, align 8
  %50 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %51 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %54 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %55, 1
  %57 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %58 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @PAGE_SIZE, align 4
  %60 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %61 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 1, %62
  %64 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %65 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %63, %66
  %68 = mul nsw i32 %59, %67
  %69 = sext i32 %68 to i64
  %70 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %71 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %69, %72
  %74 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %75 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
