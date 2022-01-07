; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_dentry_create_files_as.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_dentry_create_files_as.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.qstr = type { i32 }
%struct.cred = type opaque
%struct.task_security_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i32, %struct.qstr*, %struct.cred*, %struct.cred*)* @selinux_dentry_create_files_as to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_dentry_create_files_as(%struct.dentry* %0, i32 %1, %struct.qstr* %2, %struct.cred* %3, %struct.cred* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qstr*, align 8
  %10 = alloca %struct.cred*, align 8
  %11 = alloca %struct.cred*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.task_security_struct*, align 8
  store %struct.dentry* %0, %struct.dentry** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.qstr* %2, %struct.qstr** %9, align 8
  store %struct.cred* %3, %struct.cred** %10, align 8
  store %struct.cred* %4, %struct.cred** %11, align 8
  %15 = load %struct.cred*, %struct.cred** %10, align 8
  %16 = call %struct.task_security_struct* @selinux_cred(%struct.cred* %15)
  %17 = load %struct.dentry*, %struct.dentry** %7, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @d_inode(i32 %19)
  %21 = load %struct.qstr*, %struct.qstr** %9, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @inode_mode_to_security_class(i32 %22)
  %24 = call i32 @selinux_determine_inode_label(%struct.task_security_struct* %16, i32 %20, %struct.qstr* %21, i32 %23, i32* %12)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %6, align 4
  br label %35

29:                                               ; preds = %5
  %30 = load %struct.cred*, %struct.cred** %11, align 8
  %31 = call %struct.task_security_struct* @selinux_cred(%struct.cred* %30)
  store %struct.task_security_struct* %31, %struct.task_security_struct** %14, align 8
  %32 = load i32, i32* %12, align 4
  %33 = load %struct.task_security_struct*, %struct.task_security_struct** %14, align 8
  %34 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %29, %27
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local i32 @selinux_determine_inode_label(%struct.task_security_struct*, i32, %struct.qstr*, i32, i32*) #1

declare dso_local %struct.task_security_struct* @selinux_cred(%struct.cred*) #1

declare dso_local i32 @d_inode(i32) #1

declare dso_local i32 @inode_mode_to_security_class(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
