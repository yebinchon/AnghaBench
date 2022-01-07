; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_mount.c_compute_mnt_perms.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_mount.c_compute_mnt_perms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_dfa = type { i32 }
%struct.aa_perms = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i64 } (%struct.aa_dfa*, i32)* @compute_mnt_perms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @compute_mnt_perms(%struct.aa_dfa* %0, i32 %1) #0 {
  %3 = alloca %struct.aa_perms, align 4
  %4 = alloca %struct.aa_dfa*, align 8
  %5 = alloca i32, align 4
  store %struct.aa_dfa* %0, %struct.aa_dfa** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %3, i32 0, i32 0
  %7 = load %struct.aa_dfa*, %struct.aa_dfa** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @dfa_user_xindex(%struct.aa_dfa* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %3, i32 0, i32 1
  %11 = load %struct.aa_dfa*, %struct.aa_dfa** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @dfa_user_quiet(%struct.aa_dfa* %11, i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %3, i32 0, i32 2
  %15 = load %struct.aa_dfa*, %struct.aa_dfa** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @dfa_user_audit(%struct.aa_dfa* %15, i32 %16)
  store i32 %17, i32* %14, align 4
  %18 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %3, i32 0, i32 3
  %19 = load %struct.aa_dfa*, %struct.aa_dfa** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @dfa_user_allow(%struct.aa_dfa* %19, i32 %20)
  store i32 %21, i32* %18, align 4
  %22 = bitcast %struct.aa_perms* %3 to { i64, i64 }*
  %23 = load { i64, i64 }, { i64, i64 }* %22, align 4
  ret { i64, i64 } %23
}

declare dso_local i32 @dfa_user_xindex(%struct.aa_dfa*, i32) #1

declare dso_local i32 @dfa_user_quiet(%struct.aa_dfa*, i32) #1

declare dso_local i32 @dfa_user_audit(%struct.aa_dfa*, i32) #1

declare dso_local i32 @dfa_user_allow(%struct.aa_dfa*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
