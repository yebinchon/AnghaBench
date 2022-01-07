; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_setattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundres = type { %struct.xdr_stream }
%struct.xdr_stream = type { i32 }
%struct.nfsd4_setattr = type { i32* }

@nfserr_resource = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nfsd4_compoundres*, i64, %struct.nfsd4_setattr*)* @nfsd4_encode_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_encode_setattr(%struct.nfsd4_compoundres* %0, i64 %1, %struct.nfsd4_setattr* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.nfsd4_compoundres*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.nfsd4_setattr*, align 8
  %8 = alloca %struct.xdr_stream*, align 8
  %9 = alloca i64*, align 8
  store %struct.nfsd4_compoundres* %0, %struct.nfsd4_compoundres** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.nfsd4_setattr* %2, %struct.nfsd4_setattr** %7, align 8
  %10 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %11 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %10, i32 0, i32 0
  store %struct.xdr_stream* %11, %struct.xdr_stream** %8, align 8
  %12 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %13 = call i64* @xdr_reserve_space(%struct.xdr_stream* %12, i32 16)
  store i64* %13, i64** %9, align 8
  %14 = load i64*, i64** %9, align 8
  %15 = icmp ne i64* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* @nfserr_resource, align 8
  store i64 %17, i64* %4, align 8
  br label %72

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %18
  %22 = call i8* @cpu_to_be32(i32 3)
  %23 = ptrtoint i8* %22 to i64
  %24 = load i64*, i64** %9, align 8
  %25 = getelementptr inbounds i64, i64* %24, i32 1
  store i64* %25, i64** %9, align 8
  store i64 %23, i64* %24, align 8
  %26 = call i8* @cpu_to_be32(i32 0)
  %27 = ptrtoint i8* %26 to i64
  %28 = load i64*, i64** %9, align 8
  %29 = getelementptr inbounds i64, i64* %28, i32 1
  store i64* %29, i64** %9, align 8
  store i64 %27, i64* %28, align 8
  %30 = call i8* @cpu_to_be32(i32 0)
  %31 = ptrtoint i8* %30 to i64
  %32 = load i64*, i64** %9, align 8
  %33 = getelementptr inbounds i64, i64* %32, i32 1
  store i64* %33, i64** %9, align 8
  store i64 %31, i64* %32, align 8
  %34 = call i8* @cpu_to_be32(i32 0)
  %35 = ptrtoint i8* %34 to i64
  %36 = load i64*, i64** %9, align 8
  %37 = getelementptr inbounds i64, i64* %36, i32 1
  store i64* %37, i64** %9, align 8
  store i64 %35, i64* %36, align 8
  br label %70

38:                                               ; preds = %18
  %39 = call i8* @cpu_to_be32(i32 3)
  %40 = ptrtoint i8* %39 to i64
  %41 = load i64*, i64** %9, align 8
  %42 = getelementptr inbounds i64, i64* %41, i32 1
  store i64* %42, i64** %9, align 8
  store i64 %40, i64* %41, align 8
  %43 = load %struct.nfsd4_setattr*, %struct.nfsd4_setattr** %7, align 8
  %44 = getelementptr inbounds %struct.nfsd4_setattr, %struct.nfsd4_setattr* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @cpu_to_be32(i32 %47)
  %49 = ptrtoint i8* %48 to i64
  %50 = load i64*, i64** %9, align 8
  %51 = getelementptr inbounds i64, i64* %50, i32 1
  store i64* %51, i64** %9, align 8
  store i64 %49, i64* %50, align 8
  %52 = load %struct.nfsd4_setattr*, %struct.nfsd4_setattr** %7, align 8
  %53 = getelementptr inbounds %struct.nfsd4_setattr, %struct.nfsd4_setattr* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @cpu_to_be32(i32 %56)
  %58 = ptrtoint i8* %57 to i64
  %59 = load i64*, i64** %9, align 8
  %60 = getelementptr inbounds i64, i64* %59, i32 1
  store i64* %60, i64** %9, align 8
  store i64 %58, i64* %59, align 8
  %61 = load %struct.nfsd4_setattr*, %struct.nfsd4_setattr** %7, align 8
  %62 = getelementptr inbounds %struct.nfsd4_setattr, %struct.nfsd4_setattr* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @cpu_to_be32(i32 %65)
  %67 = ptrtoint i8* %66 to i64
  %68 = load i64*, i64** %9, align 8
  %69 = getelementptr inbounds i64, i64* %68, i32 1
  store i64* %69, i64** %9, align 8
  store i64 %67, i64* %68, align 8
  br label %70

70:                                               ; preds = %38, %21
  %71 = load i64, i64* %6, align 8
  store i64 %71, i64* %4, align 8
  br label %72

72:                                               ; preds = %70, %16
  %73 = load i64, i64* %4, align 8
  ret i64 %73
}

declare dso_local i64* @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
