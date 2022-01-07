; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_kmod.c_kmod_test_done_check.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_kmod.c_kmod_test_done_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmod_test_device = type { i64, i32, i32, %struct.test_config }
%struct.test_config = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"Done thread count: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Done: %u threads have all run now\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Last thread to run: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kmod_test_device*, i32)* @kmod_test_done_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kmod_test_done_check(%struct.kmod_test_device* %0, i32 %1) #0 {
  %3 = alloca %struct.kmod_test_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.test_config*, align 8
  store %struct.kmod_test_device* %0, %struct.kmod_test_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.kmod_test_device*, %struct.kmod_test_device** %3, align 8
  %7 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %6, i32 0, i32 3
  store %struct.test_config* %7, %struct.test_config** %5, align 8
  %8 = load %struct.kmod_test_device*, %struct.kmod_test_device** %3, align 8
  %9 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* %9, align 8
  %12 = load %struct.kmod_test_device*, %struct.kmod_test_device** %3, align 8
  %13 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.kmod_test_device*, %struct.kmod_test_device** %3, align 8
  %16 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load %struct.kmod_test_device*, %struct.kmod_test_device** %3, align 8
  %20 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.test_config*, %struct.test_config** %5, align 8
  %23 = getelementptr inbounds %struct.test_config, %struct.test_config* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %2
  %27 = load %struct.kmod_test_device*, %struct.kmod_test_device** %3, align 8
  %28 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.kmod_test_device*, %struct.kmod_test_device** %3, align 8
  %31 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 @dev_info(i32 %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load %struct.kmod_test_device*, %struct.kmod_test_device** %3, align 8
  %36 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @dev_info(i32 %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load %struct.kmod_test_device*, %struct.kmod_test_device** %3, align 8
  %41 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %40, i32 0, i32 1
  %42 = call i32 @complete(i32* %41)
  br label %43

43:                                               ; preds = %26, %2
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
