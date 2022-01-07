; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/api/extr_cpu.c_cpu__get_max_freq.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/api/extr_cpu.c_cpu__get_max_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"devices/system/cpu/online\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"devices/system/cpu/cpu%d/cpufreq/cpuinfo_max_freq\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpu__get_max_freq(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  %8 = load i32, i32* @PATH_MAX, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = call i64 @sysfs__read_int(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32* %6)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %21

15:                                               ; preds = %1
  %16 = trunc i64 %9 to i32
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @snprintf(i8* %11, i32 %16, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load i64*, i64** %3, align 8
  %20 = call i32 @sysfs__read_ull(i8* %11, i64* %19)
  store i32 %20, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %21

21:                                               ; preds = %15, %14
  %22 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %22)
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @sysfs__read_int(i8*, i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @sysfs__read_ull(i8*, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
