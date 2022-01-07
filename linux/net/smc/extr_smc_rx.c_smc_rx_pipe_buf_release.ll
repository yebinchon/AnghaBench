; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_rx.c_smc_rx_pipe_buf_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_rx.c_smc_rx_pipe_buf_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i32 }
%struct.pipe_buffer = type { i32, i64 }
%struct.smc_spd_priv = type { i32, %struct.smc_sock* }
%struct.smc_sock = type { %struct.smc_connection, %struct.sock }
%struct.smc_connection = type { i32 }
%struct.sock = type { i64 }

@SMC_CLOSED = common dso_local global i64 0, align 8
@SMC_PEERFINCLOSEWAIT = common dso_local global i64 0, align 8
@SMC_APPFINCLOSEWAIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pipe_inode_info*, %struct.pipe_buffer*)* @smc_rx_pipe_buf_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_rx_pipe_buf_release(%struct.pipe_inode_info* %0, %struct.pipe_buffer* %1) #0 {
  %3 = alloca %struct.pipe_inode_info*, align 8
  %4 = alloca %struct.pipe_buffer*, align 8
  %5 = alloca %struct.smc_spd_priv*, align 8
  %6 = alloca %struct.smc_sock*, align 8
  %7 = alloca %struct.smc_connection*, align 8
  %8 = alloca %struct.sock*, align 8
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %3, align 8
  store %struct.pipe_buffer* %1, %struct.pipe_buffer** %4, align 8
  %9 = load %struct.pipe_buffer*, %struct.pipe_buffer** %4, align 8
  %10 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.smc_spd_priv*
  store %struct.smc_spd_priv* %12, %struct.smc_spd_priv** %5, align 8
  %13 = load %struct.smc_spd_priv*, %struct.smc_spd_priv** %5, align 8
  %14 = getelementptr inbounds %struct.smc_spd_priv, %struct.smc_spd_priv* %13, i32 0, i32 1
  %15 = load %struct.smc_sock*, %struct.smc_sock** %14, align 8
  store %struct.smc_sock* %15, %struct.smc_sock** %6, align 8
  %16 = load %struct.smc_sock*, %struct.smc_sock** %6, align 8
  %17 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %16, i32 0, i32 1
  store %struct.sock* %17, %struct.sock** %8, align 8
  %18 = load %struct.sock*, %struct.sock** %8, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SMC_CLOSED, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %35, label %23

23:                                               ; preds = %2
  %24 = load %struct.sock*, %struct.sock** %8, align 8
  %25 = getelementptr inbounds %struct.sock, %struct.sock* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SMC_PEERFINCLOSEWAIT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.sock*, %struct.sock** %8, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SMC_APPFINCLOSEWAIT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29, %23, %2
  br label %59

36:                                               ; preds = %29
  %37 = load %struct.smc_sock*, %struct.smc_sock** %6, align 8
  %38 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %37, i32 0, i32 0
  store %struct.smc_connection* %38, %struct.smc_connection** %7, align 8
  %39 = load %struct.sock*, %struct.sock** %8, align 8
  %40 = call i32 @lock_sock(%struct.sock* %39)
  %41 = load %struct.smc_sock*, %struct.smc_sock** %6, align 8
  %42 = load %struct.smc_spd_priv*, %struct.smc_spd_priv** %5, align 8
  %43 = getelementptr inbounds %struct.smc_spd_priv, %struct.smc_spd_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @smc_rx_update_cons(%struct.smc_sock* %41, i32 %44)
  %46 = load %struct.sock*, %struct.sock** %8, align 8
  %47 = call i32 @release_sock(%struct.sock* %46)
  %48 = load %struct.smc_spd_priv*, %struct.smc_spd_priv** %5, align 8
  %49 = getelementptr inbounds %struct.smc_spd_priv, %struct.smc_spd_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.smc_connection*, %struct.smc_connection** %7, align 8
  %52 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %51, i32 0, i32 0
  %53 = call i64 @atomic_sub_and_test(i32 %50, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %36
  %56 = load %struct.sock*, %struct.sock** %8, align 8
  %57 = call i32 @smc_rx_wake_up(%struct.sock* %56)
  br label %58

58:                                               ; preds = %55, %36
  br label %59

59:                                               ; preds = %58, %35
  %60 = load %struct.smc_spd_priv*, %struct.smc_spd_priv** %5, align 8
  %61 = call i32 @kfree(%struct.smc_spd_priv* %60)
  %62 = load %struct.pipe_buffer*, %struct.pipe_buffer** %4, align 8
  %63 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @put_page(i32 %64)
  %66 = load %struct.sock*, %struct.sock** %8, align 8
  %67 = call i32 @sock_put(%struct.sock* %66)
  ret void
}

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @smc_rx_update_cons(%struct.smc_sock*, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i64 @atomic_sub_and_test(i32, i32*) #1

declare dso_local i32 @smc_rx_wake_up(%struct.sock*) #1

declare dso_local i32 @kfree(%struct.smc_spd_priv*) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
