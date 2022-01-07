; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_fastopen.c_tcp_fastopen_cookie_gen.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_fastopen.c_tcp_fastopen_cookie_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.request_sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcp_fastopen_cookie = type { i32 }
%struct.tcp_fastopen_context = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.request_sock*, %struct.sk_buff*, %struct.tcp_fastopen_cookie*)* @tcp_fastopen_cookie_gen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_fastopen_cookie_gen(%struct.sock* %0, %struct.request_sock* %1, %struct.sk_buff* %2, %struct.tcp_fastopen_cookie* %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.request_sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.tcp_fastopen_cookie*, align 8
  %9 = alloca %struct.tcp_fastopen_context*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.request_sock* %1, %struct.request_sock** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store %struct.tcp_fastopen_cookie* %3, %struct.tcp_fastopen_cookie** %8, align 8
  %10 = call i32 (...) @rcu_read_lock()
  %11 = load %struct.sock*, %struct.sock** %5, align 8
  %12 = call %struct.tcp_fastopen_context* @tcp_fastopen_get_ctx(%struct.sock* %11)
  store %struct.tcp_fastopen_context* %12, %struct.tcp_fastopen_context** %9, align 8
  %13 = load %struct.tcp_fastopen_context*, %struct.tcp_fastopen_context** %9, align 8
  %14 = icmp ne %struct.tcp_fastopen_context* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %4
  %16 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %18 = load %struct.tcp_fastopen_context*, %struct.tcp_fastopen_context** %9, align 8
  %19 = getelementptr inbounds %struct.tcp_fastopen_context, %struct.tcp_fastopen_context* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %8, align 8
  %23 = call i32 @__tcp_fastopen_cookie_gen_cipher(%struct.request_sock* %16, %struct.sk_buff* %17, i32* %21, %struct.tcp_fastopen_cookie* %22)
  br label %24

24:                                               ; preds = %15, %4
  %25 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.tcp_fastopen_context* @tcp_fastopen_get_ctx(%struct.sock*) #1

declare dso_local i32 @__tcp_fastopen_cookie_gen_cipher(%struct.request_sock*, %struct.sk_buff*, i32*, %struct.tcp_fastopen_cookie*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
