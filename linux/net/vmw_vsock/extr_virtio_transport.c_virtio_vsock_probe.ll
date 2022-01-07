; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport.c_virtio_vsock_probe.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport.c_virtio_vsock_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { %struct.virtio_vsock* }
%struct.virtio_vsock = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, %struct.virtio_device* }

@virtio_vsock_rx_done = common dso_local global i32* null, align 8
@virtio_vsock_tx_done = common dso_local global i32* null, align 8
@virtio_vsock_event_done = common dso_local global i32* null, align 8
@virtio_vsock_probe.names = internal constant [3 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@the_virtio_vsock_mutex = common dso_local global i32 0, align 4
@the_virtio_vsock = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VSOCK_VQ_MAX = common dso_local global i32 0, align 4
@virtio_transport_rx_work = common dso_local global i32 0, align 4
@virtio_transport_tx_work = common dso_local global i32 0, align 4
@virtio_transport_event_work = common dso_local global i32 0, align 4
@virtio_transport_send_pkt_work = common dso_local global i32 0, align 4
@virtio_transport_loopback_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_device*)* @virtio_vsock_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_vsock_probe(%struct.virtio_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.virtio_device*, align 8
  %4 = alloca [3 x i32*], align 16
  %5 = alloca %struct.virtio_vsock*, align 8
  %6 = alloca i32, align 4
  store %struct.virtio_device* %0, %struct.virtio_device** %3, align 8
  %7 = getelementptr inbounds [3 x i32*], [3 x i32*]* %4, i64 0, i64 0
  %8 = load i32*, i32** @virtio_vsock_rx_done, align 8
  store i32* %8, i32** %7, align 8
  %9 = getelementptr inbounds i32*, i32** %7, i64 1
  %10 = load i32*, i32** @virtio_vsock_tx_done, align 8
  store i32* %10, i32** %9, align 8
  %11 = getelementptr inbounds i32*, i32** %9, i64 1
  %12 = load i32*, i32** @virtio_vsock_event_done, align 8
  store i32* %12, i32** %11, align 8
  store %struct.virtio_vsock* null, %struct.virtio_vsock** %5, align 8
  %13 = call i32 @mutex_lock_interruptible(i32* @the_virtio_vsock_mutex)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %141

18:                                               ; preds = %1
  %19 = load i32, i32* @the_virtio_vsock, align 4
  %20 = call i32 @lockdep_is_held(i32* @the_virtio_vsock_mutex)
  %21 = call i64 @rcu_dereference_protected(i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %136

26:                                               ; preds = %18
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.virtio_vsock* @kzalloc(i32 96, i32 %27)
  store %struct.virtio_vsock* %28, %struct.virtio_vsock** %5, align 8
  %29 = load %struct.virtio_vsock*, %struct.virtio_vsock** %5, align 8
  %30 = icmp ne %struct.virtio_vsock* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %136

34:                                               ; preds = %26
  %35 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %36 = load %struct.virtio_vsock*, %struct.virtio_vsock** %5, align 8
  %37 = getelementptr inbounds %struct.virtio_vsock, %struct.virtio_vsock* %36, i32 0, i32 19
  store %struct.virtio_device* %35, %struct.virtio_device** %37, align 8
  %38 = load %struct.virtio_vsock*, %struct.virtio_vsock** %5, align 8
  %39 = getelementptr inbounds %struct.virtio_vsock, %struct.virtio_vsock* %38, i32 0, i32 19
  %40 = load %struct.virtio_device*, %struct.virtio_device** %39, align 8
  %41 = load i32, i32* @VSOCK_VQ_MAX, align 4
  %42 = load %struct.virtio_vsock*, %struct.virtio_vsock** %5, align 8
  %43 = getelementptr inbounds %struct.virtio_vsock, %struct.virtio_vsock* %42, i32 0, i32 18
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds [3 x i32*], [3 x i32*]* %4, i64 0, i64 0
  %46 = call i32 @virtio_find_vqs(%struct.virtio_device* %40, i32 %41, i32 %44, i32** %45, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @virtio_vsock_probe.names, i64 0, i64 0), i32* null)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %34
  br label %136

50:                                               ; preds = %34
  %51 = load %struct.virtio_vsock*, %struct.virtio_vsock** %5, align 8
  %52 = call i32 @virtio_vsock_update_guest_cid(%struct.virtio_vsock* %51)
  %53 = load %struct.virtio_vsock*, %struct.virtio_vsock** %5, align 8
  %54 = getelementptr inbounds %struct.virtio_vsock, %struct.virtio_vsock* %53, i32 0, i32 17
  store i64 0, i64* %54, align 8
  %55 = load %struct.virtio_vsock*, %struct.virtio_vsock** %5, align 8
  %56 = getelementptr inbounds %struct.virtio_vsock, %struct.virtio_vsock* %55, i32 0, i32 16
  store i64 0, i64* %56, align 8
  %57 = load %struct.virtio_vsock*, %struct.virtio_vsock** %5, align 8
  %58 = getelementptr inbounds %struct.virtio_vsock, %struct.virtio_vsock* %57, i32 0, i32 15
  %59 = call i32 @atomic_set(i32* %58, i32 0)
  %60 = load %struct.virtio_vsock*, %struct.virtio_vsock** %5, align 8
  %61 = getelementptr inbounds %struct.virtio_vsock, %struct.virtio_vsock* %60, i32 0, i32 5
  %62 = call i32 @mutex_init(i32* %61)
  %63 = load %struct.virtio_vsock*, %struct.virtio_vsock** %5, align 8
  %64 = getelementptr inbounds %struct.virtio_vsock, %struct.virtio_vsock* %63, i32 0, i32 4
  %65 = call i32 @mutex_init(i32* %64)
  %66 = load %struct.virtio_vsock*, %struct.virtio_vsock** %5, align 8
  %67 = getelementptr inbounds %struct.virtio_vsock, %struct.virtio_vsock* %66, i32 0, i32 3
  %68 = call i32 @mutex_init(i32* %67)
  %69 = load %struct.virtio_vsock*, %struct.virtio_vsock** %5, align 8
  %70 = getelementptr inbounds %struct.virtio_vsock, %struct.virtio_vsock* %69, i32 0, i32 14
  %71 = call i32 @spin_lock_init(i32* %70)
  %72 = load %struct.virtio_vsock*, %struct.virtio_vsock** %5, align 8
  %73 = getelementptr inbounds %struct.virtio_vsock, %struct.virtio_vsock* %72, i32 0, i32 13
  %74 = call i32 @INIT_LIST_HEAD(i32* %73)
  %75 = load %struct.virtio_vsock*, %struct.virtio_vsock** %5, align 8
  %76 = getelementptr inbounds %struct.virtio_vsock, %struct.virtio_vsock* %75, i32 0, i32 12
  %77 = call i32 @spin_lock_init(i32* %76)
  %78 = load %struct.virtio_vsock*, %struct.virtio_vsock** %5, align 8
  %79 = getelementptr inbounds %struct.virtio_vsock, %struct.virtio_vsock* %78, i32 0, i32 11
  %80 = call i32 @INIT_LIST_HEAD(i32* %79)
  %81 = load %struct.virtio_vsock*, %struct.virtio_vsock** %5, align 8
  %82 = getelementptr inbounds %struct.virtio_vsock, %struct.virtio_vsock* %81, i32 0, i32 10
  %83 = load i32, i32* @virtio_transport_rx_work, align 4
  %84 = call i32 @INIT_WORK(i32* %82, i32 %83)
  %85 = load %struct.virtio_vsock*, %struct.virtio_vsock** %5, align 8
  %86 = getelementptr inbounds %struct.virtio_vsock, %struct.virtio_vsock* %85, i32 0, i32 9
  %87 = load i32, i32* @virtio_transport_tx_work, align 4
  %88 = call i32 @INIT_WORK(i32* %86, i32 %87)
  %89 = load %struct.virtio_vsock*, %struct.virtio_vsock** %5, align 8
  %90 = getelementptr inbounds %struct.virtio_vsock, %struct.virtio_vsock* %89, i32 0, i32 8
  %91 = load i32, i32* @virtio_transport_event_work, align 4
  %92 = call i32 @INIT_WORK(i32* %90, i32 %91)
  %93 = load %struct.virtio_vsock*, %struct.virtio_vsock** %5, align 8
  %94 = getelementptr inbounds %struct.virtio_vsock, %struct.virtio_vsock* %93, i32 0, i32 7
  %95 = load i32, i32* @virtio_transport_send_pkt_work, align 4
  %96 = call i32 @INIT_WORK(i32* %94, i32 %95)
  %97 = load %struct.virtio_vsock*, %struct.virtio_vsock** %5, align 8
  %98 = getelementptr inbounds %struct.virtio_vsock, %struct.virtio_vsock* %97, i32 0, i32 6
  %99 = load i32, i32* @virtio_transport_loopback_work, align 4
  %100 = call i32 @INIT_WORK(i32* %98, i32 %99)
  %101 = load %struct.virtio_vsock*, %struct.virtio_vsock** %5, align 8
  %102 = getelementptr inbounds %struct.virtio_vsock, %struct.virtio_vsock* %101, i32 0, i32 5
  %103 = call i32 @mutex_lock(i32* %102)
  %104 = load %struct.virtio_vsock*, %struct.virtio_vsock** %5, align 8
  %105 = getelementptr inbounds %struct.virtio_vsock, %struct.virtio_vsock* %104, i32 0, i32 0
  store i32 1, i32* %105, align 8
  %106 = load %struct.virtio_vsock*, %struct.virtio_vsock** %5, align 8
  %107 = getelementptr inbounds %struct.virtio_vsock, %struct.virtio_vsock* %106, i32 0, i32 5
  %108 = call i32 @mutex_unlock(i32* %107)
  %109 = load %struct.virtio_vsock*, %struct.virtio_vsock** %5, align 8
  %110 = getelementptr inbounds %struct.virtio_vsock, %struct.virtio_vsock* %109, i32 0, i32 4
  %111 = call i32 @mutex_lock(i32* %110)
  %112 = load %struct.virtio_vsock*, %struct.virtio_vsock** %5, align 8
  %113 = call i32 @virtio_vsock_rx_fill(%struct.virtio_vsock* %112)
  %114 = load %struct.virtio_vsock*, %struct.virtio_vsock** %5, align 8
  %115 = getelementptr inbounds %struct.virtio_vsock, %struct.virtio_vsock* %114, i32 0, i32 1
  store i32 1, i32* %115, align 4
  %116 = load %struct.virtio_vsock*, %struct.virtio_vsock** %5, align 8
  %117 = getelementptr inbounds %struct.virtio_vsock, %struct.virtio_vsock* %116, i32 0, i32 4
  %118 = call i32 @mutex_unlock(i32* %117)
  %119 = load %struct.virtio_vsock*, %struct.virtio_vsock** %5, align 8
  %120 = getelementptr inbounds %struct.virtio_vsock, %struct.virtio_vsock* %119, i32 0, i32 3
  %121 = call i32 @mutex_lock(i32* %120)
  %122 = load %struct.virtio_vsock*, %struct.virtio_vsock** %5, align 8
  %123 = call i32 @virtio_vsock_event_fill(%struct.virtio_vsock* %122)
  %124 = load %struct.virtio_vsock*, %struct.virtio_vsock** %5, align 8
  %125 = getelementptr inbounds %struct.virtio_vsock, %struct.virtio_vsock* %124, i32 0, i32 2
  store i32 1, i32* %125, align 8
  %126 = load %struct.virtio_vsock*, %struct.virtio_vsock** %5, align 8
  %127 = getelementptr inbounds %struct.virtio_vsock, %struct.virtio_vsock* %126, i32 0, i32 3
  %128 = call i32 @mutex_unlock(i32* %127)
  %129 = load %struct.virtio_vsock*, %struct.virtio_vsock** %5, align 8
  %130 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %131 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %130, i32 0, i32 0
  store %struct.virtio_vsock* %129, %struct.virtio_vsock** %131, align 8
  %132 = load i32, i32* @the_virtio_vsock, align 4
  %133 = load %struct.virtio_vsock*, %struct.virtio_vsock** %5, align 8
  %134 = call i32 @rcu_assign_pointer(i32 %132, %struct.virtio_vsock* %133)
  %135 = call i32 @mutex_unlock(i32* @the_virtio_vsock_mutex)
  store i32 0, i32* %2, align 4
  br label %141

136:                                              ; preds = %49, %31, %23
  %137 = load %struct.virtio_vsock*, %struct.virtio_vsock** %5, align 8
  %138 = call i32 @kfree(%struct.virtio_vsock* %137)
  %139 = call i32 @mutex_unlock(i32* @the_virtio_vsock_mutex)
  %140 = load i32, i32* %6, align 4
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %136, %50, %16
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i64 @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local %struct.virtio_vsock* @kzalloc(i32, i32) #1

declare dso_local i32 @virtio_find_vqs(%struct.virtio_device*, i32, i32, i32**, i8**, i32*) #1

declare dso_local i32 @virtio_vsock_update_guest_cid(%struct.virtio_vsock*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @virtio_vsock_rx_fill(%struct.virtio_vsock*) #1

declare dso_local i32 @virtio_vsock_event_fill(%struct.virtio_vsock*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.virtio_vsock*) #1

declare dso_local i32 @kfree(%struct.virtio_vsock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
