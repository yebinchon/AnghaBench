; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/csky/annotate/extr_instructions.c_csky__associate_ins_ops.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/csky/annotate/extr_instructions.c_csky__associate_ins_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ins_ops = type { i32 }
%struct.arch = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"bt\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"bf\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"bez\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"bnez\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"bnezad\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"bhsz\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"bhz\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"blsz\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"blz\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"br\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"jmpi\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"jmp\00", align 1
@jump_ops = common dso_local global %struct.ins_ops zeroinitializer, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"bsr\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"jsri\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"jsr\00", align 1
@call_ops = common dso_local global %struct.ins_ops zeroinitializer, align 4
@.str.15 = private unnamed_addr constant [4 x i8] c"rts\00", align 1
@ret_ops = common dso_local global %struct.ins_ops zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ins_ops* (%struct.arch*, i8*)* @csky__associate_ins_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ins_ops* @csky__associate_ins_ops(%struct.arch* %0, i8* %1) #0 {
  %3 = alloca %struct.arch*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ins_ops*, align 8
  store %struct.arch* %0, %struct.arch** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.ins_ops* null, %struct.ins_ops** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %53

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %53

13:                                               ; preds = %9
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %53

17:                                               ; preds = %13
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %53

21:                                               ; preds = %17
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %53

25:                                               ; preds = %21
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %25
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %29
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %33
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49, %45, %41, %37, %33, %29, %25, %21, %17, %13, %9, %2
  store %struct.ins_ops* @jump_ops, %struct.ins_ops** %5, align 8
  br label %54

54:                                               ; preds = %53, %49
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 @strcmp(i8* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = load i8*, i8** %4, align 8
  %60 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i8*, i8** %4, align 8
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %62, %58, %54
  store %struct.ins_ops* @call_ops, %struct.ins_ops** %5, align 8
  br label %67

67:                                               ; preds = %66, %62
  %68 = load i8*, i8** %4, align 8
  %69 = call i32 @strcmp(i8* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  store %struct.ins_ops* @ret_ops, %struct.ins_ops** %5, align 8
  br label %72

72:                                               ; preds = %71, %67
  %73 = load %struct.ins_ops*, %struct.ins_ops** %5, align 8
  %74 = icmp ne %struct.ins_ops* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load %struct.arch*, %struct.arch** %3, align 8
  %77 = load i8*, i8** %4, align 8
  %78 = load %struct.ins_ops*, %struct.ins_ops** %5, align 8
  %79 = call i32 @arch__associate_ins_ops(%struct.arch* %76, i8* %77, %struct.ins_ops* %78)
  br label %80

80:                                               ; preds = %75, %72
  %81 = load %struct.ins_ops*, %struct.ins_ops** %5, align 8
  ret %struct.ins_ops* %81
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @arch__associate_ins_ops(%struct.arch*, i8*, %struct.ins_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
