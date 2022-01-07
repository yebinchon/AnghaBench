; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_ulp.c___tcp_set_ulp.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_ulp.c___tcp_set_ulp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_ulp_ops = type { i32 (%struct.sock.0*)*, i32 }
%struct.sock.0 = type opaque
%struct.inet_connection_sock = type { %struct.tcp_ulp_ops* }

@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.tcp_ulp_ops*)* @__tcp_set_ulp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tcp_set_ulp(%struct.sock* %0, %struct.tcp_ulp_ops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.tcp_ulp_ops*, align 8
  %6 = alloca %struct.inet_connection_sock*, align 8
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.tcp_ulp_ops* %1, %struct.tcp_ulp_ops** %5, align 8
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %8)
  store %struct.inet_connection_sock* %9, %struct.inet_connection_sock** %6, align 8
  %10 = load i32, i32* @EEXIST, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  %12 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %13 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %12, i32 0, i32 0
  %14 = load %struct.tcp_ulp_ops*, %struct.tcp_ulp_ops** %13, align 8
  %15 = icmp ne %struct.tcp_ulp_ops* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %31

17:                                               ; preds = %2
  %18 = load %struct.tcp_ulp_ops*, %struct.tcp_ulp_ops** %5, align 8
  %19 = getelementptr inbounds %struct.tcp_ulp_ops, %struct.tcp_ulp_ops* %18, i32 0, i32 0
  %20 = load i32 (%struct.sock.0*)*, i32 (%struct.sock.0*)** %19, align 8
  %21 = load %struct.sock*, %struct.sock** %4, align 8
  %22 = bitcast %struct.sock* %21 to %struct.sock.0*
  %23 = call i32 %20(%struct.sock.0* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %31

27:                                               ; preds = %17
  %28 = load %struct.tcp_ulp_ops*, %struct.tcp_ulp_ops** %5, align 8
  %29 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %30 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %29, i32 0, i32 0
  store %struct.tcp_ulp_ops* %28, %struct.tcp_ulp_ops** %30, align 8
  store i32 0, i32* %3, align 4
  br label %37

31:                                               ; preds = %26, %16
  %32 = load %struct.tcp_ulp_ops*, %struct.tcp_ulp_ops** %5, align 8
  %33 = getelementptr inbounds %struct.tcp_ulp_ops, %struct.tcp_ulp_ops* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @module_put(i32 %34)
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %31, %27
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
