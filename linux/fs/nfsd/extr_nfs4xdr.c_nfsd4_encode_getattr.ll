; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_getattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundres = type { i32, %struct.xdr_stream }
%struct.xdr_stream = type { i32 }
%struct.nfsd4_getattr = type { i32, %struct.svc_fh* }
%struct.svc_fh = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd4_compoundres*, i32, %struct.nfsd4_getattr*)* @nfsd4_encode_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_encode_getattr(%struct.nfsd4_compoundres* %0, i32 %1, %struct.nfsd4_getattr* %2) #0 {
  %4 = alloca %struct.nfsd4_compoundres*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfsd4_getattr*, align 8
  %7 = alloca %struct.svc_fh*, align 8
  %8 = alloca %struct.xdr_stream*, align 8
  store %struct.nfsd4_compoundres* %0, %struct.nfsd4_compoundres** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nfsd4_getattr* %2, %struct.nfsd4_getattr** %6, align 8
  %9 = load %struct.nfsd4_getattr*, %struct.nfsd4_getattr** %6, align 8
  %10 = getelementptr inbounds %struct.nfsd4_getattr, %struct.nfsd4_getattr* %9, i32 0, i32 1
  %11 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  store %struct.svc_fh* %11, %struct.svc_fh** %7, align 8
  %12 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %4, align 8
  %13 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %12, i32 0, i32 1
  store %struct.xdr_stream* %13, %struct.xdr_stream** %8, align 8
  %14 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %15 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %16 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %17 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %20 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.nfsd4_getattr*, %struct.nfsd4_getattr** %6, align 8
  %23 = getelementptr inbounds %struct.nfsd4_getattr, %struct.nfsd4_getattr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %4, align 8
  %26 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @nfsd4_encode_fattr(%struct.xdr_stream* %14, %struct.svc_fh* %15, i32 %18, i32 %21, i32 %24, i32 %27, i32 0)
  ret i32 %28
}

declare dso_local i32 @nfsd4_encode_fattr(%struct.xdr_stream*, %struct.svc_fh*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
