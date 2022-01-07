; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svcauth_unix.c_svcauth_null_accept.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svcauth_unix.c_svcauth_null_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.svc_cred, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.svc_cred = type { i32, i32*, i32, i32 }
%struct.TYPE_4__ = type { %struct.kvec* }
%struct.kvec = type { i32 }
%struct.TYPE_3__ = type { %struct.kvec* }

@SVC_GARBAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"svc: bad null cred\0A\00", align 1
@rpc_autherr_badcred = common dso_local global i32 0, align 4
@SVC_DENIED = common dso_local global i32 0, align 4
@RPC_AUTH_NULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"svc: bad null verf\0A\00", align 1
@rpc_autherr_badverf = common dso_local global i32 0, align 4
@INVALID_UID = common dso_local global i32 0, align 4
@INVALID_GID = common dso_local global i32 0, align 4
@SVC_CLOSE = common dso_local global i32 0, align 4
@SVC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, i32*)* @svcauth_null_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svcauth_null_accept(%struct.svc_rqst* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.kvec*, align 8
  %7 = alloca %struct.kvec*, align 8
  %8 = alloca %struct.svc_cred*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %10 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.kvec*, %struct.kvec** %11, align 8
  %13 = getelementptr inbounds %struct.kvec, %struct.kvec* %12, i64 0
  store %struct.kvec* %13, %struct.kvec** %6, align 8
  %14 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %15 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.kvec*, %struct.kvec** %16, align 8
  %18 = getelementptr inbounds %struct.kvec, %struct.kvec* %17, i64 0
  store %struct.kvec* %18, %struct.kvec** %7, align 8
  %19 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %20 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %19, i32 0, i32 0
  store %struct.svc_cred* %20, %struct.svc_cred** %8, align 8
  %21 = load %struct.kvec*, %struct.kvec** %6, align 8
  %22 = getelementptr inbounds %struct.kvec, %struct.kvec* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %23, 12
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @SVC_GARBAGE, align 4
  store i32 %26, i32* %3, align 4
  br label %78

27:                                               ; preds = %2
  %28 = load %struct.kvec*, %struct.kvec** %6, align 8
  %29 = call i64 @svc_getu32(%struct.kvec* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = call i32 @dprintk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @rpc_autherr_badcred, align 4
  %34 = load i32*, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @SVC_DENIED, align 4
  store i32 %35, i32* %3, align 4
  br label %78

36:                                               ; preds = %27
  %37 = load %struct.kvec*, %struct.kvec** %6, align 8
  %38 = call i64 @svc_getu32(%struct.kvec* %37)
  %39 = load i32, i32* @RPC_AUTH_NULL, align 4
  %40 = call i64 @htonl(i32 %39)
  %41 = icmp ne i64 %38, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %36
  %43 = load %struct.kvec*, %struct.kvec** %6, align 8
  %44 = call i64 @svc_getu32(%struct.kvec* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42, %36
  %47 = call i32 @dprintk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @rpc_autherr_badverf, align 4
  %49 = load i32*, i32** %5, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* @SVC_DENIED, align 4
  store i32 %50, i32* %3, align 4
  br label %78

51:                                               ; preds = %42
  %52 = load i32, i32* @INVALID_UID, align 4
  %53 = load %struct.svc_cred*, %struct.svc_cred** %8, align 8
  %54 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @INVALID_GID, align 4
  %56 = load %struct.svc_cred*, %struct.svc_cred** %8, align 8
  %57 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = call i32* @groups_alloc(i32 0)
  %59 = load %struct.svc_cred*, %struct.svc_cred** %8, align 8
  %60 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %59, i32 0, i32 1
  store i32* %58, i32** %60, align 8
  %61 = load %struct.svc_cred*, %struct.svc_cred** %8, align 8
  %62 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %51
  %66 = load i32, i32* @SVC_CLOSE, align 4
  store i32 %66, i32* %3, align 4
  br label %78

67:                                               ; preds = %51
  %68 = load %struct.kvec*, %struct.kvec** %7, align 8
  %69 = load i32, i32* @RPC_AUTH_NULL, align 4
  %70 = call i32 @svc_putnl(%struct.kvec* %68, i32 %69)
  %71 = load %struct.kvec*, %struct.kvec** %7, align 8
  %72 = call i32 @svc_putnl(%struct.kvec* %71, i32 0)
  %73 = load i32, i32* @RPC_AUTH_NULL, align 4
  %74 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %75 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 8
  %77 = load i32, i32* @SVC_OK, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %67, %65, %46, %31, %25
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i64 @svc_getu32(%struct.kvec*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local i32* @groups_alloc(i32) #1

declare dso_local i32 @svc_putnl(%struct.kvec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
