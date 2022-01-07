; ModuleID = '/home/carl/AnghaBench/linux/lib/reed_solomon/extr_test_rslib.c_exercise_rs.c'
source_filename = "/home/carl/AnghaBench/linux/lib/reed_solomon/extr_test_rslib.c_exercise_rs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rs_control = type { i32 }
%struct.wspace = type { i32 }

@v = common dso_local global i64 0, align 8
@V_PROGRESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Testing up to error correction capacity...\0A\00", align 1
@IN_PLACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rs_control*, %struct.wspace*, i32, i32)* @exercise_rs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exercise_rs(%struct.rs_control* %0, %struct.wspace* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rs_control*, align 8
  %6 = alloca %struct.wspace*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rs_control* %0, %struct.rs_control** %5, align 8
  store %struct.wspace* %1, %struct.wspace** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i64, i64* @v, align 8
  %12 = load i64, i64* @V_PROGRESS, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = call i32 @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %4
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %30, %16
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @IN_PLACE, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load %struct.rs_control*, %struct.rs_control** %5, align 8
  %23 = load %struct.wspace*, %struct.wspace** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @ex_rs_helper(%struct.rs_control* %22, %struct.wspace* %23, i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %21
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %10, align 4
  br label %17

33:                                               ; preds = %17
  %34 = load i32, i32* %9, align 4
  ret i32 %34
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @ex_rs_helper(%struct.rs_control*, %struct.wspace*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
