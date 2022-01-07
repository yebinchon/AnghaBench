; ModuleID = '/home/carl/AnghaBench/linux/tools/leds/extr_uledmon.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/leds/extr_uledmon.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uleds_user_dev = type { i32, i32 }
%struct.timespec = type { i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Requires <device-name> argument\0A\00", align 1
@LED_MAX_NAME_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"/dev/uleds\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to open /dev/uleds\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to write to /dev/uleds\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to read from /dev/uleds\00", align 1
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"[%ld.%09ld] %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.uleds_user_dev, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.timespec, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 2
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %59

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.uleds_user_dev, %struct.uleds_user_dev* %6, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = load i32, i32* @LED_MAX_NAME_SIZE, align 4
  %23 = call i32 @strncpy(i32 %18, i8* %21, i32 %22)
  %24 = getelementptr inbounds %struct.uleds_user_dev, %struct.uleds_user_dev* %6, i32 0, i32 0
  store i32 100, i32* %24, align 4
  %25 = load i32, i32* @O_RDWR, align 4
  %26 = call i32 @open(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %31

29:                                               ; preds = %16
  %30 = call i32 @perror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %59

31:                                               ; preds = %16
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @write(i32 %32, %struct.uleds_user_dev* %6, i32 8)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = call i32 @perror(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @close(i32 %38)
  store i32 1, i32* %3, align 4
  br label %59

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %50
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @read(i32 %42, i32* %9, i32 4)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = call i32 @perror(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @close(i32 %48)
  store i32 1, i32* %3, align 4
  br label %59

50:                                               ; preds = %41
  %51 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %52 = call i32 @clock_gettime(i32 %51, %struct.timespec* %10)
  %53 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %54, i32 %56, i32 %57)
  br label %41

59:                                               ; preds = %46, %36, %29, %13
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @write(i32, %struct.uleds_user_dev*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
