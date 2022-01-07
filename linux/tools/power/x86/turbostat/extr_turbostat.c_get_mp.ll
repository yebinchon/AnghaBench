; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_get_mp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_get_mp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msr_counter = type { i64, i32, i8* }

@PATH_BYTES = common dso_local global i32 0, align 4
@SYSFS_PERCPU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"/sys/devices/system/cpu/cpu%d/%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mp(i32 %0, %struct.msr_counter* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.msr_counter*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.msr_counter* %1, %struct.msr_counter** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.msr_counter*, %struct.msr_counter** %6, align 8
  %11 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.msr_counter*, %struct.msr_counter** %6, align 8
  %17 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64*, i64** %7, align 8
  %20 = call i64 @get_msr(i32 %15, i64 %18, i64* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 -1, i32* %4, align 4
  br label %53

23:                                               ; preds = %14
  br label %52

24:                                               ; preds = %3
  %25 = load i32, i32* @PATH_BYTES, align 4
  %26 = add nsw i32 128, %25
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %8, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %9, align 8
  %30 = load %struct.msr_counter*, %struct.msr_counter** %6, align 8
  %31 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SYSFS_PERCPU, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %24
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.msr_counter*, %struct.msr_counter** %6, align 8
  %39 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @sprintf(i8* %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %37, i8* %40)
  %42 = call i64 @snapshot_sysfs_counter(i8* %29)
  %43 = load i64*, i64** %7, align 8
  store i64 %42, i64* %43, align 8
  br label %50

44:                                               ; preds = %24
  %45 = load %struct.msr_counter*, %struct.msr_counter** %6, align 8
  %46 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @snapshot_sysfs_counter(i8* %47)
  %49 = load i64*, i64** %7, align 8
  store i64 %48, i64* %49, align 8
  br label %50

50:                                               ; preds = %44, %36
  %51 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %51)
  br label %52

52:                                               ; preds = %50, %23
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %22
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @get_msr(i32, i64, i64*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sprintf(i8*, i8*, i32, i8*) #1

declare dso_local i64 @snapshot_sysfs_counter(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
