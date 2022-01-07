; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-config.c_set_cpu_online_offline.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-config.c_set_cpu_online_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"/sys/devices/system/cpu/cpu%d/online\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%s open failed\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"1\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @set_cpu_online_offline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_cpu_online_offline(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [128 x i8], align 16
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @snprintf(i8* %7, i32 128, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %11 = load i32, i32* @O_WRONLY, align 4
  %12 = call i32 @open(i8* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %17 = call i32 @err(i32 -1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %15, %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @write(i32 %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  br label %27

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @write(i32 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2)
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @close(i32 %28)
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
