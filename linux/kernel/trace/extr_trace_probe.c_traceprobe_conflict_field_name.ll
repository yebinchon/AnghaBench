; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe.c_traceprobe_conflict_field_name.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe.c_traceprobe_conflict_field_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe_arg = type { i32 }

@reserved_field_names = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.probe_arg*, i32)* @traceprobe_conflict_field_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @traceprobe_conflict_field_name(i8* %0, %struct.probe_arg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.probe_arg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.probe_arg* %1, %struct.probe_arg** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %25, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32*, i32** @reserved_field_names, align 8
  %12 = call i32 @ARRAY_SIZE(i32* %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %9
  %15 = load i32*, i32** @reserved_field_names, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @strcmp(i32 %19, i8* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store i32 1, i32* %4, align 4
  br label %49

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %8, align 4
  br label %9

28:                                               ; preds = %9
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %45, %28
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %29
  %34 = load %struct.probe_arg*, %struct.probe_arg** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %34, i64 %36
  %38 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %5, align 8
  %41 = call i64 @strcmp(i32 %39, i8* %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  br label %49

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %29

48:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %43, %23
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
