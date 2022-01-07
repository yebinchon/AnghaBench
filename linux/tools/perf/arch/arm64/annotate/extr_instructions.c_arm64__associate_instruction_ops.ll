; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/arm64/annotate/extr_instructions.c_arm64__associate_instruction_ops.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/arm64/annotate/extr_instructions.c_arm64__associate_instruction_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ins_ops = type { i32 }
%struct.arch = type { %struct.arm64_annotate* }
%struct.arm64_annotate = type { i32, i32 }

@jump_ops = common dso_local global %struct.ins_ops zeroinitializer, align 4
@call_ops = common dso_local global %struct.ins_ops zeroinitializer, align 4
@.str = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@ret_ops = common dso_local global %struct.ins_ops zeroinitializer, align 4
@arm64_mov_ops = common dso_local global %struct.ins_ops zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ins_ops* (%struct.arch*, i8*)* @arm64__associate_instruction_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ins_ops* @arm64__associate_instruction_ops(%struct.arch* %0, i8* %1) #0 {
  %3 = alloca %struct.arch*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.arm64_annotate*, align 8
  %6 = alloca %struct.ins_ops*, align 8
  %7 = alloca [2 x i32], align 4
  store %struct.arch* %0, %struct.arch** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.arch*, %struct.arch** %3, align 8
  %9 = getelementptr inbounds %struct.arch, %struct.arch* %8, i32 0, i32 0
  %10 = load %struct.arm64_annotate*, %struct.arm64_annotate** %9, align 8
  store %struct.arm64_annotate* %10, %struct.arm64_annotate** %5, align 8
  %11 = load %struct.arm64_annotate*, %struct.arm64_annotate** %5, align 8
  %12 = getelementptr inbounds %struct.arm64_annotate, %struct.arm64_annotate* %11, i32 0, i32 1
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %15 = call i32 @regexec(i32* %12, i8* %13, i32 2, i32* %14, i32 0)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store %struct.ins_ops* @jump_ops, %struct.ins_ops** %6, align 8
  br label %34

18:                                               ; preds = %2
  %19 = load %struct.arm64_annotate*, %struct.arm64_annotate** %5, align 8
  %20 = getelementptr inbounds %struct.arm64_annotate, %struct.arm64_annotate* %19, i32 0, i32 0
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %23 = call i32 @regexec(i32* %20, i8* %21, i32 2, i32* %22, i32 0)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  store %struct.ins_ops* @call_ops, %struct.ins_ops** %6, align 8
  br label %33

26:                                               ; preds = %18
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store %struct.ins_ops* @ret_ops, %struct.ins_ops** %6, align 8
  br label %32

31:                                               ; preds = %26
  store %struct.ins_ops* @arm64_mov_ops, %struct.ins_ops** %6, align 8
  br label %32

32:                                               ; preds = %31, %30
  br label %33

33:                                               ; preds = %32, %25
  br label %34

34:                                               ; preds = %33, %17
  %35 = load %struct.arch*, %struct.arch** %3, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = load %struct.ins_ops*, %struct.ins_ops** %6, align 8
  %38 = call i32 @arch__associate_ins_ops(%struct.arch* %35, i8* %36, %struct.ins_ops* %37)
  %39 = load %struct.ins_ops*, %struct.ins_ops** %6, align 8
  ret %struct.ins_ops* %39
}

declare dso_local i32 @regexec(i32*, i8*, i32, i32*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @arch__associate_ins_ops(%struct.arch*, i8*, %struct.ins_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
