; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_oom_kill.c_check_panic_on_oom.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_oom_kill.c_check_panic_on_oom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oom_control = type { i64 }

@sysctl_panic_on_oom = common dso_local global i32 0, align 4
@CONSTRAINT_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Out of memory: %s panic_on_oom is enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"compulsory\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"system-wide\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oom_control*)* @check_panic_on_oom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_panic_on_oom(%struct.oom_control* %0) #0 {
  %2 = alloca %struct.oom_control*, align 8
  store %struct.oom_control* %0, %struct.oom_control** %2, align 8
  %3 = load i32, i32* @sysctl_panic_on_oom, align 4
  %4 = icmp ne i32 %3, 0
  %5 = xor i1 %4, true
  %6 = zext i1 %5 to i32
  %7 = call i64 @likely(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %34

10:                                               ; preds = %1
  %11 = load i32, i32* @sysctl_panic_on_oom, align 4
  %12 = icmp ne i32 %11, 2
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = load %struct.oom_control*, %struct.oom_control** %2, align 8
  %15 = getelementptr inbounds %struct.oom_control, %struct.oom_control* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CONSTRAINT_NONE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %34

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20, %10
  %22 = load %struct.oom_control*, %struct.oom_control** %2, align 8
  %23 = call i64 @is_sysrq_oom(%struct.oom_control* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %34

26:                                               ; preds = %21
  %27 = load %struct.oom_control*, %struct.oom_control** %2, align 8
  %28 = call i32 @dump_header(%struct.oom_control* %27, i32* null)
  %29 = load i32, i32* @sysctl_panic_on_oom, align 4
  %30 = icmp eq i32 %29, 2
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)
  %33 = call i32 @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %26, %25, %19, %9
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @is_sysrq_oom(%struct.oom_control*) #1

declare dso_local i32 @dump_header(%struct.oom_control*, i32*) #1

declare dso_local i32 @panic(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
