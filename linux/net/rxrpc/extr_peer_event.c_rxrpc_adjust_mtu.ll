; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_peer_event.c_rxrpc_adjust_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_peer_event.c_rxrpc_adjust_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_peer = type { i32, i32, i32, i32, i32 }
%struct.sock_exterr_skb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Rx ICMP Fragmentation Needed (%d)\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"I/F MTU %u\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Net MTU %u (maxdata %u)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_peer*, %struct.sock_exterr_skb*)* @rxrpc_adjust_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_adjust_mtu(%struct.rxrpc_peer* %0, %struct.sock_exterr_skb* %1) #0 {
  %3 = alloca %struct.rxrpc_peer*, align 8
  %4 = alloca %struct.sock_exterr_skb*, align 8
  %5 = alloca i32, align 4
  store %struct.rxrpc_peer* %0, %struct.rxrpc_peer** %3, align 8
  store %struct.sock_exterr_skb* %1, %struct.sock_exterr_skb** %4, align 8
  %6 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %4, align 8
  %7 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 (i8*, i32, ...) @_net(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %2
  %15 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %3, align 8
  %16 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 65535
  br i1 %18, label %19, label %31

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %3, align 8
  %22 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %3, align 8
  %28 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 (i8*, i32, ...) @_net(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %25, %19, %14, %2
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %62

34:                                               ; preds = %31
  %35 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %3, align 8
  %36 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp sgt i32 %38, 1500
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  %42 = ashr i32 %41, 1
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 1500
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 1500, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %40
  br label %61

47:                                               ; preds = %34
  %48 = load i32, i32* %5, align 4
  %49 = sub nsw i32 %48, 100
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %3, align 8
  %52 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %47
  %56 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %3, align 8
  %57 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %55, %47
  br label %61

61:                                               ; preds = %60, %46
  br label %62

62:                                               ; preds = %61, %31
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %3, align 8
  %65 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %94

68:                                               ; preds = %62
  %69 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %3, align 8
  %70 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %69, i32 0, i32 4
  %71 = call i32 @spin_lock_bh(i32* %70)
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %3, align 8
  %74 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %3, align 8
  %76 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %3, align 8
  %79 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %77, %80
  %82 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %3, align 8
  %83 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %3, align 8
  %85 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %84, i32 0, i32 4
  %86 = call i32 @spin_unlock_bh(i32* %85)
  %87 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %3, align 8
  %88 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %3, align 8
  %91 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i8*, i32, ...) @_net(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %89, i32 %92)
  br label %94

94:                                               ; preds = %68, %62
  ret void
}

declare dso_local i32 @_net(i8*, i32, ...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
