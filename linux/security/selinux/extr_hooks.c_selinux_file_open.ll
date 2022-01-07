; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_file_open.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_file_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.file_security_struct = type { i32, i32 }
%struct.inode_security_struct = type { i32 }

@selinux_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @selinux_file_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_file_open(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.file_security_struct*, align 8
  %4 = alloca %struct.inode_security_struct*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = call %struct.file_security_struct* @selinux_file(%struct.file* %5)
  store %struct.file_security_struct* %6, %struct.file_security_struct** %3, align 8
  %7 = load %struct.file*, %struct.file** %2, align 8
  %8 = call i32 @file_inode(%struct.file* %7)
  %9 = call %struct.inode_security_struct* @inode_security(i32 %8)
  store %struct.inode_security_struct* %9, %struct.inode_security_struct** %4, align 8
  %10 = load %struct.inode_security_struct*, %struct.inode_security_struct** %4, align 8
  %11 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.file_security_struct*, %struct.file_security_struct** %3, align 8
  %14 = getelementptr inbounds %struct.file_security_struct, %struct.file_security_struct* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = call i32 @avc_policy_seqno(i32* @selinux_state)
  %16 = load %struct.file_security_struct*, %struct.file_security_struct** %3, align 8
  %17 = getelementptr inbounds %struct.file_security_struct, %struct.file_security_struct* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.file*, %struct.file** %2, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.file*, %struct.file** %2, align 8
  %22 = load %struct.file*, %struct.file** %2, align 8
  %23 = call i32 @open_file_to_av(%struct.file* %22)
  %24 = call i32 @file_path_has_perm(i32 %20, %struct.file* %21, i32 %23)
  ret i32 %24
}

declare dso_local %struct.file_security_struct* @selinux_file(%struct.file*) #1

declare dso_local %struct.inode_security_struct* @inode_security(i32) #1

declare dso_local i32 @file_inode(%struct.file*) #1

declare dso_local i32 @avc_policy_seqno(i32*) #1

declare dso_local i32 @file_path_has_perm(i32, %struct.file*, i32) #1

declare dso_local i32 @open_file_to_av(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
