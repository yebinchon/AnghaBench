; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace_parse_snapshot_options.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace_parse_snapshot_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auxtrace_record = type { {}* }
%struct.record_opts = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"No AUX area tracing to snapshot\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auxtrace_parse_snapshot_options(%struct.auxtrace_record* %0, %struct.record_opts* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.auxtrace_record*, align 8
  %6 = alloca %struct.record_opts*, align 8
  %7 = alloca i8*, align 8
  store %struct.auxtrace_record* %0, %struct.auxtrace_record** %5, align 8
  store %struct.record_opts* %1, %struct.record_opts** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %37

11:                                               ; preds = %3
  %12 = load i8*, i8** %7, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  switch i32 %14, label %20 [
    i32 101, label %15
  ]

15:                                               ; preds = %11
  %16 = load %struct.record_opts*, %struct.record_opts** %6, align 8
  %17 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %7, align 8
  br label %21

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %20, %15
  %22 = load %struct.auxtrace_record*, %struct.auxtrace_record** %5, align 8
  %23 = icmp ne %struct.auxtrace_record* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load %struct.auxtrace_record*, %struct.auxtrace_record** %5, align 8
  %26 = getelementptr inbounds %struct.auxtrace_record, %struct.auxtrace_record* %25, i32 0, i32 0
  %27 = bitcast {}** %26 to i32 (%struct.auxtrace_record*, %struct.record_opts*, i8*)**
  %28 = load i32 (%struct.auxtrace_record*, %struct.record_opts*, i8*)*, i32 (%struct.auxtrace_record*, %struct.record_opts*, i8*)** %27, align 8
  %29 = load %struct.auxtrace_record*, %struct.auxtrace_record** %5, align 8
  %30 = load %struct.record_opts*, %struct.record_opts** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 %28(%struct.auxtrace_record* %29, %struct.record_opts* %30, i8* %31)
  store i32 %32, i32* %4, align 4
  br label %37

33:                                               ; preds = %21
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %33, %24, %10
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
