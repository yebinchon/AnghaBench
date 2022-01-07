; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_dec_create3res.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_dec_create3res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.user_namespace = type { i32 }
%struct.nfs3_diropres = type { i32 }

@NFS3_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, %struct.xdr_stream*, i8*)* @nfs3_xdr_dec_create3res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_xdr_dec_create3res(%struct.rpc_rqst* %0, %struct.xdr_stream* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_rqst*, align 8
  %6 = alloca %struct.xdr_stream*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.user_namespace*, align 8
  %9 = alloca %struct.nfs3_diropres*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %5, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %13 = call %struct.user_namespace* @rpc_rqst_userns(%struct.rpc_rqst* %12)
  store %struct.user_namespace* %13, %struct.user_namespace** %8, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.nfs3_diropres*
  store %struct.nfs3_diropres* %15, %struct.nfs3_diropres** %9, align 8
  %16 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %17 = call i32 @decode_nfsstat3(%struct.xdr_stream* %16, i32* %10)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %32

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @NFS3_OK, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %34

27:                                               ; preds = %22
  %28 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %29 = load %struct.nfs3_diropres*, %struct.nfs3_diropres** %9, align 8
  %30 = load %struct.user_namespace*, %struct.user_namespace** %8, align 8
  %31 = call i32 @decode_create3resok(%struct.xdr_stream* %28, %struct.nfs3_diropres* %29, %struct.user_namespace* %30)
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %44, %27, %21
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %4, align 4
  br label %48

34:                                               ; preds = %26
  %35 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %36 = load %struct.nfs3_diropres*, %struct.nfs3_diropres** %9, align 8
  %37 = getelementptr inbounds %struct.nfs3_diropres, %struct.nfs3_diropres* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.user_namespace*, %struct.user_namespace** %8, align 8
  %40 = call i32 @decode_wcc_data(%struct.xdr_stream* %35, i32 %38, %struct.user_namespace* %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %32

45:                                               ; preds = %34
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @nfs3_stat_to_errno(i32 %46)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %45, %32
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.user_namespace* @rpc_rqst_userns(%struct.rpc_rqst*) #1

declare dso_local i32 @decode_nfsstat3(%struct.xdr_stream*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @decode_create3resok(%struct.xdr_stream*, %struct.nfs3_diropres*, %struct.user_namespace*) #1

declare dso_local i32 @decode_wcc_data(%struct.xdr_stream*, i32, %struct.user_namespace*) #1

declare dso_local i32 @nfs3_stat_to_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
