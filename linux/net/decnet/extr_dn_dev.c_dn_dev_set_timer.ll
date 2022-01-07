; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_dev.c_dn_dev_set_timer.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_dev.c_dn_dev_set_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dn_dev = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @dn_dev_set_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dn_dev_set_timer(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.dn_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.dn_dev* @rcu_dereference_raw(i32 %6)
  store %struct.dn_dev* %7, %struct.dn_dev** %3, align 8
  %8 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %9 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %13 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %11, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %19 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %23 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  br label %25

25:                                               ; preds = %17, %1
  %26 = load i64, i64* @jiffies, align 8
  %27 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %28 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @HZ, align 4
  %32 = mul nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %26, %33
  %35 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %36 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i64 %34, i64* %37, align 8
  %38 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %39 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %38, i32 0, i32 0
  %40 = call i32 @add_timer(%struct.TYPE_4__* %39)
  ret void
}

declare dso_local %struct.dn_dev* @rcu_dereference_raw(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
