; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_kprobe.c_trace_kprobe_show.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_kprobe.c_trace_kprobe_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.dyn_event = type { i32 }
%struct.trace_kprobe = type { %struct.TYPE_9__, %struct.TYPE_7__, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c":%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" 0x%p\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" %s+%u\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c" %s=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.dyn_event*)* @trace_kprobe_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace_kprobe_show(%struct.seq_file* %0, %struct.dyn_event* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.dyn_event*, align 8
  %5 = alloca %struct.trace_kprobe*, align 8
  %6 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.dyn_event* %1, %struct.dyn_event** %4, align 8
  %7 = load %struct.dyn_event*, %struct.dyn_event** %4, align 8
  %8 = call %struct.trace_kprobe* @to_trace_kprobe(%struct.dyn_event* %7)
  store %struct.trace_kprobe* %8, %struct.trace_kprobe** %5, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = load %struct.trace_kprobe*, %struct.trace_kprobe** %5, align 8
  %11 = call i64 @trace_kprobe_is_return(%struct.trace_kprobe* %10)
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 114, i32 112
  %15 = trunc i32 %14 to i8
  %16 = call i32 @seq_putc(%struct.seq_file* %9, i8 signext %15)
  %17 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %18 = load %struct.trace_kprobe*, %struct.trace_kprobe** %5, align 8
  %19 = getelementptr inbounds %struct.trace_kprobe, %struct.trace_kprobe* %18, i32 0, i32 0
  %20 = call i32 @trace_probe_group_name(%struct.TYPE_9__* %19)
  %21 = load %struct.trace_kprobe*, %struct.trace_kprobe** %5, align 8
  %22 = getelementptr inbounds %struct.trace_kprobe, %struct.trace_kprobe* %21, i32 0, i32 0
  %23 = call i64 @trace_probe_name(%struct.TYPE_9__* %22)
  %24 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %20, i64 %23)
  %25 = load %struct.trace_kprobe*, %struct.trace_kprobe** %5, align 8
  %26 = getelementptr inbounds %struct.trace_kprobe, %struct.trace_kprobe* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %2
  %30 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %31 = load %struct.trace_kprobe*, %struct.trace_kprobe** %5, align 8
  %32 = getelementptr inbounds %struct.trace_kprobe, %struct.trace_kprobe* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %60

37:                                               ; preds = %2
  %38 = load %struct.trace_kprobe*, %struct.trace_kprobe** %5, align 8
  %39 = getelementptr inbounds %struct.trace_kprobe, %struct.trace_kprobe* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %37
  %45 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %46 = load %struct.trace_kprobe*, %struct.trace_kprobe** %5, align 8
  %47 = call i32 @trace_kprobe_symbol(%struct.trace_kprobe* %46)
  %48 = load %struct.trace_kprobe*, %struct.trace_kprobe** %5, align 8
  %49 = getelementptr inbounds %struct.trace_kprobe, %struct.trace_kprobe* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %47, i64 %52)
  br label %59

54:                                               ; preds = %37
  %55 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %56 = load %struct.trace_kprobe*, %struct.trace_kprobe** %5, align 8
  %57 = call i32 @trace_kprobe_symbol(%struct.trace_kprobe* %56)
  %58 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %54, %44
  br label %60

60:                                               ; preds = %59, %29
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %89, %60
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.trace_kprobe*, %struct.trace_kprobe** %5, align 8
  %64 = getelementptr inbounds %struct.trace_kprobe, %struct.trace_kprobe* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %62, %66
  br i1 %67, label %68, label %92

68:                                               ; preds = %61
  %69 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %70 = load %struct.trace_kprobe*, %struct.trace_kprobe** %5, align 8
  %71 = getelementptr inbounds %struct.trace_kprobe, %struct.trace_kprobe* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.trace_kprobe*, %struct.trace_kprobe** %5, align 8
  %80 = getelementptr inbounds %struct.trace_kprobe, %struct.trace_kprobe* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %78, i64 %87)
  br label %89

89:                                               ; preds = %68
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %61

92:                                               ; preds = %61
  %93 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %94 = call i32 @seq_putc(%struct.seq_file* %93, i8 signext 10)
  ret i32 0
}

declare dso_local %struct.trace_kprobe* @to_trace_kprobe(%struct.dyn_event*) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

declare dso_local i64 @trace_kprobe_is_return(%struct.trace_kprobe*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @trace_probe_group_name(%struct.TYPE_9__*) #1

declare dso_local i64 @trace_probe_name(%struct.TYPE_9__*) #1

declare dso_local i32 @trace_kprobe_symbol(%struct.trace_kprobe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
