; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/s390/annotate/extr_instructions.c_s390__associate_ins_ops.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/s390/annotate/extr_instructions.c_s390__associate_ins_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ins_ops = type { i32 }
%struct.arch = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"bct\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"br\00", align 1
@jump_ops = common dso_local global %struct.ins_ops zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"bras\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"brasl\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"basr\00", align 1
@s390_call_ops = common dso_local global %struct.ins_ops zeroinitializer, align 4
@ret_ops = common dso_local global %struct.ins_ops zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"lrl\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"lgrl\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"lgfrl\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"llgfrl\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"strl\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"stgrl\00", align 1
@s390_mov_ops = common dso_local global %struct.ins_ops zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ins_ops* (%struct.arch*, i8*)* @s390__associate_ins_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ins_ops* @s390__associate_ins_ops(%struct.arch* %0, i8* %1) #0 {
  %3 = alloca %struct.arch*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ins_ops*, align 8
  store %struct.arch* %0, %struct.arch** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.ins_ops* null, %struct.ins_ops** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i64 @strchr(i8* %6, i8 signext 106)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @strncmp(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13, %9, %2
  store %struct.ins_ops* @jump_ops, %struct.ins_ops** %5, align 8
  br label %18

18:                                               ; preds = %17, %13
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26, %22, %18
  store %struct.ins_ops* @s390_call_ops, %struct.ins_ops** %5, align 8
  br label %31

31:                                               ; preds = %30, %26
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store %struct.ins_ops* @ret_ops, %struct.ins_ops** %5, align 8
  br label %36

36:                                               ; preds = %35, %31
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %36
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %40
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i8*, i8** %4, align 8
  %58 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56, %52, %48, %44, %40, %36
  store %struct.ins_ops* @s390_mov_ops, %struct.ins_ops** %5, align 8
  br label %61

61:                                               ; preds = %60, %56
  %62 = load %struct.ins_ops*, %struct.ins_ops** %5, align 8
  %63 = icmp ne %struct.ins_ops* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load %struct.arch*, %struct.arch** %3, align 8
  %66 = load i8*, i8** %4, align 8
  %67 = load %struct.ins_ops*, %struct.ins_ops** %5, align 8
  %68 = call i32 @arch__associate_ins_ops(%struct.arch* %65, i8* %66, %struct.ins_ops* %67)
  br label %69

69:                                               ; preds = %64, %61
  %70 = load %struct.ins_ops*, %struct.ins_ops** %5, align 8
  ret %struct.ins_ops* %70
}

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @arch__associate_ins_ops(%struct.arch*, i8*, %struct.ins_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
