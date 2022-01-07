; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_caif_socket.c_caif_wait_for_flow_on.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_caif_socket.c_caif_wait_for_flow_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.caifsock = type { %struct.sock }
%struct.sock = type { i32, i32, i64 }

@wait = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@CAIF_CONNECTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.caifsock*, i32, i64, i32*)* @caif_wait_for_flow_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @caif_wait_for_flow_on(%struct.caifsock* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.caifsock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.sock*, align 8
  store %struct.caifsock* %0, %struct.caifsock** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.caifsock*, %struct.caifsock** %5, align 8
  %11 = getelementptr inbounds %struct.caifsock, %struct.caifsock* %10, i32 0, i32 0
  store %struct.sock* %11, %struct.sock** %9, align 8
  %12 = load i32, i32* @wait, align 4
  %13 = call i32 @DEFINE_WAIT(i32 %12)
  br label %14

14:                                               ; preds = %80, %4
  %15 = load i32*, i32** %8, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.caifsock*, %struct.caifsock** %5, align 8
  %17 = call i64 @tx_flow_is_on(%struct.caifsock* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load %struct.caifsock*, %struct.caifsock** %5, align 8
  %24 = getelementptr inbounds %struct.caifsock, %struct.caifsock* %23, i32 0, i32 0
  %25 = call i64 @sock_writeable(%struct.sock* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %19
  br label %83

28:                                               ; preds = %22, %14
  %29 = load i32, i32* @ETIMEDOUT, align 4
  %30 = sub nsw i32 0, %29
  %31 = load i32*, i32** %8, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i64, i64* %7, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %83

35:                                               ; preds = %28
  %36 = load i32, i32* @ERESTARTSYS, align 4
  %37 = sub nsw i32 0, %36
  %38 = load i32*, i32** %8, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @current, align 4
  %40 = call i64 @signal_pending(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %83

43:                                               ; preds = %35
  %44 = load %struct.sock*, %struct.sock** %9, align 8
  %45 = call i32 @sk_sleep(%struct.sock* %44)
  %46 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %47 = call i32 @prepare_to_wait(i32 %45, i32* @wait, i32 %46)
  %48 = load i32, i32* @ECONNRESET, align 4
  %49 = sub nsw i32 0, %48
  %50 = load i32*, i32** %8, align 8
  store i32 %49, i32* %50, align 4
  %51 = load %struct.sock*, %struct.sock** %9, align 8
  %52 = getelementptr inbounds %struct.sock, %struct.sock* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @SHUTDOWN_MASK, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %43
  br label %83

58:                                               ; preds = %43
  %59 = load %struct.sock*, %struct.sock** %9, align 8
  %60 = getelementptr inbounds %struct.sock, %struct.sock* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 0, %61
  %63 = load i32*, i32** %8, align 8
  store i32 %62, i32* %63, align 4
  %64 = load %struct.sock*, %struct.sock** %9, align 8
  %65 = getelementptr inbounds %struct.sock, %struct.sock* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  br label %83

69:                                               ; preds = %58
  %70 = load i32, i32* @EPIPE, align 4
  %71 = sub nsw i32 0, %70
  %72 = load i32*, i32** %8, align 8
  store i32 %71, i32* %72, align 4
  %73 = load %struct.caifsock*, %struct.caifsock** %5, align 8
  %74 = getelementptr inbounds %struct.caifsock, %struct.caifsock* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.sock, %struct.sock* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @CAIF_CONNECTED, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  br label %83

80:                                               ; preds = %69
  %81 = load i64, i64* %7, align 8
  %82 = call i64 @schedule_timeout(i64 %81)
  store i64 %82, i64* %7, align 8
  br label %14

83:                                               ; preds = %79, %68, %57, %42, %34, %27
  %84 = load %struct.sock*, %struct.sock** %9, align 8
  %85 = call i32 @sk_sleep(%struct.sock* %84)
  %86 = call i32 @finish_wait(i32 %85, i32* @wait)
  %87 = load i64, i64* %7, align 8
  ret i64 %87
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i64 @tx_flow_is_on(%struct.caifsock*) #1

declare dso_local i64 @sock_writeable(%struct.sock*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @prepare_to_wait(i32, i32*, i32) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
