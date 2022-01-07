; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_frwr_ops.c_frwr_is_supported.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_frwr_ops.c_frwr_is_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32, %struct.ib_device_attr }
%struct.ib_device_attr = type { i32, i64 }

@IB_DEVICE_MEM_MGT_EXTENSIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"rpcrdma: 'frwr' mode is not supported by device %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @frwr_is_supported(%struct.ib_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca %struct.ib_device_attr*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  %5 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %6 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %5, i32 0, i32 1
  store %struct.ib_device_attr* %6, %struct.ib_device_attr** %4, align 8
  %7 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %8 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @IB_DEVICE_MEM_MGT_EXTENSIONS, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %21

14:                                               ; preds = %1
  %15 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %16 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %21

20:                                               ; preds = %14
  store i32 1, i32* %2, align 4
  br label %26

21:                                               ; preds = %19, %13
  %22 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %23 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @pr_info(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %21, %20
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
