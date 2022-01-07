; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_subscr.c_tipc_sub_subscribe.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_subscr.c_tipc_sub_subscribe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.tipc_subscription = type { i32, i32, i32, %struct.TYPE_3__, i32, i32, %struct.net*, i32, i32 }
%struct.TYPE_3__ = type { %struct.tipc_subscr }
%struct.tipc_subscr = type { i32 }
%struct.net = type { i32 }

@TIPC_SUB_PORTS = common dso_local global i64 0, align 8
@TIPC_SUB_SERVICE = common dso_local global i64 0, align 8
@seq = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [40 x i8] c"Subscription rejected, illegal request\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Subscription rejected, no memory\0A\00", align 1
@tipc_sub_timeout = common dso_local global i32 0, align 4
@TIPC_WAIT_FOREVER = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@filter = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tipc_subscription* @tipc_sub_subscribe(%struct.net* %0, %struct.tipc_subscr* %1, i32 %2) #0 {
  %4 = alloca %struct.tipc_subscription*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.tipc_subscr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.tipc_subscription*, align 8
  %10 = alloca i64, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.tipc_subscr* %1, %struct.tipc_subscr** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.tipc_subscr*, %struct.tipc_subscr** %6, align 8
  %12 = load i64, i64* %8, align 8
  %13 = call i64 @tipc_sub_read(%struct.tipc_subscr* %11, i64 %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @TIPC_SUB_PORTS, align 8
  %16 = and i64 %14, %15
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @TIPC_SUB_SERVICE, align 8
  %21 = and i64 %19, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %18, %3
  %24 = load %struct.tipc_subscr*, %struct.tipc_subscr** %6, align 8
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @seq, i32 0, i32 0), align 8
  %26 = call i64 @tipc_sub_read(%struct.tipc_subscr* %24, i64 %25)
  %27 = load %struct.tipc_subscr*, %struct.tipc_subscr** %6, align 8
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @seq, i32 0, i32 1), align 8
  %29 = call i64 @tipc_sub_read(%struct.tipc_subscr* %27, i64 %28)
  %30 = icmp sgt i64 %26, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %23, %18
  %32 = call i32 @pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store %struct.tipc_subscription* null, %struct.tipc_subscription** %4, align 8
  br label %95

33:                                               ; preds = %23
  %34 = load i32, i32* @GFP_ATOMIC, align 4
  %35 = call %struct.tipc_subscription* @kmalloc(i32 40, i32 %34)
  store %struct.tipc_subscription* %35, %struct.tipc_subscription** %9, align 8
  %36 = load %struct.tipc_subscription*, %struct.tipc_subscription** %9, align 8
  %37 = icmp ne %struct.tipc_subscription* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = call i32 @pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store %struct.tipc_subscription* null, %struct.tipc_subscription** %4, align 8
  br label %95

40:                                               ; preds = %33
  %41 = load %struct.tipc_subscription*, %struct.tipc_subscription** %9, align 8
  %42 = getelementptr inbounds %struct.tipc_subscription, %struct.tipc_subscription* %41, i32 0, i32 8
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.tipc_subscription*, %struct.tipc_subscription** %9, align 8
  %45 = getelementptr inbounds %struct.tipc_subscription, %struct.tipc_subscription* %44, i32 0, i32 7
  %46 = call i32 @INIT_LIST_HEAD(i32* %45)
  %47 = load %struct.net*, %struct.net** %5, align 8
  %48 = load %struct.tipc_subscription*, %struct.tipc_subscription** %9, align 8
  %49 = getelementptr inbounds %struct.tipc_subscription, %struct.tipc_subscription* %48, i32 0, i32 6
  store %struct.net* %47, %struct.net** %49, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.tipc_subscription*, %struct.tipc_subscription** %9, align 8
  %52 = getelementptr inbounds %struct.tipc_subscription, %struct.tipc_subscription* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.tipc_subscription*, %struct.tipc_subscription** %9, align 8
  %54 = getelementptr inbounds %struct.tipc_subscription, %struct.tipc_subscription* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  %55 = load %struct.tipc_subscription*, %struct.tipc_subscription** %9, align 8
  %56 = getelementptr inbounds %struct.tipc_subscription, %struct.tipc_subscription* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load %struct.tipc_subscr*, %struct.tipc_subscr** %6, align 8
  %59 = call i32 @memcpy(%struct.tipc_subscr* %57, %struct.tipc_subscr* %58, i32 4)
  %60 = load %struct.tipc_subscription*, %struct.tipc_subscription** %9, align 8
  %61 = getelementptr inbounds %struct.tipc_subscription, %struct.tipc_subscription* %60, i32 0, i32 5
  %62 = call i32 @spin_lock_init(i32* %61)
  %63 = load %struct.tipc_subscription*, %struct.tipc_subscription** %9, align 8
  %64 = getelementptr inbounds %struct.tipc_subscription, %struct.tipc_subscription* %63, i32 0, i32 4
  %65 = call i32 @kref_init(i32* %64)
  %66 = load %struct.tipc_subscription*, %struct.tipc_subscription** %9, align 8
  %67 = call i32 @tipc_nametbl_subscribe(%struct.tipc_subscription* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %40
  %70 = load %struct.tipc_subscription*, %struct.tipc_subscription** %9, align 8
  %71 = call i32 @kfree(%struct.tipc_subscription* %70)
  store %struct.tipc_subscription* null, %struct.tipc_subscription** %4, align 8
  br label %95

72:                                               ; preds = %40
  %73 = load %struct.tipc_subscription*, %struct.tipc_subscription** %9, align 8
  %74 = getelementptr inbounds %struct.tipc_subscription, %struct.tipc_subscription* %73, i32 0, i32 2
  %75 = load i32, i32* @tipc_sub_timeout, align 4
  %76 = call i32 @timer_setup(i32* %74, i32 %75, i32 0)
  %77 = load %struct.tipc_subscription*, %struct.tipc_subscription** %9, align 8
  %78 = getelementptr inbounds %struct.tipc_subscription, %struct.tipc_subscription* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i64, i64* %10, align 8
  %81 = call i64 @tipc_sub_read(%struct.tipc_subscr* %79, i64 %80)
  store i64 %81, i64* %10, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* @TIPC_WAIT_FOREVER, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %72
  %86 = load %struct.tipc_subscription*, %struct.tipc_subscription** %9, align 8
  %87 = getelementptr inbounds %struct.tipc_subscription, %struct.tipc_subscription* %86, i32 0, i32 2
  %88 = load i64, i64* @jiffies, align 8
  %89 = load i64, i64* %10, align 8
  %90 = call i64 @msecs_to_jiffies(i64 %89)
  %91 = add nsw i64 %88, %90
  %92 = call i32 @mod_timer(i32* %87, i64 %91)
  br label %93

93:                                               ; preds = %85, %72
  %94 = load %struct.tipc_subscription*, %struct.tipc_subscription** %9, align 8
  store %struct.tipc_subscription* %94, %struct.tipc_subscription** %4, align 8
  br label %95

95:                                               ; preds = %93, %69, %38, %31
  %96 = load %struct.tipc_subscription*, %struct.tipc_subscription** %4, align 8
  ret %struct.tipc_subscription* %96
}

declare dso_local i64 @tipc_sub_read(%struct.tipc_subscr*, i64) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local %struct.tipc_subscription* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memcpy(%struct.tipc_subscr*, %struct.tipc_subscr*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @tipc_nametbl_subscribe(%struct.tipc_subscription*) #1

declare dso_local i32 @kfree(%struct.tipc_subscription*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
