; ModuleID = '/home/carl/AnghaBench/linux/net/extr_socket.c_kernel_sendpage_locked.c'
source_filename = "/home/carl/AnghaBench/linux/net/extr_socket.c_kernel_sendpage_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.socket* }
%struct.socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kernel_sendpage_locked(%struct.sock* %0, %struct.page* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.socket*, align 8
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.page* %1, %struct.page** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.sock*, %struct.sock** %7, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 0
  %15 = load %struct.socket*, %struct.socket** %14, align 8
  store %struct.socket* %15, %struct.socket** %12, align 8
  %16 = load %struct.socket*, %struct.socket** %12, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to i32 (%struct.sock*, %struct.page*, i32, i64, i32)**
  %21 = load i32 (%struct.sock*, %struct.page*, i32, i64, i32)*, i32 (%struct.sock*, %struct.page*, i32, i64, i32)** %20, align 8
  %22 = icmp ne i32 (%struct.sock*, %struct.page*, i32, i64, i32)* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %5
  %24 = load %struct.socket*, %struct.socket** %12, align 8
  %25 = getelementptr inbounds %struct.socket, %struct.socket* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = bitcast {}** %27 to i32 (%struct.sock*, %struct.page*, i32, i64, i32)**
  %29 = load i32 (%struct.sock*, %struct.page*, i32, i64, i32)*, i32 (%struct.sock*, %struct.page*, i32, i64, i32)** %28, align 8
  %30 = load %struct.sock*, %struct.sock** %7, align 8
  %31 = load %struct.page*, %struct.page** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i64, i64* %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 %29(%struct.sock* %30, %struct.page* %31, i32 %32, i64 %33, i32 %34)
  store i32 %35, i32* %6, align 4
  br label %43

36:                                               ; preds = %5
  %37 = load %struct.sock*, %struct.sock** %7, align 8
  %38 = load %struct.page*, %struct.page** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i64, i64* %10, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @sock_no_sendpage_locked(%struct.sock* %37, %struct.page* %38, i32 %39, i64 %40, i32 %41)
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %36, %23
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32 @sock_no_sendpage_locked(%struct.sock*, %struct.page*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
