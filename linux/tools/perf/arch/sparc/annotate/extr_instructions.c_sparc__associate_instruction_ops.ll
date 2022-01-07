; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/sparc/annotate/extr_instructions.c_sparc__associate_instruction_ops.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/sparc/annotate/extr_instructions.c_sparc__associate_instruction_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ins_ops = type { i32 }
%struct.arch = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"jmp\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"jmpl\00", align 1
@call_ops = common dso_local global %struct.ins_ops zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"retl\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@ret_ops = common dso_local global %struct.ins_ops zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"mov\00", align 1
@mov_ops = common dso_local global %struct.ins_ops zeroinitializer, align 4
@jump_ops = common dso_local global %struct.ins_ops zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ins_ops* (%struct.arch*, i8*)* @sparc__associate_instruction_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ins_ops* @sparc__associate_instruction_ops(%struct.arch* %0, i8* %1) #0 {
  %3 = alloca %struct.arch*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ins_ops*, align 8
  %6 = alloca i8*, align 8
  store %struct.arch* %0, %struct.arch** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.ins_ops* null, %struct.ins_ops** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14, %10, %2
  store %struct.ins_ops* @call_ops, %struct.ins_ops** %5, align 8
  br label %109

19:                                               ; preds = %14
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27, %23, %19
  store %struct.ins_ops* @ret_ops, %struct.ins_ops** %5, align 8
  br label %108

32:                                               ; preds = %27
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  store %struct.ins_ops* @mov_ops, %struct.ins_ops** %5, align 8
  br label %107

37:                                               ; preds = %32
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 99
  br i1 %42, label %43, label %58

43:                                               ; preds = %37
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 119
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load i8*, i8** %4, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 120
  br i1 %54, label %55, label %58

55:                                               ; preds = %49, %43
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 2
  store i8* %57, i8** %4, align 8
  br label %58

58:                                               ; preds = %55, %49, %37
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 98
  br i1 %63, label %64, label %86

64:                                               ; preds = %58
  %65 = load i8*, i8** %4, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  store i8* %66, i8** %6, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 114
  br i1 %71, label %72, label %79

72:                                               ; preds = %64
  %73 = load i8*, i8** %6, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = call i64 @is_branch_reg_cond(i8* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store %struct.ins_ops* @jump_ops, %struct.ins_ops** %5, align 8
  br label %78

78:                                               ; preds = %77, %72
  br label %85

79:                                               ; preds = %64
  %80 = load i8*, i8** %6, align 8
  %81 = call i64 @is_branch_cond(i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store %struct.ins_ops* @jump_ops, %struct.ins_ops** %5, align 8
  br label %84

84:                                               ; preds = %83, %79
  br label %85

85:                                               ; preds = %84, %78
  br label %106

86:                                               ; preds = %58
  %87 = load i8*, i8** %4, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 102
  br i1 %91, label %92, label %105

92:                                               ; preds = %86
  %93 = load i8*, i8** %4, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 98
  br i1 %97, label %98, label %105

98:                                               ; preds = %92
  %99 = load i8*, i8** %4, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 2
  %101 = call i64 @is_branch_float_cond(i8* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  store %struct.ins_ops* @jump_ops, %struct.ins_ops** %5, align 8
  br label %104

104:                                              ; preds = %103, %98
  br label %105

105:                                              ; preds = %104, %92, %86
  br label %106

106:                                              ; preds = %105, %85
  br label %107

107:                                              ; preds = %106, %36
  br label %108

108:                                              ; preds = %107, %31
  br label %109

109:                                              ; preds = %108, %18
  %110 = load %struct.ins_ops*, %struct.ins_ops** %5, align 8
  %111 = icmp ne %struct.ins_ops* %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load %struct.arch*, %struct.arch** %3, align 8
  %114 = load i8*, i8** %4, align 8
  %115 = load %struct.ins_ops*, %struct.ins_ops** %5, align 8
  %116 = call i32 @arch__associate_ins_ops(%struct.arch* %113, i8* %114, %struct.ins_ops* %115)
  br label %117

117:                                              ; preds = %112, %109
  %118 = load %struct.ins_ops*, %struct.ins_ops** %5, align 8
  ret %struct.ins_ops* %118
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @is_branch_reg_cond(i8*) #1

declare dso_local i64 @is_branch_cond(i8*) #1

declare dso_local i64 @is_branch_float_cond(i8*) #1

declare dso_local i32 @arch__associate_ins_ops(%struct.arch*, i8*, %struct.ins_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
