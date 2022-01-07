; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_dec_readdir3res.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_dec_readdir3res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.nfs3_readdirres = type { i32 }

@NFS3_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, %struct.xdr_stream*, i8*)* @nfs3_xdr_dec_readdir3res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_xdr_dec_readdir3res(%struct.rpc_rqst* %0, %struct.xdr_stream* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_rqst*, align 8
  %6 = alloca %struct.xdr_stream*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nfs3_readdirres*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %5, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.nfs3_readdirres*
  store %struct.nfs3_readdirres* %12, %struct.nfs3_readdirres** %8, align 8
  %13 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %14 = call i32 @decode_nfsstat3(%struct.xdr_stream* %13, i32* %9)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %30

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @NFS3_OK, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %32

24:                                               ; preds = %19
  %25 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %26 = load %struct.nfs3_readdirres*, %struct.nfs3_readdirres** %8, align 8
  %27 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %28 = call i32 @rpc_rqst_userns(%struct.rpc_rqst* %27)
  %29 = call i32 @decode_readdir3resok(%struct.xdr_stream* %25, %struct.nfs3_readdirres* %26, i32 %28)
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %43, %24, %18
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %4, align 4
  br label %47

32:                                               ; preds = %23
  %33 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %34 = load %struct.nfs3_readdirres*, %struct.nfs3_readdirres** %8, align 8
  %35 = getelementptr inbounds %struct.nfs3_readdirres, %struct.nfs3_readdirres* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %38 = call i32 @rpc_rqst_userns(%struct.rpc_rqst* %37)
  %39 = call i32 @decode_post_op_attr(%struct.xdr_stream* %33, i32 %36, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %30

44:                                               ; preds = %32
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @nfs3_stat_to_errno(i32 %45)
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %44, %30
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @decode_nfsstat3(%struct.xdr_stream*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @decode_readdir3resok(%struct.xdr_stream*, %struct.nfs3_readdirres*, i32) #1

declare dso_local i32 @rpc_rqst_userns(%struct.rpc_rqst*) #1

declare dso_local i32 @decode_post_op_attr(%struct.xdr_stream*, i32, i32) #1

declare dso_local i32 @nfs3_stat_to_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
