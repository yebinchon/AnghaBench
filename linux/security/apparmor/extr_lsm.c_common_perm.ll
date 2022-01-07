; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_common_perm.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_common_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32 }
%struct.path_cond = type { i32 }
%struct.aa_label = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.path*, i32, %struct.path_cond*)* @common_perm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @common_perm(i8* %0, %struct.path* %1, i32 %2, %struct.path_cond* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.path*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.path_cond*, align 8
  %9 = alloca %struct.aa_label*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.path* %1, %struct.path** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.path_cond* %3, %struct.path_cond** %8, align 8
  store i32 0, i32* %10, align 4
  %11 = call %struct.aa_label* (...) @__begin_current_label_crit_section()
  store %struct.aa_label* %11, %struct.aa_label** %9, align 8
  %12 = load %struct.aa_label*, %struct.aa_label** %9, align 8
  %13 = call i32 @unconfined(%struct.aa_label* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %4
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.aa_label*, %struct.aa_label** %9, align 8
  %18 = load %struct.path*, %struct.path** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.path_cond*, %struct.path_cond** %8, align 8
  %21 = call i32 @aa_path_perm(i8* %16, %struct.aa_label* %17, %struct.path* %18, i32 0, i32 %19, %struct.path_cond* %20)
  store i32 %21, i32* %10, align 4
  br label %22

22:                                               ; preds = %15, %4
  %23 = load %struct.aa_label*, %struct.aa_label** %9, align 8
  %24 = call i32 @__end_current_label_crit_section(%struct.aa_label* %23)
  %25 = load i32, i32* %10, align 4
  ret i32 %25
}

declare dso_local %struct.aa_label* @__begin_current_label_crit_section(...) #1

declare dso_local i32 @unconfined(%struct.aa_label*) #1

declare dso_local i32 @aa_path_perm(i8*, %struct.aa_label*, %struct.path*, i32, i32, %struct.path_cond*) #1

declare dso_local i32 @__end_current_label_crit_section(%struct.aa_label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
