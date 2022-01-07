; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cpumap.c_set_max_node_num.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cpumap.c_set_max_node_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@max_node_num = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s/devices/system/node/possible\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"sysfs path crossed PATH_MAX(%d) size\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Failed to read max nodes, using default of %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_max_node_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_max_node_num() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @PATH_MAX, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %2, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %3, align 8
  store i32 -1, i32* %4, align 4
  store i32 8, i32* @max_node_num, align 4
  %9 = call i8* (...) @sysfs__mountpoint()
  store i8* %9, i8** %1, align 8
  %10 = load i8*, i8** %1, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %0
  br label %25

13:                                               ; preds = %0
  %14 = load i32, i32* @PATH_MAX, align 4
  %15 = load i8*, i8** %1, align 8
  %16 = call i32 @snprintf(i8* %8, i32 %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @PATH_MAX, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i32, i32* @PATH_MAX, align 4
  %22 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  br label %25

23:                                               ; preds = %13
  %24 = call i32 @get_max_num(i8* %8, i32* @max_node_num)
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %23, %20, %12
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @max_node_num, align 4
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %32)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @sysfs__mountpoint(...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @pr_err(i8*, i32) #2

declare dso_local i32 @get_max_num(i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
