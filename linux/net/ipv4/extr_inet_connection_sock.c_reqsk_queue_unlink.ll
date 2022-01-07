; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_connection_sock.c_reqsk_queue_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_connection_sock.c_reqsk_queue_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_sock = type { i32, i32 }
%struct.inet_hashinfo = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.inet_hashinfo* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_sock*)* @reqsk_queue_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reqsk_queue_unlink(%struct.request_sock* %0) #0 {
  %2 = alloca %struct.request_sock*, align 8
  %3 = alloca %struct.inet_hashinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.request_sock* %0, %struct.request_sock** %2, align 8
  %6 = load %struct.request_sock*, %struct.request_sock** %2, align 8
  %7 = call %struct.TYPE_8__* @req_to_sk(%struct.request_sock* %6)
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %11, align 8
  store %struct.inet_hashinfo* %12, %struct.inet_hashinfo** %3, align 8
  store i32 0, i32* %4, align 4
  %13 = load %struct.request_sock*, %struct.request_sock** %2, align 8
  %14 = call %struct.TYPE_8__* @req_to_sk(%struct.request_sock* %13)
  %15 = call i64 @sk_hashed(%struct.TYPE_8__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %1
  %18 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %3, align 8
  %19 = load %struct.request_sock*, %struct.request_sock** %2, align 8
  %20 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32* @inet_ehash_lockp(%struct.inet_hashinfo* %18, i32 %21)
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.request_sock*, %struct.request_sock** %2, align 8
  %26 = call %struct.TYPE_8__* @req_to_sk(%struct.request_sock* %25)
  %27 = call i32 @__sk_nulls_del_node_init_rcu(%struct.TYPE_8__* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @spin_unlock(i32* %28)
  br label %30

30:                                               ; preds = %17, %1
  %31 = load %struct.request_sock*, %struct.request_sock** %2, align 8
  %32 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %31, i32 0, i32 0
  %33 = call i64 @timer_pending(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load %struct.request_sock*, %struct.request_sock** %2, align 8
  %37 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %36, i32 0, i32 0
  %38 = call i64 @del_timer_sync(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.request_sock*, %struct.request_sock** %2, align 8
  %42 = call i32 @reqsk_put(%struct.request_sock* %41)
  br label %43

43:                                               ; preds = %40, %35, %30
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.TYPE_8__* @req_to_sk(%struct.request_sock*) #1

declare dso_local i64 @sk_hashed(%struct.TYPE_8__*) #1

declare dso_local i32* @inet_ehash_lockp(%struct.inet_hashinfo*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__sk_nulls_del_node_init_rcu(%struct.TYPE_8__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i64 @del_timer_sync(i32*) #1

declare dso_local i32 @reqsk_put(%struct.request_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
