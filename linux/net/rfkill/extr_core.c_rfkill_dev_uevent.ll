; ModuleID = '/home/carl/AnghaBench/linux/net/rfkill/extr_core.c_rfkill_dev_uevent.c'
source_filename = "/home/carl/AnghaBench/linux/net/rfkill/extr_core.c_rfkill_dev_uevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.kobj_uevent_env = type { i32 }
%struct.rfkill = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"RFKILL_NAME=%s\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"RFKILL_TYPE=%s\00", align 1
@rfkill_types = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"RFKILL_STATE=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.kobj_uevent_env*)* @rfkill_dev_uevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfkill_dev_uevent(%struct.device* %0, %struct.kobj_uevent_env* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.kobj_uevent_env*, align 8
  %6 = alloca %struct.rfkill*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.kobj_uevent_env* %1, %struct.kobj_uevent_env** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.rfkill* @to_rfkill(%struct.device* %10)
  store %struct.rfkill* %11, %struct.rfkill** %6, align 8
  %12 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %13 = load %struct.rfkill*, %struct.rfkill** %6, align 8
  %14 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @add_uevent_var(%struct.kobj_uevent_env* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %3, align 4
  br label %51

21:                                               ; preds = %2
  %22 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %23 = load i32*, i32** @rfkill_types, align 8
  %24 = load %struct.rfkill*, %struct.rfkill** %6, align 8
  %25 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @add_uevent_var(%struct.kobj_uevent_env* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %3, align 4
  br label %51

34:                                               ; preds = %21
  %35 = load %struct.rfkill*, %struct.rfkill** %6, align 8
  %36 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %35, i32 0, i32 1
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.rfkill*, %struct.rfkill** %6, align 8
  %40 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %8, align 4
  %42 = load %struct.rfkill*, %struct.rfkill** %6, align 8
  %43 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %42, i32 0, i32 1
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @user_state_from_blocked(i32 %47)
  %49 = call i32 @add_uevent_var(%struct.kobj_uevent_env* %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %34, %32, %19
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.rfkill* @to_rfkill(%struct.device*) #1

declare dso_local i32 @add_uevent_var(%struct.kobj_uevent_env*, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @user_state_from_blocked(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
