; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_label_free_switch.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_label_free_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32 }

@FLAG_NS_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aa_label*)* @label_free_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @label_free_switch(%struct.aa_label* %0) #0 {
  %2 = alloca %struct.aa_label*, align 8
  store %struct.aa_label* %0, %struct.aa_label** %2, align 8
  %3 = load %struct.aa_label*, %struct.aa_label** %2, align 8
  %4 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @FLAG_NS_COUNT, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.aa_label*, %struct.aa_label** %2, align 8
  %11 = call i32 @labels_ns(%struct.aa_label* %10)
  %12 = call i32 @aa_free_ns(i32 %11)
  br label %25

13:                                               ; preds = %1
  %14 = load %struct.aa_label*, %struct.aa_label** %2, align 8
  %15 = call i64 @label_isprofile(%struct.aa_label* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load %struct.aa_label*, %struct.aa_label** %2, align 8
  %19 = call i32 @labels_profile(%struct.aa_label* %18)
  %20 = call i32 @aa_free_profile(i32 %19)
  br label %24

21:                                               ; preds = %13
  %22 = load %struct.aa_label*, %struct.aa_label** %2, align 8
  %23 = call i32 @aa_label_free(%struct.aa_label* %22)
  br label %24

24:                                               ; preds = %21, %17
  br label %25

25:                                               ; preds = %24, %9
  ret void
}

declare dso_local i32 @aa_free_ns(i32) #1

declare dso_local i32 @labels_ns(%struct.aa_label*) #1

declare dso_local i64 @label_isprofile(%struct.aa_label*) #1

declare dso_local i32 @aa_free_profile(i32) #1

declare dso_local i32 @labels_profile(%struct.aa_label*) #1

declare dso_local i32 @aa_label_free(%struct.aa_label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
