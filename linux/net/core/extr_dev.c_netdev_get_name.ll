; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_netdev_get_name.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_netdev_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.net_device = type { i32 }

@devnet_rename_seq = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netdev_get_name(%struct.net* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  br label %10

10:                                               ; preds = %32, %3
  %11 = call i32 @raw_seqcount_begin(i32* @devnet_rename_seq)
  store i32 %11, i32* %9, align 4
  %12 = call i32 (...) @rcu_read_lock()
  %13 = load %struct.net*, %struct.net** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.net_device* @dev_get_by_index_rcu(%struct.net* %13, i32 %14)
  store %struct.net_device* %15, %struct.net_device** %8, align 8
  %16 = load %struct.net_device*, %struct.net_device** %8, align 8
  %17 = icmp ne %struct.net_device* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %10
  %19 = call i32 (...) @rcu_read_unlock()
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %35

22:                                               ; preds = %10
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.net_device*, %struct.net_device** %8, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @strcpy(i8* %23, i32 %26)
  %28 = call i32 (...) @rcu_read_unlock()
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @read_seqcount_retry(i32* @devnet_rename_seq, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = call i32 (...) @cond_resched()
  br label %10

34:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %18
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @raw_seqcount_begin(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @dev_get_by_index_rcu(%struct.net*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i64 @read_seqcount_retry(i32*, i32) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
