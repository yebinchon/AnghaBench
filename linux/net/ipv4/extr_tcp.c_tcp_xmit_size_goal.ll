; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_tcp_xmit_size_goal.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_tcp_xmit_size_goal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 }
%struct.tcp_sock = type { i32 }

@MAX_TCP_HEADER = common dso_local global i32 0, align 4
@u16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i32, i32)* @tcp_xmit_size_goal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_xmit_size_goal(%struct.sock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tcp_sock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.sock*, %struct.sock** %5, align 8
  %12 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %11)
  store %struct.tcp_sock* %12, %struct.tcp_sock** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %4, align 4
  br label %66

17:                                               ; preds = %3
  %18 = load %struct.sock*, %struct.sock** %5, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 1
  %22 = load i32, i32* @MAX_TCP_HEADER, align 4
  %23 = sub nsw i32 %21, %22
  store i32 %23, i32* %9, align 4
  %24 = load %struct.tcp_sock*, %struct.tcp_sock** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @tcp_bound_to_half_wnd(%struct.tcp_sock* %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.tcp_sock*, %struct.tcp_sock** %8, align 8
  %28 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = mul i32 %29, %30
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %17
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %6, align 4
  %39 = add i32 %37, %38
  %40 = icmp uge i32 %36, %39
  br label %41

41:                                               ; preds = %35, %17
  %42 = phi i1 [ true, %17 ], [ %40, %35 ]
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %41
  %47 = load i32, i32* @u16, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %6, align 4
  %50 = udiv i32 %48, %49
  %51 = load %struct.sock*, %struct.sock** %5, align 8
  %52 = getelementptr inbounds %struct.sock, %struct.sock* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @min_t(i32 %47, i32 %50, i32 %53)
  %55 = load %struct.tcp_sock*, %struct.tcp_sock** %8, align 8
  %56 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.tcp_sock*, %struct.tcp_sock** %8, align 8
  %58 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = mul i32 %59, %60
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %46, %41
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @max(i32 %63, i32 %64)
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %62, %15
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @tcp_bound_to_half_wnd(%struct.tcp_sock*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
