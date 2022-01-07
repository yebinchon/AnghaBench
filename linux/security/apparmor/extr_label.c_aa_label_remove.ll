; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_label_remove.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_label_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32 }
%struct.aa_labelset = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_label_remove(%struct.aa_label* %0) #0 {
  %2 = alloca %struct.aa_label*, align 8
  %3 = alloca %struct.aa_labelset*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.aa_label* %0, %struct.aa_label** %2, align 8
  %6 = load %struct.aa_label*, %struct.aa_label** %2, align 8
  %7 = call %struct.aa_labelset* @labels_set(%struct.aa_label* %6)
  store %struct.aa_labelset* %7, %struct.aa_labelset** %3, align 8
  %8 = load %struct.aa_labelset*, %struct.aa_labelset** %3, align 8
  %9 = icmp ne %struct.aa_labelset* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @AA_BUG(i32 %11)
  %13 = load %struct.aa_labelset*, %struct.aa_labelset** %3, align 8
  %14 = getelementptr inbounds %struct.aa_labelset, %struct.aa_labelset* %13, i32 0, i32 0
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @write_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.aa_label*, %struct.aa_label** %2, align 8
  %18 = load %struct.aa_label*, %struct.aa_label** %2, align 8
  %19 = call i32 @labels_ns(%struct.aa_label* %18)
  %20 = call i32 @ns_unconfined(i32 %19)
  %21 = call i32 @__label_remove(%struct.aa_label* %17, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load %struct.aa_labelset*, %struct.aa_labelset** %3, align 8
  %23 = getelementptr inbounds %struct.aa_labelset, %struct.aa_labelset* %22, i32 0, i32 0
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @write_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local %struct.aa_labelset* @labels_set(%struct.aa_label*) #1

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__label_remove(%struct.aa_label*, i32) #1

declare dso_local i32 @ns_unconfined(i32) #1

declare dso_local i32 @labels_ns(%struct.aa_label*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
