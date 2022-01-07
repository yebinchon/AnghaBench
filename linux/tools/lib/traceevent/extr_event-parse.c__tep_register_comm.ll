; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c__tep_register_comm.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c__tep_register_comm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_handle = type { i32, %struct.cmdline_list*, i64 }
%struct.cmdline_list = type { i32, %struct.cmdline_list*, i8* }

@.str = private unnamed_addr constant [6 x i8] c"<...>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tep_handle*, i8*, i32, i32)* @_tep_register_comm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_tep_register_comm(%struct.tep_handle* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tep_handle*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cmdline_list*, align 8
  store %struct.tep_handle* %0, %struct.tep_handle** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.tep_handle*, %struct.tep_handle** %6, align 8
  %12 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load %struct.tep_handle*, %struct.tep_handle** %6, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @add_new_comm(%struct.tep_handle* %16, i8* %17, i32 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  br label %62

21:                                               ; preds = %4
  %22 = call %struct.cmdline_list* @malloc(i32 24)
  store %struct.cmdline_list* %22, %struct.cmdline_list** %10, align 8
  %23 = load %struct.cmdline_list*, %struct.cmdline_list** %10, align 8
  %24 = icmp ne %struct.cmdline_list* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i32 -1, i32* %5, align 4
  br label %62

26:                                               ; preds = %21
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i8*, i8** %7, align 8
  %31 = call i8* @strdup(i8* %30)
  %32 = load %struct.cmdline_list*, %struct.cmdline_list** %10, align 8
  %33 = getelementptr inbounds %struct.cmdline_list, %struct.cmdline_list* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  br label %38

34:                                               ; preds = %26
  %35 = call i8* @strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.cmdline_list*, %struct.cmdline_list** %10, align 8
  %37 = getelementptr inbounds %struct.cmdline_list, %struct.cmdline_list* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  br label %38

38:                                               ; preds = %34, %29
  %39 = load %struct.cmdline_list*, %struct.cmdline_list** %10, align 8
  %40 = getelementptr inbounds %struct.cmdline_list, %struct.cmdline_list* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load %struct.cmdline_list*, %struct.cmdline_list** %10, align 8
  %45 = call i32 @free(%struct.cmdline_list* %44)
  store i32 -1, i32* %5, align 4
  br label %62

46:                                               ; preds = %38
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.cmdline_list*, %struct.cmdline_list** %10, align 8
  %49 = getelementptr inbounds %struct.cmdline_list, %struct.cmdline_list* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.tep_handle*, %struct.tep_handle** %6, align 8
  %51 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %50, i32 0, i32 1
  %52 = load %struct.cmdline_list*, %struct.cmdline_list** %51, align 8
  %53 = load %struct.cmdline_list*, %struct.cmdline_list** %10, align 8
  %54 = getelementptr inbounds %struct.cmdline_list, %struct.cmdline_list* %53, i32 0, i32 1
  store %struct.cmdline_list* %52, %struct.cmdline_list** %54, align 8
  %55 = load %struct.cmdline_list*, %struct.cmdline_list** %10, align 8
  %56 = load %struct.tep_handle*, %struct.tep_handle** %6, align 8
  %57 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %56, i32 0, i32 1
  store %struct.cmdline_list* %55, %struct.cmdline_list** %57, align 8
  %58 = load %struct.tep_handle*, %struct.tep_handle** %6, align 8
  %59 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %46, %43, %25, %15
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @add_new_comm(%struct.tep_handle*, i8*, i32, i32) #1

declare dso_local %struct.cmdline_list* @malloc(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(%struct.cmdline_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
