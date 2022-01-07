; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_pid_from_cmdlist.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_pid_from_cmdlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_handle = type { %struct.cmdline_list* }
%struct.cmdline_list = type { %struct.cmdline_list*, i32 }
%struct.tep_cmdline = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tep_cmdline* (%struct.tep_handle*, i8*, %struct.tep_cmdline*)* @pid_from_cmdlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tep_cmdline* @pid_from_cmdlist(%struct.tep_handle* %0, i8* %1, %struct.tep_cmdline* %2) #0 {
  %4 = alloca %struct.tep_handle*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tep_cmdline*, align 8
  %7 = alloca %struct.cmdline_list*, align 8
  store %struct.tep_handle* %0, %struct.tep_handle** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.tep_cmdline* %2, %struct.tep_cmdline** %6, align 8
  %8 = load %struct.tep_cmdline*, %struct.tep_cmdline** %6, align 8
  %9 = bitcast %struct.tep_cmdline* %8 to %struct.cmdline_list*
  store %struct.cmdline_list* %9, %struct.cmdline_list** %7, align 8
  %10 = load %struct.cmdline_list*, %struct.cmdline_list** %7, align 8
  %11 = icmp ne %struct.cmdline_list* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load %struct.cmdline_list*, %struct.cmdline_list** %7, align 8
  %14 = getelementptr inbounds %struct.cmdline_list, %struct.cmdline_list* %13, i32 0, i32 0
  %15 = load %struct.cmdline_list*, %struct.cmdline_list** %14, align 8
  store %struct.cmdline_list* %15, %struct.cmdline_list** %7, align 8
  br label %20

16:                                               ; preds = %3
  %17 = load %struct.tep_handle*, %struct.tep_handle** %4, align 8
  %18 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %17, i32 0, i32 0
  %19 = load %struct.cmdline_list*, %struct.cmdline_list** %18, align 8
  store %struct.cmdline_list* %19, %struct.cmdline_list** %7, align 8
  br label %20

20:                                               ; preds = %16, %12
  br label %21

21:                                               ; preds = %33, %20
  %22 = load %struct.cmdline_list*, %struct.cmdline_list** %7, align 8
  %23 = icmp ne %struct.cmdline_list* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load %struct.cmdline_list*, %struct.cmdline_list** %7, align 8
  %26 = getelementptr inbounds %struct.cmdline_list, %struct.cmdline_list* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @strcmp(i32 %27, i8* %28)
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %24, %21
  %32 = phi i1 [ false, %21 ], [ %30, %24 ]
  br i1 %32, label %33, label %37

33:                                               ; preds = %31
  %34 = load %struct.cmdline_list*, %struct.cmdline_list** %7, align 8
  %35 = getelementptr inbounds %struct.cmdline_list, %struct.cmdline_list* %34, i32 0, i32 0
  %36 = load %struct.cmdline_list*, %struct.cmdline_list** %35, align 8
  store %struct.cmdline_list* %36, %struct.cmdline_list** %7, align 8
  br label %21

37:                                               ; preds = %31
  %38 = load %struct.cmdline_list*, %struct.cmdline_list** %7, align 8
  %39 = bitcast %struct.cmdline_list* %38 to %struct.tep_cmdline*
  ret %struct.tep_cmdline* %39
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
