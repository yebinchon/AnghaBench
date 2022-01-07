; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_topsrv.c_tipc_conn_rcv_sub.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_topsrv.c_tipc_conn_rcv_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_topsrv = type { i32 }
%struct.tipc_conn = type { i32, i32, i32 }
%struct.tipc_subscr = type { i32 }
%struct.tipc_net = type { i32 }
%struct.tipc_subscription = type { i32 }

@filter = common dso_local global i32 0, align 4
@TIPC_SUB_CANCEL = common dso_local global i32 0, align 4
@TIPC_MAX_SUBSCR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Subscription rejected, max (%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_topsrv*, %struct.tipc_conn*, %struct.tipc_subscr*)* @tipc_conn_rcv_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_conn_rcv_sub(%struct.tipc_topsrv* %0, %struct.tipc_conn* %1, %struct.tipc_subscr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tipc_topsrv*, align 8
  %6 = alloca %struct.tipc_conn*, align 8
  %7 = alloca %struct.tipc_subscr*, align 8
  %8 = alloca %struct.tipc_net*, align 8
  %9 = alloca %struct.tipc_subscription*, align 8
  store %struct.tipc_topsrv* %0, %struct.tipc_topsrv** %5, align 8
  store %struct.tipc_conn* %1, %struct.tipc_conn** %6, align 8
  store %struct.tipc_subscr* %2, %struct.tipc_subscr** %7, align 8
  %10 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %5, align 8
  %11 = getelementptr inbounds %struct.tipc_topsrv, %struct.tipc_topsrv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.tipc_net* @tipc_net(i32 %12)
  store %struct.tipc_net* %13, %struct.tipc_net** %8, align 8
  %14 = load %struct.tipc_subscr*, %struct.tipc_subscr** %7, align 8
  %15 = load i32, i32* @filter, align 4
  %16 = call i32 @tipc_sub_read(%struct.tipc_subscr* %14, i32 %15)
  %17 = load i32, i32* @TIPC_SUB_CANCEL, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %3
  %21 = load i32, i32* @TIPC_SUB_CANCEL, align 4
  %22 = xor i32 %21, -1
  %23 = call i32 @__constant_ntohl(i32 %22)
  %24 = load %struct.tipc_subscr*, %struct.tipc_subscr** %7, align 8
  %25 = getelementptr inbounds %struct.tipc_subscr, %struct.tipc_subscr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.tipc_conn*, %struct.tipc_conn** %6, align 8
  %29 = load %struct.tipc_subscr*, %struct.tipc_subscr** %7, align 8
  %30 = call i32 @tipc_conn_delete_sub(%struct.tipc_conn* %28, %struct.tipc_subscr* %29)
  store i32 0, i32* %4, align 4
  br label %67

31:                                               ; preds = %3
  %32 = load %struct.tipc_net*, %struct.tipc_net** %8, align 8
  %33 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %32, i32 0, i32 0
  %34 = call i64 @atomic_read(i32* %33)
  %35 = load i64, i64* @TIPC_MAX_SUBSCR, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i64, i64* @TIPC_MAX_SUBSCR, align 8
  %39 = call i32 @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %38)
  store i32 -1, i32* %4, align 4
  br label %67

40:                                               ; preds = %31
  %41 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %5, align 8
  %42 = getelementptr inbounds %struct.tipc_topsrv, %struct.tipc_topsrv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.tipc_subscr*, %struct.tipc_subscr** %7, align 8
  %45 = load %struct.tipc_conn*, %struct.tipc_conn** %6, align 8
  %46 = getelementptr inbounds %struct.tipc_conn, %struct.tipc_conn* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.tipc_subscription* @tipc_sub_subscribe(i32 %43, %struct.tipc_subscr* %44, i32 %47)
  store %struct.tipc_subscription* %48, %struct.tipc_subscription** %9, align 8
  %49 = load %struct.tipc_subscription*, %struct.tipc_subscription** %9, align 8
  %50 = icmp ne %struct.tipc_subscription* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %40
  store i32 -1, i32* %4, align 4
  br label %67

52:                                               ; preds = %40
  %53 = load %struct.tipc_net*, %struct.tipc_net** %8, align 8
  %54 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %53, i32 0, i32 0
  %55 = call i32 @atomic_inc(i32* %54)
  %56 = load %struct.tipc_conn*, %struct.tipc_conn** %6, align 8
  %57 = getelementptr inbounds %struct.tipc_conn, %struct.tipc_conn* %56, i32 0, i32 0
  %58 = call i32 @spin_lock_bh(i32* %57)
  %59 = load %struct.tipc_subscription*, %struct.tipc_subscription** %9, align 8
  %60 = getelementptr inbounds %struct.tipc_subscription, %struct.tipc_subscription* %59, i32 0, i32 0
  %61 = load %struct.tipc_conn*, %struct.tipc_conn** %6, align 8
  %62 = getelementptr inbounds %struct.tipc_conn, %struct.tipc_conn* %61, i32 0, i32 1
  %63 = call i32 @list_add(i32* %60, i32* %62)
  %64 = load %struct.tipc_conn*, %struct.tipc_conn** %6, align 8
  %65 = getelementptr inbounds %struct.tipc_conn, %struct.tipc_conn* %64, i32 0, i32 0
  %66 = call i32 @spin_unlock_bh(i32* %65)
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %52, %51, %37, %20
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.tipc_net* @tipc_net(i32) #1

declare dso_local i32 @tipc_sub_read(%struct.tipc_subscr*, i32) #1

declare dso_local i32 @__constant_ntohl(i32) #1

declare dso_local i32 @tipc_conn_delete_sub(%struct.tipc_conn*, %struct.tipc_subscr*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @pr_warn(i8*, i64) #1

declare dso_local %struct.tipc_subscription* @tipc_sub_subscribe(i32, %struct.tipc_subscr*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
