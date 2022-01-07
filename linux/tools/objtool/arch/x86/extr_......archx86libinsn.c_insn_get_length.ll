; ModuleID = '/home/carl/AnghaBench/linux/tools/objtool/arch/x86/extr_......archx86libinsn.c_insn_get_length.c'
source_filename = "/home/carl/AnghaBench/linux/tools/objtool/arch/x86/extr_......archx86libinsn.c_insn_get_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn = type { i8, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insn_get_length(%struct.insn* %0) #0 {
  %2 = alloca %struct.insn*, align 8
  store %struct.insn* %0, %struct.insn** %2, align 8
  %3 = load %struct.insn*, %struct.insn** %2, align 8
  %4 = getelementptr inbounds %struct.insn, %struct.insn* %3, i32 0, i32 0
  %5 = load i8, i8* %4, align 8
  %6 = icmp ne i8 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %28

8:                                                ; preds = %1
  %9 = load %struct.insn*, %struct.insn** %2, align 8
  %10 = getelementptr inbounds %struct.insn, %struct.insn* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = load %struct.insn*, %struct.insn** %2, align 8
  %16 = call i32 @insn_get_immediate(%struct.insn* %15)
  br label %17

17:                                               ; preds = %14, %8
  %18 = load %struct.insn*, %struct.insn** %2, align 8
  %19 = getelementptr inbounds %struct.insn, %struct.insn* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.insn*, %struct.insn** %2, align 8
  %22 = getelementptr inbounds %struct.insn, %struct.insn* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = sub i64 %20, %23
  %25 = trunc i64 %24 to i8
  %26 = load %struct.insn*, %struct.insn** %2, align 8
  %27 = getelementptr inbounds %struct.insn, %struct.insn* %26, i32 0, i32 0
  store i8 %25, i8* %27, align 8
  br label %28

28:                                               ; preds = %17, %7
  ret void
}

declare dso_local i32 @insn_get_immediate(%struct.insn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
