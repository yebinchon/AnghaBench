; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfs4svc_encode_compoundres.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfs4svc_encode_compoundres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i64, %struct.nfsd4_compoundres* }
%struct.nfsd4_compoundres = type { i32, i32, i32, i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.xdr_buf* }
%struct.xdr_buf = type { i64, i64, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4svc_encode_compoundres(%struct.svc_rqst* %0, i32* %1) #0 {
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.nfsd4_compoundres*, align 8
  %6 = alloca %struct.xdr_buf*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %8 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %7, i32 0, i32 1
  %9 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %8, align 8
  store %struct.nfsd4_compoundres* %9, %struct.nfsd4_compoundres** %5, align 8
  %10 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %11 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load %struct.xdr_buf*, %struct.xdr_buf** %12, align 8
  store %struct.xdr_buf* %13, %struct.xdr_buf** %6, align 8
  %14 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %15 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %18 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %17, i32 0, i32 3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %24 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %28 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %27, i32 0, i32 2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %26, %32
  %34 = icmp ne i64 %16, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @WARN_ON_ONCE(i32 %35)
  %37 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %38 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  %42 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %43 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %45 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %4, align 8
  %47 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %48 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @htonl(i32 %49)
  %51 = ptrtoint i8* %50 to i32
  %52 = load i32*, i32** %4, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %4, align 8
  store i32 %51, i32* %52, align 4
  %54 = load i32*, i32** %4, align 8
  %55 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %56 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %59 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @memcpy(i32* %54, i32 %57, i32 %60)
  %62 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %63 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @XDR_QUADLEN(i32 %64)
  %66 = load i32*, i32** %4, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32* %68, i32** %4, align 8
  %69 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %70 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i8* @htonl(i32 %71)
  %73 = ptrtoint i8* %72 to i32
  %74 = load i32*, i32** %4, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %4, align 8
  store i32 %73, i32* %74, align 4
  %76 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %77 = call i32 @nfsd4_sequence_done(%struct.nfsd4_compoundres* %76)
  ret i32 1
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @XDR_QUADLEN(i32) #1

declare dso_local i32 @nfsd4_sequence_done(%struct.nfsd4_compoundres*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
