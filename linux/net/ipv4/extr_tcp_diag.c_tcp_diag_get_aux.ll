; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_diag.c_tcp_diag_get_aux.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_diag.c_tcp_diag_get_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.inet_connection_sock = type { %struct.tcp_ulp_ops* }
%struct.tcp_ulp_ops = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i32, %struct.sk_buff*)* @tcp_diag_get_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_diag_get_aux(%struct.sock* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.inet_connection_sock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tcp_ulp_ops*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %11 = load %struct.sock*, %struct.sock** %5, align 8
  %12 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %11)
  store %struct.inet_connection_sock* %12, %struct.inet_connection_sock** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %3
  %16 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %8, align 8
  %17 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %16, i32 0, i32 0
  %18 = load %struct.tcp_ulp_ops*, %struct.tcp_ulp_ops** %17, align 8
  store %struct.tcp_ulp_ops* %18, %struct.tcp_ulp_ops** %10, align 8
  %19 = load %struct.tcp_ulp_ops*, %struct.tcp_ulp_ops** %10, align 8
  %20 = icmp ne %struct.tcp_ulp_ops* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = load %struct.sock*, %struct.sock** %5, align 8
  %24 = load %struct.tcp_ulp_ops*, %struct.tcp_ulp_ops** %10, align 8
  %25 = call i32 @tcp_diag_put_ulp(%struct.sk_buff* %22, %struct.sock* %23, %struct.tcp_ulp_ops* %24)
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %21, %15
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %4, align 4
  br label %33

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31, %3
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i32 @tcp_diag_put_ulp(%struct.sk_buff*, %struct.sock*, %struct.tcp_ulp_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
