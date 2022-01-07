; ModuleID = '/home/carl/AnghaBench/linux/tools/objtool/extr_check.c_save_reg.c'
source_filename = "/home/carl/AnghaBench/linux/tools/objtool/extr_check.c_save_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@CFI_UNDEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.insn_state*, i8, i32, i32)* @save_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_reg(%struct.insn_state* %0, i8 zeroext %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.insn_state*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.insn_state* %0, %struct.insn_state** %5, align 8
  store i8 %1, i8* %6, align 1
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i8, i8* %6, align 1
  %10 = call i64 @arch_callee_saved_reg(i8 zeroext %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %4
  %13 = load %struct.insn_state*, %struct.insn_state** %5, align 8
  %14 = getelementptr inbounds %struct.insn_state, %struct.insn_state* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i8, i8* %6, align 1
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CFI_UNDEFINED, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %12
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.insn_state*, %struct.insn_state** %5, align 8
  %26 = getelementptr inbounds %struct.insn_state, %struct.insn_state* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i8, i8* %6, align 1
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %24, i32* %31, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.insn_state*, %struct.insn_state** %5, align 8
  %34 = getelementptr inbounds %struct.insn_state, %struct.insn_state* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i8, i8* %6, align 1
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32 %32, i32* %39, align 4
  br label %40

40:                                               ; preds = %23, %12, %4
  ret void
}

declare dso_local i64 @arch_callee_saved_reg(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
