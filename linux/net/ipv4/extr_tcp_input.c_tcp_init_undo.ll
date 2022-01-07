; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_init_undo.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_init_undo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_sock = type { i32, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_sock*)* @tcp_init_undo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_init_undo(%struct.tcp_sock* %0) #0 {
  %2 = alloca %struct.tcp_sock*, align 8
  store %struct.tcp_sock* %0, %struct.tcp_sock** %2, align 8
  %3 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %4 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %7 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %6, i32 0, i32 3
  store i32 %5, i32* %7, align 4
  %8 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %9 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %14

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %13, %12
  %15 = phi i64 [ %10, %12 ], [ -1, %13 ]
  %16 = trunc i64 %15 to i32
  %17 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %18 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
