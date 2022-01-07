; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_netdev_boot_setup_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_netdev_boot_setup_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netdev_boot_setup = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.net_device = type { i32, i32, i32, i32, i32 }

@dev_boot_setup = common dso_local global %struct.netdev_boot_setup* null, align 8
@NETDEV_BOOT_SETUP_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netdev_boot_setup_check(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.netdev_boot_setup*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.netdev_boot_setup*, %struct.netdev_boot_setup** @dev_boot_setup, align 8
  store %struct.netdev_boot_setup* %6, %struct.netdev_boot_setup** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %83, %1
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @NETDEV_BOOT_SETUP_MAX, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %86

11:                                               ; preds = %7
  %12 = load %struct.netdev_boot_setup*, %struct.netdev_boot_setup** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.netdev_boot_setup, %struct.netdev_boot_setup* %12, i64 %14
  %16 = getelementptr inbounds %struct.netdev_boot_setup, %struct.netdev_boot_setup* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %82

22:                                               ; preds = %11
  %23 = load %struct.netdev_boot_setup*, %struct.netdev_boot_setup** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.netdev_boot_setup, %struct.netdev_boot_setup* %23, i64 %25
  %27 = getelementptr inbounds %struct.netdev_boot_setup, %struct.netdev_boot_setup* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 32
  br i1 %32, label %33, label %82

33:                                               ; preds = %22
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.netdev_boot_setup*, %struct.netdev_boot_setup** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.netdev_boot_setup, %struct.netdev_boot_setup* %37, i64 %39
  %41 = getelementptr inbounds %struct.netdev_boot_setup, %struct.netdev_boot_setup* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @strcmp(i32 %36, i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %82, label %45

45:                                               ; preds = %33
  %46 = load %struct.netdev_boot_setup*, %struct.netdev_boot_setup** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.netdev_boot_setup, %struct.netdev_boot_setup* %46, i64 %48
  %50 = getelementptr inbounds %struct.netdev_boot_setup, %struct.netdev_boot_setup* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.net_device*, %struct.net_device** %3, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.netdev_boot_setup*, %struct.netdev_boot_setup** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.netdev_boot_setup, %struct.netdev_boot_setup* %55, i64 %57
  %59 = getelementptr inbounds %struct.netdev_boot_setup, %struct.netdev_boot_setup* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.net_device*, %struct.net_device** %3, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.netdev_boot_setup*, %struct.netdev_boot_setup** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.netdev_boot_setup, %struct.netdev_boot_setup* %64, i64 %66
  %68 = getelementptr inbounds %struct.netdev_boot_setup, %struct.netdev_boot_setup* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.net_device*, %struct.net_device** %3, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.netdev_boot_setup*, %struct.netdev_boot_setup** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.netdev_boot_setup, %struct.netdev_boot_setup* %73, i64 %75
  %77 = getelementptr inbounds %struct.netdev_boot_setup, %struct.netdev_boot_setup* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.net_device*, %struct.net_device** %3, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  store i32 1, i32* %2, align 4
  br label %87

82:                                               ; preds = %33, %22, %11
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %7

86:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %86, %45
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
