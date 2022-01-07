; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_clntproc.c_nlmclnt_unlock_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_clntproc.c_nlmclnt_unlock_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.nlm_rqst = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nlmclnt_operations* }
%struct.nlmclnt_operations = type { i32 (%struct.rpc_task*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*, i8*)* @nlmclnt_unlock_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlmclnt_unlock_prepare(%struct.rpc_task* %0, i8* %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nlm_rqst*, align 8
  %6 = alloca %struct.nlmclnt_operations*, align 8
  %7 = alloca i32, align 4
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.nlm_rqst*
  store %struct.nlm_rqst* %9, %struct.nlm_rqst** %5, align 8
  %10 = load %struct.nlm_rqst*, %struct.nlm_rqst** %5, align 8
  %11 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.nlmclnt_operations*, %struct.nlmclnt_operations** %13, align 8
  store %struct.nlmclnt_operations* %14, %struct.nlmclnt_operations** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.nlmclnt_operations*, %struct.nlmclnt_operations** %6, align 8
  %16 = icmp ne %struct.nlmclnt_operations* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %2
  %18 = load %struct.nlmclnt_operations*, %struct.nlmclnt_operations** %6, align 8
  %19 = getelementptr inbounds %struct.nlmclnt_operations, %struct.nlmclnt_operations* %18, i32 0, i32 0
  %20 = load i32 (%struct.rpc_task*, i32)*, i32 (%struct.rpc_task*, i32)** %19, align 8
  %21 = icmp ne i32 (%struct.rpc_task*, i32)* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load %struct.nlmclnt_operations*, %struct.nlmclnt_operations** %6, align 8
  %24 = getelementptr inbounds %struct.nlmclnt_operations, %struct.nlmclnt_operations* %23, i32 0, i32 0
  %25 = load i32 (%struct.rpc_task*, i32)*, i32 (%struct.rpc_task*, i32)** %24, align 8
  %26 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %27 = load %struct.nlm_rqst*, %struct.nlm_rqst** %5, align 8
  %28 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 %25(%struct.rpc_task* %26, i32 %29)
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %22, %17, %2
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %36 = call i32 @rpc_call_start(%struct.rpc_task* %35)
  br label %37

37:                                               ; preds = %34, %31
  ret void
}

declare dso_local i32 @rpc_call_start(%struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
