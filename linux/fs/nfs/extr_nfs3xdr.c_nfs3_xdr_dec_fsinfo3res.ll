; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_dec_fsinfo3res.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_dec_fsinfo3res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.nfs_fsinfo = type { i32 }

@NFS3_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, %struct.xdr_stream*, i8*)* @nfs3_xdr_dec_fsinfo3res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_xdr_dec_fsinfo3res(%struct.rpc_rqst* %0, %struct.xdr_stream* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_rqst*, align 8
  %6 = alloca %struct.xdr_stream*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nfs_fsinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %5, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.nfs_fsinfo*
  store %struct.nfs_fsinfo* %12, %struct.nfs_fsinfo** %8, align 8
  %13 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %14 = call i32 @decode_nfsstat3(%struct.xdr_stream* %13, i32* %9)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %40

19:                                               ; preds = %3
  %20 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %21 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %8, align 8
  %22 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %25 = call i32 @rpc_rqst_userns(%struct.rpc_rqst* %24)
  %26 = call i32 @decode_post_op_attr(%struct.xdr_stream* %20, i32 %23, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %40

31:                                               ; preds = %19
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @NFS3_OK, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %42

36:                                               ; preds = %31
  %37 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %38 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %8, align 8
  %39 = call i32 @decode_fsinfo3resok(%struct.xdr_stream* %37, %struct.nfs_fsinfo* %38)
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %36, %30, %18
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %4, align 4
  br label %45

42:                                               ; preds = %35
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @nfs3_stat_to_errno(i32 %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %42, %40
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @decode_nfsstat3(%struct.xdr_stream*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @decode_post_op_attr(%struct.xdr_stream*, i32, i32) #1

declare dso_local i32 @rpc_rqst_userns(%struct.rpc_rqst*) #1

declare dso_local i32 @decode_fsinfo3resok(%struct.xdr_stream*, %struct.nfs_fsinfo*) #1

declare dso_local i32 @nfs3_stat_to_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
