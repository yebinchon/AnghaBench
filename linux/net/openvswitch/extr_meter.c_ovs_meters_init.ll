; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_meter.c_ovs_meters_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_meter.c_ovs_meters_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.datapath = type { i32* }

@METER_HASH_BUCKETS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovs_meters_init(%struct.datapath* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.datapath*, align 8
  %4 = alloca i32, align 4
  store %struct.datapath* %0, %struct.datapath** %3, align 8
  %5 = load i32, i32* @METER_HASH_BUCKETS, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i32* @kmalloc_array(i32 %5, i32 4, i32 %6)
  %8 = load %struct.datapath*, %struct.datapath** %3, align 8
  %9 = getelementptr inbounds %struct.datapath, %struct.datapath* %8, i32 0, i32 0
  store i32* %7, i32** %9, align 8
  %10 = load %struct.datapath*, %struct.datapath** %3, align 8
  %11 = getelementptr inbounds %struct.datapath, %struct.datapath* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %34

17:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %30, %17
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @METER_HASH_BUCKETS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = load %struct.datapath*, %struct.datapath** %3, align 8
  %24 = getelementptr inbounds %struct.datapath, %struct.datapath* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = call i32 @INIT_HLIST_HEAD(i32* %28)
  br label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %18

33:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %14
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
