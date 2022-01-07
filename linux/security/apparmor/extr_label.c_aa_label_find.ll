; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_label_find.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_label_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.aa_label* @aa_label_find(%struct.aa_label* %0) #0 {
  %2 = alloca %struct.aa_label*, align 8
  store %struct.aa_label* %0, %struct.aa_label** %2, align 8
  %3 = load %struct.aa_label*, %struct.aa_label** %2, align 8
  %4 = icmp ne %struct.aa_label* %3, null
  %5 = xor i1 %4, true
  %6 = zext i1 %5 to i32
  %7 = call i32 @AA_BUG(i32 %6)
  %8 = load %struct.aa_label*, %struct.aa_label** %2, align 8
  %9 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.aa_label*, %struct.aa_label** %2, align 8
  %12 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.aa_label* @vec_find(i32 %10, i32 %13)
  ret %struct.aa_label* %14
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local %struct.aa_label* @vec_find(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
