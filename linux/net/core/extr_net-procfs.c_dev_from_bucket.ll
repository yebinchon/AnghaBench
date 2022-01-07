; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_net-procfs.c_dev_from_bucket.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_net-procfs.c_dev_from_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.seq_file = type { i32 }

@NETDEV_HASHENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.seq_file*, i32*)* @dev_from_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @dev_from_bucket(%struct.seq_file* %0, i32* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i32* %1, i32** %5, align 8
  br label %8

8:                                                ; preds = %24, %2
  %9 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call %struct.net_device* @dev_from_same_bucket(%struct.seq_file* %9, i32* %10)
  store %struct.net_device* %11, %struct.net_device** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = icmp ne %struct.net_device* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %15, %struct.net_device** %3, align 8
  br label %29

16:                                               ; preds = %8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @get_bucket(i32 %18)
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @set_bucket_offset(i32 %21, i32 1)
  %23 = load i32*, i32** %5, align 8
  store i32 %22, i32* %23, align 4
  br label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @NETDEV_HASHENTRIES, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %8, label %28

28:                                               ; preds = %24
  store %struct.net_device* null, %struct.net_device** %3, align 8
  br label %29

29:                                               ; preds = %28, %14
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  ret %struct.net_device* %30
}

declare dso_local %struct.net_device* @dev_from_same_bucket(%struct.seq_file*, i32*) #1

declare dso_local i32 @get_bucket(i32) #1

declare dso_local i32 @set_bucket_offset(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
