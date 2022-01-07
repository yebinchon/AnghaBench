; ModuleID = '/home/carl/AnghaBench/linux/net/qrtr/extr_qrtr.c_qrtr_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/qrtr/extr_qrtr.c_qrtr_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i32 (%struct.sock*)*, i32 }
%struct.qrtr_sock = type { i32 }

@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @qrtr_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qrtr_release(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.qrtr_sock*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  %6 = load %struct.socket*, %struct.socket** %3, align 8
  %7 = getelementptr inbounds %struct.socket, %struct.socket* %6, i32 0, i32 0
  %8 = load %struct.sock*, %struct.sock** %7, align 8
  store %struct.sock* %8, %struct.sock** %4, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = icmp ne %struct.sock* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

12:                                               ; preds = %1
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = call i32 @lock_sock(%struct.sock* %13)
  %15 = load %struct.sock*, %struct.sock** %4, align 8
  %16 = call %struct.qrtr_sock* @qrtr_sk(%struct.sock* %15)
  store %struct.qrtr_sock* %16, %struct.qrtr_sock** %5, align 8
  %17 = load i32, i32* @SHUTDOWN_MASK, align 4
  %18 = load %struct.sock*, %struct.sock** %4, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.sock*, %struct.sock** %4, align 8
  %21 = load i32, i32* @SOCK_DEAD, align 4
  %22 = call i32 @sock_flag(%struct.sock* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %12
  %25 = load %struct.sock*, %struct.sock** %4, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 1
  %27 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %26, align 8
  %28 = load %struct.sock*, %struct.sock** %4, align 8
  %29 = call i32 %27(%struct.sock* %28)
  br label %30

30:                                               ; preds = %24, %12
  %31 = load %struct.sock*, %struct.sock** %4, align 8
  %32 = load i32, i32* @SOCK_DEAD, align 4
  %33 = call i32 @sock_set_flag(%struct.sock* %31, i32 %32)
  %34 = load %struct.socket*, %struct.socket** %3, align 8
  %35 = getelementptr inbounds %struct.socket, %struct.socket* %34, i32 0, i32 0
  store %struct.sock* null, %struct.sock** %35, align 8
  %36 = load %struct.sock*, %struct.sock** %4, align 8
  %37 = load i32, i32* @SOCK_ZAPPED, align 4
  %38 = call i32 @sock_flag(%struct.sock* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %30
  %41 = load %struct.qrtr_sock*, %struct.qrtr_sock** %5, align 8
  %42 = call i32 @qrtr_port_remove(%struct.qrtr_sock* %41)
  br label %43

43:                                               ; preds = %40, %30
  %44 = load %struct.sock*, %struct.sock** %4, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 0
  %46 = call i32 @skb_queue_purge(i32* %45)
  %47 = load %struct.sock*, %struct.sock** %4, align 8
  %48 = call i32 @release_sock(%struct.sock* %47)
  %49 = load %struct.sock*, %struct.sock** %4, align 8
  %50 = call i32 @sock_put(%struct.sock* %49)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %43, %11
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.qrtr_sock* @qrtr_sk(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

declare dso_local i32 @qrtr_port_remove(%struct.qrtr_sock*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
