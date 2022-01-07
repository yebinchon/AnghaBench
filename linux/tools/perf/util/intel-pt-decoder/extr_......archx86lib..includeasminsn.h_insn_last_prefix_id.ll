; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_......archx86lib..includeasminsn.h_insn_last_prefix_id.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_......archx86lib..includeasminsn.h_insn_last_prefix_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.insn*)* @insn_last_prefix_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insn_last_prefix_id(%struct.insn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.insn*, align 8
  store %struct.insn* %0, %struct.insn** %3, align 8
  %4 = load %struct.insn*, %struct.insn** %3, align 8
  %5 = call i64 @insn_is_avx(%struct.insn* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.insn*, %struct.insn** %3, align 8
  %9 = call i32 @insn_vex_p_bits(%struct.insn* %8)
  store i32 %9, i32* %2, align 4
  br label %27

10:                                               ; preds = %1
  %11 = load %struct.insn*, %struct.insn** %3, align 8
  %12 = getelementptr inbounds %struct.insn, %struct.insn* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %10
  %19 = load %struct.insn*, %struct.insn** %3, align 8
  %20 = getelementptr inbounds %struct.insn, %struct.insn* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 3
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @inat_get_last_prefix_id(i64 %24)
  store i32 %25, i32* %2, align 4
  br label %27

26:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %18, %7
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @insn_is_avx(%struct.insn*) #1

declare dso_local i32 @insn_vex_p_bits(%struct.insn*) #1

declare dso_local i32 @inat_get_last_prefix_id(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
