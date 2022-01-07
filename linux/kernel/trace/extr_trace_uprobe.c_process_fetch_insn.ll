; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_uprobe.c_process_fetch_insn.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_uprobe.c_process_fetch_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fetch_insn = type { i32, i64, i64, i32 }
%struct.pt_regs = type { i32 }

@FETCH_TOKEN_COMM = common dso_local global i64 0, align 8
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fetch_insn*, %struct.pt_regs*, i8*, i8*)* @process_fetch_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_fetch_insn(%struct.fetch_insn* %0, %struct.pt_regs* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fetch_insn*, align 8
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.fetch_insn* %0, %struct.fetch_insn** %6, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.fetch_insn*, %struct.fetch_insn** %6, align 8
  %12 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %47 [
    i32 131, label %14
    i32 129, label %20
    i32 128, label %26
    i32 130, label %29
    i32 132, label %32
    i32 135, label %36
    i32 134, label %38
    i32 133, label %42
  ]

14:                                               ; preds = %4
  %15 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %16 = load %struct.fetch_insn*, %struct.fetch_insn** %6, align 8
  %17 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @regs_get_register(%struct.pt_regs* %15, i32 %18)
  store i64 %19, i64* %10, align 8
  br label %50

20:                                               ; preds = %4
  %21 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %22 = load %struct.fetch_insn*, %struct.fetch_insn** %6, align 8
  %23 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @get_user_stack_nth(%struct.pt_regs* %21, i32 %24)
  store i64 %25, i64* %10, align 8
  br label %50

26:                                               ; preds = %4
  %27 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %28 = call i64 @user_stack_pointer(%struct.pt_regs* %27)
  store i64 %28, i64* %10, align 8
  br label %50

29:                                               ; preds = %4
  %30 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %31 = call i64 @regs_return_value(%struct.pt_regs* %30)
  store i64 %31, i64* %10, align 8
  br label %50

32:                                               ; preds = %4
  %33 = load %struct.fetch_insn*, %struct.fetch_insn** %6, align 8
  %34 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %10, align 8
  br label %50

36:                                               ; preds = %4
  %37 = load i64, i64* @FETCH_TOKEN_COMM, align 8
  store i64 %37, i64* %10, align 8
  br label %50

38:                                               ; preds = %4
  %39 = load %struct.fetch_insn*, %struct.fetch_insn** %6, align 8
  %40 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %10, align 8
  br label %50

42:                                               ; preds = %4
  %43 = load %struct.fetch_insn*, %struct.fetch_insn** %6, align 8
  %44 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @translate_user_vaddr(i64 %45)
  store i64 %46, i64* %10, align 8
  br label %50

47:                                               ; preds = %4
  %48 = load i32, i32* @EILSEQ, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %58

50:                                               ; preds = %42, %38, %36, %32, %29, %26, %20, %14
  %51 = load %struct.fetch_insn*, %struct.fetch_insn** %6, align 8
  %52 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %51, i32 1
  store %struct.fetch_insn* %52, %struct.fetch_insn** %6, align 8
  %53 = load %struct.fetch_insn*, %struct.fetch_insn** %6, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 @process_fetch_insn_bottom(%struct.fetch_insn* %53, i64 %54, i8* %55, i8* %56)
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %50, %47
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i64 @regs_get_register(%struct.pt_regs*, i32) #1

declare dso_local i64 @get_user_stack_nth(%struct.pt_regs*, i32) #1

declare dso_local i64 @user_stack_pointer(%struct.pt_regs*) #1

declare dso_local i64 @regs_return_value(%struct.pt_regs*) #1

declare dso_local i64 @translate_user_vaddr(i64) #1

declare dso_local i32 @process_fetch_insn_bottom(%struct.fetch_insn*, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
