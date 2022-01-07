; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_apparmor_path_link.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_apparmor_path_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32 }
%struct.dentry = type { i32 }
%struct.aa_label = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.path*, %struct.dentry*)* @apparmor_path_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apparmor_path_link(%struct.dentry* %0, %struct.path* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.path*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.aa_label*, align 8
  %9 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.path* %1, %struct.path** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.dentry*, %struct.dentry** %5, align 8
  %11 = call i32 @path_mediated_fs(%struct.dentry* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %29

14:                                               ; preds = %3
  %15 = call %struct.aa_label* (...) @begin_current_label_crit_section()
  store %struct.aa_label* %15, %struct.aa_label** %8, align 8
  %16 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %17 = call i32 @unconfined(%struct.aa_label* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %21 = load %struct.dentry*, %struct.dentry** %5, align 8
  %22 = load %struct.path*, %struct.path** %6, align 8
  %23 = load %struct.dentry*, %struct.dentry** %7, align 8
  %24 = call i32 @aa_path_link(%struct.aa_label* %20, %struct.dentry* %21, %struct.path* %22, %struct.dentry* %23)
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %19, %14
  %26 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %27 = call i32 @end_current_label_crit_section(%struct.aa_label* %26)
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %25, %13
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @path_mediated_fs(%struct.dentry*) #1

declare dso_local %struct.aa_label* @begin_current_label_crit_section(...) #1

declare dso_local i32 @unconfined(%struct.aa_label*) #1

declare dso_local i32 @aa_path_link(%struct.aa_label*, %struct.dentry*, %struct.path*, %struct.dentry*) #1

declare dso_local i32 @end_current_label_crit_section(%struct.aa_label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
