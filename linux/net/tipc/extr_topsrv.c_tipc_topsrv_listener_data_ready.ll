; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_topsrv.c_tipc_topsrv_listener_data_ready.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_topsrv.c_tipc_topsrv_listener_data_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, %struct.tipc_topsrv* }
%struct.tipc_topsrv = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @tipc_topsrv_listener_data_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_topsrv_listener_data_ready(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tipc_topsrv*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = getelementptr inbounds %struct.sock, %struct.sock* %4, i32 0, i32 0
  %6 = call i32 @read_lock_bh(i32* %5)
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = getelementptr inbounds %struct.sock, %struct.sock* %7, i32 0, i32 1
  %9 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %8, align 8
  store %struct.tipc_topsrv* %9, %struct.tipc_topsrv** %3, align 8
  %10 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %3, align 8
  %11 = getelementptr inbounds %struct.tipc_topsrv, %struct.tipc_topsrv* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %3, align 8
  %16 = getelementptr inbounds %struct.tipc_topsrv, %struct.tipc_topsrv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %3, align 8
  %19 = getelementptr inbounds %struct.tipc_topsrv, %struct.tipc_topsrv* %18, i32 0, i32 0
  %20 = call i32 @queue_work(i32 %17, i32* %19)
  br label %21

21:                                               ; preds = %14, %1
  %22 = load %struct.sock*, %struct.sock** %2, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 0
  %24 = call i32 @read_unlock_bh(i32* %23)
  ret void
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
