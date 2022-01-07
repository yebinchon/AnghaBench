; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_checks.c_check_spi_bus_reg.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_checks.c_check_spi_bus_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.check = type { i32 }
%struct.dt_info = type { i32 }
%struct.node = type { %struct.node*, i32* }
%struct.property = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@spi_bus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"spi-slave\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"missing or empty reg property\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"SPI bus unit address format error, expected \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.check*, %struct.dt_info*, %struct.node*)* @check_spi_bus_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_spi_bus_reg(%struct.check* %0, %struct.dt_info* %1, %struct.node* %2) #0 {
  %4 = alloca %struct.check*, align 8
  %5 = alloca %struct.dt_info*, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.property*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [9 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.check* %0, %struct.check** %4, align 8
  store %struct.dt_info* %1, %struct.dt_info** %5, align 8
  store %struct.node* %2, %struct.node** %6, align 8
  %12 = load %struct.node*, %struct.node** %6, align 8
  %13 = call i8* @get_unitname(%struct.node* %12)
  store i8* %13, i8** %8, align 8
  store i32 0, i32* %10, align 4
  store i32* null, i32** %11, align 8
  %14 = load %struct.node*, %struct.node** %6, align 8
  %15 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 0
  %16 = load %struct.node*, %struct.node** %15, align 8
  %17 = icmp ne %struct.node* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.node*, %struct.node** %6, align 8
  %20 = getelementptr inbounds %struct.node, %struct.node* %19, i32 0, i32 0
  %21 = load %struct.node*, %struct.node** %20, align 8
  %22 = getelementptr inbounds %struct.node, %struct.node* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, @spi_bus
  br i1 %24, label %25, label %26

25:                                               ; preds = %18, %3
  br label %69

26:                                               ; preds = %18
  %27 = load %struct.node*, %struct.node** %6, align 8
  %28 = getelementptr inbounds %struct.node, %struct.node* %27, i32 0, i32 0
  %29 = load %struct.node*, %struct.node** %28, align 8
  %30 = call %struct.property* @get_property(%struct.node* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne %struct.property* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %69

33:                                               ; preds = %26
  %34 = load %struct.node*, %struct.node** %6, align 8
  %35 = call %struct.property* @get_property(%struct.node* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.property* %35, %struct.property** %7, align 8
  %36 = load %struct.property*, %struct.property** %7, align 8
  %37 = icmp ne %struct.property* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.property*, %struct.property** %7, align 8
  %40 = getelementptr inbounds %struct.property, %struct.property* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32*
  store i32* %43, i32** %11, align 8
  br label %44

44:                                               ; preds = %38, %33
  %45 = load i32*, i32** %11, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = load %struct.check*, %struct.check** %4, align 8
  %49 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %50 = load %struct.node*, %struct.node** %6, align 8
  %51 = call i32 (%struct.check*, %struct.dt_info*, %struct.node*, i8*, ...) @FAIL(%struct.check* %48, %struct.dt_info* %49, %struct.node* %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %69

52:                                               ; preds = %44
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @fdt32_to_cpu(i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @snprintf(i8* %56, i32 9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %61 = call i32 @streq(i8* %59, i8* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %52
  %64 = load %struct.check*, %struct.check** %4, align 8
  %65 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %66 = load %struct.node*, %struct.node** %6, align 8
  %67 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %68 = call i32 (%struct.check*, %struct.dt_info*, %struct.node*, i8*, ...) @FAIL(%struct.check* %64, %struct.dt_info* %65, %struct.node* %66, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %25, %32, %47, %63, %52
  ret void
}

declare dso_local i8* @get_unitname(%struct.node*) #1

declare dso_local %struct.property* @get_property(%struct.node*, i8*) #1

declare dso_local i32 @FAIL(%struct.check*, %struct.dt_info*, %struct.node*, i8*, ...) #1

declare dso_local i32 @fdt32_to_cpu(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @streq(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
