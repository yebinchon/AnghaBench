; ModuleID = '/home/carl/AnghaBench/linux/net/can/extr_af_can.c_can_rx_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/extr_af_can.c_can_rx_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.can_rcv_lists_stats* }
%struct.can_rcv_lists_stats = type { i32, i32 }
%struct.net_device = type { i64 }
%struct.sk_buff = type opaque
%struct.sock = type { i32 }
%struct.receiver = type { void (%struct.sk_buff.0*, i8*)*, i8*, i32, %struct.sock*, i8*, i64, i8*, i8* }
%struct.sk_buff.0 = type opaque
%struct.hlist_head = type { i32 }
%struct.can_dev_rcv_lists = type { i32 }

@ARPHRD_CAN = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@rcv_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @can_rx_register(%struct.net* %0, %struct.net_device* %1, i8* %2, i8* %3, void (%struct.sk_buff*, i8*)* %4, i8* %5, i8* %6, %struct.sock* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca void (%struct.sk_buff*, i8*)*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.sock*, align 8
  %18 = alloca %struct.receiver*, align 8
  %19 = alloca %struct.hlist_head*, align 8
  %20 = alloca %struct.can_dev_rcv_lists*, align 8
  %21 = alloca %struct.can_rcv_lists_stats*, align 8
  %22 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %10, align 8
  store %struct.net_device* %1, %struct.net_device** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store void (%struct.sk_buff*, i8*)* %4, void (%struct.sk_buff*, i8*)** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store %struct.sock* %7, %struct.sock** %17, align 8
  %23 = load %struct.net*, %struct.net** %10, align 8
  %24 = getelementptr inbounds %struct.net, %struct.net* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load %struct.can_rcv_lists_stats*, %struct.can_rcv_lists_stats** %25, align 8
  store %struct.can_rcv_lists_stats* %26, %struct.can_rcv_lists_stats** %21, align 8
  store i32 0, i32* %22, align 4
  %27 = load %struct.net_device*, %struct.net_device** %11, align 8
  %28 = icmp ne %struct.net_device* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %8
  %30 = load %struct.net_device*, %struct.net_device** %11, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ARPHRD_CAN, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %9, align 4
  br label %116

38:                                               ; preds = %29, %8
  %39 = load %struct.net_device*, %struct.net_device** %11, align 8
  %40 = icmp ne %struct.net_device* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load %struct.net*, %struct.net** %10, align 8
  %43 = load %struct.net_device*, %struct.net_device** %11, align 8
  %44 = call i32 @dev_net(%struct.net_device* %43)
  %45 = call i32 @net_eq(%struct.net* %42, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %9, align 4
  br label %116

50:                                               ; preds = %41, %38
  %51 = load i32, i32* @rcv_cache, align 4
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.receiver* @kmem_cache_alloc(i32 %51, i32 %52)
  store %struct.receiver* %53, %struct.receiver** %18, align 8
  %54 = load %struct.receiver*, %struct.receiver** %18, align 8
  %55 = icmp ne %struct.receiver* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %9, align 4
  br label %116

59:                                               ; preds = %50
  %60 = load %struct.net*, %struct.net** %10, align 8
  %61 = getelementptr inbounds %struct.net, %struct.net* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = call i32 @spin_lock_bh(i32* %62)
  %64 = load %struct.net*, %struct.net** %10, align 8
  %65 = load %struct.net_device*, %struct.net_device** %11, align 8
  %66 = call %struct.can_dev_rcv_lists* @can_dev_rcv_lists_find(%struct.net* %64, %struct.net_device* %65)
  store %struct.can_dev_rcv_lists* %66, %struct.can_dev_rcv_lists** %20, align 8
  %67 = load %struct.can_dev_rcv_lists*, %struct.can_dev_rcv_lists** %20, align 8
  %68 = call %struct.hlist_head* @can_rcv_list_find(i8** %12, i8** %13, %struct.can_dev_rcv_lists* %67)
  store %struct.hlist_head* %68, %struct.hlist_head** %19, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = load %struct.receiver*, %struct.receiver** %18, align 8
  %71 = getelementptr inbounds %struct.receiver, %struct.receiver* %70, i32 0, i32 7
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = load %struct.receiver*, %struct.receiver** %18, align 8
  %74 = getelementptr inbounds %struct.receiver, %struct.receiver* %73, i32 0, i32 6
  store i8* %72, i8** %74, align 8
  %75 = load %struct.receiver*, %struct.receiver** %18, align 8
  %76 = getelementptr inbounds %struct.receiver, %struct.receiver* %75, i32 0, i32 5
  store i64 0, i64* %76, align 8
  %77 = load void (%struct.sk_buff*, i8*)*, void (%struct.sk_buff*, i8*)** %14, align 8
  %78 = bitcast void (%struct.sk_buff*, i8*)* %77 to void (%struct.sk_buff.0*, i8*)*
  %79 = load %struct.receiver*, %struct.receiver** %18, align 8
  %80 = getelementptr inbounds %struct.receiver, %struct.receiver* %79, i32 0, i32 0
  store void (%struct.sk_buff.0*, i8*)* %78, void (%struct.sk_buff.0*, i8*)** %80, align 8
  %81 = load i8*, i8** %15, align 8
  %82 = load %struct.receiver*, %struct.receiver** %18, align 8
  %83 = getelementptr inbounds %struct.receiver, %struct.receiver* %82, i32 0, i32 4
  store i8* %81, i8** %83, align 8
  %84 = load i8*, i8** %16, align 8
  %85 = load %struct.receiver*, %struct.receiver** %18, align 8
  %86 = getelementptr inbounds %struct.receiver, %struct.receiver* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  %87 = load %struct.sock*, %struct.sock** %17, align 8
  %88 = load %struct.receiver*, %struct.receiver** %18, align 8
  %89 = getelementptr inbounds %struct.receiver, %struct.receiver* %88, i32 0, i32 3
  store %struct.sock* %87, %struct.sock** %89, align 8
  %90 = load %struct.receiver*, %struct.receiver** %18, align 8
  %91 = getelementptr inbounds %struct.receiver, %struct.receiver* %90, i32 0, i32 2
  %92 = load %struct.hlist_head*, %struct.hlist_head** %19, align 8
  %93 = call i32 @hlist_add_head_rcu(i32* %91, %struct.hlist_head* %92)
  %94 = load %struct.can_dev_rcv_lists*, %struct.can_dev_rcv_lists** %20, align 8
  %95 = getelementptr inbounds %struct.can_dev_rcv_lists, %struct.can_dev_rcv_lists* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  %98 = load %struct.can_rcv_lists_stats*, %struct.can_rcv_lists_stats** %21, align 8
  %99 = getelementptr inbounds %struct.can_rcv_lists_stats, %struct.can_rcv_lists_stats* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  %102 = load %struct.can_rcv_lists_stats*, %struct.can_rcv_lists_stats** %21, align 8
  %103 = getelementptr inbounds %struct.can_rcv_lists_stats, %struct.can_rcv_lists_stats* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.can_rcv_lists_stats*, %struct.can_rcv_lists_stats** %21, align 8
  %106 = getelementptr inbounds %struct.can_rcv_lists_stats, %struct.can_rcv_lists_stats* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @max(i32 %104, i32 %107)
  %109 = load %struct.can_rcv_lists_stats*, %struct.can_rcv_lists_stats** %21, align 8
  %110 = getelementptr inbounds %struct.can_rcv_lists_stats, %struct.can_rcv_lists_stats* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.net*, %struct.net** %10, align 8
  %112 = getelementptr inbounds %struct.net, %struct.net* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = call i32 @spin_unlock_bh(i32* %113)
  %115 = load i32, i32* %22, align 4
  store i32 %115, i32* %9, align 4
  br label %116

116:                                              ; preds = %59, %56, %47, %35
  %117 = load i32, i32* %9, align 4
  ret i32 %117
}

declare dso_local i32 @net_eq(%struct.net*, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local %struct.receiver* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.can_dev_rcv_lists* @can_dev_rcv_lists_find(%struct.net*, %struct.net_device*) #1

declare dso_local %struct.hlist_head* @can_rcv_list_find(i8**, i8**, %struct.can_dev_rcv_lists*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, %struct.hlist_head*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
