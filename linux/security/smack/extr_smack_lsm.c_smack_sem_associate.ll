; ModuleID = '/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_smack_sem_associate.c'
source_filename = "/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_smack_sem_associate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kern_ipc_perm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kern_ipc_perm*, i32)* @smack_sem_associate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smack_sem_associate(%struct.kern_ipc_perm* %0, i32 %1) #0 {
  %3 = alloca %struct.kern_ipc_perm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.kern_ipc_perm* %0, %struct.kern_ipc_perm** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @smack_flags_to_may(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %3, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @smk_curacc_sem(%struct.kern_ipc_perm* %8, i32 %9)
  ret i32 %10
}

declare dso_local i32 @smack_flags_to_may(i32) #1

declare dso_local i32 @smk_curacc_sem(%struct.kern_ipc_perm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
