; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-c2c.c_get_dimension.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-c2c.c_get_dimension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2c_dimension = type { i32 }

@dimensions = common dso_local global %struct.c2c_dimension** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.c2c_dimension* (i8*)* @get_dimension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.c2c_dimension* @get_dimension(i8* %0) #0 {
  %2 = alloca %struct.c2c_dimension*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.c2c_dimension*, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %28, %1
  %7 = load %struct.c2c_dimension**, %struct.c2c_dimension*** @dimensions, align 8
  %8 = load i32, i32* %4, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.c2c_dimension*, %struct.c2c_dimension** %7, i64 %9
  %11 = load %struct.c2c_dimension*, %struct.c2c_dimension** %10, align 8
  %12 = icmp ne %struct.c2c_dimension* %11, null
  br i1 %12, label %13, label %31

13:                                               ; preds = %6
  %14 = load %struct.c2c_dimension**, %struct.c2c_dimension*** @dimensions, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.c2c_dimension*, %struct.c2c_dimension** %14, i64 %16
  %18 = load %struct.c2c_dimension*, %struct.c2c_dimension** %17, align 8
  store %struct.c2c_dimension* %18, %struct.c2c_dimension** %5, align 8
  %19 = load %struct.c2c_dimension*, %struct.c2c_dimension** %5, align 8
  %20 = getelementptr inbounds %struct.c2c_dimension, %struct.c2c_dimension* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @strcmp(i32 %21, i8* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %13
  %26 = load %struct.c2c_dimension*, %struct.c2c_dimension** %5, align 8
  store %struct.c2c_dimension* %26, %struct.c2c_dimension** %2, align 8
  br label %32

27:                                               ; preds = %13
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %4, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %6

31:                                               ; preds = %6
  store %struct.c2c_dimension* null, %struct.c2c_dimension** %2, align 8
  br label %32

32:                                               ; preds = %31, %25
  %33 = load %struct.c2c_dimension*, %struct.c2c_dimension** %2, align 8
  ret %struct.c2c_dimension* %33
}

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
