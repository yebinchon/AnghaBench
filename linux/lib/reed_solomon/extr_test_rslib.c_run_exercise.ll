; ModuleID = '/home/carl/AnghaBench/linux/lib/reed_solomon/extr_test_rslib.c_run_exercise.c'
source_filename = "/home/carl/AnghaBench/linux/lib/reed_solomon/extr_test_rslib.c_run_exercise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.etab = type { i32, i32, i32, i32, i32, i32 }
%struct.rs_control = type { i32 }
%struct.wspace = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@pad_coef = common dso_local global %struct.TYPE_3__* null, align 8
@v = common dso_local global i64 0, align 8
@V_PROGRESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Testing (%d,%d)_%d code...\0A\00", align 1
@bc = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.etab*)* @run_exercise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_exercise(%struct.etab* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.etab*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rs_control*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wspace*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.etab* %0, %struct.etab** %3, align 8
  %14 = load %struct.etab*, %struct.etab** %3, align 8
  %15 = getelementptr inbounds %struct.etab, %struct.etab* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 1, %16
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.etab*, %struct.etab** %3, align 8
  %21 = getelementptr inbounds %struct.etab, %struct.etab* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %19, %22
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %28 = load %struct.etab*, %struct.etab** %3, align 8
  %29 = getelementptr inbounds %struct.etab, %struct.etab* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.etab*, %struct.etab** %3, align 8
  %32 = getelementptr inbounds %struct.etab, %struct.etab* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.etab*, %struct.etab** %3, align 8
  %35 = getelementptr inbounds %struct.etab, %struct.etab* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.etab*, %struct.etab** %3, align 8
  %38 = getelementptr inbounds %struct.etab, %struct.etab* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.etab*, %struct.etab** %3, align 8
  %41 = getelementptr inbounds %struct.etab, %struct.etab* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.rs_control* @init_rs(i32 %30, i32 %33, i32 %36, i32 %39, i32 %42)
  store %struct.rs_control* %43, %struct.rs_control** %6, align 8
  %44 = load %struct.rs_control*, %struct.rs_control** %6, align 8
  %45 = icmp ne %struct.rs_control* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %1
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %2, align 4
  br label %131

48:                                               ; preds = %1
  %49 = load %struct.rs_control*, %struct.rs_control** %6, align 8
  %50 = getelementptr inbounds %struct.rs_control, %struct.rs_control* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.wspace* @alloc_ws(i32 %51)
  store %struct.wspace* %52, %struct.wspace** %10, align 8
  %53 = load %struct.wspace*, %struct.wspace** %10, align 8
  %54 = icmp ne %struct.wspace* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  br label %127

56:                                               ; preds = %48
  store i32 0, i32* %7, align 4
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %121, %56
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pad_coef, align 8
  %60 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %59)
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %124

62:                                               ; preds = %57
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pad_coef, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %8, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pad_coef, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = ashr i32 %70, %76
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* %12, align 4
  %80 = sub nsw i32 %78, %79
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %62
  br label %121

85:                                               ; preds = %62
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %9, align 4
  %87 = load i64, i64* @v, align 8
  %88 = load i64, i64* @V_PROGRESS, align 8
  %89 = icmp sge i64 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %12, align 4
  %94 = sub nsw i32 %92, %93
  %95 = load i32, i32* %4, align 4
  %96 = add nsw i32 %95, 1
  %97 = call i32 @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %94, i32 %96)
  br label %98

98:                                               ; preds = %90, %85
  %99 = load %struct.rs_control*, %struct.rs_control** %6, align 8
  %100 = load %struct.wspace*, %struct.wspace** %10, align 8
  %101 = load i32, i32* %13, align 4
  %102 = load %struct.etab*, %struct.etab** %3, align 8
  %103 = getelementptr inbounds %struct.etab, %struct.etab* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @exercise_rs(%struct.rs_control* %99, %struct.wspace* %100, i32 %101, i32 %104)
  %106 = load i32, i32* %7, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %7, align 4
  %108 = load i64, i64* @bc, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %98
  %111 = load %struct.rs_control*, %struct.rs_control** %6, align 8
  %112 = load %struct.wspace*, %struct.wspace** %10, align 8
  %113 = load i32, i32* %13, align 4
  %114 = load %struct.etab*, %struct.etab** %3, align 8
  %115 = getelementptr inbounds %struct.etab, %struct.etab* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @exercise_rs_bc(%struct.rs_control* %111, %struct.wspace* %112, i32 %113, i32 %116)
  %118 = load i32, i32* %7, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %7, align 4
  br label %120

120:                                              ; preds = %110, %98
  br label %121

121:                                              ; preds = %120, %84
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %11, align 4
  br label %57

124:                                              ; preds = %57
  %125 = load %struct.wspace*, %struct.wspace** %10, align 8
  %126 = call i32 @free_ws(%struct.wspace* %125)
  br label %127

127:                                              ; preds = %124, %55
  %128 = load %struct.rs_control*, %struct.rs_control** %6, align 8
  %129 = call i32 @free_rs(%struct.rs_control* %128)
  %130 = load i32, i32* %7, align 4
  store i32 %130, i32* %2, align 4
  br label %131

131:                                              ; preds = %127, %46
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local %struct.rs_control* @init_rs(i32, i32, i32, i32, i32) #1

declare dso_local %struct.wspace* @alloc_ws(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32) #1

declare dso_local i32 @exercise_rs(%struct.rs_control*, %struct.wspace*, i32, i32) #1

declare dso_local i32 @exercise_rs_bc(%struct.rs_control*, %struct.wspace*, i32, i32) #1

declare dso_local i32 @free_ws(%struct.wspace*) #1

declare dso_local i32 @free_rs(%struct.rs_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
