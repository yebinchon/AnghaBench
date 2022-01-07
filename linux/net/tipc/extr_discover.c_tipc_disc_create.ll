; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_discover.c_tipc_disc_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_discover.c_tipc_disc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_bearer = type { %struct.tipc_discoverer*, i32, i32 }
%struct.tipc_discoverer = type { i32, i64, i32, i32, i64, i32, i32, %struct.net*, i32 }
%struct.tipc_media_addr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tipc_net = type { i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_H_SIZE = common dso_local global i64 0, align 8
@NODE_ID_LEN = common dso_local global i64 0, align 8
@DSC_REQ_MSG = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@DSC_TRIAL_MSG = common dso_local global i32 0, align 4
@TIPC_DISC_INIT = common dso_local global i64 0, align 8
@tipc_disc_timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_disc_create(%struct.net* %0, %struct.tipc_bearer* %1, %struct.tipc_media_addr* %2, %struct.sk_buff** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.tipc_bearer*, align 8
  %8 = alloca %struct.tipc_media_addr*, align 8
  %9 = alloca %struct.sk_buff**, align 8
  %10 = alloca %struct.tipc_net*, align 8
  %11 = alloca %struct.tipc_discoverer*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.tipc_bearer* %1, %struct.tipc_bearer** %7, align 8
  store %struct.tipc_media_addr* %2, %struct.tipc_media_addr** %8, align 8
  store %struct.sk_buff** %3, %struct.sk_buff*** %9, align 8
  %12 = load %struct.net*, %struct.net** %6, align 8
  %13 = call %struct.tipc_net* @tipc_net(%struct.net* %12)
  store %struct.tipc_net* %13, %struct.tipc_net** %10, align 8
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.tipc_discoverer* @kmalloc(i32 56, i32 %14)
  store %struct.tipc_discoverer* %15, %struct.tipc_discoverer** %11, align 8
  %16 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %11, align 8
  %17 = icmp ne %struct.tipc_discoverer* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %108

21:                                               ; preds = %4
  %22 = load i64, i64* @MAX_H_SIZE, align 8
  %23 = load i64, i64* @NODE_ID_LEN, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  %26 = call i32 @tipc_buf_acquire(i64 %24, i32 %25)
  %27 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %11, align 8
  %28 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %11, align 8
  %30 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %21
  %34 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %11, align 8
  %35 = call i32 @kfree(%struct.tipc_discoverer* %34)
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %108

38:                                               ; preds = %21
  %39 = load %struct.net*, %struct.net** %6, align 8
  %40 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %11, align 8
  %41 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @DSC_REQ_MSG, align 4
  %44 = load %struct.tipc_bearer*, %struct.tipc_bearer** %7, align 8
  %45 = call i32 @tipc_disc_init_msg(%struct.net* %39, i32 %42, i32 %43, %struct.tipc_bearer* %44)
  %46 = load %struct.net*, %struct.net** %6, align 8
  %47 = call i32 @tipc_own_addr(%struct.net* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %38
  %50 = load i64, i64* @jiffies, align 8
  %51 = call i64 @msecs_to_jiffies(i32 1000)
  %52 = add nsw i64 %50, %51
  %53 = load %struct.tipc_net*, %struct.tipc_net** %10, align 8
  %54 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %11, align 8
  %56 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @buf_msg(i32 %57)
  %59 = load i32, i32* @DSC_TRIAL_MSG, align 4
  %60 = call i32 @msg_set_type(i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %49, %38
  %62 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %11, align 8
  %63 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %62, i32 0, i32 8
  %64 = load %struct.tipc_media_addr*, %struct.tipc_media_addr** %8, align 8
  %65 = call i32 @memcpy(i32* %63, %struct.tipc_media_addr* %64, i32 4)
  %66 = load %struct.net*, %struct.net** %6, align 8
  %67 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %11, align 8
  %68 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %67, i32 0, i32 7
  store %struct.net* %66, %struct.net** %68, align 8
  %69 = load %struct.tipc_bearer*, %struct.tipc_bearer** %7, align 8
  %70 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %11, align 8
  %73 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %72, i32 0, i32 6
  store i32 %71, i32* %73, align 4
  %74 = load %struct.tipc_bearer*, %struct.tipc_bearer** %7, align 8
  %75 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %11, align 8
  %78 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 8
  %79 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %11, align 8
  %80 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %79, i32 0, i32 4
  store i64 0, i64* %80, align 8
  %81 = load i64, i64* @TIPC_DISC_INIT, align 8
  %82 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %11, align 8
  %83 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  %84 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %11, align 8
  %85 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %84, i32 0, i32 3
  %86 = call i32 @spin_lock_init(i32* %85)
  %87 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %11, align 8
  %88 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %87, i32 0, i32 2
  %89 = load i32, i32* @tipc_disc_timeout, align 4
  %90 = call i32 @timer_setup(i32* %88, i32 %89, i32 0)
  %91 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %11, align 8
  %92 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %91, i32 0, i32 2
  %93 = load i64, i64* @jiffies, align 8
  %94 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %11, align 8
  %95 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %93, %96
  %98 = call i32 @mod_timer(i32* %92, i64 %97)
  %99 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %11, align 8
  %100 = load %struct.tipc_bearer*, %struct.tipc_bearer** %7, align 8
  %101 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %100, i32 0, i32 0
  store %struct.tipc_discoverer* %99, %struct.tipc_discoverer** %101, align 8
  %102 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %11, align 8
  %103 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @GFP_ATOMIC, align 4
  %106 = call %struct.sk_buff* @skb_clone(i32 %104, i32 %105)
  %107 = load %struct.sk_buff**, %struct.sk_buff*** %9, align 8
  store %struct.sk_buff* %106, %struct.sk_buff** %107, align 8
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %61, %33, %18
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local %struct.tipc_net* @tipc_net(%struct.net*) #1

declare dso_local %struct.tipc_discoverer* @kmalloc(i32, i32) #1

declare dso_local i32 @tipc_buf_acquire(i64, i32) #1

declare dso_local i32 @kfree(%struct.tipc_discoverer*) #1

declare dso_local i32 @tipc_disc_init_msg(%struct.net*, i32, i32, %struct.tipc_bearer*) #1

declare dso_local i32 @tipc_own_addr(%struct.net*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @msg_set_type(i32, i32) #1

declare dso_local i32 @buf_msg(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.tipc_media_addr*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local %struct.sk_buff* @skb_clone(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
