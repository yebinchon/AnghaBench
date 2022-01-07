; ModuleID = '/home/carl/AnghaBench/linux/tools/objtool/extr_check.c_has_modified_stack_frame.c'
source_filename = "/home/carl/AnghaBench/linux/tools/objtool/extr_check.c_has_modified_stack_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.insn_state = type { i64, %struct.TYPE_8__*, i64, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i64 }

@initial_func_cfi = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@CFI_NUM_REGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.insn_state*)* @has_modified_stack_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_modified_stack_frame(%struct.insn_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.insn_state*, align 8
  %4 = alloca i32, align 4
  store %struct.insn_state* %0, %struct.insn_state** %3, align 8
  %5 = load %struct.insn_state*, %struct.insn_state** %3, align 8
  %6 = getelementptr inbounds %struct.insn_state, %struct.insn_state* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @initial_func_cfi, i32 0, i32 1, i32 0), align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %29, label %11

11:                                               ; preds = %1
  %12 = load %struct.insn_state*, %struct.insn_state** %3, align 8
  %13 = getelementptr inbounds %struct.insn_state, %struct.insn_state* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @initial_func_cfi, i32 0, i32 1, i32 1), align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %29, label %18

18:                                               ; preds = %11
  %19 = load %struct.insn_state*, %struct.insn_state** %3, align 8
  %20 = getelementptr inbounds %struct.insn_state, %struct.insn_state* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @initial_func_cfi, i32 0, i32 1, i32 1), align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  %25 = load %struct.insn_state*, %struct.insn_state** %3, align 8
  %26 = getelementptr inbounds %struct.insn_state, %struct.insn_state* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %18, %11, %1
  store i32 1, i32* %2, align 4
  br label %73

30:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %69, %30
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @CFI_NUM_REGS, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %72

35:                                               ; preds = %31
  %36 = load %struct.insn_state*, %struct.insn_state** %3, align 8
  %37 = getelementptr inbounds %struct.insn_state, %struct.insn_state* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @initial_func_cfi, i32 0, i32 0), align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %43, %49
  br i1 %50, label %67, label %51

51:                                               ; preds = %35
  %52 = load %struct.insn_state*, %struct.insn_state** %3, align 8
  %53 = getelementptr inbounds %struct.insn_state, %struct.insn_state* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @initial_func_cfi, i32 0, i32 0), align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %59, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %51, %35
  store i32 1, i32* %2, align 4
  br label %73

68:                                               ; preds = %51
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  br label %31

72:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %67, %29
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
