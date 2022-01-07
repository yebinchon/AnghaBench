; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_inode_copy_up.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_inode_copy_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.cred = type { i32 }
%struct.task_security_struct = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.cred**)* @selinux_inode_copy_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_inode_copy_up(%struct.dentry* %0, %struct.cred** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.cred**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.task_security_struct*, align 8
  %8 = alloca %struct.cred*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.cred** %1, %struct.cred*** %5, align 8
  %9 = load %struct.cred**, %struct.cred*** %5, align 8
  %10 = load %struct.cred*, %struct.cred** %9, align 8
  store %struct.cred* %10, %struct.cred** %8, align 8
  %11 = load %struct.cred*, %struct.cred** %8, align 8
  %12 = icmp eq %struct.cred* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = call %struct.cred* (...) @prepare_creds()
  store %struct.cred* %14, %struct.cred** %8, align 8
  %15 = load %struct.cred*, %struct.cred** %8, align 8
  %16 = icmp ne %struct.cred* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %32

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20, %2
  %22 = load %struct.cred*, %struct.cred** %8, align 8
  %23 = call %struct.task_security_struct* @selinux_cred(%struct.cred* %22)
  store %struct.task_security_struct* %23, %struct.task_security_struct** %7, align 8
  %24 = load %struct.dentry*, %struct.dentry** %4, align 8
  %25 = call i32 @d_inode(%struct.dentry* %24)
  %26 = call i32 @selinux_inode_getsecid(i32 %25, i32* %6)
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.task_security_struct*, %struct.task_security_struct** %7, align 8
  %29 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.cred*, %struct.cred** %8, align 8
  %31 = load %struct.cred**, %struct.cred*** %5, align 8
  store %struct.cred* %30, %struct.cred** %31, align 8
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %21, %17
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.cred* @prepare_creds(...) #1

declare dso_local %struct.task_security_struct* @selinux_cred(%struct.cred*) #1

declare dso_local i32 @selinux_inode_getsecid(i32, i32*) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
