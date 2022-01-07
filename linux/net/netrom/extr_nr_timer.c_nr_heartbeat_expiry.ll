; ModuleID = '/home/carl/AnghaBench/linux/net/netrom/extr_nr_timer.c_nr_heartbeat_expiry.c'
source_filename = "/home/carl/AnghaBench/linux/net/netrom/extr_nr_timer.c_nr_heartbeat_expiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32 }
%struct.timer_list = type { i32 }
%struct.nr_sock = type { i32, i32, i32, i32 }

@sk_timer = common dso_local global i32 0, align 4
@SOCK_DESTROY = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@NR_COND_OWN_RX_BUSY = common dso_local global i32 0, align 4
@NR_COND_ACK_PENDING = common dso_local global i32 0, align 4
@NR_INFOACK = common dso_local global i32 0, align 4
@sk = common dso_local global %struct.sock* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @nr_heartbeat_expiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nr_heartbeat_expiry(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.nr_sock*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %3, align 8
  %6 = ptrtoint %struct.sock* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @sk_timer, align 4
  %9 = call %struct.sock* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.sock* %9, %struct.sock** %3, align 8
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call %struct.nr_sock* @nr_sk(%struct.sock* %10)
  store %struct.nr_sock* %11, %struct.nr_sock** %4, align 8
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = call i32 @bh_lock_sock(%struct.sock* %12)
  %14 = load %struct.nr_sock*, %struct.nr_sock** %4, align 8
  %15 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %81 [
    i32 129, label %17
    i32 128, label %43
  ]

17:                                               ; preds = %1
  %18 = load %struct.sock*, %struct.sock** %3, align 8
  %19 = load i32, i32* @SOCK_DESTROY, align 4
  %20 = call i32 @sock_flag(%struct.sock* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %17
  %23 = load %struct.sock*, %struct.sock** %3, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @TCP_LISTEN, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %22
  %29 = load %struct.sock*, %struct.sock** %3, align 8
  %30 = load i32, i32* @SOCK_DEAD, align 4
  %31 = call i32 @sock_flag(%struct.sock* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %28, %17
  %34 = load %struct.sock*, %struct.sock** %3, align 8
  %35 = call i32 @sock_hold(%struct.sock* %34)
  %36 = load %struct.sock*, %struct.sock** %3, align 8
  %37 = call i32 @bh_unlock_sock(%struct.sock* %36)
  %38 = load %struct.sock*, %struct.sock** %3, align 8
  %39 = call i32 @nr_destroy_socket(%struct.sock* %38)
  %40 = load %struct.sock*, %struct.sock** %3, align 8
  %41 = call i32 @sock_put(%struct.sock* %40)
  br label %86

42:                                               ; preds = %28, %22
  br label %81

43:                                               ; preds = %1
  %44 = load %struct.sock*, %struct.sock** %3, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 1
  %46 = call i32 @atomic_read(i32* %45)
  %47 = load %struct.sock*, %struct.sock** %3, align 8
  %48 = getelementptr inbounds %struct.sock, %struct.sock* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sdiv i32 %49, 2
  %51 = icmp slt i32 %46, %50
  br i1 %51, label %52, label %80

52:                                               ; preds = %43
  %53 = load %struct.nr_sock*, %struct.nr_sock** %4, align 8
  %54 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @NR_COND_OWN_RX_BUSY, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %80

59:                                               ; preds = %52
  %60 = load i32, i32* @NR_COND_OWN_RX_BUSY, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.nr_sock*, %struct.nr_sock** %4, align 8
  %63 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* @NR_COND_ACK_PENDING, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.nr_sock*, %struct.nr_sock** %4, align 8
  %69 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load %struct.nr_sock*, %struct.nr_sock** %4, align 8
  %73 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.nr_sock*, %struct.nr_sock** %4, align 8
  %76 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load %struct.sock*, %struct.sock** %3, align 8
  %78 = load i32, i32* @NR_INFOACK, align 4
  %79 = call i32 @nr_write_internal(%struct.sock* %77, i32 %78)
  br label %81

80:                                               ; preds = %52, %43
  br label %81

81:                                               ; preds = %1, %80, %59, %42
  %82 = load %struct.sock*, %struct.sock** %3, align 8
  %83 = call i32 @nr_start_heartbeat(%struct.sock* %82)
  %84 = load %struct.sock*, %struct.sock** %3, align 8
  %85 = call i32 @bh_unlock_sock(%struct.sock* %84)
  br label %86

86:                                               ; preds = %81, %33
  ret void
}

declare dso_local %struct.sock* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local %struct.nr_sock* @nr_sk(%struct.sock*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @nr_destroy_socket(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @nr_write_internal(%struct.sock*, i32) #1

declare dso_local i32 @nr_start_heartbeat(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
