; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_nagle_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_nagle_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_sock = type { i64 }

@TCP_NAGLE_CORK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.tcp_sock*, i32)* @tcp_nagle_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_nagle_check(i32 %0, %struct.tcp_sock* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcp_sock*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.tcp_sock* %1, %struct.tcp_sock** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @TCP_NAGLE_CORK, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %14
  %18 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %19 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %24 = call i64 @tcp_minshall_check(%struct.tcp_sock* %23)
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %22, %17, %14
  %27 = phi i1 [ false, %17 ], [ false, %14 ], [ %25, %22 ]
  br label %28

28:                                               ; preds = %26, %9
  %29 = phi i1 [ true, %9 ], [ %27, %26 ]
  br label %30

30:                                               ; preds = %28, %3
  %31 = phi i1 [ false, %3 ], [ %29, %28 ]
  %32 = zext i1 %31 to i32
  ret i32 %32
}

declare dso_local i64 @tcp_minshall_check(%struct.tcp_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
