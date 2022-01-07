; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/nvdimm/extr_dimm_devs.c_security_show.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/nvdimm/extr_dimm_devs.c_security_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.nvdimm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NVDIMM_USER = common dso_local global i32 0, align 4
@NVDIMM_SECURITY_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"disabled\0A\00", align 1
@NVDIMM_SECURITY_UNLOCKED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"unlocked\0A\00", align 1
@NVDIMM_SECURITY_LOCKED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"locked\0A\00", align 1
@ENOTTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @security_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nvdimm*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = call %struct.nvdimm* @to_nvdimm(%struct.device* %9)
  store %struct.nvdimm* %10, %struct.nvdimm** %8, align 8
  %11 = load %struct.nvdimm*, %struct.nvdimm** %8, align 8
  %12 = load i32, i32* @NVDIMM_USER, align 4
  %13 = call i32 @nvdimm_security_flags(%struct.nvdimm* %11, i32 %12)
  %14 = load %struct.nvdimm*, %struct.nvdimm** %8, align 8
  %15 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* @NVDIMM_SECURITY_DISABLED, align 4
  %18 = load %struct.nvdimm*, %struct.nvdimm** %8, align 8
  %19 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i64 @test_bit(i32 %17, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @sprintf(i8* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %4, align 4
  br label %49

26:                                               ; preds = %3
  %27 = load i32, i32* @NVDIMM_SECURITY_UNLOCKED, align 4
  %28 = load %struct.nvdimm*, %struct.nvdimm** %8, align 8
  %29 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i64 @test_bit(i32 %27, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @sprintf(i8* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 %35, i32* %4, align 4
  br label %49

36:                                               ; preds = %26
  %37 = load i32, i32* @NVDIMM_SECURITY_LOCKED, align 4
  %38 = load %struct.nvdimm*, %struct.nvdimm** %8, align 8
  %39 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i64 @test_bit(i32 %37, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @sprintf(i8* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 %45, i32* %4, align 4
  br label %49

46:                                               ; preds = %36
  %47 = load i32, i32* @ENOTTY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %46, %43, %33, %23
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.nvdimm* @to_nvdimm(%struct.device*) #1

declare dso_local i32 @nvdimm_security_flags(%struct.nvdimm*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
