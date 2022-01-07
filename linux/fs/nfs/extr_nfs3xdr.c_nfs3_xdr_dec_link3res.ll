; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_dec_link3res.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_dec_link3res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.user_namespace = type { i32 }
%struct.nfs3_linkres = type { i32, i32 }

@NFS3_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, %struct.xdr_stream*, i8*)* @nfs3_xdr_dec_link3res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_xdr_dec_link3res(%struct.rpc_rqst* %0, %struct.xdr_stream* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_rqst*, align 8
  %6 = alloca %struct.xdr_stream*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.user_namespace*, align 8
  %9 = alloca %struct.nfs3_linkres*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %5, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %13 = call %struct.user_namespace* @rpc_rqst_userns(%struct.rpc_rqst* %12)
  store %struct.user_namespace* %13, %struct.user_namespace** %8, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.nfs3_linkres*
  store %struct.nfs3_linkres* %15, %struct.nfs3_linkres** %9, align 8
  %16 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %17 = call i32 @decode_nfsstat3(%struct.xdr_stream* %16, i32* %10)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %50

22:                                               ; preds = %3
  %23 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %24 = load %struct.nfs3_linkres*, %struct.nfs3_linkres** %9, align 8
  %25 = getelementptr inbounds %struct.nfs3_linkres, %struct.nfs3_linkres* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.user_namespace*, %struct.user_namespace** %8, align 8
  %28 = call i32 @decode_post_op_attr(%struct.xdr_stream* %23, i32 %26, %struct.user_namespace* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %50

33:                                               ; preds = %22
  %34 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %35 = load %struct.nfs3_linkres*, %struct.nfs3_linkres** %9, align 8
  %36 = getelementptr inbounds %struct.nfs3_linkres, %struct.nfs3_linkres* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.user_namespace*, %struct.user_namespace** %8, align 8
  %39 = call i32 @decode_wcc_data(%struct.xdr_stream* %34, i32 %37, %struct.user_namespace* %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %50

44:                                               ; preds = %33
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @NFS3_OK, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %52

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %49, %43, %32, %21
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %4, align 4
  br label %55

52:                                               ; preds = %48
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @nfs3_stat_to_errno(i32 %53)
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %52, %50
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.user_namespace* @rpc_rqst_userns(%struct.rpc_rqst*) #1

declare dso_local i32 @decode_nfsstat3(%struct.xdr_stream*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @decode_post_op_attr(%struct.xdr_stream*, i32, %struct.user_namespace*) #1

declare dso_local i32 @decode_wcc_data(%struct.xdr_stream*, i32, %struct.user_namespace*) #1

declare dso_local i32 @nfs3_stat_to_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
