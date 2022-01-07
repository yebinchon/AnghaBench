; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_skb_warn_bad_offload.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_skb_warn_bad_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_3__*, %struct.net_device* }
%struct.TYPE_3__ = type { i32 }
%struct.net_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@skb_warn_bad_offload.null_features = internal constant i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"%s: caps=(%pNF, %pNF)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @skb_warn_bad_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skb_warn_bad_offload(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %6 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %5, i32 0, i32 1
  %7 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %8 = call i32 (...) @net_ratelimit()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %56

11:                                               ; preds = %1
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = icmp ne %struct.net_device* %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %11
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i8* @dev_driver_string(i64 %24)
  store i8* %25, i8** %4, align 8
  br label %29

26:                                               ; preds = %14
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = call i8* @netdev_name(%struct.net_device* %27)
  store i8* %28, i8** %4, align 8
  br label %29

29:                                               ; preds = %26, %20
  br label %30

30:                                               ; preds = %29, %11
  %31 = load i32, i32* @KERN_WARNING, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %33 = call i32 @skb_dump(i32 %31, %struct.sk_buff* %32, i32 0)
  %34 = load i8*, i8** %4, align 8
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = icmp ne %struct.net_device* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  br label %41

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40, %37
  %42 = phi i32* [ %39, %37 ], [ @skb_warn_bad_offload.null_features, %40 ]
  %43 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = icmp ne %struct.TYPE_3__* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  br label %53

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52, %47
  %54 = phi i32* [ %51, %47 ], [ @skb_warn_bad_offload.null_features, %52 ]
  %55 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %34, i32* %42, i32* %54)
  br label %56

56:                                               ; preds = %53, %10
  ret void
}

declare dso_local i32 @net_ratelimit(...) #1

declare dso_local i8* @dev_driver_string(i64) #1

declare dso_local i8* @netdev_name(%struct.net_device*) #1

declare dso_local i32 @skb_dump(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @WARN(i32, i8*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
