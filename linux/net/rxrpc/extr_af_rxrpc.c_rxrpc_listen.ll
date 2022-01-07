; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_af_rxrpc.c_rxrpc_listen.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_af_rxrpc.c_rxrpc_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.rxrpc_sock = type { %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%p,%d\00", align 1
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@rxrpc_max_backlog = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RXRPC_SERVER_LISTEN_DISABLED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32)* @rxrpc_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxrpc_listen(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.rxrpc_sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.socket*, %struct.socket** %3, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 0
  %12 = load %struct.sock*, %struct.sock** %11, align 8
  store %struct.sock* %12, %struct.sock** %5, align 8
  %13 = load %struct.sock*, %struct.sock** %5, align 8
  %14 = call %struct.rxrpc_sock* @rxrpc_sk(%struct.sock* %13)
  store %struct.rxrpc_sock* %14, %struct.rxrpc_sock** %6, align 8
  %15 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %6, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @_enter(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.rxrpc_sock* %15, i32 %16)
  %18 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %6, align 8
  %19 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %18, i32 0, i32 0
  %20 = call i32 @lock_sock(%struct.TYPE_3__* %19)
  %21 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %6, align 8
  %22 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %87 [
    i32 128, label %25
    i32 131, label %28
    i32 130, label %28
    i32 129, label %74
  ]

25:                                               ; preds = %2
  %26 = load i32, i32* @EADDRNOTAVAIL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %9, align 4
  br label %90

28:                                               ; preds = %2, %2
  %29 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %6, align 8
  %30 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  %35 = load i32, i32* @rxrpc_max_backlog, align 4
  %36 = call i32 @READ_ONCE(i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @INT_MAX, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %28
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %4, align 4
  br label %53

44:                                               ; preds = %28
  %45 = load i32, i32* %4, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ugt i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %44
  br label %90

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52, %42
  %54 = load %struct.sock*, %struct.sock** %5, align 8
  %55 = getelementptr inbounds %struct.sock, %struct.sock* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.sock*, %struct.sock** %5, align 8
  %59 = getelementptr inbounds %struct.sock, %struct.sock* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %6, align 8
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i32 @rxrpc_service_prealloc(%struct.rxrpc_sock* %60, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %53
  %66 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %6, align 8
  %67 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i32 129, i32* %68, align 8
  br label %73

69:                                               ; preds = %53
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.sock*, %struct.sock** %5, align 8
  %72 = getelementptr inbounds %struct.sock, %struct.sock* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %69, %65
  br label %90

74:                                               ; preds = %2
  %75 = load i32, i32* %4, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load i32, i32* @RXRPC_SERVER_LISTEN_DISABLED, align 4
  %79 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %6, align 8
  %80 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  %82 = load %struct.sock*, %struct.sock** %5, align 8
  %83 = getelementptr inbounds %struct.sock, %struct.sock* %82, i32 0, i32 0
  store i32 0, i32* %83, align 4
  %84 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %6, align 8
  %85 = call i32 @rxrpc_discard_prealloc(%struct.rxrpc_sock* %84)
  store i32 0, i32* %9, align 4
  br label %90

86:                                               ; preds = %74
  br label %87

87:                                               ; preds = %2, %86
  %88 = load i32, i32* @EBUSY, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %9, align 4
  br label %90

90:                                               ; preds = %87, %77, %73, %51, %25
  %91 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %6, align 8
  %92 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %91, i32 0, i32 0
  %93 = call i32 @release_sock(%struct.TYPE_3__* %92)
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %9, align 4
  ret i32 %96
}

declare dso_local %struct.rxrpc_sock* @rxrpc_sk(%struct.sock*) #1

declare dso_local i32 @_enter(i8*, %struct.rxrpc_sock*, i32) #1

declare dso_local i32 @lock_sock(%struct.TYPE_3__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @rxrpc_service_prealloc(%struct.rxrpc_sock*, i32) #1

declare dso_local i32 @rxrpc_discard_prealloc(%struct.rxrpc_sock*) #1

declare dso_local i32 @release_sock(%struct.TYPE_3__*) #1

declare dso_local i32 @_leave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
