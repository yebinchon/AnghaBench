; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_topsrv.c_tipc_topsrv_stop.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_topsrv.c_tipc_topsrv_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_topsrv = type { i32, i32, %struct.socket*, i64 }
%struct.socket = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.tipc_conn = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*)* @tipc_topsrv_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_topsrv_stop(%struct.net* %0) #0 {
  %2 = alloca %struct.net*, align 8
  %3 = alloca %struct.tipc_topsrv*, align 8
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.tipc_conn*, align 8
  %6 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %2, align 8
  %7 = load %struct.net*, %struct.net** %2, align 8
  %8 = call %struct.tipc_topsrv* @tipc_topsrv(%struct.net* %7)
  store %struct.tipc_topsrv* %8, %struct.tipc_topsrv** %3, align 8
  %9 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %3, align 8
  %10 = getelementptr inbounds %struct.tipc_topsrv, %struct.tipc_topsrv* %9, i32 0, i32 2
  %11 = load %struct.socket*, %struct.socket** %10, align 8
  store %struct.socket* %11, %struct.socket** %4, align 8
  %12 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %3, align 8
  %13 = getelementptr inbounds %struct.tipc_topsrv, %struct.tipc_topsrv* %12, i32 0, i32 1
  %14 = call i32 @spin_lock_bh(i32* %13)
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %37, %1
  %16 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %3, align 8
  %17 = getelementptr inbounds %struct.tipc_topsrv, %struct.tipc_topsrv* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %15
  %21 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %3, align 8
  %22 = getelementptr inbounds %struct.tipc_topsrv, %struct.tipc_topsrv* %21, i32 0, i32 0
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.tipc_conn* @idr_find(i32* %22, i32 %23)
  store %struct.tipc_conn* %24, %struct.tipc_conn** %5, align 8
  %25 = load %struct.tipc_conn*, %struct.tipc_conn** %5, align 8
  %26 = icmp ne %struct.tipc_conn* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %3, align 8
  %29 = getelementptr inbounds %struct.tipc_topsrv, %struct.tipc_topsrv* %28, i32 0, i32 1
  %30 = call i32 @spin_unlock_bh(i32* %29)
  %31 = load %struct.tipc_conn*, %struct.tipc_conn** %5, align 8
  %32 = call i32 @tipc_conn_close(%struct.tipc_conn* %31)
  %33 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %3, align 8
  %34 = getelementptr inbounds %struct.tipc_topsrv, %struct.tipc_topsrv* %33, i32 0, i32 1
  %35 = call i32 @spin_lock_bh(i32* %34)
  br label %36

36:                                               ; preds = %27, %20
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %15

40:                                               ; preds = %15
  %41 = load %struct.socket*, %struct.socket** %4, align 8
  %42 = getelementptr inbounds %struct.socket, %struct.socket* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @__module_get(i32 %45)
  %47 = load %struct.socket*, %struct.socket** %4, align 8
  %48 = getelementptr inbounds %struct.socket, %struct.socket* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @__module_get(i32 %53)
  %55 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %3, align 8
  %56 = getelementptr inbounds %struct.tipc_topsrv, %struct.tipc_topsrv* %55, i32 0, i32 2
  store %struct.socket* null, %struct.socket** %56, align 8
  %57 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %3, align 8
  %58 = getelementptr inbounds %struct.tipc_topsrv, %struct.tipc_topsrv* %57, i32 0, i32 1
  %59 = call i32 @spin_unlock_bh(i32* %58)
  %60 = load %struct.socket*, %struct.socket** %4, align 8
  %61 = call i32 @sock_release(%struct.socket* %60)
  %62 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %3, align 8
  %63 = call i32 @tipc_topsrv_work_stop(%struct.tipc_topsrv* %62)
  %64 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %3, align 8
  %65 = getelementptr inbounds %struct.tipc_topsrv, %struct.tipc_topsrv* %64, i32 0, i32 0
  %66 = call i32 @idr_destroy(i32* %65)
  %67 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %3, align 8
  %68 = call i32 @kfree(%struct.tipc_topsrv* %67)
  ret void
}

declare dso_local %struct.tipc_topsrv* @tipc_topsrv(%struct.net*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.tipc_conn* @idr_find(i32*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @tipc_conn_close(%struct.tipc_conn*) #1

declare dso_local i32 @__module_get(i32) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

declare dso_local i32 @tipc_topsrv_work_stop(%struct.tipc_topsrv*) #1

declare dso_local i32 @idr_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.tipc_topsrv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
