; ModuleID = '/home/carl/AnghaBench/linux/tools/objtool/extr_check.c_next_insn_same_sec.c'
source_filename = "/home/carl/AnghaBench/linux/tools/objtool/extr_check.c_next_insn_same_sec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objtool_file = type { i32 }
%struct.instruction = type { i64, i32 }

@list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.instruction* (%struct.objtool_file*, %struct.instruction*)* @next_insn_same_sec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.instruction* @next_insn_same_sec(%struct.objtool_file* %0, %struct.instruction* %1) #0 {
  %3 = alloca %struct.instruction*, align 8
  %4 = alloca %struct.objtool_file*, align 8
  %5 = alloca %struct.instruction*, align 8
  %6 = alloca %struct.instruction*, align 8
  store %struct.objtool_file* %0, %struct.objtool_file** %4, align 8
  store %struct.instruction* %1, %struct.instruction** %5, align 8
  %7 = load %struct.instruction*, %struct.instruction** %5, align 8
  %8 = load i32, i32* @list, align 4
  %9 = call %struct.instruction* @list_next_entry(%struct.instruction* %7, i32 %8)
  store %struct.instruction* %9, %struct.instruction** %6, align 8
  %10 = load %struct.instruction*, %struct.instruction** %6, align 8
  %11 = icmp ne %struct.instruction* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load %struct.instruction*, %struct.instruction** %6, align 8
  %14 = getelementptr inbounds %struct.instruction, %struct.instruction* %13, i32 0, i32 1
  %15 = load %struct.objtool_file*, %struct.objtool_file** %4, align 8
  %16 = getelementptr inbounds %struct.objtool_file, %struct.objtool_file* %15, i32 0, i32 0
  %17 = icmp eq i32* %14, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %12
  %19 = load %struct.instruction*, %struct.instruction** %6, align 8
  %20 = getelementptr inbounds %struct.instruction, %struct.instruction* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.instruction*, %struct.instruction** %5, align 8
  %23 = getelementptr inbounds %struct.instruction, %struct.instruction* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18, %12, %2
  store %struct.instruction* null, %struct.instruction** %3, align 8
  br label %29

27:                                               ; preds = %18
  %28 = load %struct.instruction*, %struct.instruction** %6, align 8
  store %struct.instruction* %28, %struct.instruction** %3, align 8
  br label %29

29:                                               ; preds = %27, %26
  %30 = load %struct.instruction*, %struct.instruction** %3, align 8
  ret %struct.instruction* %30
}

declare dso_local %struct.instruction* @list_next_entry(%struct.instruction*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
