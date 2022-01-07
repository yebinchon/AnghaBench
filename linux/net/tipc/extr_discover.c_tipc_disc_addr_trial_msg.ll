; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_discover.c_tipc_disc_addr_trial_msg.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_discover.c_tipc_disc_addr_trial_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_discoverer = type { i32, %struct.net* }
%struct.net = type { i32 }
%struct.tipc_media_addr = type { i32 }
%struct.tipc_bearer = type { i32 }
%struct.tipc_net = type { i64, i64 }

@jiffies = common dso_local global i64 0, align 8
@DSC_TRIAL_FAIL_MSG = common dso_local global i32 0, align 4
@DSC_REQ_MSG = common dso_local global i32 0, align 4
@DSC_TRIAL_MSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_discoverer*, %struct.tipc_media_addr*, %struct.tipc_bearer*, i64, i64, i64, i32*, i32)* @tipc_disc_addr_trial_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_disc_addr_trial_msg(%struct.tipc_discoverer* %0, %struct.tipc_media_addr* %1, %struct.tipc_bearer* %2, i64 %3, i64 %4, i64 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.tipc_discoverer*, align 8
  %11 = alloca %struct.tipc_media_addr*, align 8
  %12 = alloca %struct.tipc_bearer*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.net*, align 8
  %19 = alloca %struct.tipc_net*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store %struct.tipc_discoverer* %0, %struct.tipc_discoverer** %10, align 8
  store %struct.tipc_media_addr* %1, %struct.tipc_media_addr** %11, align 8
  store %struct.tipc_bearer* %2, %struct.tipc_bearer** %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %22 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %10, align 8
  %23 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %22, i32 0, i32 1
  %24 = load %struct.net*, %struct.net** %23, align 8
  store %struct.net* %24, %struct.net** %18, align 8
  %25 = load %struct.net*, %struct.net** %18, align 8
  %26 = call %struct.tipc_net* @tipc_net(%struct.net* %25)
  store %struct.tipc_net* %26, %struct.tipc_net** %19, align 8
  %27 = load i64, i64* @jiffies, align 8
  %28 = load %struct.tipc_net*, %struct.tipc_net** %19, align 8
  %29 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @time_before(i64 %27, i64 %30)
  store i32 %31, i32* %20, align 4
  %32 = load %struct.net*, %struct.net** %18, align 8
  %33 = call i64 @tipc_own_addr(%struct.net* %32)
  store i64 %33, i64* %21, align 8
  %34 = load i32, i32* %17, align 4
  %35 = load i32, i32* @DSC_TRIAL_FAIL_MSG, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %63

37:                                               ; preds = %8
  %38 = load i32, i32* %20, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  store i32 1, i32* %9, align 4
  br label %112

41:                                               ; preds = %37
  %42 = load i64, i64* %13, align 8
  %43 = load %struct.tipc_net*, %struct.tipc_net** %19, align 8
  %44 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 1, i32* %9, align 4
  br label %112

48:                                               ; preds = %41
  %49 = load i64, i64* %15, align 8
  %50 = load %struct.tipc_net*, %struct.tipc_net** %19, align 8
  %51 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %10, align 8
  %53 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @buf_msg(i32 %54)
  %56 = load i64, i64* %15, align 8
  %57 = call i32 @msg_set_prevnode(i32 %55, i64 %56)
  %58 = load i64, i64* @jiffies, align 8
  %59 = call i64 @msecs_to_jiffies(i32 1000)
  %60 = add nsw i64 %58, %59
  %61 = load %struct.tipc_net*, %struct.tipc_net** %19, align 8
  %62 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  store i32 1, i32* %9, align 4
  br label %112

63:                                               ; preds = %8
  %64 = load i32, i32* %20, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %89, label %66

66:                                               ; preds = %63
  %67 = load i64, i64* %21, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %89, label %69

69:                                               ; preds = %66
  %70 = load %struct.net*, %struct.net** %18, align 8
  %71 = load %struct.tipc_net*, %struct.tipc_net** %19, align 8
  %72 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @tipc_sched_net_finalize(%struct.net* %70, i64 %73)
  %75 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %10, align 8
  %76 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @buf_msg(i32 %77)
  %79 = load %struct.tipc_net*, %struct.tipc_net** %19, align 8
  %80 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @msg_set_prevnode(i32 %78, i64 %81)
  %83 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %10, align 8
  %84 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @buf_msg(i32 %85)
  %87 = load i32, i32* @DSC_REQ_MSG, align 4
  %88 = call i32 @msg_set_type(i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %69, %66, %63
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* @DSC_TRIAL_MSG, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i32, i32* %20, align 4
  store i32 %94, i32* %9, align 4
  br label %112

95:                                               ; preds = %89
  %96 = load %struct.net*, %struct.net** %18, align 8
  %97 = load i32*, i32** %16, align 8
  %98 = load i64, i64* %14, align 8
  %99 = call i64 @tipc_node_try_addr(%struct.net* %96, i32* %97, i64 %98)
  store i64 %99, i64* %15, align 8
  %100 = load i64, i64* %15, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %95
  %103 = load %struct.net*, %struct.net** %18, align 8
  %104 = load i32, i32* @DSC_TRIAL_FAIL_MSG, align 4
  %105 = load i64, i64* %14, align 8
  %106 = load i64, i64* %21, align 8
  %107 = load i64, i64* %15, align 8
  %108 = load %struct.tipc_media_addr*, %struct.tipc_media_addr** %11, align 8
  %109 = load %struct.tipc_bearer*, %struct.tipc_bearer** %12, align 8
  %110 = call i32 @tipc_disc_msg_xmit(%struct.net* %103, i32 %104, i64 %105, i64 %106, i64 %107, %struct.tipc_media_addr* %108, %struct.tipc_bearer* %109)
  br label %111

111:                                              ; preds = %102, %95
  store i32 1, i32* %9, align 4
  br label %112

112:                                              ; preds = %111, %93, %48, %47, %40
  %113 = load i32, i32* %9, align 4
  ret i32 %113
}

declare dso_local %struct.tipc_net* @tipc_net(%struct.net*) #1

declare dso_local i32 @time_before(i64, i64) #1

declare dso_local i64 @tipc_own_addr(%struct.net*) #1

declare dso_local i32 @msg_set_prevnode(i32, i64) #1

declare dso_local i32 @buf_msg(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @tipc_sched_net_finalize(%struct.net*, i64) #1

declare dso_local i32 @msg_set_type(i32, i32) #1

declare dso_local i64 @tipc_node_try_addr(%struct.net*, i32*, i64) #1

declare dso_local i32 @tipc_disc_msg_xmit(%struct.net*, i32, i64, i64, i64, %struct.tipc_media_addr*, %struct.tipc_bearer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
