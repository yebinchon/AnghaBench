; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_kprobe.c_process_fetch_insn.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_kprobe.c_process_fetch_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.fetch_insn = type { i32, i64, i32, i64 }
%struct.pt_regs = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
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
  br label %11

11:                                               ; preds = %45, %4
  %12 = load %struct.fetch_insn*, %struct.fetch_insn** %6, align 8
  %13 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %48 [
    i32 131, label %15
    i32 129, label %21
    i32 128, label %27
    i32 130, label %30
    i32 132, label %33
    i32 134, label %37
    i32 133, label %41
    i32 136, label %45
  ]

15:                                               ; preds = %11
  %16 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %17 = load %struct.fetch_insn*, %struct.fetch_insn** %6, align 8
  %18 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @regs_get_register(%struct.pt_regs* %16, i32 %19)
  store i64 %20, i64* %10, align 8
  br label %51

21:                                               ; preds = %11
  %22 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %23 = load %struct.fetch_insn*, %struct.fetch_insn** %6, align 8
  %24 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @regs_get_kernel_stack_nth(%struct.pt_regs* %22, i32 %25)
  store i64 %26, i64* %10, align 8
  br label %51

27:                                               ; preds = %11
  %28 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %29 = call i64 @kernel_stack_pointer(%struct.pt_regs* %28)
  store i64 %29, i64* %10, align 8
  br label %51

30:                                               ; preds = %11
  %31 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %32 = call i64 @regs_return_value(%struct.pt_regs* %31)
  store i64 %32, i64* %10, align 8
  br label %51

33:                                               ; preds = %11
  %34 = load %struct.fetch_insn*, %struct.fetch_insn** %6, align 8
  %35 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %10, align 8
  br label %51

37:                                               ; preds = %11
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %10, align 8
  br label %51

41:                                               ; preds = %11
  %42 = load %struct.fetch_insn*, %struct.fetch_insn** %6, align 8
  %43 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %10, align 8
  br label %51

45:                                               ; preds = %11
  %46 = load %struct.fetch_insn*, %struct.fetch_insn** %6, align 8
  %47 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %46, i32 1
  store %struct.fetch_insn* %47, %struct.fetch_insn** %6, align 8
  br label %11

48:                                               ; preds = %11
  %49 = load i32, i32* @EILSEQ, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %59

51:                                               ; preds = %41, %37, %33, %30, %27, %21, %15
  %52 = load %struct.fetch_insn*, %struct.fetch_insn** %6, align 8
  %53 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %52, i32 1
  store %struct.fetch_insn* %53, %struct.fetch_insn** %6, align 8
  %54 = load %struct.fetch_insn*, %struct.fetch_insn** %6, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @process_fetch_insn_bottom(%struct.fetch_insn* %54, i64 %55, i8* %56, i8* %57)
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %51, %48
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i64 @regs_get_register(%struct.pt_regs*, i32) #1

declare dso_local i64 @regs_get_kernel_stack_nth(%struct.pt_regs*, i32) #1

declare dso_local i64 @kernel_stack_pointer(%struct.pt_regs*) #1

declare dso_local i64 @regs_return_value(%struct.pt_regs*) #1

declare dso_local i32 @process_fetch_insn_bottom(%struct.fetch_insn*, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
