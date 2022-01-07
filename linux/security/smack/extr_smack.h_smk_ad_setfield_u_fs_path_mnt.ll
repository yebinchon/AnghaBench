; ModuleID = '/home/carl/AnghaBench/linux/security/smack/extr_smack.h_smk_ad_setfield_u_fs_path_mnt.c'
source_filename = "/home/carl/AnghaBench/linux/security/smack/extr_smack.h_smk_ad_setfield_u_fs_path_mnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smk_audit_info = type { i32 }
%struct.vfsmount = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smk_audit_info*, %struct.vfsmount*)* @smk_ad_setfield_u_fs_path_mnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smk_ad_setfield_u_fs_path_mnt(%struct.smk_audit_info* %0, %struct.vfsmount* %1) #0 {
  %3 = alloca %struct.smk_audit_info*, align 8
  %4 = alloca %struct.vfsmount*, align 8
  store %struct.smk_audit_info* %0, %struct.smk_audit_info** %3, align 8
  store %struct.vfsmount* %1, %struct.vfsmount** %4, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
