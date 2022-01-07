; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/jvmti/extr_jvmti_agent.c_get_e_machine.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/jvmti/extr_jvmti_agent.c_get_e_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jitheader = type { i32 }
%struct.anon = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"/proc/self/exe\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jitheader*)* @get_e_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_e_machine(%struct.jitheader* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jitheader*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [16 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.anon, align 4
  store %struct.jitheader* %0, %struct.jitheader** %3, align 8
  store i32 -1, i32* %7, align 4
  %9 = load i32, i32* @O_RDONLY, align 4
  %10 = call i32 @open(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %59

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  %16 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %17 = call i32 (i32, ...) @read(i32 %15, i8* %16, i64 16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ne i64 %19, 16
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %55

22:                                               ; preds = %14
  %23 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %24 = load i8, i8* %23, align 16
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 127
  br i1 %26, label %42, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 69
  br i1 %31, label %42, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 2
  %34 = load i8, i8* %33, align 2
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 76
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 3
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 70
  br i1 %41, label %42, label %43

42:                                               ; preds = %37, %32, %27, %22
  br label %55

43:                                               ; preds = %37
  %44 = load i32, i32* %6, align 4
  %45 = call i32 (i32, ...) @read(i32 %44, %struct.anon* %8, i64 8)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp ne i64 %47, 8
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %55

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.jitheader*, %struct.jitheader** %3, align 8
  %54 = getelementptr inbounds %struct.jitheader, %struct.jitheader* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %50, %49, %42, %21
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @close(i32 %56)
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %55, %13
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @read(i32, ...) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
