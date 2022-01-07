; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_includecred.h_begin_current_label_crit_section.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_includecred.h_begin_current_label_crit_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aa_label* ()* @begin_current_label_crit_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aa_label* @begin_current_label_crit_section() #0 {
  %1 = alloca %struct.aa_label*, align 8
  %2 = call %struct.aa_label* (...) @aa_current_raw_label()
  store %struct.aa_label* %2, %struct.aa_label** %1, align 8
  %3 = call i32 (...) @might_sleep()
  %4 = load %struct.aa_label*, %struct.aa_label** %1, align 8
  %5 = call i64 @label_is_stale(%struct.aa_label* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %0
  %8 = load %struct.aa_label*, %struct.aa_label** %1, align 8
  %9 = call %struct.aa_label* @aa_get_newest_label(%struct.aa_label* %8)
  store %struct.aa_label* %9, %struct.aa_label** %1, align 8
  %10 = load %struct.aa_label*, %struct.aa_label** %1, align 8
  %11 = call i64 @aa_replace_current_label(%struct.aa_label* %10)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load %struct.aa_label*, %struct.aa_label** %1, align 8
  %15 = call i32 @aa_put_label(%struct.aa_label* %14)
  br label %16

16:                                               ; preds = %13, %7
  br label %17

17:                                               ; preds = %16, %0
  %18 = load %struct.aa_label*, %struct.aa_label** %1, align 8
  ret %struct.aa_label* %18
}

declare dso_local %struct.aa_label* @aa_current_raw_label(...) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i64 @label_is_stale(%struct.aa_label*) #1

declare dso_local %struct.aa_label* @aa_get_newest_label(%struct.aa_label*) #1

declare dso_local i64 @aa_replace_current_label(%struct.aa_label*) #1

declare dso_local i32 @aa_put_label(%struct.aa_label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
