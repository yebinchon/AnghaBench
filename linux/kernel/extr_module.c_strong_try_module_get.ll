; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_module.c_strong_try_module_get.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_module.c_strong_try_module_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i64 }

@MODULE_STATE_UNFORMED = common dso_local global i64 0, align 8
@MODULE_STATE_COMING = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module*)* @strong_try_module_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strong_try_module_get(%struct.module* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.module*, align 8
  store %struct.module* %0, %struct.module** %3, align 8
  %4 = load %struct.module*, %struct.module** %3, align 8
  %5 = icmp ne %struct.module* %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load %struct.module*, %struct.module** %3, align 8
  %8 = getelementptr inbounds %struct.module, %struct.module* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MODULE_STATE_UNFORMED, align 8
  %11 = icmp eq i64 %9, %10
  br label %12

12:                                               ; preds = %6, %1
  %13 = phi i1 [ false, %1 ], [ %11, %6 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.module*, %struct.module** %3, align 8
  %17 = icmp ne %struct.module* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %12
  %19 = load %struct.module*, %struct.module** %3, align 8
  %20 = getelementptr inbounds %struct.module, %struct.module* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MODULE_STATE_COMING, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %35

27:                                               ; preds = %18, %12
  %28 = load %struct.module*, %struct.module** %3, align 8
  %29 = call i64 @try_module_get(%struct.module* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %32, %31, %24
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @try_module_get(%struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
