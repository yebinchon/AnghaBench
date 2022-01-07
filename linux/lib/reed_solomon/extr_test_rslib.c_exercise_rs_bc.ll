; ModuleID = '/home/carl/AnghaBench/linux/lib/reed_solomon/extr_test_rslib.c_exercise_rs_bc.c'
source_filename = "/home/carl/AnghaBench/linux/lib/reed_solomon/extr_test_rslib.c_exercise_rs_bc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rs_control = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wspace = type { i32 }
%struct.bcstat = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@v = common dso_local global i64 0, align 8
@V_PROGRESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Testing beyond error correction capacity...\0A\00", align 1
@V_CSUMMARY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"  decoder gives up:        %d / %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"  decoder returns success: %d / %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"    not a codeword:        %d / %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"    FAIL: %d silent failures!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rs_control*, %struct.wspace*, i32, i32)* @exercise_rs_bc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exercise_rs_bc(%struct.rs_control* %0, %struct.wspace* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rs_control*, align 8
  %6 = alloca %struct.wspace*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bcstat, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rs_control* %0, %struct.rs_control** %5, align 8
  store %struct.wspace* %1, %struct.wspace** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = bitcast %struct.bcstat* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 32, i1 false)
  %15 = load %struct.rs_control*, %struct.rs_control** %5, align 8
  %16 = getelementptr inbounds %struct.rs_control, %struct.rs_control* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load i64, i64* @v, align 8
  %21 = load i64, i64* @V_PROGRESS, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %4
  store i32 1, i32* %11, align 4
  br label %26

26:                                               ; preds = %69, %25
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %72

30:                                               ; preds = %26
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = mul nsw i32 2, %32
  %34 = sub nsw i32 %31, %33
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %38, %30
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %11, align 4
  %43 = sub nsw i32 %41, %42
  %44 = icmp sle i32 %40, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %10, align 4
  br label %51

47:                                               ; preds = %39
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %11, align 4
  %50 = sub nsw i32 %48, %49
  br label %51

51:                                               ; preds = %47, %45
  %52 = phi i32 [ %46, %45 ], [ %50, %47 ]
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %65, %51
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = load %struct.rs_control*, %struct.rs_control** %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.wspace*, %struct.wspace** %6, align 8
  %64 = call i32 @test_bc(%struct.rs_control* %58, i32 %59, i32 %60, i32 %61, i32 %62, %struct.bcstat* %9, %struct.wspace* %63)
  br label %65

65:                                               ; preds = %57
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %12, align 4
  br label %53

68:                                               ; preds = %53
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %11, align 4
  br label %26

72:                                               ; preds = %26
  %73 = load i64, i64* @v, align 8
  %74 = load i64, i64* @V_CSUMMARY, align 8
  %75 = icmp sge i64 %73, %74
  br i1 %75, label %76, label %92

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.bcstat, %struct.bcstat* %9, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.bcstat, %struct.bcstat* %9, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %80)
  %82 = getelementptr inbounds %struct.bcstat, %struct.bcstat* %9, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.bcstat, %struct.bcstat* %9, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %83, i32 %85)
  %87 = getelementptr inbounds %struct.bcstat, %struct.bcstat* %9, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.bcstat, %struct.bcstat* %9, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %88, i32 %90)
  br label %92

92:                                               ; preds = %76, %72
  %93 = getelementptr inbounds %struct.bcstat, %struct.bcstat* %9, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %92
  %97 = load i64, i64* @v, align 8
  %98 = load i64, i64* @V_PROGRESS, align 8
  %99 = icmp sge i64 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.bcstat, %struct.bcstat* %9, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %100, %96, %92
  %105 = getelementptr inbounds %struct.bcstat, %struct.bcstat* %9, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  ret i32 %106
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @pr_info(i8*, ...) #2

declare dso_local i32 @test_bc(%struct.rs_control*, i32, i32, i32, i32, %struct.bcstat*, %struct.wspace*) #2

declare dso_local i32 @pr_warn(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
