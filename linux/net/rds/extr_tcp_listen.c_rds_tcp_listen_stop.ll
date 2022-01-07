; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_tcp_listen.c_rds_tcp_listen_stop.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_tcp_listen.c_rds_tcp_listen_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i32*, i32* }
%struct.work_struct = type { i32 }

@rds_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_tcp_listen_stop(%struct.socket* %0, %struct.work_struct* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.work_struct*, align 8
  %5 = alloca %struct.sock*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.work_struct* %1, %struct.work_struct** %4, align 8
  %6 = load %struct.socket*, %struct.socket** %3, align 8
  %7 = icmp ne %struct.socket* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %42

9:                                                ; preds = %2
  %10 = load %struct.socket*, %struct.socket** %3, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 0
  %12 = load %struct.sock*, %struct.sock** %11, align 8
  store %struct.sock* %12, %struct.sock** %5, align 8
  %13 = load %struct.sock*, %struct.sock** %5, align 8
  %14 = call i32 @lock_sock(%struct.sock* %13)
  %15 = load %struct.sock*, %struct.sock** %5, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 0
  %17 = call i32 @write_lock_bh(i32* %16)
  %18 = load %struct.sock*, %struct.sock** %5, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %9
  %23 = load %struct.sock*, %struct.sock** %5, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.sock*, %struct.sock** %5, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 2
  store i32* %25, i32** %27, align 8
  %28 = load %struct.sock*, %struct.sock** %5, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 1
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %22, %9
  %31 = load %struct.sock*, %struct.sock** %5, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 0
  %33 = call i32 @write_unlock_bh(i32* %32)
  %34 = load %struct.sock*, %struct.sock** %5, align 8
  %35 = call i32 @release_sock(%struct.sock* %34)
  %36 = load i32, i32* @rds_wq, align 4
  %37 = call i32 @flush_workqueue(i32 %36)
  %38 = load %struct.work_struct*, %struct.work_struct** %4, align 8
  %39 = call i32 @flush_work(%struct.work_struct* %38)
  %40 = load %struct.socket*, %struct.socket** %3, align 8
  %41 = call i32 @sock_release(%struct.socket* %40)
  br label %42

42:                                               ; preds = %30, %8
  ret void
}

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @flush_work(%struct.work_struct*) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
