; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_uprobe.c_trace_uprobe_show.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_uprobe.c_trace_uprobe_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.dyn_event = type { i32 }
%struct.trace_uprobe = type { i8, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"%c:%s/%s %s:0x%0*lx\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"(0x%lx)\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" %s=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.dyn_event*)* @trace_uprobe_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace_uprobe_show(%struct.seq_file* %0, %struct.dyn_event* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.dyn_event*, align 8
  %5 = alloca %struct.trace_uprobe*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.dyn_event* %1, %struct.dyn_event** %4, align 8
  %8 = load %struct.dyn_event*, %struct.dyn_event** %4, align 8
  %9 = call %struct.trace_uprobe* @to_trace_uprobe(%struct.dyn_event* %8)
  store %struct.trace_uprobe* %9, %struct.trace_uprobe** %5, align 8
  %10 = load %struct.trace_uprobe*, %struct.trace_uprobe** %5, align 8
  %11 = call i64 @is_ret_probe(%struct.trace_uprobe* %10)
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 114, i32 112
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %6, align 1
  %16 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %17 = load i8, i8* %6, align 1
  %18 = load %struct.trace_uprobe*, %struct.trace_uprobe** %5, align 8
  %19 = getelementptr inbounds %struct.trace_uprobe, %struct.trace_uprobe* %18, i32 0, i32 1
  %20 = call i32 @trace_probe_group_name(%struct.TYPE_5__* %19)
  %21 = load %struct.trace_uprobe*, %struct.trace_uprobe** %5, align 8
  %22 = getelementptr inbounds %struct.trace_uprobe, %struct.trace_uprobe* %21, i32 0, i32 1
  %23 = call i32 @trace_probe_name(%struct.TYPE_5__* %22)
  %24 = load %struct.trace_uprobe*, %struct.trace_uprobe** %5, align 8
  %25 = getelementptr inbounds %struct.trace_uprobe, %struct.trace_uprobe* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.trace_uprobe*, %struct.trace_uprobe** %5, align 8
  %28 = getelementptr inbounds %struct.trace_uprobe, %struct.trace_uprobe* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (%struct.seq_file*, i8*, i8, ...) @seq_printf(%struct.seq_file* %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8 signext %17, i32 %20, i32 %23, i32 %26, i32 16, i32 %29)
  %31 = load %struct.trace_uprobe*, %struct.trace_uprobe** %5, align 8
  %32 = getelementptr inbounds %struct.trace_uprobe, %struct.trace_uprobe* %31, i32 0, i32 0
  %33 = load i8, i8* %32, align 8
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %2
  %36 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %37 = load %struct.trace_uprobe*, %struct.trace_uprobe** %5, align 8
  %38 = getelementptr inbounds %struct.trace_uprobe, %struct.trace_uprobe* %37, i32 0, i32 0
  %39 = load i8, i8* %38, align 8
  %40 = call i32 (%struct.seq_file*, i8*, i8, ...) @seq_printf(%struct.seq_file* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8 signext %39)
  br label %41

41:                                               ; preds = %35, %2
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %71, %41
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.trace_uprobe*, %struct.trace_uprobe** %5, align 8
  %45 = getelementptr inbounds %struct.trace_uprobe, %struct.trace_uprobe* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %43, %47
  br i1 %48, label %49, label %74

49:                                               ; preds = %42
  %50 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %51 = load %struct.trace_uprobe*, %struct.trace_uprobe** %5, align 8
  %52 = getelementptr inbounds %struct.trace_uprobe, %struct.trace_uprobe* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = trunc i32 %59 to i8
  %61 = load %struct.trace_uprobe*, %struct.trace_uprobe** %5, align 8
  %62 = getelementptr inbounds %struct.trace_uprobe, %struct.trace_uprobe* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (%struct.seq_file*, i8*, i8, ...) @seq_printf(%struct.seq_file* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8 signext %60, i32 %69)
  br label %71

71:                                               ; preds = %49
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %42

74:                                               ; preds = %42
  %75 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %76 = call i32 @seq_putc(%struct.seq_file* %75, i8 signext 10)
  ret i32 0
}

declare dso_local %struct.trace_uprobe* @to_trace_uprobe(%struct.dyn_event*) #1

declare dso_local i64 @is_ret_probe(%struct.trace_uprobe*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8 signext, ...) #1

declare dso_local i32 @trace_probe_group_name(%struct.TYPE_5__*) #1

declare dso_local i32 @trace_probe_name(%struct.TYPE_5__*) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
