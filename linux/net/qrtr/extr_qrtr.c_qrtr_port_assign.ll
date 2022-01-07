; ModuleID = '/home/carl/AnghaBench/linux/net/qrtr/extr_qrtr.c_qrtr_port_assign.c'
source_filename = "/home/carl/AnghaBench/linux/net/qrtr/extr_qrtr.c_qrtr_port_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qrtr_sock = type { i32 }

@qrtr_port_lock = common dso_local global i32 0, align 4
@qrtr_ports = common dso_local global i32 0, align 4
@QRTR_MIN_EPH_SOCKET = common dso_local global i32 0, align 4
@QRTR_MAX_EPH_SOCKET = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@QRTR_PORT_CTRL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qrtr_sock*, i32*)* @qrtr_port_assign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qrtr_port_assign(%struct.qrtr_sock* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qrtr_sock*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.qrtr_sock* %0, %struct.qrtr_sock** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = call i32 @mutex_lock(i32* @qrtr_port_lock)
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %2
  %12 = load %struct.qrtr_sock*, %struct.qrtr_sock** %4, align 8
  %13 = load i32, i32* @QRTR_MIN_EPH_SOCKET, align 4
  %14 = load i32, i32* @QRTR_MAX_EPH_SOCKET, align 4
  %15 = add nsw i32 %14, 1
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call i32 @idr_alloc(i32* @qrtr_ports, %struct.qrtr_sock* %12, i32 %13, i32 %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %11
  %21 = load i32, i32* %6, align 4
  %22 = load i32*, i32** %5, align 8
  store i32 %21, i32* %22, align 4
  br label %23

23:                                               ; preds = %20, %11
  br label %62

24:                                               ; preds = %2
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @QRTR_MIN_EPH_SOCKET, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load i32, i32* @CAP_NET_ADMIN, align 4
  %31 = call i32 @capable(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @EACCES, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %61

36:                                               ; preds = %29, %24
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @QRTR_PORT_CTRL, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.qrtr_sock*, %struct.qrtr_sock** %4, align 8
  %43 = load i32, i32* @GFP_ATOMIC, align 4
  %44 = call i32 @idr_alloc(i32* @qrtr_ports, %struct.qrtr_sock* %42, i32 0, i32 1, i32 %43)
  store i32 %44, i32* %6, align 4
  br label %60

45:                                               ; preds = %36
  %46 = load %struct.qrtr_sock*, %struct.qrtr_sock** %4, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  %52 = load i32, i32* @GFP_ATOMIC, align 4
  %53 = call i32 @idr_alloc(i32* @qrtr_ports, %struct.qrtr_sock* %46, i32 %48, i32 %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %45
  %57 = load i32, i32* %6, align 4
  %58 = load i32*, i32** %5, align 8
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %45
  br label %60

60:                                               ; preds = %59, %41
  br label %61

61:                                               ; preds = %60, %33
  br label %62

62:                                               ; preds = %61, %23
  %63 = call i32 @mutex_unlock(i32* @qrtr_port_lock)
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @ENOSPC, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* @EADDRINUSE, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %81

71:                                               ; preds = %62
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %3, align 4
  br label %81

76:                                               ; preds = %71
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.qrtr_sock*, %struct.qrtr_sock** %4, align 8
  %79 = getelementptr inbounds %struct.qrtr_sock, %struct.qrtr_sock* %78, i32 0, i32 0
  %80 = call i32 @sock_hold(i32* %79)
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %77, %74, %68
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.qrtr_sock*, i32, i32, i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sock_hold(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
