; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_init_probe_symbol_maps.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_init_probe_symbol_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64 }

@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [28 x i8] c"Failed to init symbol map.\0A\00", align 1
@host_machine = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Use vmlinux: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"machine__new_host() failed.\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to init vmlinux path.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_probe_symbol_maps(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 1), align 4
  %5 = call i32 @symbol__init(i32* null)
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %31

10:                                               ; preds = %1
  %11 = load i64, i64* @host_machine, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %10
  store i32 0, i32* %2, align 4
  br label %38

17:                                               ; preds = %13
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 2), align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 2), align 8
  %22 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  br label %23

23:                                               ; preds = %20, %17
  %24 = call i64 (...) @machine__new_host()
  store i64 %24, i64* @host_machine, align 8
  %25 = load i64, i64* @host_machine, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %29 = call i32 (...) @symbol__exit()
  store i32 -1, i32* %4, align 4
  br label %30

30:                                               ; preds = %27, %23
  br label %31

31:                                               ; preds = %30, %8
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 @pr_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %16
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @symbol__init(i32*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i64 @machine__new_host(...) #1

declare dso_local i32 @symbol__exit(...) #1

declare dso_local i32 @pr_warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
