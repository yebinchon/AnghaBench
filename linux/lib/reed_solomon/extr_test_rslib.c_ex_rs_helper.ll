; ModuleID = '/home/carl/AnghaBench/linux/lib/reed_solomon/extr_test_rslib.c_ex_rs_helper.c'
source_filename = "/home/carl/AnghaBench/linux/lib/reed_solomon/extr_test_rslib.c_ex_rs_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rs_control = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wspace = type { i32 }
%struct.estat = type { i32, i32, i8*, i32, i32, i32, i32, i32 }

@ex_rs_helper.desc = internal constant [3 x i8*] [i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [39 x i8] c"Testing correction buffer interface...\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Testing with caller provided syndrome...\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Testing in-place interface...\00", align 1
@v = common dso_local global i64 0, align 8
@V_PROGRESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@V_CSUMMARY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"    Decodes wrong:        %d / %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"    Wrong return value:   %d / %d\0A\00", align 1
@IN_PLACE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"    Wrong error position: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"    FAIL: %d decoding failures!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rs_control*, %struct.wspace*, i32, i32, i32)* @ex_rs_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ex_rs_helper(%struct.rs_control* %0, %struct.wspace* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.rs_control*, align 8
  %7 = alloca %struct.wspace*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.estat, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.rs_control* %0, %struct.rs_control** %6, align 8
  store %struct.wspace* %1, %struct.wspace** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = bitcast %struct.estat* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 40, i1 false)
  %17 = load %struct.rs_control*, %struct.rs_control** %6, align 8
  %18 = getelementptr inbounds %struct.rs_control, %struct.rs_control* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load i64, i64* @v, align 8
  %23 = load i64, i64* @V_PROGRESS, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %5
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [3 x i8*], [3 x i8*]* @ex_rs_helper.desc, i64 0, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %25, %5
  store i32 0, i32* %13, align 4
  br label %32

32:                                               ; preds = %58, %31
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %12, align 4
  %35 = sdiv i32 %34, 2
  %36 = icmp sle i32 %33, %35
  br i1 %36, label %37, label %61

37:                                               ; preds = %32
  store i32 0, i32* %14, align 4
  br label %38

38:                                               ; preds = %54, %37
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %13, align 4
  %42 = mul nsw i32 2, %41
  %43 = sub nsw i32 %40, %42
  %44 = icmp sle i32 %39, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %38
  %46 = load %struct.rs_control*, %struct.rs_control** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.wspace*, %struct.wspace** %7, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @test_uc(%struct.rs_control* %46, i32 %47, i32 %48, i32 %49, i32 %50, %struct.estat* %11, %struct.wspace* %51, i32 %52)
  br label %54

54:                                               ; preds = %45
  %55 = load i32, i32* %14, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %14, align 4
  br label %38

57:                                               ; preds = %38
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %13, align 4
  br label %32

61:                                               ; preds = %32
  %62 = load i64, i64* @v, align 8
  %63 = load i64, i64* @V_CSUMMARY, align 8
  %64 = icmp sge i64 %62, %63
  br i1 %64, label %65, label %84

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.estat, %struct.estat* %11, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.estat, %struct.estat* %11, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %67, i32 %69)
  %71 = getelementptr inbounds %struct.estat, %struct.estat* %11, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.estat, %struct.estat* %11, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %72, i32 %74)
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @IN_PLACE, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %65
  %80 = getelementptr inbounds %struct.estat, %struct.estat* %11, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %79, %65
  br label %84

84:                                               ; preds = %83, %61
  %85 = getelementptr inbounds %struct.estat, %struct.estat* %11, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds %struct.estat, %struct.estat* %11, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = sext i32 %86 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  %91 = getelementptr inbounds %struct.estat, %struct.estat* %11, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %90, i64 %93
  %95 = ptrtoint i8* %94 to i32
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %15, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %84
  %99 = load i64, i64* @v, align 8
  %100 = load i64, i64* @V_PROGRESS, align 8
  %101 = icmp sge i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i32, i32* %15, align 4
  %104 = call i32 @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %102, %98, %84
  %106 = load i32, i32* %15, align 4
  ret i32 %106
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @pr_info(i8*, ...) #2

declare dso_local i32 @test_uc(%struct.rs_control*, i32, i32, i32, i32, %struct.estat*, %struct.wspace*, i32) #2

declare dso_local i32 @pr_warn(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
