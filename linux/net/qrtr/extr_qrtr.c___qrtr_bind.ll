; ModuleID = '/home/carl/AnghaBench/linux/net/qrtr/extr_qrtr.c___qrtr_bind.c'
source_filename = "/home/carl/AnghaBench/linux/net/qrtr/extr_qrtr.c___qrtr_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr_qrtr = type { i32 }
%struct.qrtr_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SOCK_ZAPPED = common dso_local global i32 0, align 4
@QRTR_PORT_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr_qrtr*, i32)* @__qrtr_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__qrtr_bind(%struct.socket* %0, %struct.sockaddr_qrtr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr_qrtr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qrtr_sock*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr_qrtr* %1, %struct.sockaddr_qrtr** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.socket*, %struct.socket** %5, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load %struct.sock*, %struct.sock** %13, align 8
  %15 = call %struct.qrtr_sock* @qrtr_sk(%struct.sock* %14)
  store %struct.qrtr_sock* %15, %struct.qrtr_sock** %8, align 8
  %16 = load %struct.socket*, %struct.socket** %5, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = load %struct.sock*, %struct.sock** %17, align 8
  store %struct.sock* %18, %struct.sock** %9, align 8
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %3
  %22 = load %struct.sockaddr_qrtr*, %struct.sockaddr_qrtr** %6, align 8
  %23 = getelementptr inbounds %struct.sockaddr_qrtr, %struct.sockaddr_qrtr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.qrtr_sock*, %struct.qrtr_sock** %8, align 8
  %26 = getelementptr inbounds %struct.qrtr_sock, %struct.qrtr_sock* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %24, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %61

31:                                               ; preds = %21, %3
  %32 = load %struct.sockaddr_qrtr*, %struct.sockaddr_qrtr** %6, align 8
  %33 = getelementptr inbounds %struct.sockaddr_qrtr, %struct.sockaddr_qrtr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %10, align 4
  %35 = load %struct.qrtr_sock*, %struct.qrtr_sock** %8, align 8
  %36 = call i32 @qrtr_port_assign(%struct.qrtr_sock* %35, i32* %10)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %4, align 4
  br label %61

41:                                               ; preds = %31
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load %struct.qrtr_sock*, %struct.qrtr_sock** %8, align 8
  %46 = call i32 @qrtr_port_remove(%struct.qrtr_sock* %45)
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.qrtr_sock*, %struct.qrtr_sock** %8, align 8
  %50 = getelementptr inbounds %struct.qrtr_sock, %struct.qrtr_sock* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  %52 = load %struct.sock*, %struct.sock** %9, align 8
  %53 = load i32, i32* @SOCK_ZAPPED, align 4
  %54 = call i32 @sock_reset_flag(%struct.sock* %52, i32 %53)
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @QRTR_PORT_CTRL, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %47
  %59 = call i32 (...) @qrtr_reset_ports()
  br label %60

60:                                               ; preds = %58, %47
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %39, %30
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.qrtr_sock* @qrtr_sk(%struct.sock*) #1

declare dso_local i32 @qrtr_port_assign(%struct.qrtr_sock*, i32*) #1

declare dso_local i32 @qrtr_port_remove(%struct.qrtr_sock*) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

declare dso_local i32 @qrtr_reset_ports(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
