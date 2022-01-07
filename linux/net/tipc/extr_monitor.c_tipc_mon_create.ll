; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_monitor.c_tipc_mon_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_monitor.c_tipc_mon_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_net = type { i32, %struct.tipc_peer** }
%struct.tipc_peer = type { i32, i32, i32, i64, i32, i32, i32, %struct.tipc_peer*, %struct.tipc_peer*, %struct.net*, i32 }
%struct.tipc_monitor = type { i32, i32, i32, i64, i32, i32, i32, %struct.tipc_monitor*, %struct.tipc_monitor*, %struct.net*, i32 }
%struct.tipc_mon_domain = type { i32, i32, i32, i64, i32, i32, i32, %struct.tipc_mon_domain*, %struct.tipc_mon_domain*, %struct.net*, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mon_timeout = common dso_local global i32 0, align 4
@MON_TIMEOUT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_mon_create(%struct.net* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tipc_net*, align 8
  %7 = alloca %struct.tipc_monitor*, align 8
  %8 = alloca %struct.tipc_peer*, align 8
  %9 = alloca %struct.tipc_mon_domain*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.net*, %struct.net** %4, align 8
  %11 = call %struct.tipc_net* @tipc_net(%struct.net* %10)
  store %struct.tipc_net* %11, %struct.tipc_net** %6, align 8
  %12 = load %struct.tipc_net*, %struct.tipc_net** %6, align 8
  %13 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %12, i32 0, i32 1
  %14 = load %struct.tipc_peer**, %struct.tipc_peer*** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.tipc_peer*, %struct.tipc_peer** %14, i64 %16
  %18 = load %struct.tipc_peer*, %struct.tipc_peer** %17, align 8
  %19 = icmp ne %struct.tipc_peer* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %107

21:                                               ; preds = %2
  %22 = load i32, i32* @GFP_ATOMIC, align 4
  %23 = call %struct.tipc_peer* @kzalloc(i32 72, i32 %22)
  %24 = bitcast %struct.tipc_peer* %23 to %struct.tipc_monitor*
  store %struct.tipc_monitor* %24, %struct.tipc_monitor** %7, align 8
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  %26 = call %struct.tipc_peer* @kzalloc(i32 72, i32 %25)
  store %struct.tipc_peer* %26, %struct.tipc_peer** %8, align 8
  %27 = load i32, i32* @GFP_ATOMIC, align 4
  %28 = call %struct.tipc_peer* @kzalloc(i32 72, i32 %27)
  %29 = bitcast %struct.tipc_peer* %28 to %struct.tipc_mon_domain*
  store %struct.tipc_mon_domain* %29, %struct.tipc_mon_domain** %9, align 8
  %30 = load %struct.tipc_monitor*, %struct.tipc_monitor** %7, align 8
  %31 = icmp ne %struct.tipc_monitor* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = load %struct.tipc_peer*, %struct.tipc_peer** %8, align 8
  %34 = icmp ne %struct.tipc_peer* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %9, align 8
  %37 = icmp ne %struct.tipc_mon_domain* %36, null
  br i1 %37, label %49, label %38

38:                                               ; preds = %35, %32, %21
  %39 = load %struct.tipc_monitor*, %struct.tipc_monitor** %7, align 8
  %40 = bitcast %struct.tipc_monitor* %39 to %struct.tipc_peer*
  %41 = call i32 @kfree(%struct.tipc_peer* %40)
  %42 = load %struct.tipc_peer*, %struct.tipc_peer** %8, align 8
  %43 = call i32 @kfree(%struct.tipc_peer* %42)
  %44 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %9, align 8
  %45 = bitcast %struct.tipc_mon_domain* %44 to %struct.tipc_peer*
  %46 = call i32 @kfree(%struct.tipc_peer* %45)
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %107

49:                                               ; preds = %35
  %50 = load %struct.tipc_monitor*, %struct.tipc_monitor** %7, align 8
  %51 = bitcast %struct.tipc_monitor* %50 to %struct.tipc_peer*
  %52 = load %struct.tipc_net*, %struct.tipc_net** %6, align 8
  %53 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %52, i32 0, i32 1
  %54 = load %struct.tipc_peer**, %struct.tipc_peer*** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.tipc_peer*, %struct.tipc_peer** %54, i64 %56
  store %struct.tipc_peer* %51, %struct.tipc_peer** %57, align 8
  %58 = load %struct.tipc_monitor*, %struct.tipc_monitor** %7, align 8
  %59 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %58, i32 0, i32 10
  %60 = call i32 @rwlock_init(i32* %59)
  %61 = load %struct.net*, %struct.net** %4, align 8
  %62 = load %struct.tipc_monitor*, %struct.tipc_monitor** %7, align 8
  %63 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %62, i32 0, i32 9
  store %struct.net* %61, %struct.net** %63, align 8
  %64 = load %struct.tipc_monitor*, %struct.tipc_monitor** %7, align 8
  %65 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load %struct.tipc_peer*, %struct.tipc_peer** %8, align 8
  %67 = bitcast %struct.tipc_peer* %66 to %struct.tipc_monitor*
  %68 = load %struct.tipc_monitor*, %struct.tipc_monitor** %7, align 8
  %69 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %68, i32 0, i32 8
  store %struct.tipc_monitor* %67, %struct.tipc_monitor** %69, align 8
  %70 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %9, align 8
  %71 = bitcast %struct.tipc_mon_domain* %70 to %struct.tipc_peer*
  %72 = load %struct.tipc_peer*, %struct.tipc_peer** %8, align 8
  %73 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %72, i32 0, i32 7
  store %struct.tipc_peer* %71, %struct.tipc_peer** %73, align 8
  %74 = load %struct.net*, %struct.net** %4, align 8
  %75 = call i32 @tipc_own_addr(%struct.net* %74)
  %76 = load %struct.tipc_peer*, %struct.tipc_peer** %8, align 8
  %77 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 8
  %78 = load %struct.tipc_peer*, %struct.tipc_peer** %8, align 8
  %79 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %78, i32 0, i32 1
  store i32 1, i32* %79, align 4
  %80 = load %struct.tipc_peer*, %struct.tipc_peer** %8, align 8
  %81 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %80, i32 0, i32 2
  store i32 1, i32* %81, align 8
  %82 = load %struct.tipc_peer*, %struct.tipc_peer** %8, align 8
  %83 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %82, i32 0, i32 5
  %84 = call i32 @INIT_LIST_HEAD(i32* %83)
  %85 = load %struct.tipc_monitor*, %struct.tipc_monitor** %7, align 8
  %86 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %85, i32 0, i32 4
  %87 = load i32, i32* @mon_timeout, align 4
  %88 = call i32 @timer_setup(i32* %86, i32 %87, i32 0)
  %89 = load i64, i64* @MON_TIMEOUT, align 8
  %90 = load %struct.tipc_net*, %struct.tipc_net** %6, align 8
  %91 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, 65535
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %89, %94
  %96 = call i64 @msecs_to_jiffies(i64 %95)
  %97 = load %struct.tipc_monitor*, %struct.tipc_monitor** %7, align 8
  %98 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %97, i32 0, i32 3
  store i64 %96, i64* %98, align 8
  %99 = load %struct.tipc_monitor*, %struct.tipc_monitor** %7, align 8
  %100 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %99, i32 0, i32 4
  %101 = load i64, i64* @jiffies, align 8
  %102 = load %struct.tipc_monitor*, %struct.tipc_monitor** %7, align 8
  %103 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %101, %104
  %106 = call i32 @mod_timer(i32* %100, i64 %105)
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %49, %38, %20
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local %struct.tipc_net* @tipc_net(%struct.net*) #1

declare dso_local %struct.tipc_peer* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.tipc_peer*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @tipc_own_addr(%struct.net*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
