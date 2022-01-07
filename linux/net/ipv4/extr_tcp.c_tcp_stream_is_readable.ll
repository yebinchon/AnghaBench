; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_tcp_stream_is_readable.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_tcp_stream_is_readable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_sock = type { i32, i32 }
%struct.sock = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.sock*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcp_sock*, i32, %struct.sock*)* @tcp_stream_is_readable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_stream_is_readable(%struct.tcp_sock* %0, i32 %1, %struct.sock* %2) #0 {
  %4 = alloca %struct.tcp_sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  store %struct.tcp_sock* %0, %struct.tcp_sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sock* %2, %struct.sock** %6, align 8
  %7 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %8 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @READ_ONCE(i32 %9)
  %11 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %12 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @READ_ONCE(i32 %13)
  %15 = sub nsw i32 %10, %14
  %16 = load i32, i32* %5, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %37, label %18

18:                                               ; preds = %3
  %19 = load %struct.sock*, %struct.sock** %6, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %22, align 8
  %24 = icmp ne i32 (%struct.sock*)* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %18
  %26 = load %struct.sock*, %struct.sock** %6, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %29, align 8
  %31 = load %struct.sock*, %struct.sock** %6, align 8
  %32 = call i32 %30(%struct.sock* %31)
  br label %34

33:                                               ; preds = %18
  br label %34

34:                                               ; preds = %33, %25
  %35 = phi i32 [ %32, %25 ], [ 0, %33 ]
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %34, %3
  %38 = phi i1 [ true, %3 ], [ %36, %34 ]
  %39 = zext i1 %38 to i32
  ret i32 %39
}

declare dso_local i32 @READ_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
