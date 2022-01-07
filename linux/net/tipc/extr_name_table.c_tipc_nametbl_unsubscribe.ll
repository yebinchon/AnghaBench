; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_name_table.c_tipc_nametbl_unsubscribe.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_name_table.c_tipc_nametbl_unsubscribe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.tipc_subscription = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.tipc_subscr }
%struct.tipc_subscr = type { i32 }
%struct.tipc_net = type { i32 }
%struct.tipc_service = type { i32, i32, i32, i32 }

@seq = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@rcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_nametbl_unsubscribe(%struct.tipc_subscription* %0) #0 {
  %2 = alloca %struct.tipc_subscription*, align 8
  %3 = alloca %struct.tipc_net*, align 8
  %4 = alloca %struct.tipc_subscr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tipc_service*, align 8
  store %struct.tipc_subscription* %0, %struct.tipc_subscription** %2, align 8
  %7 = load %struct.tipc_subscription*, %struct.tipc_subscription** %2, align 8
  %8 = getelementptr inbounds %struct.tipc_subscription, %struct.tipc_subscription* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.tipc_net* @tipc_net(i32 %9)
  store %struct.tipc_net* %10, %struct.tipc_net** %3, align 8
  %11 = load %struct.tipc_subscription*, %struct.tipc_subscription** %2, align 8
  %12 = getelementptr inbounds %struct.tipc_subscription, %struct.tipc_subscription* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.tipc_subscr* %13, %struct.tipc_subscr** %4, align 8
  %14 = load %struct.tipc_subscr*, %struct.tipc_subscr** %4, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @seq, i32 0, i32 0), align 4
  %16 = call i32 @tipc_sub_read(%struct.tipc_subscr* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.tipc_net*, %struct.tipc_net** %3, align 8
  %18 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %17, i32 0, i32 0
  %19 = call i32 @spin_lock_bh(i32* %18)
  %20 = load %struct.tipc_subscription*, %struct.tipc_subscription** %2, align 8
  %21 = getelementptr inbounds %struct.tipc_subscription, %struct.tipc_subscription* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.tipc_service* @tipc_service_find(i32 %22, i32 %23)
  store %struct.tipc_service* %24, %struct.tipc_service** %6, align 8
  %25 = load %struct.tipc_service*, %struct.tipc_service** %6, align 8
  %26 = icmp ne %struct.tipc_service* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  br label %57

28:                                               ; preds = %1
  %29 = load %struct.tipc_service*, %struct.tipc_service** %6, align 8
  %30 = getelementptr inbounds %struct.tipc_service, %struct.tipc_service* %29, i32 0, i32 0
  %31 = call i32 @spin_lock_bh(i32* %30)
  %32 = load %struct.tipc_subscription*, %struct.tipc_subscription** %2, align 8
  %33 = getelementptr inbounds %struct.tipc_subscription, %struct.tipc_subscription* %32, i32 0, i32 0
  %34 = call i32 @list_del_init(i32* %33)
  %35 = load %struct.tipc_subscription*, %struct.tipc_subscription** %2, align 8
  %36 = call i32 @tipc_sub_put(%struct.tipc_subscription* %35)
  %37 = load %struct.tipc_service*, %struct.tipc_service** %6, align 8
  %38 = getelementptr inbounds %struct.tipc_service, %struct.tipc_service* %37, i32 0, i32 3
  %39 = call i64 @RB_EMPTY_ROOT(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %28
  %42 = load %struct.tipc_service*, %struct.tipc_service** %6, align 8
  %43 = getelementptr inbounds %struct.tipc_service, %struct.tipc_service* %42, i32 0, i32 2
  %44 = call i64 @list_empty(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.tipc_service*, %struct.tipc_service** %6, align 8
  %48 = getelementptr inbounds %struct.tipc_service, %struct.tipc_service* %47, i32 0, i32 1
  %49 = call i32 @hlist_del_init_rcu(i32* %48)
  %50 = load %struct.tipc_service*, %struct.tipc_service** %6, align 8
  %51 = load i32, i32* @rcu, align 4
  %52 = call i32 @kfree_rcu(%struct.tipc_service* %50, i32 %51)
  br label %53

53:                                               ; preds = %46, %41, %28
  %54 = load %struct.tipc_service*, %struct.tipc_service** %6, align 8
  %55 = getelementptr inbounds %struct.tipc_service, %struct.tipc_service* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock_bh(i32* %55)
  br label %57

57:                                               ; preds = %53, %27
  %58 = load %struct.tipc_net*, %struct.tipc_net** %3, align 8
  %59 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %58, i32 0, i32 0
  %60 = call i32 @spin_unlock_bh(i32* %59)
  ret void
}

declare dso_local %struct.tipc_net* @tipc_net(i32) #1

declare dso_local i32 @tipc_sub_read(%struct.tipc_subscr*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.tipc_service* @tipc_service_find(i32, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @tipc_sub_put(%struct.tipc_subscription*) #1

declare dso_local i64 @RB_EMPTY_ROOT(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @hlist_del_init_rcu(i32*) #1

declare dso_local i32 @kfree_rcu(%struct.tipc_service*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
