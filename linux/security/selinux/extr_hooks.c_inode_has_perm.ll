; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_inode_has_perm.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_inode_has_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32 }
%struct.inode = type { i32 }
%struct.common_audit_data = type { i32 }
%struct.inode_security_struct = type { i32, i32 }

@selinux_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cred*, %struct.inode*, i32, %struct.common_audit_data*)* @inode_has_perm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inode_has_perm(%struct.cred* %0, %struct.inode* %1, i32 %2, %struct.common_audit_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cred*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.common_audit_data*, align 8
  %10 = alloca %struct.inode_security_struct*, align 8
  %11 = alloca i32, align 4
  store %struct.cred* %0, %struct.cred** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.common_audit_data* %3, %struct.common_audit_data** %9, align 8
  %12 = load %struct.cred*, %struct.cred** %6, align 8
  %13 = call i32 @validate_creds(%struct.cred* %12)
  %14 = load %struct.inode*, %struct.inode** %7, align 8
  %15 = call i32 @IS_PRIVATE(%struct.inode* %14)
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %34

19:                                               ; preds = %4
  %20 = load %struct.cred*, %struct.cred** %6, align 8
  %21 = call i32 @cred_sid(%struct.cred* %20)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = call %struct.inode_security_struct* @selinux_inode(%struct.inode* %22)
  store %struct.inode_security_struct* %23, %struct.inode_security_struct** %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.inode_security_struct*, %struct.inode_security_struct** %10, align 8
  %26 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.inode_security_struct*, %struct.inode_security_struct** %10, align 8
  %29 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.common_audit_data*, %struct.common_audit_data** %9, align 8
  %33 = call i32 @avc_has_perm(i32* @selinux_state, i32 %24, i32 %27, i32 %30, i32 %31, %struct.common_audit_data* %32)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %19, %18
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @validate_creds(%struct.cred*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IS_PRIVATE(%struct.inode*) #1

declare dso_local i32 @cred_sid(%struct.cred*) #1

declare dso_local %struct.inode_security_struct* @selinux_inode(%struct.inode*) #1

declare dso_local i32 @avc_has_perm(i32*, i32, i32, i32, i32, %struct.common_audit_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
