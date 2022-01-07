; ModuleID = '/home/carl/AnghaBench/linux/net/can/extr_raw.c_raw_enable_filters.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/extr_raw.c_raw_enable_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.sock = type { i32 }
%struct.can_filter = type { i32, i32 }

@raw_rcv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.net_device*, %struct.sock*, %struct.can_filter*, i32)* @raw_enable_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_enable_filters(%struct.net* %0, %struct.net_device* %1, %struct.sock* %2, %struct.can_filter* %3, i32 %4) #0 {
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.can_filter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.sock* %2, %struct.sock** %8, align 8
  store %struct.can_filter* %3, %struct.can_filter** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %63, %5
  %14 = load i32, i32* %12, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %66

17:                                               ; preds = %13
  %18 = load %struct.net*, %struct.net** %6, align 8
  %19 = load %struct.net_device*, %struct.net_device** %7, align 8
  %20 = load %struct.can_filter*, %struct.can_filter** %9, align 8
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.can_filter, %struct.can_filter* %20, i64 %22
  %24 = getelementptr inbounds %struct.can_filter, %struct.can_filter* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.can_filter*, %struct.can_filter** %9, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.can_filter, %struct.can_filter* %26, i64 %28
  %30 = getelementptr inbounds %struct.can_filter, %struct.can_filter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @raw_rcv, align 4
  %33 = load %struct.sock*, %struct.sock** %8, align 8
  %34 = load %struct.sock*, %struct.sock** %8, align 8
  %35 = call i32 @can_rx_register(%struct.net* %18, %struct.net_device* %19, i32 %25, i32 %31, i32 %32, %struct.sock* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.sock* %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %62

38:                                               ; preds = %17
  br label %39

39:                                               ; preds = %43, %38
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %12, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %39
  %44 = load %struct.net*, %struct.net** %6, align 8
  %45 = load %struct.net_device*, %struct.net_device** %7, align 8
  %46 = load %struct.can_filter*, %struct.can_filter** %9, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.can_filter, %struct.can_filter* %46, i64 %48
  %50 = getelementptr inbounds %struct.can_filter, %struct.can_filter* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.can_filter*, %struct.can_filter** %9, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.can_filter, %struct.can_filter* %52, i64 %54
  %56 = getelementptr inbounds %struct.can_filter, %struct.can_filter* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @raw_rcv, align 4
  %59 = load %struct.sock*, %struct.sock** %8, align 8
  %60 = call i32 @can_rx_unregister(%struct.net* %44, %struct.net_device* %45, i32 %51, i32 %57, i32 %58, %struct.sock* %59)
  br label %39

61:                                               ; preds = %39
  br label %66

62:                                               ; preds = %17
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  br label %13

66:                                               ; preds = %61, %13
  %67 = load i32, i32* %11, align 4
  ret i32 %67
}

declare dso_local i32 @can_rx_register(%struct.net*, %struct.net_device*, i32, i32, i32, %struct.sock*, i8*, %struct.sock*) #1

declare dso_local i32 @can_rx_unregister(%struct.net*, %struct.net_device*, i32, i32, i32, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
