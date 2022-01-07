; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_kmemleak.c_dump_object_info.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_kmemleak.c_dump_object_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmemleak_object = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Object 0x%08lx (size %zu):\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"  comm \22%s\22, pid %d, jiffies %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"  min_count = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"  count = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"  flags = 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"  checksum = %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"  backtrace:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kmemleak_object*)* @dump_object_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_object_info(%struct.kmemleak_object* %0) #0 {
  %2 = alloca %struct.kmemleak_object*, align 8
  store %struct.kmemleak_object* %0, %struct.kmemleak_object** %2, align 8
  %3 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %4 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %3, i32 0, i32 10
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %7 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %6, i32 0, i32 9
  %8 = load i32, i32* %7, align 4
  %9 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %8)
  %10 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %11 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %14 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %17 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %12, i32 %15, i32 %18)
  %20 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %21 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  %24 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %25 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %26)
  %28 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %29 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %30)
  %32 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %33 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %34)
  %36 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %37 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %38 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %41 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @stack_trace_print(i32 %39, i32 %42, i32 4)
  ret void
}

declare dso_local i32 @pr_notice(i8*, ...) #1

declare dso_local i32 @stack_trace_print(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
