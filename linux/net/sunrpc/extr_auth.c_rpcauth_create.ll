; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_auth.c_rpcauth_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_auth.c_rpcauth_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_auth = type { i32 }
%struct.rpc_auth_create_args = type { i32 }
%struct.rpc_clnt = type { %struct.rpc_auth* }
%struct.rpc_authops = type { %struct.rpc_auth* (%struct.rpc_auth_create_args.0*, %struct.rpc_clnt*)* }
%struct.rpc_auth_create_args.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_auth* @rpcauth_create(%struct.rpc_auth_create_args* %0, %struct.rpc_clnt* %1) #0 {
  %3 = alloca %struct.rpc_auth*, align 8
  %4 = alloca %struct.rpc_auth_create_args*, align 8
  %5 = alloca %struct.rpc_clnt*, align 8
  %6 = alloca %struct.rpc_auth*, align 8
  %7 = alloca %struct.rpc_authops*, align 8
  %8 = alloca i32, align 4
  store %struct.rpc_auth_create_args* %0, %struct.rpc_auth_create_args** %4, align 8
  store %struct.rpc_clnt* %1, %struct.rpc_clnt** %5, align 8
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  %11 = call %struct.rpc_auth* @ERR_PTR(i32 %10)
  store %struct.rpc_auth* %11, %struct.rpc_auth** %6, align 8
  %12 = load %struct.rpc_auth_create_args*, %struct.rpc_auth_create_args** %4, align 8
  %13 = getelementptr inbounds %struct.rpc_auth_create_args, %struct.rpc_auth_create_args* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pseudoflavor_to_flavor(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.rpc_authops* @rpcauth_get_authops(i32 %16)
  store %struct.rpc_authops* %17, %struct.rpc_authops** %7, align 8
  %18 = load %struct.rpc_authops*, %struct.rpc_authops** %7, align 8
  %19 = icmp eq %struct.rpc_authops* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %50

21:                                               ; preds = %2
  %22 = load %struct.rpc_authops*, %struct.rpc_authops** %7, align 8
  %23 = getelementptr inbounds %struct.rpc_authops, %struct.rpc_authops* %22, i32 0, i32 0
  %24 = load %struct.rpc_auth* (%struct.rpc_auth_create_args.0*, %struct.rpc_clnt*)*, %struct.rpc_auth* (%struct.rpc_auth_create_args.0*, %struct.rpc_clnt*)** %23, align 8
  %25 = load %struct.rpc_auth_create_args*, %struct.rpc_auth_create_args** %4, align 8
  %26 = bitcast %struct.rpc_auth_create_args* %25 to %struct.rpc_auth_create_args.0*
  %27 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %28 = call %struct.rpc_auth* %24(%struct.rpc_auth_create_args.0* %26, %struct.rpc_clnt* %27)
  store %struct.rpc_auth* %28, %struct.rpc_auth** %6, align 8
  %29 = load %struct.rpc_authops*, %struct.rpc_authops** %7, align 8
  %30 = call i32 @rpcauth_put_authops(%struct.rpc_authops* %29)
  %31 = load %struct.rpc_auth*, %struct.rpc_auth** %6, align 8
  %32 = call i64 @IS_ERR(%struct.rpc_auth* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %21
  %35 = load %struct.rpc_auth*, %struct.rpc_auth** %6, align 8
  store %struct.rpc_auth* %35, %struct.rpc_auth** %3, align 8
  br label %52

36:                                               ; preds = %21
  %37 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %38 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %37, i32 0, i32 0
  %39 = load %struct.rpc_auth*, %struct.rpc_auth** %38, align 8
  %40 = icmp ne %struct.rpc_auth* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %43 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %42, i32 0, i32 0
  %44 = load %struct.rpc_auth*, %struct.rpc_auth** %43, align 8
  %45 = call i32 @rpcauth_release(%struct.rpc_auth* %44)
  br label %46

46:                                               ; preds = %41, %36
  %47 = load %struct.rpc_auth*, %struct.rpc_auth** %6, align 8
  %48 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %49 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %48, i32 0, i32 0
  store %struct.rpc_auth* %47, %struct.rpc_auth** %49, align 8
  br label %50

50:                                               ; preds = %46, %20
  %51 = load %struct.rpc_auth*, %struct.rpc_auth** %6, align 8
  store %struct.rpc_auth* %51, %struct.rpc_auth** %3, align 8
  br label %52

52:                                               ; preds = %50, %34
  %53 = load %struct.rpc_auth*, %struct.rpc_auth** %3, align 8
  ret %struct.rpc_auth* %53
}

declare dso_local %struct.rpc_auth* @ERR_PTR(i32) #1

declare dso_local i32 @pseudoflavor_to_flavor(i32) #1

declare dso_local %struct.rpc_authops* @rpcauth_get_authops(i32) #1

declare dso_local i32 @rpcauth_put_authops(%struct.rpc_authops*) #1

declare dso_local i64 @IS_ERR(%struct.rpc_auth*) #1

declare dso_local i32 @rpcauth_release(%struct.rpc_auth*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
