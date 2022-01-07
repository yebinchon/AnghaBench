; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_check_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_check_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32, %struct.TYPE_4__*, i32, i32, i32, %struct.rpc_clnt* }
%struct.TYPE_4__ = type { i32 }
%struct.rpc_clnt = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"RPC: %5u call_timeout (major)\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@RPC_TASK_NO_RETRANS_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"%s: server %s not responding, timed out\0A\00", align 1
@RPC_TASK_TIMEOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@RPC_CALL_MAJORSEEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"%s: server %s not responding, still trying\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*)* @rpc_check_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpc_check_timeout(%struct.rpc_task* %0) #0 {
  %2 = alloca %struct.rpc_task*, align 8
  %3 = alloca %struct.rpc_clnt*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %2, align 8
  %4 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %5 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %4, i32 0, i32 5
  %6 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  store %struct.rpc_clnt* %6, %struct.rpc_clnt** %3, align 8
  %7 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %8 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @xprt_adjust_timeout(i32 %9)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %126

13:                                               ; preds = %1
  %14 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %15 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @dprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %19 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %23 = call i64 @RPC_IS_SOFTCONN(%struct.rpc_task* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %13
  %26 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %27 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @rpc_check_connected(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %33 = load i32, i32* @ETIMEDOUT, align 4
  %34 = sub nsw i32 0, %33
  %35 = call i32 @rpc_call_rpcerror(%struct.rpc_task* %32, i32 %34)
  br label %126

36:                                               ; preds = %25, %13
  %37 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %38 = call i64 @RPC_IS_SOFT(%struct.rpc_task* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %91

40:                                               ; preds = %36
  %41 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %42 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @RPC_TASK_NO_RETRANS_TIMEOUT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %40
  %48 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %49 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @rpc_check_connected(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %126

54:                                               ; preds = %47, %40
  %55 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  %56 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %54
  %60 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  %61 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %66 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @pr_notice_ratelimited(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %69)
  br label %71

71:                                               ; preds = %59, %54
  %72 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %73 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @RPC_TASK_TIMEOUT, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  %79 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %80 = load i32, i32* @ETIMEDOUT, align 4
  %81 = sub nsw i32 0, %80
  %82 = call i32 @rpc_call_rpcerror(%struct.rpc_task* %79, i32 %81)
  br label %90

83:                                               ; preds = %71
  %84 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %85 = load i32, i32* @EIO, align 4
  %86 = sub nsw i32 0, %85
  %87 = load i32, i32* @ETIMEDOUT, align 4
  %88 = sub nsw i32 0, %87
  %89 = call i32 @__rpc_call_rpcerror(%struct.rpc_task* %84, i32 %86, i32 %88)
  br label %90

90:                                               ; preds = %83, %78
  br label %126

91:                                               ; preds = %36
  %92 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %93 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @RPC_CALL_MAJORSEEN, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %121, label %98

98:                                               ; preds = %91
  %99 = load i32, i32* @RPC_CALL_MAJORSEEN, align 4
  %100 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %101 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  %105 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %98
  %109 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  %110 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %109, i32 0, i32 0
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %115 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %114, i32 0, i32 1
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @pr_notice_ratelimited(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %113, i32 %118)
  br label %120

120:                                              ; preds = %108, %98
  br label %121

121:                                              ; preds = %120, %91
  %122 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  %123 = call i32 @rpc_force_rebind(%struct.rpc_clnt* %122)
  %124 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %125 = call i32 @rpcauth_invalcred(%struct.rpc_task* %124)
  br label %126

126:                                              ; preds = %121, %90, %53, %31, %12
  ret void
}

declare dso_local i64 @xprt_adjust_timeout(i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i64 @RPC_IS_SOFTCONN(%struct.rpc_task*) #1

declare dso_local i64 @rpc_check_connected(i32) #1

declare dso_local i32 @rpc_call_rpcerror(%struct.rpc_task*, i32) #1

declare dso_local i64 @RPC_IS_SOFT(%struct.rpc_task*) #1

declare dso_local i32 @pr_notice_ratelimited(i8*, i32, i32) #1

declare dso_local i32 @__rpc_call_rpcerror(%struct.rpc_task*, i32, i32) #1

declare dso_local i32 @rpc_force_rebind(%struct.rpc_clnt*) #1

declare dso_local i32 @rpcauth_invalcred(%struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
