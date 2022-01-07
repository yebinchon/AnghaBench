; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_fastopen.c_tcp_fastopen_cookie_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_fastopen.c_tcp_fastopen_cookie_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_fastopen_cookie = type { i32 }
%struct.dst_entry = type { i32 }

@TFO_CLIENT_NO_COOKIE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_fastopen_cookie_check(%struct.sock* %0, i32* %1, %struct.tcp_fastopen_cookie* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.tcp_fastopen_cookie*, align 8
  %8 = alloca %struct.dst_entry*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.tcp_fastopen_cookie* %2, %struct.tcp_fastopen_cookie** %7, align 8
  %9 = load %struct.sock*, %struct.sock** %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %7, align 8
  %12 = call i32 @tcp_fastopen_cache_get(%struct.sock* %9, i32* %10, %struct.tcp_fastopen_cookie* %11)
  %13 = load %struct.sock*, %struct.sock** %5, align 8
  %14 = call i64 @tcp_fastopen_active_should_disable(%struct.sock* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %7, align 8
  %18 = getelementptr inbounds %struct.tcp_fastopen_cookie, %struct.tcp_fastopen_cookie* %17, i32 0, i32 0
  store i32 -1, i32* %18, align 4
  store i32 0, i32* %4, align 4
  br label %36

19:                                               ; preds = %3
  %20 = load %struct.sock*, %struct.sock** %5, align 8
  %21 = call %struct.dst_entry* @__sk_dst_get(%struct.sock* %20)
  store %struct.dst_entry* %21, %struct.dst_entry** %8, align 8
  %22 = load %struct.sock*, %struct.sock** %5, align 8
  %23 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %24 = load i32, i32* @TFO_CLIENT_NO_COOKIE, align 4
  %25 = call i64 @tcp_fastopen_no_cookie(%struct.sock* %22, %struct.dst_entry* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %7, align 8
  %29 = getelementptr inbounds %struct.tcp_fastopen_cookie, %struct.tcp_fastopen_cookie* %28, i32 0, i32 0
  store i32 -1, i32* %29, align 4
  store i32 1, i32* %4, align 4
  br label %36

30:                                               ; preds = %19
  %31 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %7, align 8
  %32 = getelementptr inbounds %struct.tcp_fastopen_cookie, %struct.tcp_fastopen_cookie* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %33, 0
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %30, %27, %16
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @tcp_fastopen_cache_get(%struct.sock*, i32*, %struct.tcp_fastopen_cookie*) #1

declare dso_local i64 @tcp_fastopen_active_should_disable(%struct.sock*) #1

declare dso_local %struct.dst_entry* @__sk_dst_get(%struct.sock*) #1

declare dso_local i64 @tcp_fastopen_no_cookie(%struct.sock*, %struct.dst_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
