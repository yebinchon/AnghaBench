; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_acceptable_seq.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_acceptable_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @tcp_acceptable_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_acceptable_seq(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  %5 = load %struct.sock*, %struct.sock** %3, align 8
  %6 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %5)
  store %struct.tcp_sock* %6, %struct.tcp_sock** %4, align 8
  %7 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %8 = call i32 @tcp_wnd_end(%struct.tcp_sock* %7)
  %9 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %10 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @before(i32 %8, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %1
  %15 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %16 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %14
  %21 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %22 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %25 = call i32 @tcp_wnd_end(%struct.tcp_sock* %24)
  %26 = sub nsw i32 %23, %25
  %27 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %28 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = shl i32 1, %30
  %32 = icmp slt i32 %26, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %20, %1
  %34 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %35 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %2, align 4
  br label %40

37:                                               ; preds = %20, %14
  %38 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %39 = call i32 @tcp_wnd_end(%struct.tcp_sock* %38)
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %37, %33
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @before(i32, i32) #1

declare dso_local i32 @tcp_wnd_end(%struct.tcp_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
