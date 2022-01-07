; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_apparmor_socket_create.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_apparmor_socket_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32 }

@OP_CREATE = common dso_local global i32 0, align 4
@AA_MAY_CREATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @apparmor_socket_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apparmor_socket_create(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.aa_label*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %11 = call i32 (...) @in_interrupt()
  %12 = call i32 @AA_BUG(i32 %11)
  %13 = call %struct.aa_label* (...) @begin_current_label_crit_section()
  store %struct.aa_label* %13, %struct.aa_label** %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %35, label %16

16:                                               ; preds = %4
  %17 = load %struct.aa_label*, %struct.aa_label** %9, align 8
  %18 = call i64 @unconfined(%struct.aa_label* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.aa_label*, %struct.aa_label** %9, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @create_perm(%struct.aa_label* %22, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.aa_label*, %struct.aa_label** %9, align 8
  %28 = load i32, i32* @OP_CREATE, align 4
  %29 = load i32, i32* @AA_MAY_CREATE, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @aa_af_perm(%struct.aa_label* %27, i32 %28, i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = call i32 @af_select(i32 %21, i32 %26, i32 %33)
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %20, %16, %4
  %36 = load %struct.aa_label*, %struct.aa_label** %9, align 8
  %37 = call i32 @end_current_label_crit_section(%struct.aa_label* %36)
  %38 = load i32, i32* %10, align 4
  ret i32 %38
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local %struct.aa_label* @begin_current_label_crit_section(...) #1

declare dso_local i64 @unconfined(%struct.aa_label*) #1

declare dso_local i32 @af_select(i32, i32, i32) #1

declare dso_local i32 @create_perm(%struct.aa_label*, i32, i32, i32) #1

declare dso_local i32 @aa_af_perm(%struct.aa_label*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @end_current_label_crit_section(%struct.aa_label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
