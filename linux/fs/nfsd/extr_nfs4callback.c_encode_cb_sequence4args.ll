; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4callback.c_encode_cb_sequence4args.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4callback.c_encode_cb_sequence4args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfsd4_callback = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nfsd4_session* }
%struct.nfsd4_session = type { i32 }
%struct.nfs4_cb_compound_hdr = type { i64, i32 }

@OP_CB_SEQUENCE = common dso_local global i32 0, align 4
@xdr_zero = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.nfsd4_callback*, %struct.nfs4_cb_compound_hdr*)* @encode_cb_sequence4args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_cb_sequence4args(%struct.xdr_stream* %0, %struct.nfsd4_callback* %1, %struct.nfs4_cb_compound_hdr* %2) #0 {
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfsd4_callback*, align 8
  %6 = alloca %struct.nfs4_cb_compound_hdr*, align 8
  %7 = alloca %struct.nfsd4_session*, align 8
  %8 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfsd4_callback* %1, %struct.nfsd4_callback** %5, align 8
  store %struct.nfs4_cb_compound_hdr* %2, %struct.nfs4_cb_compound_hdr** %6, align 8
  %9 = load %struct.nfsd4_callback*, %struct.nfsd4_callback** %5, align 8
  %10 = getelementptr inbounds %struct.nfsd4_callback, %struct.nfsd4_callback* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.nfsd4_session*, %struct.nfsd4_session** %12, align 8
  store %struct.nfsd4_session* %13, %struct.nfsd4_session** %7, align 8
  %14 = load %struct.nfs4_cb_compound_hdr*, %struct.nfs4_cb_compound_hdr** %6, align 8
  %15 = getelementptr inbounds %struct.nfs4_cb_compound_hdr, %struct.nfs4_cb_compound_hdr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %52

19:                                               ; preds = %3
  %20 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %21 = load i32, i32* @OP_CB_SEQUENCE, align 4
  %22 = call i32 @encode_nfs_cb_opnum4(%struct.xdr_stream* %20, i32 %21)
  %23 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %24 = load %struct.nfsd4_session*, %struct.nfsd4_session** %7, align 8
  %25 = call i32 @encode_sessionid4(%struct.xdr_stream* %23, %struct.nfsd4_session* %24)
  %26 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %27 = call i32* @xdr_reserve_space(%struct.xdr_stream* %26, i32 20)
  store i32* %27, i32** %8, align 8
  %28 = load %struct.nfsd4_session*, %struct.nfsd4_session** %7, align 8
  %29 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cpu_to_be32(i32 %30)
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %8, align 8
  store i32 %31, i32* %32, align 4
  %34 = load i8*, i8** @xdr_zero, align 8
  %35 = ptrtoint i8* %34 to i32
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %8, align 8
  store i32 %35, i32* %36, align 4
  %38 = load i8*, i8** @xdr_zero, align 8
  %39 = ptrtoint i8* %38 to i32
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %8, align 8
  store i32 %39, i32* %40, align 4
  %42 = load i8*, i8** @xdr_zero, align 8
  %43 = ptrtoint i8* %42 to i32
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %8, align 8
  store i32 %43, i32* %44, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @xdr_encode_empty_array(i32* %46)
  %48 = load %struct.nfs4_cb_compound_hdr*, %struct.nfs4_cb_compound_hdr** %6, align 8
  %49 = getelementptr inbounds %struct.nfs4_cb_compound_hdr, %struct.nfs4_cb_compound_hdr* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @encode_nfs_cb_opnum4(%struct.xdr_stream*, i32) #1

declare dso_local i32 @encode_sessionid4(%struct.xdr_stream*, %struct.nfsd4_session*) #1

declare dso_local i32* @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @xdr_encode_empty_array(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
