; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_trigger.c_event_trigger_print.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_trigger.c_event_trigger_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c":unlimited\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c":count=%ld\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" if %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.seq_file*, i8*, i8*)* @event_trigger_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_trigger_print(i8* %0, %struct.seq_file* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.seq_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store %struct.seq_file* %1, %struct.seq_file** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = ptrtoint i8* %10 to i64
  store i64 %11, i64* %9, align 8
  %12 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @seq_puts(%struct.seq_file* %12, i8* %13)
  %15 = load i64, i64* %9, align 8
  %16 = icmp eq i64 %15, -1
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %19 = call i32 @seq_puts(%struct.seq_file* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %24

20:                                               ; preds = %4
  %21 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  br label %24

24:                                               ; preds = %20, %17
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  br label %34

31:                                               ; preds = %24
  %32 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %33 = call i32 @seq_putc(%struct.seq_file* %32, i8 signext 10)
  br label %34

34:                                               ; preds = %31, %27
  ret i32 0
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
