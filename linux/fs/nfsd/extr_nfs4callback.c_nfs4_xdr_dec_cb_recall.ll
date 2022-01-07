; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4callback.c_nfs4_xdr_dec_cb_recall.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4callback.c_nfs4_xdr_dec_cb_recall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.nfsd4_callback = type { i32, i64 }
%struct.nfs4_cb_compound_hdr = type { i32 }

@OP_CB_RECALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, %struct.xdr_stream*, i8*)* @nfs4_xdr_dec_cb_recall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_xdr_dec_cb_recall(%struct.rpc_rqst* %0, %struct.xdr_stream* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_rqst*, align 8
  %6 = alloca %struct.xdr_stream*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nfsd4_callback*, align 8
  %9 = alloca %struct.nfs4_cb_compound_hdr, align 4
  %10 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %5, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.nfsd4_callback*
  store %struct.nfsd4_callback* %12, %struct.nfsd4_callback** %8, align 8
  %13 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %14 = call i32 @decode_cb_compound4res(%struct.xdr_stream* %13, %struct.nfs4_cb_compound_hdr* %9)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %4, align 4
  br label %44

20:                                               ; preds = %3
  %21 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %22 = load %struct.nfsd4_callback*, %struct.nfsd4_callback** %8, align 8
  %23 = call i32 @decode_cb_sequence4res(%struct.xdr_stream* %21, %struct.nfsd4_callback* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  %27 = load %struct.nfsd4_callback*, %struct.nfsd4_callback** %8, align 8
  %28 = getelementptr inbounds %struct.nfsd4_callback, %struct.nfsd4_callback* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %26, %20
  %32 = phi i1 [ true, %20 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %4, align 4
  br label %44

38:                                               ; preds = %31
  %39 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %40 = load i32, i32* @OP_CB_RECALL, align 4
  %41 = load %struct.nfsd4_callback*, %struct.nfsd4_callback** %8, align 8
  %42 = getelementptr inbounds %struct.nfsd4_callback, %struct.nfsd4_callback* %41, i32 0, i32 0
  %43 = call i32 @decode_cb_op_status(%struct.xdr_stream* %39, i32 %40, i32* %42)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %38, %36, %18
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @decode_cb_compound4res(%struct.xdr_stream*, %struct.nfs4_cb_compound_hdr*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @decode_cb_sequence4res(%struct.xdr_stream*, %struct.nfsd4_callback*) #1

declare dso_local i32 @decode_cb_op_status(%struct.xdr_stream*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
