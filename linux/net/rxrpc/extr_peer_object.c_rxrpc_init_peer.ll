; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_peer_object.c_rxrpc_init_peer.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_peer_object.c_rxrpc_init_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_sock = type { i32 }
%struct.rxrpc_peer = type { i64, i32, i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_sock*, %struct.rxrpc_peer*, i64)* @rxrpc_init_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_init_peer(%struct.rxrpc_sock* %0, %struct.rxrpc_peer* %1, i64 %2) #0 {
  %4 = alloca %struct.rxrpc_sock*, align 8
  %5 = alloca %struct.rxrpc_peer*, align 8
  %6 = alloca i64, align 8
  store %struct.rxrpc_sock* %0, %struct.rxrpc_sock** %4, align 8
  store %struct.rxrpc_peer* %1, %struct.rxrpc_peer** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %9 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %8, i32 0, i32 0
  store i64 %7, i64* %9, align 8
  %10 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %4, align 8
  %11 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %12 = call i32 @rxrpc_assess_MTU_size(%struct.rxrpc_sock* %10, %struct.rxrpc_peer* %11)
  %13 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %14 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %17 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = call i32 (...) @ktime_get_real()
  %19 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %20 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 8
  %21 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %22 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %29 [
    i32 130, label %26
  ]

26:                                               ; preds = %3
  %27 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %28 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %27, i32 0, i32 3
  store i32 4, i32* %28, align 8
  br label %31

29:                                               ; preds = %3
  %30 = call i32 (...) @BUG()
  br label %31

31:                                               ; preds = %29, %26
  %32 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %33 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %43 [
    i32 128, label %36
  ]

36:                                               ; preds = %31
  %37 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %38 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = add i64 %40, 4
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 8
  br label %45

43:                                               ; preds = %31
  %44 = call i32 (...) @BUG()
  br label %45

45:                                               ; preds = %43, %36
  %46 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %47 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = add i64 %49, 4
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 8
  %52 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %53 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %56 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %54, %57
  %59 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %60 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  ret void
}

declare dso_local i32 @rxrpc_assess_MTU_size(%struct.rxrpc_sock*, %struct.rxrpc_peer*) #1

declare dso_local i32 @ktime_get_real(...) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
