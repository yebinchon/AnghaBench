; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4callback.c_encode_offload_info4.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4callback.c_encode_offload_info4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfsd4_copy = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@NFS4_VERIFIER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, i32, %struct.nfsd4_copy*)* @encode_offload_info4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_offload_info4(%struct.xdr_stream* %0, i32 %1, %struct.nfsd4_copy* %2) #0 {
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfsd4_copy*, align 8
  %7 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nfsd4_copy* %2, %struct.nfsd4_copy** %6, align 8
  %8 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %9 = call i32* @xdr_reserve_space(%struct.xdr_stream* %8, i32 4)
  store i32* %9, i32** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32*, i32** %7, align 8
  %12 = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %12, i32** %7, align 8
  store i32 %10, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %43, label %15

15:                                               ; preds = %3
  %16 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %17 = load i32, i32* @NFS4_VERIFIER_SIZE, align 4
  %18 = add nsw i32 16, %17
  %19 = call i32* @xdr_reserve_space(%struct.xdr_stream* %16, i32 %18)
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32* @xdr_encode_empty_array(i32* %20)
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %6, align 8
  %24 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32* @xdr_encode_hyper(i32* %22, i32 %26)
  store i32* %27, i32** %7, align 8
  %28 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %6, align 8
  %29 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @cpu_to_be32(i32 %31)
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %6, align 8
  %37 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @NFS4_VERIFIER_SIZE, align 4
  %42 = call i32* @xdr_encode_opaque_fixed(i32* %35, i32 %40, i32 %41)
  store i32* %42, i32** %7, align 8
  br label %48

43:                                               ; preds = %3
  %44 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %45 = call i32* @xdr_reserve_space(%struct.xdr_stream* %44, i32 8)
  store i32* %45, i32** %7, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i32* @xdr_encode_hyper(i32* %46, i32 0)
  store i32* %47, i32** %7, align 8
  br label %48

48:                                               ; preds = %43, %15
  ret void
}

declare dso_local i32* @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i32* @xdr_encode_empty_array(i32*) #1

declare dso_local i32* @xdr_encode_hyper(i32*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32* @xdr_encode_opaque_fixed(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
