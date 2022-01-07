; ModuleID = '/home/carl/AnghaBench/linux/samples/timers/extr_hpet_example.c_hpet_info.c'
source_filename = "/home/carl/AnghaBench/linux/samples/timers/extr_hpet_example.c_hpet_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpet_info = type { i32, i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"hpet_info: device-name\0A\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"hpet_info: open of %s failed\0A\00", align 1
@HPET_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"hpet_info: failed to get info\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"hpet_info: hi_irqfreq 0x%lx hi_flags 0x%lx \00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"hi_hpet %d hi_timer %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpet_info(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.hpet_info, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @stderr, align 4
  %11 = call i32 (i32, i8*, ...) @fprintf(i32 %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %50

12:                                               ; preds = %2
  %13 = load i8**, i8*** %4, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  %16 = load i32, i32* @O_RDONLY, align 4
  %17 = call i32 @open(i8* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %12
  %21 = load i32, i32* @stderr, align 4
  %22 = load i8**, i8*** %4, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  br label %50

26:                                               ; preds = %12
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @HPET_INFO, align 4
  %29 = call i64 @ioctl(i32 %27, i32 %28, %struct.hpet_info* %5)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @stderr, align 4
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %47

34:                                               ; preds = %26
  %35 = load i32, i32* @stderr, align 4
  %36 = getelementptr inbounds %struct.hpet_info, %struct.hpet_info* %5, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.hpet_info, %struct.hpet_info* %5, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %37, i32 %39)
  %41 = load i32, i32* @stderr, align 4
  %42 = getelementptr inbounds %struct.hpet_info, %struct.hpet_info* %5, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.hpet_info, %struct.hpet_info* %5, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %43, i32 %45)
  br label %47

47:                                               ; preds = %34, %31
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @close(i32 %48)
  br label %50

50:                                               ; preds = %47, %20, %9
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.hpet_info*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
