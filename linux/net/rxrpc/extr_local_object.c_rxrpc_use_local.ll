; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_local_object.c_rxrpc_use_local.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_local_object.c_rxrpc_use_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_local = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rxrpc_local* @rxrpc_use_local(%struct.rxrpc_local* %0) #0 {
  %2 = alloca %struct.rxrpc_local*, align 8
  %3 = alloca %struct.rxrpc_local*, align 8
  %4 = alloca i32, align 4
  store %struct.rxrpc_local* %0, %struct.rxrpc_local** %3, align 8
  %5 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %6 = call %struct.rxrpc_local* @rxrpc_get_local_maybe(%struct.rxrpc_local* %5)
  store %struct.rxrpc_local* %6, %struct.rxrpc_local** %3, align 8
  %7 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %8 = icmp ne %struct.rxrpc_local* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.rxrpc_local* null, %struct.rxrpc_local** %2, align 8
  br label %21

10:                                               ; preds = %1
  %11 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %12 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %11, i32 0, i32 0
  %13 = call i32 @atomic_fetch_add_unless(i32* %12, i32 1, i32 0)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %18 = call i32 @rxrpc_put_local(%struct.rxrpc_local* %17)
  store %struct.rxrpc_local* null, %struct.rxrpc_local** %2, align 8
  br label %21

19:                                               ; preds = %10
  %20 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  store %struct.rxrpc_local* %20, %struct.rxrpc_local** %2, align 8
  br label %21

21:                                               ; preds = %19, %16, %9
  %22 = load %struct.rxrpc_local*, %struct.rxrpc_local** %2, align 8
  ret %struct.rxrpc_local* %22
}

declare dso_local %struct.rxrpc_local* @rxrpc_get_local_maybe(%struct.rxrpc_local*) #1

declare dso_local i32 @atomic_fetch_add_unless(i32*, i32, i32) #1

declare dso_local i32 @rxrpc_put_local(%struct.rxrpc_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
