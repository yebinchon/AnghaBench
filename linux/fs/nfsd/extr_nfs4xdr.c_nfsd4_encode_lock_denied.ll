; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_lock_denied.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_lock_denied.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfsd4_lock_denied = type { i32, i32, i32, i32, %struct.xdr_netobj }
%struct.xdr_netobj = type { i32*, i64 }

@nfserr_resource = common dso_local global i32 0, align 4
@nfserr_denied = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.nfsd4_lock_denied*)* @nfsd4_encode_lock_denied to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_encode_lock_denied(%struct.xdr_stream* %0, %struct.nfsd4_lock_denied* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfsd4_lock_denied*, align 8
  %6 = alloca %struct.xdr_netobj*, align 8
  %7 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfsd4_lock_denied* %1, %struct.nfsd4_lock_denied** %5, align 8
  %8 = load %struct.nfsd4_lock_denied*, %struct.nfsd4_lock_denied** %5, align 8
  %9 = getelementptr inbounds %struct.nfsd4_lock_denied, %struct.nfsd4_lock_denied* %8, i32 0, i32 4
  store %struct.xdr_netobj* %9, %struct.xdr_netobj** %6, align 8
  br label %10

10:                                               ; preds = %25, %2
  %11 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %12 = load %struct.xdr_netobj*, %struct.xdr_netobj** %6, align 8
  %13 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @XDR_LEN(i64 %14)
  %16 = add nsw i64 32, %15
  %17 = call i32* @xdr_reserve_space(%struct.xdr_stream* %11, i64 %16)
  store i32* %17, i32** %7, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %36, label %20

20:                                               ; preds = %10
  %21 = load %struct.xdr_netobj*, %struct.xdr_netobj** %6, align 8
  %22 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load %struct.xdr_netobj*, %struct.xdr_netobj** %6, align 8
  %27 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @kfree(i32* %28)
  %30 = load %struct.xdr_netobj*, %struct.xdr_netobj** %6, align 8
  %31 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.xdr_netobj*, %struct.xdr_netobj** %6, align 8
  %33 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  br label %10

34:                                               ; preds = %20
  %35 = load i32, i32* @nfserr_resource, align 4
  store i32 %35, i32* %3, align 4
  br label %84

36:                                               ; preds = %10
  %37 = load i32*, i32** %7, align 8
  %38 = load %struct.nfsd4_lock_denied*, %struct.nfsd4_lock_denied** %5, align 8
  %39 = getelementptr inbounds %struct.nfsd4_lock_denied, %struct.nfsd4_lock_denied* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32* @xdr_encode_hyper(i32* %37, i32 %40)
  store i32* %41, i32** %7, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load %struct.nfsd4_lock_denied*, %struct.nfsd4_lock_denied** %5, align 8
  %44 = getelementptr inbounds %struct.nfsd4_lock_denied, %struct.nfsd4_lock_denied* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32* @xdr_encode_hyper(i32* %42, i32 %45)
  store i32* %46, i32** %7, align 8
  %47 = load %struct.nfsd4_lock_denied*, %struct.nfsd4_lock_denied** %5, align 8
  %48 = getelementptr inbounds %struct.nfsd4_lock_denied, %struct.nfsd4_lock_denied* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @cpu_to_be32(i32 %49)
  %51 = ptrtoint i8* %50 to i32
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  %54 = load %struct.xdr_netobj*, %struct.xdr_netobj** %6, align 8
  %55 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %36
  %59 = load i32*, i32** %7, align 8
  %60 = load %struct.nfsd4_lock_denied*, %struct.nfsd4_lock_denied** %5, align 8
  %61 = getelementptr inbounds %struct.nfsd4_lock_denied, %struct.nfsd4_lock_denied* %60, i32 0, i32 0
  %62 = call i32* @xdr_encode_opaque_fixed(i32* %59, i32* %61, i32 8)
  store i32* %62, i32** %7, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = load %struct.xdr_netobj*, %struct.xdr_netobj** %6, align 8
  %65 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.xdr_netobj*, %struct.xdr_netobj** %6, align 8
  %68 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i32* @xdr_encode_opaque(i32* %63, i32* %66, i64 %69)
  store i32* %70, i32** %7, align 8
  %71 = load %struct.xdr_netobj*, %struct.xdr_netobj** %6, align 8
  %72 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @kfree(i32* %73)
  br label %82

75:                                               ; preds = %36
  %76 = load i32*, i32** %7, align 8
  %77 = call i32* @xdr_encode_hyper(i32* %76, i32 0)
  store i32* %77, i32** %7, align 8
  %78 = call i8* @cpu_to_be32(i32 0)
  %79 = ptrtoint i8* %78 to i32
  %80 = load i32*, i32** %7, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %7, align 8
  store i32 %79, i32* %80, align 4
  br label %82

82:                                               ; preds = %75, %58
  %83 = load i32, i32* @nfserr_denied, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %82, %34
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32* @xdr_reserve_space(%struct.xdr_stream*, i64) #1

declare dso_local i64 @XDR_LEN(i64) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32* @xdr_encode_hyper(i32*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32* @xdr_encode_opaque_fixed(i32*, i32*, i32) #1

declare dso_local i32* @xdr_encode_opaque(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
