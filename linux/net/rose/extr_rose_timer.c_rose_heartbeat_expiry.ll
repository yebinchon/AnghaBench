; ModuleID = '/home/carl/AnghaBench/linux/net/rose/extr_rose_timer.c_rose_heartbeat_expiry.c'
source_filename = "/home/carl/AnghaBench/linux/net/rose/extr_rose_timer.c_rose_heartbeat_expiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32 }
%struct.timer_list = type { i32 }
%struct.rose_sock = type { i32, i32, i32, i32 }

@sk_timer = common dso_local global i32 0, align 4
@SOCK_DESTROY = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@ROSE_COND_OWN_RX_BUSY = common dso_local global i32 0, align 4
@ROSE_COND_ACK_PENDING = common dso_local global i32 0, align 4
@ROSE_RR = common dso_local global i32 0, align 4
@sk = common dso_local global %struct.sock* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @rose_heartbeat_expiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rose_heartbeat_expiry(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.rose_sock*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %3, align 8
  %6 = ptrtoint %struct.sock* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @sk_timer, align 4
  %9 = call %struct.sock* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.sock* %9, %struct.sock** %3, align 8
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call %struct.rose_sock* @rose_sk(%struct.sock* %10)
  store %struct.rose_sock* %11, %struct.rose_sock** %4, align 8
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = call i32 @bh_lock_sock(%struct.sock* %12)
  %14 = load %struct.rose_sock*, %struct.rose_sock** %4, align 8
  %15 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %79 [
    i32 129, label %17
    i32 128, label %39
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
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load %struct.sock*, %struct.sock** %3, align 8
  %30 = load i32, i32* @SOCK_DEAD, align 4
  %31 = call i32 @sock_flag(%struct.sock* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28, %17
  %34 = load %struct.sock*, %struct.sock** %3, align 8
  %35 = call i32 @bh_unlock_sock(%struct.sock* %34)
  %36 = load %struct.sock*, %struct.sock** %3, align 8
  %37 = call i32 @rose_destroy_socket(%struct.sock* %36)
  br label %84

38:                                               ; preds = %28, %22
  br label %79

39:                                               ; preds = %1
  %40 = load %struct.sock*, %struct.sock** %3, align 8
  %41 = getelementptr inbounds %struct.sock, %struct.sock* %40, i32 0, i32 1
  %42 = call i32 @atomic_read(i32* %41)
  %43 = load %struct.sock*, %struct.sock** %3, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sdiv i32 %45, 2
  %47 = icmp slt i32 %42, %46
  br i1 %47, label %48, label %78

48:                                               ; preds = %39
  %49 = load %struct.rose_sock*, %struct.rose_sock** %4, align 8
  %50 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @ROSE_COND_OWN_RX_BUSY, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %78

55:                                               ; preds = %48
  %56 = load i32, i32* @ROSE_COND_OWN_RX_BUSY, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.rose_sock*, %struct.rose_sock** %4, align 8
  %59 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* @ROSE_COND_ACK_PENDING, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.rose_sock*, %struct.rose_sock** %4, align 8
  %65 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load %struct.rose_sock*, %struct.rose_sock** %4, align 8
  %69 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.rose_sock*, %struct.rose_sock** %4, align 8
  %72 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.sock*, %struct.sock** %3, align 8
  %74 = load i32, i32* @ROSE_RR, align 4
  %75 = call i32 @rose_write_internal(%struct.sock* %73, i32 %74)
  %76 = load %struct.sock*, %struct.sock** %3, align 8
  %77 = call i32 @rose_stop_timer(%struct.sock* %76)
  br label %79

78:                                               ; preds = %48, %39
  br label %79

79:                                               ; preds = %1, %78, %55, %38
  %80 = load %struct.sock*, %struct.sock** %3, align 8
  %81 = call i32 @rose_start_heartbeat(%struct.sock* %80)
  %82 = load %struct.sock*, %struct.sock** %3, align 8
  %83 = call i32 @bh_unlock_sock(%struct.sock* %82)
  br label %84

84:                                               ; preds = %79, %33
  ret void
}

declare dso_local %struct.sock* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local %struct.rose_sock* @rose_sk(%struct.sock*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @rose_destroy_socket(%struct.sock*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @rose_write_internal(%struct.sock*, i32) #1

declare dso_local i32 @rose_stop_timer(%struct.sock*) #1

declare dso_local i32 @rose_start_heartbeat(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
