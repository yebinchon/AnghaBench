; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_syncookies.c_tcp_get_cookie_sock.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_syncookies.c_tcp_get_cookie_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.request_sock = type { i32 }
%struct.dst_entry = type { i32 }
%struct.inet_connection_sock = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.sock* (%struct.sock*, %struct.sk_buff*, %struct.request_sock*, %struct.dst_entry*, i32*, i32*)* }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @tcp_get_cookie_sock(%struct.sock* %0, %struct.sk_buff* %1, %struct.request_sock* %2, %struct.dst_entry* %3, i32 %4) #0 {
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.request_sock*, align 8
  %10 = alloca %struct.dst_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.inet_connection_sock*, align 8
  %13 = alloca %struct.sock*, align 8
  %14 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.request_sock* %2, %struct.request_sock** %9, align 8
  store %struct.dst_entry* %3, %struct.dst_entry** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.sock*, %struct.sock** %7, align 8
  %16 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %15)
  store %struct.inet_connection_sock* %16, %struct.inet_connection_sock** %12, align 8
  %17 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %12, align 8
  %18 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.sock* (%struct.sock*, %struct.sk_buff*, %struct.request_sock*, %struct.dst_entry*, i32*, i32*)*, %struct.sock* (%struct.sock*, %struct.sk_buff*, %struct.request_sock*, %struct.dst_entry*, i32*, i32*)** %20, align 8
  %22 = load %struct.sock*, %struct.sock** %7, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %24 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %25 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %26 = call %struct.sock* %21(%struct.sock* %22, %struct.sk_buff* %23, %struct.request_sock* %24, %struct.dst_entry* %25, i32* null, i32* %14)
  store %struct.sock* %26, %struct.sock** %13, align 8
  %27 = load %struct.sock*, %struct.sock** %13, align 8
  %28 = icmp ne %struct.sock* %27, null
  br i1 %28, label %29, label %52

29:                                               ; preds = %5
  %30 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %31 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %30, i32 0, i32 0
  %32 = call i32 @refcount_set(i32* %31, i32 1)
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.sock*, %struct.sock** %13, align 8
  %35 = call %struct.TYPE_4__* @tcp_sk(%struct.sock* %34)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  %37 = load %struct.sock*, %struct.sock** %13, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %39 = call i32 @sock_rps_save_rxhash(%struct.sock* %37, %struct.sk_buff* %38)
  %40 = load %struct.sock*, %struct.sock** %7, align 8
  %41 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %42 = load %struct.sock*, %struct.sock** %13, align 8
  %43 = call i64 @inet_csk_reqsk_queue_add(%struct.sock* %40, %struct.request_sock* %41, %struct.sock* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %29
  %46 = load %struct.sock*, %struct.sock** %13, align 8
  store %struct.sock* %46, %struct.sock** %6, align 8
  br label %55

47:                                               ; preds = %29
  %48 = load %struct.sock*, %struct.sock** %13, align 8
  %49 = call i32 @bh_unlock_sock(%struct.sock* %48)
  %50 = load %struct.sock*, %struct.sock** %13, align 8
  %51 = call i32 @sock_put(%struct.sock* %50)
  br label %52

52:                                               ; preds = %47, %5
  %53 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %54 = call i32 @__reqsk_free(%struct.request_sock* %53)
  store %struct.sock* null, %struct.sock** %6, align 8
  br label %55

55:                                               ; preds = %52, %45
  %56 = load %struct.sock*, %struct.sock** %6, align 8
  ret %struct.sock* %56
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local %struct.TYPE_4__* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @sock_rps_save_rxhash(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @inet_csk_reqsk_queue_add(%struct.sock*, %struct.request_sock*, %struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @__reqsk_free(%struct.request_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
