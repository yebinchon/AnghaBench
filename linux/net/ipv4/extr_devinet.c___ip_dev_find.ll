; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_devinet.c___ip_dev_find.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_devinet.c___ip_dev_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net = type { i32 }
%struct.in_ifaddr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.net_device* }
%struct.flowi4 = type { i32 }
%struct.fib_result = type { i64, i32 }
%struct.fib_table = type { i32 }

@RT_TABLE_LOCAL = common dso_local global i32 0, align 4
@FIB_LOOKUP_NOREF = common dso_local global i32 0, align 4
@RTN_LOCAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @__ip_dev_find(%struct.net* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.in_ifaddr*, align 8
  %9 = alloca %struct.flowi4, align 4
  %10 = alloca %struct.fib_result, align 8
  %11 = alloca %struct.fib_table*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.net_device* null, %struct.net_device** %7, align 8
  %12 = call i32 (...) @rcu_read_lock()
  %13 = load %struct.net*, %struct.net** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.in_ifaddr* @inet_lookup_ifaddr_rcu(%struct.net* %13, i32 %14)
  store %struct.in_ifaddr* %15, %struct.in_ifaddr** %8, align 8
  %16 = load %struct.in_ifaddr*, %struct.in_ifaddr** %8, align 8
  %17 = icmp ne %struct.in_ifaddr* %16, null
  br i1 %17, label %45, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %9, i32 0, i32 0
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %19, align 4
  %21 = bitcast %struct.fib_result* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 16, i1 false)
  %22 = load %struct.net*, %struct.net** %4, align 8
  %23 = load i32, i32* @RT_TABLE_LOCAL, align 4
  %24 = call %struct.fib_table* @fib_get_table(%struct.net* %22, i32 %23)
  store %struct.fib_table* %24, %struct.fib_table** %11, align 8
  %25 = load %struct.fib_table*, %struct.fib_table** %11, align 8
  %26 = icmp ne %struct.fib_table* %25, null
  br i1 %26, label %27, label %44

27:                                               ; preds = %18
  %28 = load %struct.fib_table*, %struct.fib_table** %11, align 8
  %29 = load i32, i32* @FIB_LOOKUP_NOREF, align 4
  %30 = call i32 @fib_table_lookup(%struct.fib_table* %28, %struct.flowi4* %9, %struct.fib_result* %10, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %10, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @RTN_LOCAL, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = bitcast %struct.fib_result* %10 to { i64, i32 }*
  %39 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %38, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.net_device* @FIB_RES_DEV(i64 %40, i32 %42)
  store %struct.net_device* %43, %struct.net_device** %7, align 8
  br label %44

44:                                               ; preds = %37, %32, %27, %18
  br label %51

45:                                               ; preds = %3
  %46 = load %struct.in_ifaddr*, %struct.in_ifaddr** %8, align 8
  %47 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load %struct.net_device*, %struct.net_device** %49, align 8
  store %struct.net_device* %50, %struct.net_device** %7, align 8
  br label %51

51:                                               ; preds = %45, %44
  %52 = load %struct.net_device*, %struct.net_device** %7, align 8
  %53 = icmp ne %struct.net_device* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.net_device*, %struct.net_device** %7, align 8
  %59 = call i32 @dev_hold(%struct.net_device* %58)
  br label %60

60:                                               ; preds = %57, %54, %51
  %61 = call i32 (...) @rcu_read_unlock()
  %62 = load %struct.net_device*, %struct.net_device** %7, align 8
  ret %struct.net_device* %62
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.in_ifaddr* @inet_lookup_ifaddr_rcu(%struct.net*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.fib_table* @fib_get_table(%struct.net*, i32) #1

declare dso_local i32 @fib_table_lookup(%struct.fib_table*, %struct.flowi4*, %struct.fib_result*, i32) #1

declare dso_local %struct.net_device* @FIB_RES_DEV(i64, i32) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
