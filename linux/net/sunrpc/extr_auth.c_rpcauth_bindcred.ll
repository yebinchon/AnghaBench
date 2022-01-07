; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_auth.c_rpcauth_bindcred.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_auth.c_rpcauth_bindcred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32 }
%struct.TYPE_6__ = type { %struct.rpc_cred* (i32*, i32*, i32)* }
%struct.rpc_cred = type { i32 }
%struct.rpc_task = type { i64, %struct.TYPE_4__*, %struct.rpc_rqst* }
%struct.TYPE_4__ = type { %struct.rpc_auth* }
%struct.rpc_auth = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.rpc_cred* (%struct.rpc_auth*, %struct.auth_cred*, i32)* }
%struct.auth_cred = type { %struct.cred* }
%struct.rpc_rqst = type { %struct.rpc_cred* }

@RPC_TASK_ASYNC = common dso_local global i32 0, align 4
@RPCAUTH_LOOKUP_NEW = common dso_local global i32 0, align 4
@machine_cred = common dso_local global %struct.cred zeroinitializer, align 4
@RPC_TASK_ROOTCREDS = common dso_local global i32 0, align 4
@RPC_TASK_NULLCREDS = common dso_local global i32 0, align 4
@authnull_ops = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_task*, %struct.cred*, i32)* @rpcauth_bindcred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcauth_bindcred(%struct.rpc_task* %0, %struct.cred* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_task*, align 8
  %6 = alloca %struct.cred*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rpc_rqst*, align 8
  %9 = alloca %struct.rpc_cred*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rpc_auth*, align 8
  %12 = alloca %struct.auth_cred, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %5, align 8
  store %struct.cred* %1, %struct.cred** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %14 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %13, i32 0, i32 2
  %15 = load %struct.rpc_rqst*, %struct.rpc_rqst** %14, align 8
  store %struct.rpc_rqst* %15, %struct.rpc_rqst** %8, align 8
  store %struct.rpc_cred* null, %struct.rpc_cred** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %17 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.rpc_auth*, %struct.rpc_auth** %19, align 8
  store %struct.rpc_auth* %20, %struct.rpc_auth** %11, align 8
  %21 = getelementptr inbounds %struct.auth_cred, %struct.auth_cred* %12, i32 0, i32 0
  %22 = load %struct.cred*, %struct.cred** %6, align 8
  store %struct.cred* %22, %struct.cred** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @RPC_TASK_ASYNC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load i32, i32* @RPCAUTH_LOOKUP_NEW, align 4
  %29 = load i32, i32* %10, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %27, %3
  %32 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %33 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %38 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call %struct.rpc_cred* @get_rpccred(i64 %39)
  store %struct.rpc_cred* %40, %struct.rpc_cred** %9, align 8
  br label %65

41:                                               ; preds = %31
  %42 = load %struct.cred*, %struct.cred** %6, align 8
  %43 = icmp ne %struct.cred* %42, null
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load %struct.cred*, %struct.cred** %6, align 8
  %46 = icmp ne %struct.cred* %45, @machine_cred
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load %struct.rpc_auth*, %struct.rpc_auth** %11, align 8
  %49 = getelementptr inbounds %struct.rpc_auth, %struct.rpc_auth* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.rpc_cred* (%struct.rpc_auth*, %struct.auth_cred*, i32)*, %struct.rpc_cred* (%struct.rpc_auth*, %struct.auth_cred*, i32)** %51, align 8
  %53 = load %struct.rpc_auth*, %struct.rpc_auth** %11, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call %struct.rpc_cred* %52(%struct.rpc_auth* %53, %struct.auth_cred* %12, i32 %54)
  store %struct.rpc_cred* %55, %struct.rpc_cred** %9, align 8
  br label %64

56:                                               ; preds = %44, %41
  %57 = load %struct.cred*, %struct.cred** %6, align 8
  %58 = icmp eq %struct.cred* %57, @machine_cred
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call %struct.rpc_cred* @rpcauth_bind_machine_cred(%struct.rpc_task* %60, i32 %61)
  store %struct.rpc_cred* %62, %struct.rpc_cred** %9, align 8
  br label %63

63:                                               ; preds = %59, %56
  br label %64

64:                                               ; preds = %63, %47
  br label %65

65:                                               ; preds = %64, %36
  %66 = load %struct.rpc_cred*, %struct.rpc_cred** %9, align 8
  %67 = icmp ne %struct.rpc_cred* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %95

69:                                               ; preds = %65
  %70 = load %struct.cred*, %struct.cred** %6, align 8
  %71 = icmp eq %struct.cred* %70, @machine_cred
  br i1 %71, label %77, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @RPC_TASK_ROOTCREDS, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72, %69
  %78 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call %struct.rpc_cred* @rpcauth_bind_root_cred(%struct.rpc_task* %78, i32 %79)
  store %struct.rpc_cred* %80, %struct.rpc_cred** %9, align 8
  br label %94

81:                                               ; preds = %72
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @RPC_TASK_NULLCREDS, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load %struct.rpc_cred* (i32*, i32*, i32)*, %struct.rpc_cred* (i32*, i32*, i32)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @authnull_ops, i32 0, i32 0), align 8
  %88 = call %struct.rpc_cred* %87(i32* null, i32* null, i32 0)
  store %struct.rpc_cred* %88, %struct.rpc_cred** %9, align 8
  br label %93

89:                                               ; preds = %81
  %90 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call %struct.rpc_cred* @rpcauth_bind_new_cred(%struct.rpc_task* %90, i32 %91)
  store %struct.rpc_cred* %92, %struct.rpc_cred** %9, align 8
  br label %93

93:                                               ; preds = %89, %86
  br label %94

94:                                               ; preds = %93, %77
  br label %95

95:                                               ; preds = %94, %68
  %96 = load %struct.rpc_cred*, %struct.rpc_cred** %9, align 8
  %97 = call i64 @IS_ERR(%struct.rpc_cred* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load %struct.rpc_cred*, %struct.rpc_cred** %9, align 8
  %101 = call i32 @PTR_ERR(%struct.rpc_cred* %100)
  store i32 %101, i32* %4, align 4
  br label %110

102:                                              ; preds = %95
  %103 = load %struct.rpc_rqst*, %struct.rpc_rqst** %8, align 8
  %104 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %103, i32 0, i32 0
  %105 = load %struct.rpc_cred*, %struct.rpc_cred** %104, align 8
  %106 = call i32 @put_rpccred(%struct.rpc_cred* %105)
  %107 = load %struct.rpc_cred*, %struct.rpc_cred** %9, align 8
  %108 = load %struct.rpc_rqst*, %struct.rpc_rqst** %8, align 8
  %109 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %108, i32 0, i32 0
  store %struct.rpc_cred* %107, %struct.rpc_cred** %109, align 8
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %102, %99
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local %struct.rpc_cred* @get_rpccred(i64) #1

declare dso_local %struct.rpc_cred* @rpcauth_bind_machine_cred(%struct.rpc_task*, i32) #1

declare dso_local %struct.rpc_cred* @rpcauth_bind_root_cred(%struct.rpc_task*, i32) #1

declare dso_local %struct.rpc_cred* @rpcauth_bind_new_cred(%struct.rpc_task*, i32) #1

declare dso_local i64 @IS_ERR(%struct.rpc_cred*) #1

declare dso_local i32 @PTR_ERR(%struct.rpc_cred*) #1

declare dso_local i32 @put_rpccred(%struct.rpc_cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
