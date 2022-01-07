; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_name_table.c_tipc_nametbl_subscribe.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_name_table.c_tipc_nametbl_subscribe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.tipc_subscription = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.tipc_subscr }
%struct.tipc_subscr = type { i32 }
%struct.name_table = type { i32* }
%struct.tipc_net = type { i32 }
%struct.tipc_service = type { i32 }

@seq = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to subscribe for {%u,%u,%u}\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_nametbl_subscribe(%struct.tipc_subscription* %0) #0 {
  %2 = alloca %struct.tipc_subscription*, align 8
  %3 = alloca %struct.name_table*, align 8
  %4 = alloca %struct.tipc_net*, align 8
  %5 = alloca %struct.tipc_subscr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tipc_service*, align 8
  %8 = alloca i32, align 4
  store %struct.tipc_subscription* %0, %struct.tipc_subscription** %2, align 8
  %9 = load %struct.tipc_subscription*, %struct.tipc_subscription** %2, align 8
  %10 = getelementptr inbounds %struct.tipc_subscription, %struct.tipc_subscription* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.name_table* @tipc_name_table(i32 %11)
  store %struct.name_table* %12, %struct.name_table** %3, align 8
  %13 = load %struct.tipc_subscription*, %struct.tipc_subscription** %2, align 8
  %14 = getelementptr inbounds %struct.tipc_subscription, %struct.tipc_subscription* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.tipc_net* @tipc_net(i32 %15)
  store %struct.tipc_net* %16, %struct.tipc_net** %4, align 8
  %17 = load %struct.tipc_subscription*, %struct.tipc_subscription** %2, align 8
  %18 = getelementptr inbounds %struct.tipc_subscription, %struct.tipc_subscription* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.tipc_subscr* %19, %struct.tipc_subscr** %5, align 8
  %20 = load %struct.tipc_subscr*, %struct.tipc_subscr** %5, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @seq, i32 0, i32 2), align 4
  %22 = call i32 @tipc_sub_read(%struct.tipc_subscr* %20, i32 %21)
  store i32 %22, i32* %6, align 4
  store i32 1, i32* %8, align 4
  %23 = load %struct.tipc_net*, %struct.tipc_net** %4, align 8
  %24 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %23, i32 0, i32 0
  %25 = call i32 @spin_lock_bh(i32* %24)
  %26 = load %struct.tipc_subscription*, %struct.tipc_subscription** %2, align 8
  %27 = getelementptr inbounds %struct.tipc_subscription, %struct.tipc_subscription* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call %struct.tipc_service* @tipc_service_find(i32 %28, i32 %29)
  store %struct.tipc_service* %30, %struct.tipc_service** %7, align 8
  %31 = load %struct.tipc_service*, %struct.tipc_service** %7, align 8
  %32 = icmp ne %struct.tipc_service* %31, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %1
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.name_table*, %struct.name_table** %3, align 8
  %36 = getelementptr inbounds %struct.name_table, %struct.name_table* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @hash(i32 %38)
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = call %struct.tipc_service* @tipc_service_create(i32 %34, i32* %40)
  store %struct.tipc_service* %41, %struct.tipc_service** %7, align 8
  br label %42

42:                                               ; preds = %33, %1
  %43 = load %struct.tipc_service*, %struct.tipc_service** %7, align 8
  %44 = icmp ne %struct.tipc_service* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load %struct.tipc_service*, %struct.tipc_service** %7, align 8
  %47 = getelementptr inbounds %struct.tipc_service, %struct.tipc_service* %46, i32 0, i32 0
  %48 = call i32 @spin_lock_bh(i32* %47)
  %49 = load %struct.tipc_service*, %struct.tipc_service** %7, align 8
  %50 = load %struct.tipc_subscription*, %struct.tipc_subscription** %2, align 8
  %51 = call i32 @tipc_service_subscribe(%struct.tipc_service* %49, %struct.tipc_subscription* %50)
  %52 = load %struct.tipc_service*, %struct.tipc_service** %7, align 8
  %53 = getelementptr inbounds %struct.tipc_service, %struct.tipc_service* %52, i32 0, i32 0
  %54 = call i32 @spin_unlock_bh(i32* %53)
  br label %64

55:                                               ; preds = %42
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.tipc_subscr*, %struct.tipc_subscr** %5, align 8
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @seq, i32 0, i32 1), align 4
  %59 = call i32 @tipc_sub_read(%struct.tipc_subscr* %57, i32 %58)
  %60 = load %struct.tipc_subscr*, %struct.tipc_subscr** %5, align 8
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @seq, i32 0, i32 0), align 4
  %62 = call i32 @tipc_sub_read(%struct.tipc_subscr* %60, i32 %61)
  %63 = call i32 @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %59, i32 %62)
  store i32 0, i32* %8, align 4
  br label %64

64:                                               ; preds = %55, %45
  %65 = load %struct.tipc_net*, %struct.tipc_net** %4, align 8
  %66 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %65, i32 0, i32 0
  %67 = call i32 @spin_unlock_bh(i32* %66)
  %68 = load i32, i32* %8, align 4
  ret i32 %68
}

declare dso_local %struct.name_table* @tipc_name_table(i32) #1

declare dso_local %struct.tipc_net* @tipc_net(i32) #1

declare dso_local i32 @tipc_sub_read(%struct.tipc_subscr*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.tipc_service* @tipc_service_find(i32, i32) #1

declare dso_local %struct.tipc_service* @tipc_service_create(i32, i32*) #1

declare dso_local i64 @hash(i32) #1

declare dso_local i32 @tipc_service_subscribe(%struct.tipc_service*, %struct.tipc_subscription*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
