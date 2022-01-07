; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_fastopen.c_tcp_fastopen_cookie_gen_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_fastopen.c_tcp_fastopen_cookie_gen_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_fastopen_cookie = type { i32 }
%struct.sock = type { i32 }
%struct.request_sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcp_fastopen_context = type { i32* }

@__const.tcp_fastopen_cookie_gen_check.search_foc = private unnamed_addr constant %struct.tcp_fastopen_cookie { i32 -1 }, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.request_sock*, %struct.sk_buff*, %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie*)* @tcp_fastopen_cookie_gen_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_fastopen_cookie_gen_check(%struct.sock* %0, %struct.request_sock* %1, %struct.sk_buff* %2, %struct.tcp_fastopen_cookie* %3, %struct.tcp_fastopen_cookie* %4) #0 {
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.request_sock*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.tcp_fastopen_cookie*, align 8
  %10 = alloca %struct.tcp_fastopen_cookie*, align 8
  %11 = alloca %struct.tcp_fastopen_cookie, align 4
  %12 = alloca %struct.tcp_fastopen_cookie*, align 8
  %13 = alloca %struct.tcp_fastopen_context*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.request_sock* %1, %struct.request_sock** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.tcp_fastopen_cookie* %3, %struct.tcp_fastopen_cookie** %9, align 8
  store %struct.tcp_fastopen_cookie* %4, %struct.tcp_fastopen_cookie** %10, align 8
  %16 = bitcast %struct.tcp_fastopen_cookie* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.tcp_fastopen_cookie* @__const.tcp_fastopen_cookie_gen_check.search_foc to i8*), i64 4, i1 false)
  %17 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %10, align 8
  store %struct.tcp_fastopen_cookie* %17, %struct.tcp_fastopen_cookie** %12, align 8
  store i32 0, i32* %15, align 4
  %18 = call i32 (...) @rcu_read_lock()
  %19 = load %struct.sock*, %struct.sock** %6, align 8
  %20 = call %struct.tcp_fastopen_context* @tcp_fastopen_get_ctx(%struct.sock* %19)
  store %struct.tcp_fastopen_context* %20, %struct.tcp_fastopen_context** %13, align 8
  %21 = load %struct.tcp_fastopen_context*, %struct.tcp_fastopen_context** %13, align 8
  %22 = icmp ne %struct.tcp_fastopen_context* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  br label %53

24:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  br label %25

25:                                               ; preds = %49, %24
  %26 = load i32, i32* %14, align 4
  %27 = load %struct.tcp_fastopen_context*, %struct.tcp_fastopen_context** %13, align 8
  %28 = call i32 @tcp_fastopen_context_len(%struct.tcp_fastopen_context* %27)
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %25
  %31 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %33 = load %struct.tcp_fastopen_context*, %struct.tcp_fastopen_context** %13, align 8
  %34 = getelementptr inbounds %struct.tcp_fastopen_context, %struct.tcp_fastopen_context* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %12, align 8
  %40 = call i32 @__tcp_fastopen_cookie_gen_cipher(%struct.request_sock* %31, %struct.sk_buff* %32, i32* %38, %struct.tcp_fastopen_cookie* %39)
  %41 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %12, align 8
  %42 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %9, align 8
  %43 = call i64 @tcp_fastopen_cookie_match(%struct.tcp_fastopen_cookie* %41, %struct.tcp_fastopen_cookie* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %30
  %46 = load i32, i32* %14, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %15, align 4
  br label %53

48:                                               ; preds = %30
  store %struct.tcp_fastopen_cookie* %11, %struct.tcp_fastopen_cookie** %12, align 8
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %14, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %14, align 4
  br label %25

52:                                               ; preds = %25
  br label %53

53:                                               ; preds = %52, %45, %23
  %54 = call i32 (...) @rcu_read_unlock()
  %55 = load i32, i32* %15, align 4
  ret i32 %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @rcu_read_lock(...) #2

declare dso_local %struct.tcp_fastopen_context* @tcp_fastopen_get_ctx(%struct.sock*) #2

declare dso_local i32 @tcp_fastopen_context_len(%struct.tcp_fastopen_context*) #2

declare dso_local i32 @__tcp_fastopen_cookie_gen_cipher(%struct.request_sock*, %struct.sk_buff*, i32*, %struct.tcp_fastopen_cookie*) #2

declare dso_local i64 @tcp_fastopen_cookie_match(%struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie*) #2

declare dso_local i32 @rcu_read_unlock(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
