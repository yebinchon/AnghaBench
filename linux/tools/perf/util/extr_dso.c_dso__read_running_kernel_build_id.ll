; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_dso.c_dso__read_running_kernel_build_id.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_dso.c_dso__read_running_kernel_build_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i32, i32 }
%struct.machine = type { i8* }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s/sys/kernel/notes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dso__read_running_kernel_build_id(%struct.dso* %0, %struct.machine* %1) #0 {
  %3 = alloca %struct.dso*, align 8
  %4 = alloca %struct.machine*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.dso* %0, %struct.dso** %3, align 8
  store %struct.machine* %1, %struct.machine** %4, align 8
  %8 = load i32, i32* @PATH_MAX, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load %struct.machine*, %struct.machine** %4, align 8
  %13 = call i64 @machine__is_default_guest(%struct.machine* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %30

16:                                               ; preds = %2
  %17 = load %struct.machine*, %struct.machine** %4, align 8
  %18 = getelementptr inbounds %struct.machine, %struct.machine* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @sprintf(i8* %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load %struct.dso*, %struct.dso** %3, align 8
  %22 = getelementptr inbounds %struct.dso, %struct.dso* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @sysfs__read_build_id(i8* %11, i32 %23, i32 4)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load %struct.dso*, %struct.dso** %3, align 8
  %28 = getelementptr inbounds %struct.dso, %struct.dso* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %16
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %29, %15
  %31 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %31)
  %32 = load i32, i32* %7, align 4
  switch i32 %32, label %34 [
    i32 0, label %33
    i32 1, label %33
  ]

33:                                               ; preds = %30, %30
  ret void

34:                                               ; preds = %30
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @machine__is_default_guest(%struct.machine*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i64 @sysfs__read_build_id(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
