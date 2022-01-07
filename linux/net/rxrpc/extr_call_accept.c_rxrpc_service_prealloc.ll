; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_call_accept.c_rxrpc_service_prealloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_call_accept.c_rxrpc_service_prealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_sock = type { i64, %struct.rxrpc_backlog* }
%struct.rxrpc_backlog = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@rxrpc_debug_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rxrpc_service_prealloc(%struct.rxrpc_sock* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rxrpc_sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rxrpc_backlog*, align 8
  store %struct.rxrpc_sock* %0, %struct.rxrpc_sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %4, align 8
  %8 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %7, i32 0, i32 1
  %9 = load %struct.rxrpc_backlog*, %struct.rxrpc_backlog** %8, align 8
  store %struct.rxrpc_backlog* %9, %struct.rxrpc_backlog** %6, align 8
  %10 = load %struct.rxrpc_backlog*, %struct.rxrpc_backlog** %6, align 8
  %11 = icmp ne %struct.rxrpc_backlog* %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.rxrpc_backlog* @kzalloc(i32 4, i32 %13)
  store %struct.rxrpc_backlog* %14, %struct.rxrpc_backlog** %6, align 8
  %15 = load %struct.rxrpc_backlog*, %struct.rxrpc_backlog** %6, align 8
  %16 = icmp ne %struct.rxrpc_backlog* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %40

20:                                               ; preds = %12
  %21 = load %struct.rxrpc_backlog*, %struct.rxrpc_backlog** %6, align 8
  %22 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %4, align 8
  %23 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %22, i32 0, i32 1
  store %struct.rxrpc_backlog* %21, %struct.rxrpc_backlog** %23, align 8
  br label %24

24:                                               ; preds = %20, %2
  %25 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %4, align 8
  %26 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %40

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %38, %30
  %32 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %4, align 8
  %33 = load %struct.rxrpc_backlog*, %struct.rxrpc_backlog** %6, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @atomic_inc_return(i32* @rxrpc_debug_id)
  %36 = call i64 @rxrpc_service_prealloc_one(%struct.rxrpc_sock* %32, %struct.rxrpc_backlog* %33, i32* null, i32* null, i32 0, i32 %34, i32 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %31

39:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %29, %17
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.rxrpc_backlog* @kzalloc(i32, i32) #1

declare dso_local i64 @rxrpc_service_prealloc_one(%struct.rxrpc_sock*, %struct.rxrpc_backlog*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
