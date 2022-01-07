; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_getfh.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_getfh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundres = type { %struct.xdr_stream }
%struct.xdr_stream = type { i32 }
%struct.svc_fh = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@nfserr_resource = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd4_compoundres*, i32, %struct.svc_fh**)* @nfsd4_encode_getfh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_encode_getfh(%struct.nfsd4_compoundres* %0, i32 %1, %struct.svc_fh** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfsd4_compoundres*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.svc_fh**, align 8
  %8 = alloca %struct.xdr_stream*, align 8
  %9 = alloca %struct.svc_fh*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.nfsd4_compoundres* %0, %struct.nfsd4_compoundres** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.svc_fh** %2, %struct.svc_fh*** %7, align 8
  %12 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %13 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %12, i32 0, i32 0
  store %struct.xdr_stream* %13, %struct.xdr_stream** %8, align 8
  %14 = load %struct.svc_fh**, %struct.svc_fh*** %7, align 8
  %15 = load %struct.svc_fh*, %struct.svc_fh** %14, align 8
  store %struct.svc_fh* %15, %struct.svc_fh** %9, align 8
  %16 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %17 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %21 = load i32, i32* %10, align 4
  %22 = add i32 %21, 4
  %23 = call i32* @xdr_reserve_space(%struct.xdr_stream* %20, i32 %22)
  store i32* %23, i32** %11, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @nfserr_resource, align 4
  store i32 %27, i32* %4, align 4
  br label %35

28:                                               ; preds = %3
  %29 = load i32*, i32** %11, align 8
  %30 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %31 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %10, align 4
  %34 = call i32* @xdr_encode_opaque(i32* %29, i32* %32, i32 %33)
  store i32* %34, i32** %11, align 8
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %28, %26
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32* @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i32* @xdr_encode_opaque(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
