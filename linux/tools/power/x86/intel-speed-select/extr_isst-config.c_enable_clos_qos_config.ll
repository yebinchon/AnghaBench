; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-config.c_enable_clos_qos_config.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-config.c_enable_clos_qos_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@clos_priority_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"isst_pm_qos_config\00", align 1
@outf = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"core-power\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*, i8*, i8*)* @enable_clos_qos_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_clos_qos_config(i32 %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* @clos_priority_type, align 4
  %19 = call i32 @isst_pm_qos_config(i32 %16, i32 %17, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = call i32 @perror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %38

24:                                               ; preds = %5
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @outf, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @isst_display_result(i32 %28, i32 %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  br label %37

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @outf, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @isst_display_result(i32 %33, i32 %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %32, %27
  br label %38

38:                                               ; preds = %37, %22
  ret void
}

declare dso_local i32 @isst_pm_qos_config(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @isst_display_result(i32, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
