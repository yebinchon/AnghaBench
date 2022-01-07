; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_connection_sock.c_inet_csk_destroy_sock.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_connection_sock.c_inet_csk_destroy_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 (%struct.sock*)* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@TCP_CLOSE = common dso_local global i64 0, align 8
@SOCK_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inet_csk_destroy_sock(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %3 = load %struct.sock*, %struct.sock** %2, align 8
  %4 = getelementptr inbounds %struct.sock, %struct.sock* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @TCP_CLOSE, align 8
  %7 = icmp ne i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @WARN_ON(i32 %8)
  %10 = load %struct.sock*, %struct.sock** %2, align 8
  %11 = load i32, i32* @SOCK_DEAD, align 4
  %12 = call i32 @sock_flag(%struct.sock* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.sock*, %struct.sock** %2, align 8
  %18 = call i32 @sk_unhashed(%struct.sock* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = load %struct.sock*, %struct.sock** %2, align 8
  %24 = call %struct.TYPE_5__* @inet_sk(%struct.sock* %23)
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %1
  %29 = load %struct.sock*, %struct.sock** %2, align 8
  %30 = call %struct.TYPE_6__* @inet_csk(%struct.sock* %29)
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %28, %1
  %36 = phi i1 [ false, %1 ], [ %34, %28 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @WARN_ON(i32 %37)
  %39 = load %struct.sock*, %struct.sock** %2, align 8
  %40 = getelementptr inbounds %struct.sock, %struct.sock* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %42, align 8
  %44 = load %struct.sock*, %struct.sock** %2, align 8
  %45 = call i32 %43(%struct.sock* %44)
  %46 = load %struct.sock*, %struct.sock** %2, align 8
  %47 = call i32 @sk_stream_kill_queues(%struct.sock* %46)
  %48 = load %struct.sock*, %struct.sock** %2, align 8
  %49 = call i32 @xfrm_sk_free_policy(%struct.sock* %48)
  %50 = load %struct.sock*, %struct.sock** %2, align 8
  %51 = call i32 @sk_refcnt_debug_release(%struct.sock* %50)
  %52 = load %struct.sock*, %struct.sock** %2, align 8
  %53 = getelementptr inbounds %struct.sock, %struct.sock* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @percpu_counter_dec(i32 %56)
  %58 = load %struct.sock*, %struct.sock** %2, align 8
  %59 = call i32 @sock_put(%struct.sock* %58)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @sk_unhashed(%struct.sock*) #1

declare dso_local %struct.TYPE_5__* @inet_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_6__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @sk_stream_kill_queues(%struct.sock*) #1

declare dso_local i32 @xfrm_sk_free_policy(%struct.sock*) #1

declare dso_local i32 @sk_refcnt_debug_release(%struct.sock*) #1

declare dso_local i32 @percpu_counter_dec(i32) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
