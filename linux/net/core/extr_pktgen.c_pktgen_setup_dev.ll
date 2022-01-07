; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_pktgen.c_pktgen_setup_dev.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_pktgen.c_pktgen_setup_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktgen_net = type { i32 }
%struct.pktgen_dev = type { %struct.net_device* }
%struct.net_device = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"no such netdevice: \22%s\22\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"not an ethernet device: \22%s\22\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"device is down: \22%s\22\0A\00", align 1
@ENETDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pktgen_net*, %struct.pktgen_dev*, i8*)* @pktgen_setup_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pktgen_setup_dev(%struct.pktgen_net* %0, %struct.pktgen_dev* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pktgen_net*, align 8
  %6 = alloca %struct.pktgen_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  store %struct.pktgen_net* %0, %struct.pktgen_net** %5, align 8
  store %struct.pktgen_dev* %1, %struct.pktgen_dev** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.pktgen_dev*, %struct.pktgen_dev** %6, align 8
  %11 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %10, i32 0, i32 0
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  %13 = icmp ne %struct.net_device* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load %struct.pktgen_dev*, %struct.pktgen_dev** %6, align 8
  %16 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %15, i32 0, i32 0
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  %18 = call i32 @dev_put(%struct.net_device* %17)
  %19 = load %struct.pktgen_dev*, %struct.pktgen_dev** %6, align 8
  %20 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %19, i32 0, i32 0
  store %struct.net_device* null, %struct.net_device** %20, align 8
  br label %21

21:                                               ; preds = %14, %3
  %22 = load %struct.pktgen_net*, %struct.pktgen_net** %5, align 8
  %23 = load %struct.pktgen_dev*, %struct.pktgen_dev** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call %struct.net_device* @pktgen_dev_get_by_name(%struct.pktgen_net* %22, %struct.pktgen_dev* %23, i8* %24)
  store %struct.net_device* %25, %struct.net_device** %8, align 8
  %26 = load %struct.net_device*, %struct.net_device** %8, align 8
  %27 = icmp ne %struct.net_device* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %21
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %62

33:                                               ; preds = %21
  %34 = load %struct.net_device*, %struct.net_device** %8, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ARPHRD_ETHER, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %9, align 4
  br label %58

44:                                               ; preds = %33
  %45 = load %struct.net_device*, %struct.net_device** %8, align 8
  %46 = call i32 @netif_running(%struct.net_device* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  %51 = load i32, i32* @ENETDOWN, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %9, align 4
  br label %57

53:                                               ; preds = %44
  %54 = load %struct.net_device*, %struct.net_device** %8, align 8
  %55 = load %struct.pktgen_dev*, %struct.pktgen_dev** %6, align 8
  %56 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %55, i32 0, i32 0
  store %struct.net_device* %54, %struct.net_device** %56, align 8
  store i32 0, i32* %4, align 4
  br label %62

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %39
  %59 = load %struct.net_device*, %struct.net_device** %8, align 8
  %60 = call i32 @dev_put(%struct.net_device* %59)
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %58, %53, %28
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local %struct.net_device* @pktgen_dev_get_by_name(%struct.pktgen_net*, %struct.pktgen_dev*, i8*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
