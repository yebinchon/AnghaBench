; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_timer.c_dccp_write_timer.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_timer.c_dccp_write_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_connection_sock = type { i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sock }
%struct.sock = type { i64 }
%struct.timer_list = type { i32 }

@icsk_retransmit_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@DCCP_CLOSED = common dso_local global i64 0, align 8
@icsk = common dso_local global %struct.inet_connection_sock* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @dccp_write_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dccp_write_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.inet_connection_sock*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %7 = ptrtoint %struct.inet_connection_sock* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @icsk_retransmit_timer, align 4
  %10 = call %struct.inet_connection_sock* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.inet_connection_sock* %10, %struct.inet_connection_sock** %3, align 8
  %11 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %12 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.sock* %13, %struct.sock** %4, align 8
  store i32 0, i32* %5, align 4
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = call i32 @bh_lock_sock(%struct.sock* %14)
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = call i64 @sock_owned_by_user(%struct.sock* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %1
  %20 = load %struct.sock*, %struct.sock** %4, align 8
  %21 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %22 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %21, i32 0, i32 2
  %23 = load i64, i64* @jiffies, align 8
  %24 = load i32, i32* @HZ, align 4
  %25 = sdiv i32 %24, 20
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %23, %26
  %28 = call i32 @sk_reset_timer(%struct.sock* %20, i32* %22, i64 %27)
  br label %67

29:                                               ; preds = %1
  %30 = load %struct.sock*, %struct.sock** %4, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DCCP_CLOSED, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %37 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35, %29
  br label %67

41:                                               ; preds = %35
  %42 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %43 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @jiffies, align 8
  %46 = call i64 @time_after(i64 %44, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %41
  %49 = load %struct.sock*, %struct.sock** %4, align 8
  %50 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %51 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %50, i32 0, i32 2
  %52 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %53 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @sk_reset_timer(%struct.sock* %49, i32* %51, i64 %54)
  br label %67

56:                                               ; preds = %41
  %57 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %58 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %5, align 4
  %60 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %61 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  %62 = load i32, i32* %5, align 4
  switch i32 %62, label %66 [
    i32 128, label %63
  ]

63:                                               ; preds = %56
  %64 = load %struct.sock*, %struct.sock** %4, align 8
  %65 = call i32 @dccp_retransmit_timer(%struct.sock* %64)
  br label %66

66:                                               ; preds = %56, %63
  br label %67

67:                                               ; preds = %66, %48, %40, %19
  %68 = load %struct.sock*, %struct.sock** %4, align 8
  %69 = call i32 @bh_unlock_sock(%struct.sock* %68)
  %70 = load %struct.sock*, %struct.sock** %4, align 8
  %71 = call i32 @sock_put(%struct.sock* %70)
  ret void
}

declare dso_local %struct.inet_connection_sock* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @sk_reset_timer(%struct.sock*, i32*, i64) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dccp_retransmit_timer(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
