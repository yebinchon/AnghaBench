; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_dec_lookup3res.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_dec_lookup3res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.user_namespace = type { i32 }
%struct.nfs3_diropres = type { i32, i32, i32 }

@NFS3_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, %struct.xdr_stream*, i8*)* @nfs3_xdr_dec_lookup3res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_xdr_dec_lookup3res(%struct.rpc_rqst* %0, %struct.xdr_stream* %1, i8* %2) #0 {
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
  br label %55

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @NFS3_OK, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %57

27:                                               ; preds = %22
  %28 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %29 = load %struct.nfs3_diropres*, %struct.nfs3_diropres** %9, align 8
  %30 = getelementptr inbounds %struct.nfs3_diropres, %struct.nfs3_diropres* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @decode_nfs_fh3(%struct.xdr_stream* %28, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %55

37:                                               ; preds = %27
  %38 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %39 = load %struct.nfs3_diropres*, %struct.nfs3_diropres** %9, align 8
  %40 = getelementptr inbounds %struct.nfs3_diropres, %struct.nfs3_diropres* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.user_namespace*, %struct.user_namespace** %8, align 8
  %43 = call i32 @decode_post_op_attr(%struct.xdr_stream* %38, i32 %41, %struct.user_namespace* %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %55

48:                                               ; preds = %37
  %49 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %50 = load %struct.nfs3_diropres*, %struct.nfs3_diropres** %9, align 8
  %51 = getelementptr inbounds %struct.nfs3_diropres, %struct.nfs3_diropres* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.user_namespace*, %struct.user_namespace** %8, align 8
  %54 = call i32 @decode_post_op_attr(%struct.xdr_stream* %49, i32 %52, %struct.user_namespace* %53)
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %67, %48, %47, %36, %21
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %4, align 4
  br label %71

57:                                               ; preds = %26
  %58 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %59 = load %struct.nfs3_diropres*, %struct.nfs3_diropres** %9, align 8
  %60 = getelementptr inbounds %struct.nfs3_diropres, %struct.nfs3_diropres* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.user_namespace*, %struct.user_namespace** %8, align 8
  %63 = call i32 @decode_post_op_attr(%struct.xdr_stream* %58, i32 %61, %struct.user_namespace* %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %55

68:                                               ; preds = %57
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @nfs3_stat_to_errno(i32 %69)
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %68, %55
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.user_namespace* @rpc_rqst_userns(%struct.rpc_rqst*) #1

declare dso_local i32 @decode_nfsstat3(%struct.xdr_stream*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @decode_nfs_fh3(%struct.xdr_stream*, i32) #1

declare dso_local i32 @decode_post_op_attr(%struct.xdr_stream*, i32, %struct.user_namespace*) #1

declare dso_local i32 @nfs3_stat_to_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
