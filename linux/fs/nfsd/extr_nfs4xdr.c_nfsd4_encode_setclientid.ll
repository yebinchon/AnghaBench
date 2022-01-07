; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_setclientid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_setclientid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundres = type { %struct.xdr_stream }
%struct.xdr_stream = type { i32 }
%struct.nfsd4_setclientid = type { i32, i32 }

@NFS4_VERIFIER_SIZE = common dso_local global i32 0, align 4
@nfserr_resource = common dso_local global i64 0, align 8
@nfserr_clid_inuse = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nfsd4_compoundres*, i64, %struct.nfsd4_setclientid*)* @nfsd4_encode_setclientid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_encode_setclientid(%struct.nfsd4_compoundres* %0, i64 %1, %struct.nfsd4_setclientid* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.nfsd4_compoundres*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.nfsd4_setclientid*, align 8
  %8 = alloca %struct.xdr_stream*, align 8
  %9 = alloca i64*, align 8
  store %struct.nfsd4_compoundres* %0, %struct.nfsd4_compoundres** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.nfsd4_setclientid* %2, %struct.nfsd4_setclientid** %7, align 8
  %10 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %11 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %10, i32 0, i32 0
  store %struct.xdr_stream* %11, %struct.xdr_stream** %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %33, label %14

14:                                               ; preds = %3
  %15 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %16 = load i32, i32* @NFS4_VERIFIER_SIZE, align 4
  %17 = add nsw i32 8, %16
  %18 = call i64* @xdr_reserve_space(%struct.xdr_stream* %15, i32 %17)
  store i64* %18, i64** %9, align 8
  %19 = load i64*, i64** %9, align 8
  %20 = icmp ne i64* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  %22 = load i64, i64* @nfserr_resource, align 8
  store i64 %22, i64* %4, align 8
  br label %56

23:                                               ; preds = %14
  %24 = load i64*, i64** %9, align 8
  %25 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %7, align 8
  %26 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %25, i32 0, i32 1
  %27 = call i64* @xdr_encode_opaque_fixed(i64* %24, i32* %26, i32 8)
  store i64* %27, i64** %9, align 8
  %28 = load i64*, i64** %9, align 8
  %29 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %7, align 8
  %30 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %29, i32 0, i32 0
  %31 = load i32, i32* @NFS4_VERIFIER_SIZE, align 4
  %32 = call i64* @xdr_encode_opaque_fixed(i64* %28, i32* %30, i32 %31)
  store i64* %32, i64** %9, align 8
  br label %54

33:                                               ; preds = %3
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @nfserr_clid_inuse, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %33
  %38 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %39 = call i64* @xdr_reserve_space(%struct.xdr_stream* %38, i32 8)
  store i64* %39, i64** %9, align 8
  %40 = load i64*, i64** %9, align 8
  %41 = icmp ne i64* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = load i64, i64* @nfserr_resource, align 8
  store i64 %43, i64* %4, align 8
  br label %56

44:                                               ; preds = %37
  %45 = call i8* @cpu_to_be32(i32 0)
  %46 = ptrtoint i8* %45 to i64
  %47 = load i64*, i64** %9, align 8
  %48 = getelementptr inbounds i64, i64* %47, i32 1
  store i64* %48, i64** %9, align 8
  store i64 %46, i64* %47, align 8
  %49 = call i8* @cpu_to_be32(i32 0)
  %50 = ptrtoint i8* %49 to i64
  %51 = load i64*, i64** %9, align 8
  %52 = getelementptr inbounds i64, i64* %51, i32 1
  store i64* %52, i64** %9, align 8
  store i64 %50, i64* %51, align 8
  br label %53

53:                                               ; preds = %44, %33
  br label %54

54:                                               ; preds = %53, %23
  %55 = load i64, i64* %6, align 8
  store i64 %55, i64* %4, align 8
  br label %56

56:                                               ; preds = %54, %42, %21
  %57 = load i64, i64* %4, align 8
  ret i64 %57
}

declare dso_local i64* @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i64* @xdr_encode_opaque_fixed(i64*, i32*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
