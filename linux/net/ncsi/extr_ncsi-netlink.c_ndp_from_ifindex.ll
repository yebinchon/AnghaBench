; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-netlink.c_ndp_from_ifindex.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-netlink.c_ndp_from_ifindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncsi_dev_priv = type { i32 }
%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.ncsi_dev = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"NCSI netlink: No device for ifindex %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ncsi_dev_priv* (%struct.net*, i32)* @ndp_from_ifindex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ncsi_dev_priv* @ndp_from_ifindex(%struct.net* %0, i32 %1) #0 {
  %3 = alloca %struct.ncsi_dev_priv*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ncsi_dev_priv*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.ncsi_dev*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net*, %struct.net** %4, align 8
  %10 = icmp ne %struct.net* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.ncsi_dev_priv* null, %struct.ncsi_dev_priv** %3, align 8
  br label %35

12:                                               ; preds = %2
  %13 = load %struct.net*, %struct.net** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.net_device* @dev_get_by_index(%struct.net* %13, i32 %14)
  store %struct.net_device* %15, %struct.net_device** %7, align 8
  %16 = load %struct.net_device*, %struct.net_device** %7, align 8
  %17 = icmp ne %struct.net_device* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %19)
  store %struct.ncsi_dev_priv* null, %struct.ncsi_dev_priv** %3, align 8
  br label %35

21:                                               ; preds = %12
  %22 = load %struct.net_device*, %struct.net_device** %7, align 8
  %23 = call %struct.ncsi_dev* @ncsi_find_dev(%struct.net_device* %22)
  store %struct.ncsi_dev* %23, %struct.ncsi_dev** %8, align 8
  %24 = load %struct.ncsi_dev*, %struct.ncsi_dev** %8, align 8
  %25 = icmp ne %struct.ncsi_dev* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.ncsi_dev*, %struct.ncsi_dev** %8, align 8
  %28 = call %struct.ncsi_dev_priv* @TO_NCSI_DEV_PRIV(%struct.ncsi_dev* %27)
  br label %30

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %26
  %31 = phi %struct.ncsi_dev_priv* [ %28, %26 ], [ null, %29 ]
  store %struct.ncsi_dev_priv* %31, %struct.ncsi_dev_priv** %6, align 8
  %32 = load %struct.net_device*, %struct.net_device** %7, align 8
  %33 = call i32 @dev_put(%struct.net_device* %32)
  %34 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %6, align 8
  store %struct.ncsi_dev_priv* %34, %struct.ncsi_dev_priv** %3, align 8
  br label %35

35:                                               ; preds = %30, %18, %11
  %36 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %3, align 8
  ret %struct.ncsi_dev_priv* %36
}

declare dso_local %struct.net_device* @dev_get_by_index(%struct.net*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local %struct.ncsi_dev* @ncsi_find_dev(%struct.net_device*) #1

declare dso_local %struct.ncsi_dev_priv* @TO_NCSI_DEV_PRIV(%struct.ncsi_dev*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
