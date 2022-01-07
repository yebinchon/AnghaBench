; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_sock_diag.c_sock_diag_broadcast_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_sock_diag.c_sock_diag_broadcast_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.broadcast_sk = type { i32, %struct.sock* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@sock_diag_broadcast_destroy_work = common dso_local global i32 0, align 4
@broadcast_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sock_diag_broadcast_destroy(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.broadcast_sk*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load i32, i32* @GFP_ATOMIC, align 4
  %5 = call %struct.broadcast_sk* @kmalloc(i32 16, i32 %4)
  store %struct.broadcast_sk* %5, %struct.broadcast_sk** %3, align 8
  %6 = load %struct.broadcast_sk*, %struct.broadcast_sk** %3, align 8
  %7 = icmp ne %struct.broadcast_sk* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  call void @sk_destruct(%struct.sock* %9)
  br label %22

10:                                               ; preds = %1
  %11 = load %struct.sock*, %struct.sock** %2, align 8
  %12 = load %struct.broadcast_sk*, %struct.broadcast_sk** %3, align 8
  %13 = getelementptr inbounds %struct.broadcast_sk, %struct.broadcast_sk* %12, i32 0, i32 1
  store %struct.sock* %11, %struct.sock** %13, align 8
  %14 = load %struct.broadcast_sk*, %struct.broadcast_sk** %3, align 8
  %15 = getelementptr inbounds %struct.broadcast_sk, %struct.broadcast_sk* %14, i32 0, i32 0
  %16 = load i32, i32* @sock_diag_broadcast_destroy_work, align 4
  %17 = call i32 @INIT_WORK(i32* %15, i32 %16)
  %18 = load i32, i32* @broadcast_wq, align 4
  %19 = load %struct.broadcast_sk*, %struct.broadcast_sk** %3, align 8
  %20 = getelementptr inbounds %struct.broadcast_sk, %struct.broadcast_sk* %19, i32 0, i32 0
  %21 = call i32 @queue_work(i32 %18, i32* %20)
  br label %22

22:                                               ; preds = %10, %8
  ret void
}

declare dso_local %struct.broadcast_sk* @kmalloc(i32, i32) #1

declare dso_local void @sk_destruct(%struct.sock*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
