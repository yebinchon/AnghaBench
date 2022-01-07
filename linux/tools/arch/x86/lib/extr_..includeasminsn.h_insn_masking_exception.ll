; ModuleID = '/home/carl/AnghaBench/linux/tools/arch/x86/lib/extr_..includeasminsn.h_insn_masking_exception.c'
source_filename = "/home/carl/AnghaBench/linux/tools/arch/x86/lib/extr_..includeasminsn.h_insn_masking_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i64* }

@POP_SS_OPCODE = common dso_local global i64 0, align 8
@MOV_SREG_OPCODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.insn*)* @insn_masking_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insn_masking_exception(%struct.insn* %0) #0 {
  %2 = alloca %struct.insn*, align 8
  store %struct.insn* %0, %struct.insn** %2, align 8
  %3 = load %struct.insn*, %struct.insn** %2, align 8
  %4 = getelementptr inbounds %struct.insn, %struct.insn* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i64*, i64** %5, align 8
  %7 = getelementptr inbounds i64, i64* %6, i64 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @POP_SS_OPCODE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %31, label %11

11:                                               ; preds = %1
  %12 = load %struct.insn*, %struct.insn** %2, align 8
  %13 = getelementptr inbounds %struct.insn, %struct.insn* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MOV_SREG_OPCODE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %11
  %21 = load %struct.insn*, %struct.insn** %2, align 8
  %22 = getelementptr inbounds %struct.insn, %struct.insn* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @X86_MODRM_REG(i32 %26)
  %28 = icmp eq i32 %27, 2
  br label %29

29:                                               ; preds = %20, %11
  %30 = phi i1 [ false, %11 ], [ %28, %20 ]
  br label %31

31:                                               ; preds = %29, %1
  %32 = phi i1 [ true, %1 ], [ %30, %29 ]
  %33 = zext i1 %32 to i32
  ret i32 %33
}

declare dso_local i32 @X86_MODRM_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
