; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_ulp.c_tcp_update_ulp.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_ulp.c_tcp_update_ulp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.proto* }
%struct.proto = type { i32 }
%struct.inet_connection_sock = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.sock*, %struct.proto*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_update_ulp(%struct.sock* %0, %struct.proto* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.proto*, align 8
  %5 = alloca %struct.inet_connection_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.proto* %1, %struct.proto** %4, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %6)
  store %struct.inet_connection_sock* %7, %struct.inet_connection_sock** %5, align 8
  %8 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %9 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load %struct.proto*, %struct.proto** %4, align 8
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 0
  store %struct.proto* %13, %struct.proto** %15, align 8
  br label %32

16:                                               ; preds = %2
  %17 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %18 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.sock*, %struct.proto*)*, i32 (%struct.sock*, %struct.proto*)** %20, align 8
  %22 = icmp ne i32 (%struct.sock*, %struct.proto*)* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %16
  %24 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %25 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.sock*, %struct.proto*)*, i32 (%struct.sock*, %struct.proto*)** %27, align 8
  %29 = load %struct.sock*, %struct.sock** %3, align 8
  %30 = load %struct.proto*, %struct.proto** %4, align 8
  %31 = call i32 %28(%struct.sock* %29, %struct.proto* %30)
  br label %32

32:                                               ; preds = %12, %23, %16
  ret void
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
