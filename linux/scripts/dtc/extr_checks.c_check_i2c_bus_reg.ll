; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_checks.c_check_i2c_bus_reg.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_checks.c_check_i2c_bus_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.check = type { i32 }
%struct.dt_info = type { i32 }
%struct.node = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.property = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }

@i2c_bus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"missing or empty reg property\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"I2C bus unit address format error, expected \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"I2C address must be less than 10-bits, got \220x%x\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.check*, %struct.dt_info*, %struct.node*)* @check_i2c_bus_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_i2c_bus_reg(%struct.check* %0, %struct.dt_info* %1, %struct.node* %2) #0 {
  %4 = alloca %struct.check*, align 8
  %5 = alloca %struct.dt_info*, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.property*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [17 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.check* %0, %struct.check** %4, align 8
  store %struct.dt_info* %1, %struct.dt_info** %5, align 8
  store %struct.node* %2, %struct.node** %6, align 8
  %13 = load %struct.node*, %struct.node** %6, align 8
  %14 = call i8* @get_unitname(%struct.node* %13)
  store i8* %14, i8** %8, align 8
  store i32 0, i32* %10, align 4
  store i32* null, i32** %12, align 8
  %15 = load %struct.node*, %struct.node** %6, align 8
  %16 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load %struct.node*, %struct.node** %6, align 8
  %21 = getelementptr inbounds %struct.node, %struct.node* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, @i2c_bus
  br i1 %25, label %26, label %27

26:                                               ; preds = %19, %3
  br label %89

27:                                               ; preds = %19
  %28 = load %struct.node*, %struct.node** %6, align 8
  %29 = call %struct.property* @get_property(%struct.node* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.property* %29, %struct.property** %7, align 8
  %30 = load %struct.property*, %struct.property** %7, align 8
  %31 = icmp ne %struct.property* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.property*, %struct.property** %7, align 8
  %34 = getelementptr inbounds %struct.property, %struct.property* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** %12, align 8
  br label %38

38:                                               ; preds = %32, %27
  %39 = load i32*, i32** %12, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = load %struct.check*, %struct.check** %4, align 8
  %43 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %44 = load %struct.node*, %struct.node** %6, align 8
  %45 = call i32 (%struct.check*, %struct.dt_info*, %struct.node*, i8*, ...) @FAIL(%struct.check* %42, %struct.dt_info* %43, %struct.node* %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %89

46:                                               ; preds = %38
  %47 = load i32*, i32** %12, align 8
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @fdt32_to_cpu(i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = getelementptr inbounds [17 x i8], [17 x i8]* %9, i64 0, i64 0
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @snprintf(i8* %50, i32 17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds [17 x i8], [17 x i8]* %9, i64 0, i64 0
  %55 = call i32 @streq(i8* %53, i8* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %46
  %58 = load %struct.check*, %struct.check** %4, align 8
  %59 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %60 = load %struct.node*, %struct.node** %6, align 8
  %61 = getelementptr inbounds [17 x i8], [17 x i8]* %9, i64 0, i64 0
  %62 = call i32 (%struct.check*, %struct.dt_info*, %struct.node*, i8*, ...) @FAIL(%struct.check* %58, %struct.dt_info* %59, %struct.node* %60, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %57, %46
  %64 = load %struct.property*, %struct.property** %7, align 8
  %65 = getelementptr inbounds %struct.property, %struct.property* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %86, %63
  %69 = load i32, i32* %11, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %89

71:                                               ; preds = %68
  %72 = load i32*, i32** %12, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %12, align 8
  %74 = load i32, i32* %72, align 4
  %75 = call i32 @fdt32_to_cpu(i32 %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp sgt i32 %76, 1023
  br i1 %77, label %78, label %85

78:                                               ; preds = %71
  %79 = load %struct.check*, %struct.check** %4, align 8
  %80 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %81 = load %struct.node*, %struct.node** %6, align 8
  %82 = load %struct.property*, %struct.property** %7, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @FAIL_PROP(%struct.check* %79, %struct.dt_info* %80, %struct.node* %81, %struct.property* %82, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %78, %71
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %11, align 4
  %88 = sub nsw i32 %87, 4
  store i32 %88, i32* %11, align 4
  br label %68

89:                                               ; preds = %26, %41, %68
  ret void
}

declare dso_local i8* @get_unitname(%struct.node*) #1

declare dso_local %struct.property* @get_property(%struct.node*, i8*) #1

declare dso_local i32 @FAIL(%struct.check*, %struct.dt_info*, %struct.node*, i8*, ...) #1

declare dso_local i32 @fdt32_to_cpu(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @streq(i8*, i8*) #1

declare dso_local i32 @FAIL_PROP(%struct.check*, %struct.dt_info*, %struct.node*, %struct.property*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
