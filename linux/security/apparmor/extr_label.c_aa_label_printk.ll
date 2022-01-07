; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_label_printk.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_label_printk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32 }
%struct.aa_ns = type { i32 }

@FLAG_VIEW_SUBNS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aa_label_printk(%struct.aa_label* %0, i32 %1) #0 {
  %3 = alloca %struct.aa_label*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aa_ns*, align 8
  store %struct.aa_label* %0, %struct.aa_label** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call %struct.aa_ns* (...) @aa_get_current_ns()
  store %struct.aa_ns* %6, %struct.aa_ns** %5, align 8
  %7 = load %struct.aa_ns*, %struct.aa_ns** %5, align 8
  %8 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %9 = load i32, i32* @FLAG_VIEW_SUBNS, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @aa_label_xprintk(%struct.aa_ns* %7, %struct.aa_label* %8, i32 %9, i32 %10)
  %12 = load %struct.aa_ns*, %struct.aa_ns** %5, align 8
  %13 = call i32 @aa_put_ns(%struct.aa_ns* %12)
  ret void
}

declare dso_local %struct.aa_ns* @aa_get_current_ns(...) #1

declare dso_local i32 @aa_label_xprintk(%struct.aa_ns*, %struct.aa_label*, i32, i32) #1

declare dso_local i32 @aa_put_ns(%struct.aa_ns*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
