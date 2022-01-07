; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_af_inet.c_inet_sendpage.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_af_inet.c_inet_sendpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.sock*, %struct.page*, i32, i64, i32)* }
%struct.page = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet_sendpage(%struct.socket* %0, %struct.page* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sock*, align 8
  store %struct.socket* %0, %struct.socket** %7, align 8
  store %struct.page* %1, %struct.page** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.socket*, %struct.socket** %7, align 8
  %14 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 0
  %15 = load %struct.sock*, %struct.sock** %14, align 8
  store %struct.sock* %15, %struct.sock** %12, align 8
  %16 = load %struct.sock*, %struct.sock** %12, align 8
  %17 = call i32 @inet_send_prepare(%struct.sock* %16)
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @EAGAIN, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %49

23:                                               ; preds = %5
  %24 = load %struct.sock*, %struct.sock** %12, align 8
  %25 = getelementptr inbounds %struct.sock, %struct.sock* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.sock*, %struct.page*, i32, i64, i32)*, i32 (%struct.sock*, %struct.page*, i32, i64, i32)** %27, align 8
  %29 = icmp ne i32 (%struct.sock*, %struct.page*, i32, i64, i32)* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %23
  %31 = load %struct.sock*, %struct.sock** %12, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.sock*, %struct.page*, i32, i64, i32)*, i32 (%struct.sock*, %struct.page*, i32, i64, i32)** %34, align 8
  %36 = load %struct.sock*, %struct.sock** %12, align 8
  %37 = load %struct.page*, %struct.page** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i64, i64* %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 %35(%struct.sock* %36, %struct.page* %37, i32 %38, i64 %39, i32 %40)
  store i32 %41, i32* %6, align 4
  br label %49

42:                                               ; preds = %23
  %43 = load %struct.socket*, %struct.socket** %7, align 8
  %44 = load %struct.page*, %struct.page** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i64, i64* %10, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @sock_no_sendpage(%struct.socket* %43, %struct.page* %44, i32 %45, i64 %46, i32 %47)
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %42, %30, %20
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @inet_send_prepare(%struct.sock*) #1

declare dso_local i32 @sock_no_sendpage(%struct.socket*, %struct.page*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
