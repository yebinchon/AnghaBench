; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_rpc_rqst_userns.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_rpc_rqst_userns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_namespace = type { i32 }
%struct.rpc_rqst = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@init_user_ns = common dso_local global %struct.user_namespace zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.user_namespace* (%struct.rpc_rqst*)* @rpc_rqst_userns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.user_namespace* @rpc_rqst_userns(%struct.rpc_rqst* %0) #0 {
  %2 = alloca %struct.user_namespace*, align 8
  %3 = alloca %struct.rpc_rqst*, align 8
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %3, align 8
  %4 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %5 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %10 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.user_namespace* @rpc_userns(i32 %13)
  store %struct.user_namespace* %14, %struct.user_namespace** %2, align 8
  br label %16

15:                                               ; preds = %1
  store %struct.user_namespace* @init_user_ns, %struct.user_namespace** %2, align 8
  br label %16

16:                                               ; preds = %15, %8
  %17 = load %struct.user_namespace*, %struct.user_namespace** %2, align 8
  ret %struct.user_namespace* %17
}

declare dso_local %struct.user_namespace* @rpc_userns(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
