; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_tcp.c_rds_tcp_reset_callbacks.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_tcp.c_rds_tcp_reset_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.rds_conn_path = type { i32, i32, i32, i32, i32, %struct.rds_tcp_connection* }
%struct.rds_tcp_connection = type { i32, i64, %struct.TYPE_2__*, %struct.socket* }
%struct.TYPE_2__ = type { i32 }

@RDS_CONN_RESETTING = common dso_local global i32 0, align 4
@RDS_IN_XMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_tcp_reset_callbacks(%struct.socket* %0, %struct.rds_conn_path* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.rds_conn_path*, align 8
  %5 = alloca %struct.rds_tcp_connection*, align 8
  %6 = alloca %struct.socket*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.rds_conn_path* %1, %struct.rds_conn_path** %4, align 8
  %7 = load %struct.rds_conn_path*, %struct.rds_conn_path** %4, align 8
  %8 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %7, i32 0, i32 5
  %9 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %8, align 8
  store %struct.rds_tcp_connection* %9, %struct.rds_tcp_connection** %5, align 8
  %10 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %11 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %10, i32 0, i32 3
  %12 = load %struct.socket*, %struct.socket** %11, align 8
  store %struct.socket* %12, %struct.socket** %6, align 8
  %13 = load %struct.socket*, %struct.socket** %6, align 8
  %14 = icmp ne %struct.socket* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %68

16:                                               ; preds = %2
  %17 = load %struct.rds_conn_path*, %struct.rds_conn_path** %4, align 8
  %18 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %17, i32 0, i32 4
  %19 = load i32, i32* @RDS_CONN_RESETTING, align 4
  %20 = call i32 @atomic_set(i32* %18, i32 %19)
  %21 = load %struct.rds_conn_path*, %struct.rds_conn_path** %4, align 8
  %22 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @RDS_IN_XMIT, align 4
  %25 = load %struct.rds_conn_path*, %struct.rds_conn_path** %4, align 8
  %26 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %25, i32 0, i32 2
  %27 = call i32 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @wait_event(i32 %23, i32 %30)
  %32 = load %struct.socket*, %struct.socket** %6, align 8
  %33 = getelementptr inbounds %struct.socket, %struct.socket* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @lock_sock(i32 %34)
  %36 = load %struct.rds_conn_path*, %struct.rds_conn_path** %4, align 8
  %37 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %36, i32 0, i32 1
  %38 = call i32 @cancel_delayed_work_sync(i32* %37)
  %39 = load %struct.rds_conn_path*, %struct.rds_conn_path** %4, align 8
  %40 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %39, i32 0, i32 0
  %41 = call i32 @cancel_delayed_work_sync(i32* %40)
  %42 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %43 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = icmp ne %struct.TYPE_2__* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %16
  %47 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %48 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @rds_inc_put(i32* %50)
  %52 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %53 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %52, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %53, align 8
  br label %54

54:                                               ; preds = %46, %16
  %55 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %56 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %55, i32 0, i32 0
  store i32 4, i32* %56, align 8
  %57 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %58 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load %struct.socket*, %struct.socket** %6, align 8
  %60 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %61 = call i32 @rds_tcp_restore_callbacks(%struct.socket* %59, %struct.rds_tcp_connection* %60)
  %62 = load %struct.socket*, %struct.socket** %6, align 8
  %63 = getelementptr inbounds %struct.socket, %struct.socket* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @release_sock(i32 %64)
  %66 = load %struct.socket*, %struct.socket** %6, align 8
  %67 = call i32 @sock_release(%struct.socket* %66)
  br label %68

68:                                               ; preds = %54, %15
  %69 = load %struct.rds_conn_path*, %struct.rds_conn_path** %4, align 8
  %70 = call i32 @rds_send_path_reset(%struct.rds_conn_path* %69)
  %71 = load %struct.socket*, %struct.socket** %3, align 8
  %72 = getelementptr inbounds %struct.socket, %struct.socket* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @lock_sock(i32 %73)
  %75 = load %struct.socket*, %struct.socket** %3, align 8
  %76 = load %struct.rds_conn_path*, %struct.rds_conn_path** %4, align 8
  %77 = call i32 @rds_tcp_set_callbacks(%struct.socket* %75, %struct.rds_conn_path* %76)
  %78 = load %struct.socket*, %struct.socket** %3, align 8
  %79 = getelementptr inbounds %struct.socket, %struct.socket* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @release_sock(i32 %80)
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @lock_sock(i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @rds_inc_put(i32*) #1

declare dso_local i32 @rds_tcp_restore_callbacks(%struct.socket*, %struct.rds_tcp_connection*) #1

declare dso_local i32 @release_sock(i32) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

declare dso_local i32 @rds_send_path_reset(%struct.rds_conn_path*) #1

declare dso_local i32 @rds_tcp_set_callbacks(%struct.socket*, %struct.rds_conn_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
