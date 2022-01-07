; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-config.c_isst_fill_platform_info.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-config.c_isst_fill_platform_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"/dev/isst_interface\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%s open failed\00", align 1
@ISST_IF_GET_PLATFORM_INFO = common dso_local global i32 0, align 4
@isst_platform_info = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"ISST_IF_GET_PLATFORM_INFO\00", align 1
@supported_api_ver = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [56 x i8] c"Incompatible API versions; Upgrade of tool is required\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @isst_fill_platform_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isst_fill_platform_info() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = load i32, i32* @O_RDWR, align 4
  %6 = call i32 @open(i8* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @err(i32 -1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %10)
  br label %12

12:                                               ; preds = %9, %0
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @ISST_IF_GET_PLATFORM_INFO, align 4
  %15 = call i32 @ioctl(i32 %13, i32 %14, %struct.TYPE_3__* @isst_platform_info)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = call i32 @perror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @close(i32 %19)
  store i32 -1, i32* %1, align 4
  br label %30

21:                                               ; preds = %12
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @close(i32 %22)
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @isst_platform_info, i32 0, i32 0), align 8
  %25 = load i64, i64* @supported_api_ver, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %30

29:                                               ; preds = %21
  store i32 0, i32* %1, align 4
  br label %30

30:                                               ; preds = %29, %27, %17
  %31 = load i32, i32* %1, align 4
  ret i32 %31
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
