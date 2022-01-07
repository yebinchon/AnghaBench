; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_vec_find_or_create_label.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_vec_find_or_create_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32 }
%struct.aa_profile = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.aa_label* @aa_vec_find_or_create_label(%struct.aa_profile** %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.aa_label*, align 8
  %5 = alloca %struct.aa_profile**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.aa_label*, align 8
  store %struct.aa_profile** %0, %struct.aa_profile*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.aa_profile**, %struct.aa_profile*** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.aa_label* @vec_find(%struct.aa_profile** %9, i32 %10)
  store %struct.aa_label* %11, %struct.aa_label** %8, align 8
  %12 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %13 = icmp ne %struct.aa_label* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  store %struct.aa_label* %15, %struct.aa_label** %4, align 8
  br label %21

16:                                               ; preds = %3
  %17 = load %struct.aa_profile**, %struct.aa_profile*** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.aa_label* @vec_create_and_insert_label(%struct.aa_profile** %17, i32 %18, i32 %19)
  store %struct.aa_label* %20, %struct.aa_label** %4, align 8
  br label %21

21:                                               ; preds = %16, %14
  %22 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  ret %struct.aa_label* %22
}

declare dso_local %struct.aa_label* @vec_find(%struct.aa_profile**, i32) #1

declare dso_local %struct.aa_label* @vec_create_and_insert_label(%struct.aa_profile**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
