; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c___open_probe_file_and_namelist.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c___open_probe_file_and_namelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strlist = type { i32 }

@PF_FL_RW = common dso_local global i32 0, align 4
@PF_FL_UPROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to get current event list.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.strlist**)* @__open_probe_file_and_namelist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__open_probe_file_and_namelist(i32 %0, %struct.strlist** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.strlist**, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.strlist** %1, %struct.strlist*** %5, align 8
  %7 = load i32, i32* @PF_FL_RW, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @PF_FL_UPROBE, align 4
  br label %13

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi i32 [ %11, %10 ], [ 0, %12 ]
  %15 = or i32 %7, %14
  %16 = call i32 @probe_file__open(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %36

21:                                               ; preds = %13
  %22 = load i32, i32* %6, align 4
  %23 = call %struct.strlist* @probe_file__get_namelist(i32 %22)
  %24 = load %struct.strlist**, %struct.strlist*** %5, align 8
  store %struct.strlist* %23, %struct.strlist** %24, align 8
  %25 = load %struct.strlist**, %struct.strlist*** %5, align 8
  %26 = load %struct.strlist*, %struct.strlist** %25, align 8
  %27 = icmp ne %struct.strlist* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %21
  %29 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @close(i32 %30)
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %36

34:                                               ; preds = %21
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %28, %19
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @probe_file__open(i32) #1

declare dso_local %struct.strlist* @probe_file__get_namelist(i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
