; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_trace_event_user.c_print_ksym.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_trace_event_user.c_print_ksym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksym = type { i8* }

@.str = private unnamed_addr constant [37 x i8] c"ksym not found. Is kallsyms loaded?\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s;\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"sys_read\00", align 1
@sys_read_seen = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"sys_write\00", align 1
@sys_write_seen = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @print_ksym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_ksym(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ksym*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %33

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.ksym* @ksym_search(i32 %8)
  store %struct.ksym* %9, %struct.ksym** %3, align 8
  %10 = load %struct.ksym*, %struct.ksym** %3, align 8
  %11 = icmp ne %struct.ksym* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %33

14:                                               ; preds = %7
  %15 = load %struct.ksym*, %struct.ksym** %3, align 8
  %16 = getelementptr inbounds %struct.ksym, %struct.ksym* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  %19 = load %struct.ksym*, %struct.ksym** %3, align 8
  %20 = getelementptr inbounds %struct.ksym, %struct.ksym* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  store i32 1, i32* @sys_read_seen, align 4
  br label %33

25:                                               ; preds = %14
  %26 = load %struct.ksym*, %struct.ksym** %3, align 8
  %27 = getelementptr inbounds %struct.ksym, %struct.ksym* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  store i32 1, i32* @sys_write_seen, align 4
  br label %32

32:                                               ; preds = %31, %25
  br label %33

33:                                               ; preds = %6, %12, %32, %24
  ret void
}

declare dso_local %struct.ksym* @ksym_search(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
