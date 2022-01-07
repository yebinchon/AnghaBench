; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c_rpc_exit_task.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c_rpc_exit_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32*, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.rpc_task*, i32)*, i32 (%struct.rpc_task*, i32)* }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpc_exit_task(%struct.rpc_task* %0) #0 {
  %2 = alloca %struct.rpc_task*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %2, align 8
  %3 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %4 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %3, i32 0, i32 0
  store i32* null, i32** %4, align 8
  %5 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %6 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i32 (%struct.rpc_task*, i32)*, i32 (%struct.rpc_task*, i32)** %8, align 8
  %10 = icmp ne i32 (%struct.rpc_task*, i32)* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %13 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32 (%struct.rpc_task*, i32)*, i32 (%struct.rpc_task*, i32)** %15, align 8
  %17 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %18 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %19 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 %16(%struct.rpc_task* %17, i32 %20)
  br label %36

22:                                               ; preds = %1
  %23 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %24 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %23, i32 0, i32 3
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = icmp ne %struct.TYPE_3__* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %29 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %30 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %29, i32 0, i32 3
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @rpc_count_iostats(%struct.rpc_task* %28, i32 %33)
  br label %35

35:                                               ; preds = %27, %22
  br label %36

36:                                               ; preds = %35, %11
  %37 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %38 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32 (%struct.rpc_task*, i32)*, i32 (%struct.rpc_task*, i32)** %40, align 8
  %42 = icmp ne i32 (%struct.rpc_task*, i32)* %41, null
  br i1 %42, label %43, label %64

43:                                               ; preds = %36
  %44 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %45 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %44, i32 0, i32 2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32 (%struct.rpc_task*, i32)*, i32 (%struct.rpc_task*, i32)** %47, align 8
  %49 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %50 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %51 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 %48(%struct.rpc_task* %49, i32 %52)
  %54 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %55 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %43
  %59 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %60 = call i32 @xprt_release(%struct.rpc_task* %59)
  %61 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %62 = call i32 @rpc_reset_task_statistics(%struct.rpc_task* %61)
  br label %63

63:                                               ; preds = %58, %43
  br label %64

64:                                               ; preds = %63, %36
  ret void
}

declare dso_local i32 @rpc_count_iostats(%struct.rpc_task*, i32) #1

declare dso_local i32 @xprt_release(%struct.rpc_task*) #1

declare dso_local i32 @rpc_reset_task_statistics(%struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
