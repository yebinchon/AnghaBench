; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_client.c_rxrpc_activate_channels_locked.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_client.c_rxrpc_activate_channels_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_connection = type { i32, i32, i32 }

@RXRPC_ACTIVE_CHANS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_connection*)* @rxrpc_activate_channels_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_activate_channels_locked(%struct.rxrpc_connection* %0) #0 {
  %2 = alloca %struct.rxrpc_connection*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rxrpc_connection* %0, %struct.rxrpc_connection** %2, align 8
  %5 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %6 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %11 [
    i32 129, label %8
    i32 128, label %10
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* @RXRPC_ACTIVE_CHANS_MASK, align 4
  store i32 %9, i32* %4, align 4
  br label %12

10:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  br label %12

11:                                               ; preds = %1
  br label %35

12:                                               ; preds = %10, %8
  br label %13

13:                                               ; preds = %30, %12
  %14 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %15 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %14, i32 0, i32 2
  %16 = call i32 @list_empty(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %13
  %19 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %20 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = xor i32 %21, -1
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %18, %13
  %29 = phi i1 [ false, %13 ], [ %27, %18 ]
  br i1 %29, label %30, label %35

30:                                               ; preds = %28
  %31 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @__ffs(i32 %32)
  %34 = call i32 @rxrpc_activate_one_channel(%struct.rxrpc_connection* %31, i32 %33)
  br label %13

35:                                               ; preds = %11, %28
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @rxrpc_activate_one_channel(%struct.rxrpc_connection*, i32) #1

declare dso_local i32 @__ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
