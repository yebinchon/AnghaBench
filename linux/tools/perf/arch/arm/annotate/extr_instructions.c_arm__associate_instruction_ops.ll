; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/arm/annotate/extr_instructions.c_arm__associate_instruction_ops.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/arm/annotate/extr_instructions.c_arm__associate_instruction_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ins_ops = type { i32 }
%struct.arch = type { %struct.arm_annotate* }
%struct.arm_annotate = type { i32, i32 }

@call_ops = common dso_local global %struct.ins_ops zeroinitializer, align 4
@jump_ops = common dso_local global %struct.ins_ops zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ins_ops* (%struct.arch*, i8*)* @arm__associate_instruction_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ins_ops* @arm__associate_instruction_ops(%struct.arch* %0, i8* %1) #0 {
  %3 = alloca %struct.ins_ops*, align 8
  %4 = alloca %struct.arch*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.arm_annotate*, align 8
  %7 = alloca %struct.ins_ops*, align 8
  %8 = alloca [2 x i32], align 4
  store %struct.arch* %0, %struct.arch** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.arch*, %struct.arch** %4, align 8
  %10 = getelementptr inbounds %struct.arch, %struct.arch* %9, i32 0, i32 0
  %11 = load %struct.arm_annotate*, %struct.arm_annotate** %10, align 8
  store %struct.arm_annotate* %11, %struct.arm_annotate** %6, align 8
  %12 = load %struct.arm_annotate*, %struct.arm_annotate** %6, align 8
  %13 = getelementptr inbounds %struct.arm_annotate, %struct.arm_annotate* %12, i32 0, i32 1
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %16 = call i32 @regexec(i32* %13, i8* %14, i32 2, i32* %15, i32 0)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store %struct.ins_ops* @call_ops, %struct.ins_ops** %7, align 8
  br label %29

19:                                               ; preds = %2
  %20 = load %struct.arm_annotate*, %struct.arm_annotate** %6, align 8
  %21 = getelementptr inbounds %struct.arm_annotate, %struct.arm_annotate* %20, i32 0, i32 0
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %24 = call i32 @regexec(i32* %21, i8* %22, i32 2, i32* %23, i32 0)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  store %struct.ins_ops* @jump_ops, %struct.ins_ops** %7, align 8
  br label %28

27:                                               ; preds = %19
  store %struct.ins_ops* null, %struct.ins_ops** %3, align 8
  br label %35

28:                                               ; preds = %26
  br label %29

29:                                               ; preds = %28, %18
  %30 = load %struct.arch*, %struct.arch** %4, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load %struct.ins_ops*, %struct.ins_ops** %7, align 8
  %33 = call i32 @arch__associate_ins_ops(%struct.arch* %30, i8* %31, %struct.ins_ops* %32)
  %34 = load %struct.ins_ops*, %struct.ins_ops** %7, align 8
  store %struct.ins_ops* %34, %struct.ins_ops** %3, align 8
  br label %35

35:                                               ; preds = %29, %27
  %36 = load %struct.ins_ops*, %struct.ins_ops** %3, align 8
  ret %struct.ins_ops* %36
}

declare dso_local i32 @regexec(i32*, i8*, i32, i32*, i32) #1

declare dso_local i32 @arch__associate_ins_ops(%struct.arch*, i8*, %struct.ins_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
