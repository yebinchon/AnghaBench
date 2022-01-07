; ModuleID = '/home/carl/AnghaBench/linux/samples/uhid/extr_uhid-example.c_event.c'
source_filename = "/home/carl/AnghaBench/linux/samples/uhid/extr_uhid-example.c_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhid_event = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Read HUP on uhid-cdev\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Cannot read uhid-cdev: %m\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Invalid size read from uhid-dev: %ld != %lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"UHID_START from uhid-dev\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"UHID_STOP from uhid-dev\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"UHID_OPEN from uhid-dev\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"UHID_CLOSE from uhid-dev\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"UHID_OUTPUT from uhid-dev\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"UHID_OUTPUT_EV from uhid-dev\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Invalid event from uhid-dev: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.uhid_event, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = call i32 @memset(%struct.uhid_event* %4, i32 0, i32 4)
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @read(i32 %7, %struct.uhid_event* %4, i32 4)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EFAULT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %64

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @errno, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %64

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ne i64 %26, 4
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32, i32* @stderr, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %30, i64 4)
  %32 = load i32, i32* @EFAULT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %64

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34
  br label %36

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %4, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %58 [
    i32 129, label %39
    i32 128, label %42
    i32 132, label %45
    i32 133, label %48
    i32 131, label %51
    i32 130, label %55
  ]

39:                                               ; preds = %36
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %63

42:                                               ; preds = %36
  %43 = load i32, i32* @stderr, align 4
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %63

45:                                               ; preds = %36
  %46 = load i32, i32* @stderr, align 4
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %63

48:                                               ; preds = %36
  %49 = load i32, i32* @stderr, align 4
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %63

51:                                               ; preds = %36
  %52 = load i32, i32* @stderr, align 4
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %54 = call i32 @handle_output(%struct.uhid_event* %4)
  br label %63

55:                                               ; preds = %36
  %56 = load i32, i32* @stderr, align 4
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  br label %63

58:                                               ; preds = %36
  %59 = load i32, i32* @stderr, align 4
  %60 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %4, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %58, %55, %51, %48, %45, %42, %39
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %28, %19, %11
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @memset(%struct.uhid_event*, i32, i32) #1

declare dso_local i32 @read(i32, %struct.uhid_event*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @handle_output(%struct.uhid_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
