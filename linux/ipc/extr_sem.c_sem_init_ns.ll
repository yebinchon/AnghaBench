; ModuleID = '/home/carl/AnghaBench/linux/ipc/extr_sem.c_sem_init_ns.c'
source_filename = "/home/carl/AnghaBench/linux/ipc/extr_sem.c_sem_init_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipc_namespace = type { i32*, i64, i32, i32, i32, i32 }

@SEMMSL = common dso_local global i32 0, align 4
@SEMMNS = common dso_local global i32 0, align 4
@SEMOPM = common dso_local global i32 0, align 4
@SEMMNI = common dso_local global i32 0, align 4
@IPC_SEM_IDS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sem_init_ns(%struct.ipc_namespace* %0) #0 {
  %2 = alloca %struct.ipc_namespace*, align 8
  store %struct.ipc_namespace* %0, %struct.ipc_namespace** %2, align 8
  %3 = load i32, i32* @SEMMSL, align 4
  %4 = load %struct.ipc_namespace*, %struct.ipc_namespace** %2, align 8
  %5 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %4, i32 0, i32 5
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @SEMMNS, align 4
  %7 = load %struct.ipc_namespace*, %struct.ipc_namespace** %2, align 8
  %8 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %7, i32 0, i32 4
  store i32 %6, i32* %8, align 8
  %9 = load i32, i32* @SEMOPM, align 4
  %10 = load %struct.ipc_namespace*, %struct.ipc_namespace** %2, align 8
  %11 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @SEMMNI, align 4
  %13 = load %struct.ipc_namespace*, %struct.ipc_namespace** %2, align 8
  %14 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load %struct.ipc_namespace*, %struct.ipc_namespace** %2, align 8
  %16 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.ipc_namespace*, %struct.ipc_namespace** %2, align 8
  %18 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @IPC_SEM_IDS, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = call i32 @ipc_init_ids(i32* %21)
  ret void
}

declare dso_local i32 @ipc_init_ids(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
