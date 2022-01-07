; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_topsrv.c_tipc_conn_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_topsrv.c_tipc_conn_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_conn = type { i32 }
%struct.tipc_topsrv = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tipc_conn* (%struct.tipc_topsrv*, i32)* @tipc_conn_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tipc_conn* @tipc_conn_lookup(%struct.tipc_topsrv* %0, i32 %1) #0 {
  %3 = alloca %struct.tipc_topsrv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tipc_conn*, align 8
  store %struct.tipc_topsrv* %0, %struct.tipc_topsrv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %3, align 8
  %7 = getelementptr inbounds %struct.tipc_topsrv, %struct.tipc_topsrv* %6, i32 0, i32 0
  %8 = call i32 @spin_lock_bh(i32* %7)
  %9 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %3, align 8
  %10 = getelementptr inbounds %struct.tipc_topsrv, %struct.tipc_topsrv* %9, i32 0, i32 1
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.tipc_conn* @idr_find(i32* %10, i32 %11)
  store %struct.tipc_conn* %12, %struct.tipc_conn** %5, align 8
  %13 = load %struct.tipc_conn*, %struct.tipc_conn** %5, align 8
  %14 = call i32 @connected(%struct.tipc_conn* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.tipc_conn*, %struct.tipc_conn** %5, align 8
  %18 = getelementptr inbounds %struct.tipc_conn, %struct.tipc_conn* %17, i32 0, i32 0
  %19 = call i32 @kref_get_unless_zero(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %2
  store %struct.tipc_conn* null, %struct.tipc_conn** %5, align 8
  br label %22

22:                                               ; preds = %21, %16
  %23 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %3, align 8
  %24 = getelementptr inbounds %struct.tipc_topsrv, %struct.tipc_topsrv* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock_bh(i32* %24)
  %26 = load %struct.tipc_conn*, %struct.tipc_conn** %5, align 8
  ret %struct.tipc_conn* %26
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.tipc_conn* @idr_find(i32*, i32) #1

declare dso_local i32 @connected(%struct.tipc_conn*) #1

declare dso_local i32 @kref_get_unless_zero(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
