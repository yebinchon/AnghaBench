; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_sb_statfs.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_sb_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.cred = type { i32 }
%struct.common_audit_data = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@LSM_AUDIT_DATA_DENTRY = common dso_local global i32 0, align 4
@FILESYSTEM__GETATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*)* @selinux_sb_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_sb_statfs(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.cred*, align 8
  %4 = alloca %struct.common_audit_data, align 4
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %5 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %5, %struct.cred** %3, align 8
  %6 = load i32, i32* @LSM_AUDIT_DATA_DENTRY, align 4
  %7 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %4, i32 0, i32 1
  store i32 %6, i32* %7, align 4
  %8 = load %struct.dentry*, %struct.dentry** %2, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %4, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.cred*, %struct.cred** %3, align 8
  %16 = load %struct.dentry*, %struct.dentry** %2, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i32, i32* @FILESYSTEM__GETATTR, align 4
  %20 = call i32 @superblock_has_perm(%struct.cred* %15, %struct.TYPE_4__* %18, i32 %19, %struct.common_audit_data* %4)
  ret i32 %20
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @superblock_has_perm(%struct.cred*, %struct.TYPE_4__*, i32, %struct.common_audit_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
