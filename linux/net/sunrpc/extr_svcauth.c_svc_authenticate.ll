; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svcauth.c_svc_authenticate.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svcauth.c_svc_authenticate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.auth_ops*, i32, i64, %struct.TYPE_2__ }
%struct.auth_ops = type { {}* }
%struct.TYPE_2__ = type { i32* }

@rpc_auth_ok = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"svc: svc_authenticate (%d)\0A\00", align 1
@rpc_autherr_badcred = common dso_local global i32 0, align 4
@SVC_DENIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svc_authenticate(%struct.svc_rqst* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.auth_ops*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @rpc_auth_ok, align 4
  %9 = load i32*, i32** %5, align 8
  store i32 %8, i32* %9, align 4
  %10 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %11 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = call i32 @svc_getnl(i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.auth_ops* @svc_get_auth_ops(i32 %18)
  store %struct.auth_ops* %19, %struct.auth_ops** %7, align 8
  %20 = load %struct.auth_ops*, %struct.auth_ops** %7, align 8
  %21 = icmp eq %struct.auth_ops* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @rpc_autherr_badcred, align 4
  %24 = load i32*, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @SVC_DENIED, align 4
  store i32 %25, i32* %3, align 4
  br label %42

26:                                               ; preds = %2
  %27 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %28 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %30 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %29, i32 0, i32 1
  %31 = call i32 @init_svc_cred(i32* %30)
  %32 = load %struct.auth_ops*, %struct.auth_ops** %7, align 8
  %33 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %34 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %33, i32 0, i32 0
  store %struct.auth_ops* %32, %struct.auth_ops** %34, align 8
  %35 = load %struct.auth_ops*, %struct.auth_ops** %7, align 8
  %36 = getelementptr inbounds %struct.auth_ops, %struct.auth_ops* %35, i32 0, i32 0
  %37 = bitcast {}** %36 to i32 (%struct.svc_rqst*, i32*)**
  %38 = load i32 (%struct.svc_rqst*, i32*)*, i32 (%struct.svc_rqst*, i32*)** %37, align 8
  %39 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 %38(%struct.svc_rqst* %39, i32* %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %26, %22
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @svc_getnl(i32*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local %struct.auth_ops* @svc_get_auth_ops(i32) #1

declare dso_local i32 @init_svc_cred(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
