; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_root.c_proc_parse_param.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_root.c_proc_parse_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { %struct.proc_fs_context* }
%struct.proc_fs_context = type { i32, i32, i32 }
%struct.fs_parameter = type { i32 }
%struct.fs_parse_result = type { i32 }

@proc_fs_parameters = common dso_local global i32 0, align 4
@HIDEPID_OFF = common dso_local global i32 0, align 4
@HIDEPID_INVISIBLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"proc: hidepid value must be between 0 and 2.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*, %struct.fs_parameter*)* @proc_parse_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_parse_param(%struct.fs_context* %0, %struct.fs_parameter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fs_context*, align 8
  %5 = alloca %struct.fs_parameter*, align 8
  %6 = alloca %struct.proc_fs_context*, align 8
  %7 = alloca %struct.fs_parse_result, align 4
  %8 = alloca i32, align 4
  store %struct.fs_context* %0, %struct.fs_context** %4, align 8
  store %struct.fs_parameter* %1, %struct.fs_parameter** %5, align 8
  %9 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %10 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %9, i32 0, i32 0
  %11 = load %struct.proc_fs_context*, %struct.proc_fs_context** %10, align 8
  store %struct.proc_fs_context* %11, %struct.proc_fs_context** %6, align 8
  %12 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %13 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %14 = call i32 @fs_parse(%struct.fs_context* %12, i32* @proc_fs_parameters, %struct.fs_parameter* %13, %struct.fs_parse_result* %7)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %56

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %46 [
    i32 129, label %21
    i32 128, label %26
  ]

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %7, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.proc_fs_context*, %struct.proc_fs_context** %6, align 8
  %25 = getelementptr inbounds %struct.proc_fs_context, %struct.proc_fs_context* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  br label %49

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.proc_fs_context*, %struct.proc_fs_context** %6, align 8
  %30 = getelementptr inbounds %struct.proc_fs_context, %struct.proc_fs_context* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.proc_fs_context*, %struct.proc_fs_context** %6, align 8
  %32 = getelementptr inbounds %struct.proc_fs_context, %struct.proc_fs_context* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @HIDEPID_OFF, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %26
  %37 = load %struct.proc_fs_context*, %struct.proc_fs_context** %6, align 8
  %38 = getelementptr inbounds %struct.proc_fs_context, %struct.proc_fs_context* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @HIDEPID_INVISIBLE, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36, %26
  %43 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %44 = call i32 @invalf(%struct.fs_context* %43, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 %44, i32* %3, align 4
  br label %56

45:                                               ; preds = %36
  br label %49

46:                                               ; preds = %19
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %56

49:                                               ; preds = %45, %21
  %50 = load i32, i32* %8, align 4
  %51 = shl i32 1, %50
  %52 = load %struct.proc_fs_context*, %struct.proc_fs_context** %6, align 8
  %53 = getelementptr inbounds %struct.proc_fs_context, %struct.proc_fs_context* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %49, %46, %42, %17
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @fs_parse(%struct.fs_context*, i32*, %struct.fs_parameter*, %struct.fs_parse_result*) #1

declare dso_local i32 @invalf(%struct.fs_context*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
