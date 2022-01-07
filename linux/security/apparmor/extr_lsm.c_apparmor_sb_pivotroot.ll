; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_apparmor_sb_pivotroot.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_apparmor_sb_pivotroot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32 }
%struct.aa_label = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, %struct.path*)* @apparmor_sb_pivotroot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apparmor_sb_pivotroot(%struct.path* %0, %struct.path* %1) #0 {
  %3 = alloca %struct.path*, align 8
  %4 = alloca %struct.path*, align 8
  %5 = alloca %struct.aa_label*, align 8
  %6 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %3, align 8
  store %struct.path* %1, %struct.path** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = call %struct.aa_label* (...) @aa_get_current_label()
  store %struct.aa_label* %7, %struct.aa_label** %5, align 8
  %8 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %9 = call i32 @unconfined(%struct.aa_label* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %13 = load %struct.path*, %struct.path** %3, align 8
  %14 = load %struct.path*, %struct.path** %4, align 8
  %15 = call i32 @aa_pivotroot(%struct.aa_label* %12, %struct.path* %13, %struct.path* %14)
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %11, %2
  %17 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %18 = call i32 @aa_put_label(%struct.aa_label* %17)
  %19 = load i32, i32* %6, align 4
  ret i32 %19
}

declare dso_local %struct.aa_label* @aa_get_current_label(...) #1

declare dso_local i32 @unconfined(%struct.aa_label*) #1

declare dso_local i32 @aa_pivotroot(%struct.aa_label*, %struct.path*, %struct.path*) #1

declare dso_local i32 @aa_put_label(%struct.aa_label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
