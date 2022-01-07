; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_checks.c_check_name_properties.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_checks.c_check_name_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.check = type { i32 }
%struct.dt_info = type { i32 }
%struct.node = type { i32, i32, %struct.property* }
%struct.property = type { %struct.TYPE_2__, %struct.property*, %struct.property* }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"\22name\22 property is incorrect (\22%s\22 instead of base node name)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.check*, %struct.dt_info*, %struct.node*)* @check_name_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_name_properties(%struct.check* %0, %struct.dt_info* %1, %struct.node* %2) #0 {
  %4 = alloca %struct.check*, align 8
  %5 = alloca %struct.dt_info*, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.property**, align 8
  %8 = alloca %struct.property*, align 8
  store %struct.check* %0, %struct.check** %4, align 8
  store %struct.dt_info* %1, %struct.dt_info** %5, align 8
  store %struct.node* %2, %struct.node** %6, align 8
  store %struct.property* null, %struct.property** %8, align 8
  %9 = load %struct.node*, %struct.node** %6, align 8
  %10 = getelementptr inbounds %struct.node, %struct.node* %9, i32 0, i32 2
  store %struct.property** %10, %struct.property*** %7, align 8
  br label %11

11:                                               ; preds = %26, %3
  %12 = load %struct.property**, %struct.property*** %7, align 8
  %13 = load %struct.property*, %struct.property** %12, align 8
  %14 = icmp ne %struct.property* %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = load %struct.property**, %struct.property*** %7, align 8
  %17 = load %struct.property*, %struct.property** %16, align 8
  %18 = getelementptr inbounds %struct.property, %struct.property* %17, i32 0, i32 1
  %19 = load %struct.property*, %struct.property** %18, align 8
  %20 = call i64 @streq(%struct.property* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load %struct.property**, %struct.property*** %7, align 8
  %24 = load %struct.property*, %struct.property** %23, align 8
  store %struct.property* %24, %struct.property** %8, align 8
  br label %30

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.property**, %struct.property*** %7, align 8
  %28 = load %struct.property*, %struct.property** %27, align 8
  %29 = getelementptr inbounds %struct.property, %struct.property* %28, i32 0, i32 2
  store %struct.property** %29, %struct.property*** %7, align 8
  br label %11

30:                                               ; preds = %22, %11
  %31 = load %struct.property*, %struct.property** %8, align 8
  %32 = icmp ne %struct.property* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  br label %86

34:                                               ; preds = %30
  %35 = load %struct.property*, %struct.property** %8, align 8
  %36 = getelementptr inbounds %struct.property, %struct.property* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.node*, %struct.node** %6, align 8
  %40 = getelementptr inbounds %struct.node, %struct.node* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = icmp ne i64 %38, %43
  br i1 %44, label %58, label %45

45:                                               ; preds = %34
  %46 = load %struct.property*, %struct.property** %8, align 8
  %47 = getelementptr inbounds %struct.property, %struct.property* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.node*, %struct.node** %6, align 8
  %51 = getelementptr inbounds %struct.node, %struct.node* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.node*, %struct.node** %6, align 8
  %54 = getelementptr inbounds %struct.node, %struct.node* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @memcmp(i32 %49, i32 %52, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %45, %34
  %59 = load %struct.check*, %struct.check** %4, align 8
  %60 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %61 = load %struct.node*, %struct.node** %6, align 8
  %62 = load %struct.property*, %struct.property** %8, align 8
  %63 = getelementptr inbounds %struct.property, %struct.property* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @FAIL(%struct.check* %59, %struct.dt_info* %60, %struct.node* %61, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %86

67:                                               ; preds = %45
  %68 = load %struct.property*, %struct.property** %8, align 8
  %69 = getelementptr inbounds %struct.property, %struct.property* %68, i32 0, i32 2
  %70 = load %struct.property*, %struct.property** %69, align 8
  %71 = load %struct.property**, %struct.property*** %7, align 8
  store %struct.property* %70, %struct.property** %71, align 8
  %72 = load %struct.property*, %struct.property** %8, align 8
  %73 = getelementptr inbounds %struct.property, %struct.property* %72, i32 0, i32 1
  %74 = load %struct.property*, %struct.property** %73, align 8
  %75 = call i32 @free(%struct.property* %74)
  %76 = load %struct.property*, %struct.property** %8, align 8
  %77 = getelementptr inbounds %struct.property, %struct.property* %76, i32 0, i32 0
  %78 = bitcast %struct.TYPE_2__* %77 to { i64, i32 }*
  %79 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %78, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @data_free(i64 %80, i32 %82)
  %84 = load %struct.property*, %struct.property** %8, align 8
  %85 = call i32 @free(%struct.property* %84)
  br label %86

86:                                               ; preds = %33, %67, %58
  ret void
}

declare dso_local i64 @streq(%struct.property*, i8*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @FAIL(%struct.check*, %struct.dt_info*, %struct.node*, i8*, i32) #1

declare dso_local i32 @free(%struct.property*) #1

declare dso_local i32 @data_free(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
