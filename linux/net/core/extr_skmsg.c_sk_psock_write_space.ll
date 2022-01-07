; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skmsg.c_sk_psock_write_space.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skmsg.c_sk_psock_write_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_psock = type { void (%struct.sock*)*, i32 }

@SK_PSOCK_TX_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @sk_psock_write_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sk_psock_write_space(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.sk_psock*, align 8
  %4 = alloca void (%struct.sock*)*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = call i32 (...) @rcu_read_lock()
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call %struct.sk_psock* @sk_psock(%struct.sock* %6)
  store %struct.sk_psock* %7, %struct.sk_psock** %3, align 8
  %8 = load %struct.sk_psock*, %struct.sk_psock** %3, align 8
  %9 = icmp ne %struct.sk_psock* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.sk_psock*, %struct.sk_psock** %3, align 8
  %12 = load i32, i32* @SK_PSOCK_TX_ENABLED, align 4
  %13 = call i64 @sk_psock_test_state(%struct.sk_psock* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br label %15

15:                                               ; preds = %10, %1
  %16 = phi i1 [ false, %1 ], [ %14, %10 ]
  %17 = zext i1 %16 to i32
  %18 = call i64 @likely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.sk_psock*, %struct.sk_psock** %3, align 8
  %22 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %21, i32 0, i32 1
  %23 = call i32 @schedule_work(i32* %22)
  br label %24

24:                                               ; preds = %20, %15
  %25 = load %struct.sk_psock*, %struct.sk_psock** %3, align 8
  %26 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %25, i32 0, i32 0
  %27 = load void (%struct.sock*)*, void (%struct.sock*)** %26, align 8
  store void (%struct.sock*)* %27, void (%struct.sock*)** %4, align 8
  %28 = call i32 (...) @rcu_read_unlock()
  %29 = load void (%struct.sock*)*, void (%struct.sock*)** %4, align 8
  %30 = load %struct.sock*, %struct.sock** %2, align 8
  call void %29(%struct.sock* %30)
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sk_psock* @sk_psock(%struct.sock*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @sk_psock_test_state(%struct.sk_psock*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
