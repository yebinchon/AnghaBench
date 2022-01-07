; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_hyperv_cpuid.c_smt_possible.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_hyperv_cpuid.c_smt_possible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"/sys/devices/system/cpu/smt/control\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"forceoff\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"notsupported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @smt_possible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smt_possible() #0 {
  %1 = alloca [16 x i8], align 16
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32 1, i32* %3, align 4
  %4 = call i32* @fopen(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %4, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %25

7:                                                ; preds = %0
  %8 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %9 = load i32*, i32** %2, align 8
  %10 = call i64 @fread(i8* %8, i32 1, i32 16, i32* %9)
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %7
  %13 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %14 = call i32 @strncmp(i8* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %18 = call i32 @strncmp(i8* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 12)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16, %12
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %20, %16
  br label %22

22:                                               ; preds = %21, %7
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @fclose(i32* %23)
  br label %25

25:                                               ; preds = %22, %0
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
