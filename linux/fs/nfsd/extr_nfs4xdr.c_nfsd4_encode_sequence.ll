; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundres = type { %struct.TYPE_5__, %struct.xdr_stream }
%struct.TYPE_5__ = type { i32 }
%struct.xdr_stream = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.nfsd4_sequence = type { i64, i64, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@NFS4_MAX_SESSIONID_LEN = common dso_local global i64 0, align 8
@nfserr_resource = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd4_compoundres*, i32, %struct.nfsd4_sequence*)* @nfsd4_encode_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_encode_sequence(%struct.nfsd4_compoundres* %0, i32 %1, %struct.nfsd4_sequence* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfsd4_compoundres*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfsd4_sequence*, align 8
  %8 = alloca %struct.xdr_stream*, align 8
  %9 = alloca i32*, align 8
  store %struct.nfsd4_compoundres* %0, %struct.nfsd4_compoundres** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nfsd4_sequence* %2, %struct.nfsd4_sequence** %7, align 8
  %10 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %11 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %10, i32 0, i32 1
  store %struct.xdr_stream* %11, %struct.xdr_stream** %8, align 8
  %12 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %13 = load i64, i64* @NFS4_MAX_SESSIONID_LEN, align 8
  %14 = add nsw i64 %13, 20
  %15 = call i32* @xdr_reserve_space(%struct.xdr_stream* %12, i64 %14)
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @nfserr_resource, align 4
  store i32 %19, i32* %4, align 4
  br label %73

20:                                               ; preds = %3
  %21 = load i32*, i32** %9, align 8
  %22 = load %struct.nfsd4_sequence*, %struct.nfsd4_sequence** %7, align 8
  %23 = getelementptr inbounds %struct.nfsd4_sequence, %struct.nfsd4_sequence* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* @NFS4_MAX_SESSIONID_LEN, align 8
  %27 = call i32* @xdr_encode_opaque_fixed(i32* %21, i32 %25, i64 %26)
  store i32* %27, i32** %9, align 8
  %28 = load %struct.nfsd4_sequence*, %struct.nfsd4_sequence** %7, align 8
  %29 = getelementptr inbounds %struct.nfsd4_sequence, %struct.nfsd4_sequence* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = call i8* @cpu_to_be32(i64 %30)
  %32 = ptrtoint i8* %31 to i32
  %33 = load i32*, i32** %9, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %9, align 8
  store i32 %32, i32* %33, align 4
  %35 = load %struct.nfsd4_sequence*, %struct.nfsd4_sequence** %7, align 8
  %36 = getelementptr inbounds %struct.nfsd4_sequence, %struct.nfsd4_sequence* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = call i8* @cpu_to_be32(i64 %37)
  %39 = ptrtoint i8* %38 to i32
  %40 = load i32*, i32** %9, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %9, align 8
  store i32 %39, i32* %40, align 4
  %42 = load %struct.nfsd4_sequence*, %struct.nfsd4_sequence** %7, align 8
  %43 = getelementptr inbounds %struct.nfsd4_sequence, %struct.nfsd4_sequence* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %44, 1
  %46 = call i8* @cpu_to_be32(i64 %45)
  %47 = ptrtoint i8* %46 to i32
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %9, align 8
  store i32 %47, i32* %48, align 4
  %50 = load %struct.nfsd4_sequence*, %struct.nfsd4_sequence** %7, align 8
  %51 = getelementptr inbounds %struct.nfsd4_sequence, %struct.nfsd4_sequence* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %52, 1
  %54 = call i8* @cpu_to_be32(i64 %53)
  %55 = ptrtoint i8* %54 to i32
  %56 = load i32*, i32** %9, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %9, align 8
  store i32 %55, i32* %56, align 4
  %58 = load %struct.nfsd4_sequence*, %struct.nfsd4_sequence** %7, align 8
  %59 = getelementptr inbounds %struct.nfsd4_sequence, %struct.nfsd4_sequence* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i8* @cpu_to_be32(i64 %60)
  %62 = ptrtoint i8* %61 to i32
  %63 = load i32*, i32** %9, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %9, align 8
  store i32 %62, i32* %63, align 4
  %65 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %66 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %71 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %20, %18
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32* @xdr_reserve_space(%struct.xdr_stream*, i64) #1

declare dso_local i32* @xdr_encode_opaque_fixed(i32*, i32, i64) #1

declare dso_local i8* @cpu_to_be32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
