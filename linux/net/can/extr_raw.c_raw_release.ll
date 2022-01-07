; ModuleID = '/home/carl/AnghaBench/linux/net/can/extr_raw.c_raw_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/extr_raw.c_raw_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.raw_sock = type { i32, i32, i64, i64, i32, i32 }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @raw_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_release(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.raw_sock*, align 8
  %6 = alloca %struct.net_device*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  %7 = load %struct.socket*, %struct.socket** %3, align 8
  %8 = getelementptr inbounds %struct.socket, %struct.socket* %7, i32 0, i32 0
  %9 = load %struct.sock*, %struct.sock** %8, align 8
  store %struct.sock* %9, %struct.sock** %4, align 8
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = icmp ne %struct.sock* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %83

13:                                               ; preds = %1
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = call %struct.raw_sock* @raw_sk(%struct.sock* %14)
  store %struct.raw_sock* %15, %struct.raw_sock** %5, align 8
  %16 = load %struct.raw_sock*, %struct.raw_sock** %5, align 8
  %17 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %16, i32 0, i32 5
  %18 = call i32 @unregister_netdevice_notifier(i32* %17)
  %19 = load %struct.sock*, %struct.sock** %4, align 8
  %20 = call i32 @lock_sock(%struct.sock* %19)
  %21 = load %struct.raw_sock*, %struct.raw_sock** %5, align 8
  %22 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %54

25:                                               ; preds = %13
  %26 = load %struct.raw_sock*, %struct.raw_sock** %5, align 8
  %27 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %25
  %31 = load %struct.sock*, %struct.sock** %4, align 8
  %32 = call i32 @sock_net(%struct.sock* %31)
  %33 = load %struct.raw_sock*, %struct.raw_sock** %5, align 8
  %34 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = call %struct.net_device* @dev_get_by_index(i32 %32, i64 %35)
  store %struct.net_device* %36, %struct.net_device** %6, align 8
  %37 = load %struct.net_device*, %struct.net_device** %6, align 8
  %38 = icmp ne %struct.net_device* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %30
  %40 = load %struct.net_device*, %struct.net_device** %6, align 8
  %41 = call i32 @dev_net(%struct.net_device* %40)
  %42 = load %struct.net_device*, %struct.net_device** %6, align 8
  %43 = load %struct.sock*, %struct.sock** %4, align 8
  %44 = call i32 @raw_disable_allfilters(i32 %41, %struct.net_device* %42, %struct.sock* %43)
  %45 = load %struct.net_device*, %struct.net_device** %6, align 8
  %46 = call i32 @dev_put(%struct.net_device* %45)
  br label %47

47:                                               ; preds = %39, %30
  br label %53

48:                                               ; preds = %25
  %49 = load %struct.sock*, %struct.sock** %4, align 8
  %50 = call i32 @sock_net(%struct.sock* %49)
  %51 = load %struct.sock*, %struct.sock** %4, align 8
  %52 = call i32 @raw_disable_allfilters(i32 %50, %struct.net_device* null, %struct.sock* %51)
  br label %53

53:                                               ; preds = %48, %47
  br label %54

54:                                               ; preds = %53, %13
  %55 = load %struct.raw_sock*, %struct.raw_sock** %5, align 8
  %56 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sgt i32 %57, 1
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.raw_sock*, %struct.raw_sock** %5, align 8
  %61 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @kfree(i32 %62)
  br label %64

64:                                               ; preds = %59, %54
  %65 = load %struct.raw_sock*, %struct.raw_sock** %5, align 8
  %66 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %65, i32 0, i32 3
  store i64 0, i64* %66, align 8
  %67 = load %struct.raw_sock*, %struct.raw_sock** %5, align 8
  %68 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %67, i32 0, i32 2
  store i64 0, i64* %68, align 8
  %69 = load %struct.raw_sock*, %struct.raw_sock** %5, align 8
  %70 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  %71 = load %struct.raw_sock*, %struct.raw_sock** %5, align 8
  %72 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @free_percpu(i32 %73)
  %75 = load %struct.sock*, %struct.sock** %4, align 8
  %76 = call i32 @sock_orphan(%struct.sock* %75)
  %77 = load %struct.socket*, %struct.socket** %3, align 8
  %78 = getelementptr inbounds %struct.socket, %struct.socket* %77, i32 0, i32 0
  store %struct.sock* null, %struct.sock** %78, align 8
  %79 = load %struct.sock*, %struct.sock** %4, align 8
  %80 = call i32 @release_sock(%struct.sock* %79)
  %81 = load %struct.sock*, %struct.sock** %4, align 8
  %82 = call i32 @sock_put(%struct.sock* %81)
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %64, %12
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.raw_sock* @raw_sk(%struct.sock*) #1

declare dso_local i32 @unregister_netdevice_notifier(i32*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.net_device* @dev_get_by_index(i32, i64) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @raw_disable_allfilters(i32, %struct.net_device*, %struct.sock*) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @free_percpu(i32) #1

declare dso_local i32 @sock_orphan(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
