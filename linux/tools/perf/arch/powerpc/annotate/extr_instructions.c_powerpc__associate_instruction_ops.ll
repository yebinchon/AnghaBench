; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/powerpc/annotate/extr_instructions.c_powerpc__associate_instruction_ops.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/powerpc/annotate/extr_instructions.c_powerpc__associate_instruction_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ins_ops = type { i32 }
%struct.arch = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"bcd\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"brinc\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"bper\00", align 1
@jump_ops = common dso_local global %struct.ins_ops zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"bnl\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"bnl+\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"bnl-\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"bnla\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"bnla+\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"bnla-\00", align 1
@call_ops = common dso_local global %struct.ins_ops zeroinitializer, align 4
@ret_ops = common dso_local global %struct.ins_ops zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ins_ops* (%struct.arch*, i8*)* @powerpc__associate_instruction_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ins_ops* @powerpc__associate_instruction_ops(%struct.arch* %0, i8* %1) #0 {
  %3 = alloca %struct.ins_ops*, align 8
  %4 = alloca %struct.arch*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ins_ops*, align 8
  store %struct.arch* %0, %struct.arch** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 98
  br i1 %12, label %25, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @strncmp(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @strncmp(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @strncmp(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21, %17, %13, %2
  store %struct.ins_ops* null, %struct.ins_ops** %3, align 8
  br label %127

26:                                               ; preds = %21
  store %struct.ins_ops* @jump_ops, %struct.ins_ops** %7, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store %struct.ins_ops* null, %struct.ins_ops** %3, align 8
  br label %127

33:                                               ; preds = %26
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 43
  br i1 %40, label %49, label %41

41:                                               ; preds = %33
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 45
  br i1 %48, label %49, label %52

49:                                               ; preds = %41, %33
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %49, %41
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 108
  br i1 %59, label %77, label %60

60:                                               ; preds = %52
  %61 = load i8*, i8** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 97
  br i1 %67, label %68, label %103

68:                                               ; preds = %60
  %69 = load i8*, i8** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 108
  br i1 %76, label %77, label %103

77:                                               ; preds = %68, %52
  %78 = load i8*, i8** %5, align 8
  %79 = call i64 @strcmp(i8* %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %102

81:                                               ; preds = %77
  %82 = load i8*, i8** %5, align 8
  %83 = call i64 @strcmp(i8* %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %81
  %86 = load i8*, i8** %5, align 8
  %87 = call i64 @strcmp(i8* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %85
  %90 = load i8*, i8** %5, align 8
  %91 = call i64 @strcmp(i8* %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %89
  %94 = load i8*, i8** %5, align 8
  %95 = call i64 @strcmp(i8* %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = load i8*, i8** %5, align 8
  %99 = call i64 @strcmp(i8* %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  store %struct.ins_ops* @call_ops, %struct.ins_ops** %7, align 8
  br label %102

102:                                              ; preds = %101, %97, %93, %89, %85, %81, %77
  br label %103

103:                                              ; preds = %102, %68, %60
  %104 = load i8*, i8** %5, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 114
  br i1 %110, label %111, label %121

111:                                              ; preds = %103
  %112 = load i8*, i8** %5, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sub nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %112, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 108
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  store %struct.ins_ops* @ret_ops, %struct.ins_ops** %7, align 8
  br label %121

121:                                              ; preds = %120, %111, %103
  %122 = load %struct.arch*, %struct.arch** %4, align 8
  %123 = load i8*, i8** %5, align 8
  %124 = load %struct.ins_ops*, %struct.ins_ops** %7, align 8
  %125 = call i32 @arch__associate_ins_ops(%struct.arch* %122, i8* %123, %struct.ins_ops* %124)
  %126 = load %struct.ins_ops*, %struct.ins_ops** %7, align 8
  store %struct.ins_ops* %126, %struct.ins_ops** %3, align 8
  br label %127

127:                                              ; preds = %121, %32, %25
  %128 = load %struct.ins_ops*, %struct.ins_ops** %3, align 8
  ret %struct.ins_ops* %128
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @arch__associate_ins_ops(%struct.arch*, i8*, %struct.ins_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
