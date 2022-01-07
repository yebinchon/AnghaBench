; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_lathist_user.c_print_hist.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_lathist_user.c_print_hist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_hist = type { i64, i32* }

@MAX_STARS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"\1B[2J\00", align 1
@MAX_CPU = common dso_local global i32 0, align 4
@cpu_hist = common dso_local global %struct.cpu_hist* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"CPU %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"      latency        : count     distribution\0A\00", align 1
@MAX_ENTRIES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"%8ld -> %-8ld : %-8ld |%-*s|\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_hist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_hist() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.cpu_hist*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @MAX_STARS, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %1, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %2, align 8
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %69, %0
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @MAX_CPU, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %72

15:                                               ; preds = %11
  %16 = load %struct.cpu_hist*, %struct.cpu_hist** @cpu_hist, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.cpu_hist, %struct.cpu_hist* %16, i64 %18
  store %struct.cpu_hist* %19, %struct.cpu_hist** %3, align 8
  %20 = load %struct.cpu_hist*, %struct.cpu_hist** %3, align 8
  %21 = getelementptr inbounds %struct.cpu_hist, %struct.cpu_hist* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %69

25:                                               ; preds = %15
  %26 = load i32, i32* %5, align 4
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %29

29:                                               ; preds = %65, %25
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @MAX_ENTRIES, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %68

33:                                               ; preds = %29
  %34 = load %struct.cpu_hist*, %struct.cpu_hist** %3, align 8
  %35 = getelementptr inbounds %struct.cpu_hist, %struct.cpu_hist* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.cpu_hist*, %struct.cpu_hist** %3, align 8
  %43 = getelementptr inbounds %struct.cpu_hist, %struct.cpu_hist* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @MAX_STARS, align 4
  %46 = call i32 @stars(i8* %9, i32 %41, i64 %44, i32 %45)
  %47 = load i32, i32* %4, align 4
  %48 = zext i32 %47 to i64
  %49 = shl i64 1, %48
  %50 = ashr i64 %49, 1
  %51 = load i32, i32* %4, align 4
  %52 = zext i32 %51 to i64
  %53 = shl i64 1, %52
  %54 = sub nsw i64 %53, 1
  %55 = load %struct.cpu_hist*, %struct.cpu_hist** %3, align 8
  %56 = getelementptr inbounds %struct.cpu_hist, %struct.cpu_hist* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @MAX_STARS, align 4
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %50, i64 %54, i32 %62, i32 %63, i8* %9)
  br label %65

65:                                               ; preds = %33
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %29

68:                                               ; preds = %29
  br label %69

69:                                               ; preds = %68, %24
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %11

72:                                               ; preds = %11
  %73 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %73)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @stars(i8*, i32, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
