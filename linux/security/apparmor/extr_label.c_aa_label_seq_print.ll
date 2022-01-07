; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_label_seq_print.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_label_seq_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.aa_label = type { i32 }
%struct.aa_ns = type { i32 }

@FLAG_VIEW_SUBNS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aa_label_seq_print(%struct.seq_file* %0, %struct.aa_label* %1, i32 %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.aa_label*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.aa_ns*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.aa_label* %1, %struct.aa_label** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call %struct.aa_ns* (...) @aa_get_current_ns()
  store %struct.aa_ns* %8, %struct.aa_ns** %7, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %10 = load %struct.aa_ns*, %struct.aa_ns** %7, align 8
  %11 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %12 = load i32, i32* @FLAG_VIEW_SUBNS, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @aa_label_seq_xprint(%struct.seq_file* %9, %struct.aa_ns* %10, %struct.aa_label* %11, i32 %12, i32 %13)
  %15 = load %struct.aa_ns*, %struct.aa_ns** %7, align 8
  %16 = call i32 @aa_put_ns(%struct.aa_ns* %15)
  ret void
}

declare dso_local %struct.aa_ns* @aa_get_current_ns(...) #1

declare dso_local i32 @aa_label_seq_xprint(%struct.seq_file*, %struct.aa_ns*, %struct.aa_label*, i32, i32) #1

declare dso_local i32 @aa_put_ns(%struct.aa_ns*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
