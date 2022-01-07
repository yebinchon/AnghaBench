; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_task_set_rpc_message.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_task_set_rpc_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.rpc_message = type { i32*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*, %struct.rpc_message*)* @rpc_task_set_rpc_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpc_task_set_rpc_message(%struct.rpc_task* %0, %struct.rpc_message* %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca %struct.rpc_message*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store %struct.rpc_message* %1, %struct.rpc_message** %4, align 8
  %5 = load %struct.rpc_message*, %struct.rpc_message** %4, align 8
  %6 = icmp ne %struct.rpc_message* %5, null
  br i1 %6, label %7, label %39

7:                                                ; preds = %2
  %8 = load %struct.rpc_message*, %struct.rpc_message** %4, align 8
  %9 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %12 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  store i32 %10, i32* %13, align 4
  %14 = load %struct.rpc_message*, %struct.rpc_message** %4, align 8
  %15 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %18 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  store i32 %16, i32* %19, align 4
  %20 = load %struct.rpc_message*, %struct.rpc_message** %4, align 8
  %21 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %24 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load %struct.rpc_message*, %struct.rpc_message** %4, align 8
  %27 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %7
  %31 = load %struct.rpc_message*, %struct.rpc_message** %4, align 8
  %32 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @get_cred(i32* %33)
  %35 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %36 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  br label %38

38:                                               ; preds = %30, %7
  br label %39

39:                                               ; preds = %38, %2
  ret void
}

declare dso_local i32 @get_cred(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
