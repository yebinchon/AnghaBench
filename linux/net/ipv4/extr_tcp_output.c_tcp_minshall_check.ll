; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_minshall_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_minshall_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_sock = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcp_sock*)* @tcp_minshall_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_minshall_check(%struct.tcp_sock* %0) #0 {
  %2 = alloca %struct.tcp_sock*, align 8
  store %struct.tcp_sock* %0, %struct.tcp_sock** %2, align 8
  %3 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %4 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %7 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @after(i32 %5, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %13 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %16 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @after(i32 %14, i32 %17)
  %19 = icmp ne i64 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %11, %1
  %22 = phi i1 [ false, %1 ], [ %20, %11 ]
  %23 = zext i1 %22 to i32
  ret i32 %23
}

declare dso_local i64 @after(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
