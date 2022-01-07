; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_close.c_smc_clcsock_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_close.c_smc_clcsock_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_sock = type { i32, %struct.socket*, i32, i64 }
%struct.socket = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smc_clcsock_release(%struct.smc_sock* %0) #0 {
  %2 = alloca %struct.smc_sock*, align 8
  %3 = alloca %struct.socket*, align 8
  store %struct.smc_sock* %0, %struct.smc_sock** %2, align 8
  %4 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %5 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = call i32* (...) @current_work()
  %10 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %11 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %10, i32 0, i32 2
  %12 = icmp ne i32* %9, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %15 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %14, i32 0, i32 2
  %16 = call i32 @cancel_work_sync(i32* %15)
  br label %17

17:                                               ; preds = %13, %8, %1
  %18 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %19 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %22 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %21, i32 0, i32 1
  %23 = load %struct.socket*, %struct.socket** %22, align 8
  %24 = icmp ne %struct.socket* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %17
  %26 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %27 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %26, i32 0, i32 1
  %28 = load %struct.socket*, %struct.socket** %27, align 8
  store %struct.socket* %28, %struct.socket** %3, align 8
  %29 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %30 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %29, i32 0, i32 1
  store %struct.socket* null, %struct.socket** %30, align 8
  %31 = load %struct.socket*, %struct.socket** %3, align 8
  %32 = call i32 @sock_release(%struct.socket* %31)
  br label %33

33:                                               ; preds = %25, %17
  %34 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %35 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  ret void
}

declare dso_local i32* @current_work(...) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
