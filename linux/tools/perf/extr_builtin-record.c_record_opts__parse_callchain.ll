; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-record.c_record_opts__parse_callchain.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-record.c_record_opts__parse_callchain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.record_opts = type { i32 }
%struct.callchain_param = type { i32, i64 }

@CALLCHAIN_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"callchain: disabled\0A\00", align 1
@CALLCHAIN_DWARF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @record_opts__parse_callchain(%struct.record_opts* %0, %struct.callchain_param* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.record_opts*, align 8
  %7 = alloca %struct.callchain_param*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.record_opts* %0, %struct.record_opts** %6, align 8
  store %struct.callchain_param* %1, %struct.callchain_param** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = load %struct.callchain_param*, %struct.callchain_param** %7, align 8
  %16 = getelementptr inbounds %struct.callchain_param, %struct.callchain_param* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load i64, i64* @CALLCHAIN_NONE, align 8
  %21 = load %struct.callchain_param*, %struct.callchain_param** %7, align 8
  %22 = getelementptr inbounds %struct.callchain_param, %struct.callchain_param* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %44

24:                                               ; preds = %4
  %25 = load i8*, i8** %8, align 8
  %26 = load %struct.callchain_param*, %struct.callchain_param** %7, align 8
  %27 = call i32 @parse_callchain_record_opt(i8* %25, %struct.callchain_param* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %24
  %31 = load %struct.callchain_param*, %struct.callchain_param** %7, align 8
  %32 = getelementptr inbounds %struct.callchain_param, %struct.callchain_param* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CALLCHAIN_DWARF, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.record_opts*, %struct.record_opts** %6, align 8
  %38 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %30
  %40 = load %struct.callchain_param*, %struct.callchain_param** %7, align 8
  %41 = call i32 @callchain_debug(%struct.callchain_param* %40)
  br label %42

42:                                               ; preds = %39, %24
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %42, %19
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @parse_callchain_record_opt(i8*, %struct.callchain_param*) #1

declare dso_local i32 @callchain_debug(%struct.callchain_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
