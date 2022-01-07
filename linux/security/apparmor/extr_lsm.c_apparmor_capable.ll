; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_apparmor_capable.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_apparmor_capable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32 }
%struct.user_namespace = type { i32 }
%struct.aa_label = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cred*, %struct.user_namespace*, i32, i32)* @apparmor_capable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apparmor_capable(%struct.cred* %0, %struct.user_namespace* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.cred*, align 8
  %6 = alloca %struct.user_namespace*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.aa_label*, align 8
  %10 = alloca i32, align 4
  store %struct.cred* %0, %struct.cred** %5, align 8
  store %struct.user_namespace* %1, %struct.user_namespace** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.cred*, %struct.cred** %5, align 8
  %12 = call %struct.aa_label* @aa_get_newest_cred_label(%struct.cred* %11)
  store %struct.aa_label* %12, %struct.aa_label** %9, align 8
  %13 = load %struct.aa_label*, %struct.aa_label** %9, align 8
  %14 = call i32 @unconfined(%struct.aa_label* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %4
  %17 = load %struct.aa_label*, %struct.aa_label** %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @aa_capable(%struct.aa_label* %17, i32 %18, i32 %19)
  store i32 %20, i32* %10, align 4
  br label %21

21:                                               ; preds = %16, %4
  %22 = load %struct.aa_label*, %struct.aa_label** %9, align 8
  %23 = call i32 @aa_put_label(%struct.aa_label* %22)
  %24 = load i32, i32* %10, align 4
  ret i32 %24
}

declare dso_local %struct.aa_label* @aa_get_newest_cred_label(%struct.cred*) #1

declare dso_local i32 @unconfined(%struct.aa_label*) #1

declare dso_local i32 @aa_capable(%struct.aa_label*, i32, i32) #1

declare dso_local i32 @aa_put_label(%struct.aa_label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
