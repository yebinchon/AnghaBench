; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd42_encode_write_res.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd42_encode_write_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundres = type { i32 }
%struct.nfsd42_write_res = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@nfserr_resource = common dso_local global i64 0, align 8
@NFS4_VERIFIER_SIZE = common dso_local global i32 0, align 4
@nfs_ok = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nfsd4_compoundres*, %struct.nfsd42_write_res*, i32)* @nfsd42_encode_write_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd42_encode_write_res(%struct.nfsd4_compoundres* %0, %struct.nfsd42_write_res* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.nfsd4_compoundres*, align 8
  %6 = alloca %struct.nfsd42_write_res*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  store %struct.nfsd4_compoundres* %0, %struct.nfsd4_compoundres** %5, align 8
  store %struct.nfsd42_write_res* %1, %struct.nfsd42_write_res** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %11 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %10, i32 0, i32 0
  %12 = call i64* @xdr_reserve_space(i32* %11, i32 4)
  store i64* %12, i64** %8, align 8
  %13 = load i64*, i64** %8, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* @nfserr_resource, align 8
  store i64 %16, i64* %4, align 8
  br label %71

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = call i8* @cpu_to_be32(i32 0)
  %22 = ptrtoint i8* %21 to i64
  %23 = load i64*, i64** %8, align 8
  %24 = getelementptr inbounds i64, i64* %23, i32 1
  store i64* %24, i64** %8, align 8
  store i64 %22, i64* %23, align 8
  br label %40

25:                                               ; preds = %17
  %26 = call i8* @cpu_to_be32(i32 1)
  %27 = ptrtoint i8* %26 to i64
  %28 = load i64*, i64** %8, align 8
  %29 = getelementptr inbounds i64, i64* %28, i32 1
  store i64* %29, i64** %8, align 8
  store i64 %27, i64* %28, align 8
  %30 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %31 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %30, i32 0, i32 0
  %32 = load %struct.nfsd42_write_res*, %struct.nfsd42_write_res** %6, align 8
  %33 = getelementptr inbounds %struct.nfsd42_write_res, %struct.nfsd42_write_res* %32, i32 0, i32 3
  %34 = call i64 @nfsd4_encode_stateid(i32* %31, i32* %33)
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = load i64, i64* %9, align 8
  store i64 %38, i64* %4, align 8
  br label %71

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39, %20
  %41 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %42 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %41, i32 0, i32 0
  %43 = load i32, i32* @NFS4_VERIFIER_SIZE, align 4
  %44 = add nsw i32 12, %43
  %45 = call i64* @xdr_reserve_space(i32* %42, i32 %44)
  store i64* %45, i64** %8, align 8
  %46 = load i64*, i64** %8, align 8
  %47 = icmp ne i64* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %40
  %49 = load i64, i64* @nfserr_resource, align 8
  store i64 %49, i64* %4, align 8
  br label %71

50:                                               ; preds = %40
  %51 = load i64*, i64** %8, align 8
  %52 = load %struct.nfsd42_write_res*, %struct.nfsd42_write_res** %6, align 8
  %53 = getelementptr inbounds %struct.nfsd42_write_res, %struct.nfsd42_write_res* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i64* @xdr_encode_hyper(i64* %51, i32 %54)
  store i64* %55, i64** %8, align 8
  %56 = load %struct.nfsd42_write_res*, %struct.nfsd42_write_res** %6, align 8
  %57 = getelementptr inbounds %struct.nfsd42_write_res, %struct.nfsd42_write_res* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @cpu_to_be32(i32 %58)
  %60 = ptrtoint i8* %59 to i64
  %61 = load i64*, i64** %8, align 8
  %62 = getelementptr inbounds i64, i64* %61, i32 1
  store i64* %62, i64** %8, align 8
  store i64 %60, i64* %61, align 8
  %63 = load i64*, i64** %8, align 8
  %64 = load %struct.nfsd42_write_res*, %struct.nfsd42_write_res** %6, align 8
  %65 = getelementptr inbounds %struct.nfsd42_write_res, %struct.nfsd42_write_res* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @NFS4_VERIFIER_SIZE, align 4
  %69 = call i64* @xdr_encode_opaque_fixed(i64* %63, i32 %67, i32 %68)
  store i64* %69, i64** %8, align 8
  %70 = load i64, i64* @nfs_ok, align 8
  store i64 %70, i64* %4, align 8
  br label %71

71:                                               ; preds = %50, %48, %37, %15
  %72 = load i64, i64* %4, align 8
  ret i64 %72
}

declare dso_local i64* @xdr_reserve_space(i32*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i64 @nfsd4_encode_stateid(i32*, i32*) #1

declare dso_local i64* @xdr_encode_hyper(i64*, i32) #1

declare dso_local i64* @xdr_encode_opaque_fixed(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
