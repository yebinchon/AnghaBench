; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_file_permission.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_file_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i32 }
%struct.file_security_struct = type { i64, i64, i64 }
%struct.inode_security_struct = type { i64 }

@selinux_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32)* @selinux_file_permission to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_file_permission(%struct.file* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.file_security_struct*, align 8
  %8 = alloca %struct.inode_security_struct*, align 8
  %9 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = call %struct.inode* @file_inode(%struct.file* %10)
  store %struct.inode* %11, %struct.inode** %6, align 8
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = call %struct.file_security_struct* @selinux_file(%struct.file* %12)
  store %struct.file_security_struct* %13, %struct.file_security_struct** %7, align 8
  %14 = call i64 (...) @current_sid()
  store i64 %14, i64* %9, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %45

18:                                               ; preds = %2
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = call %struct.inode_security_struct* @inode_security(%struct.inode* %19)
  store %struct.inode_security_struct* %20, %struct.inode_security_struct** %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load %struct.file_security_struct*, %struct.file_security_struct** %7, align 8
  %23 = getelementptr inbounds %struct.file_security_struct, %struct.file_security_struct* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %18
  %27 = load %struct.file_security_struct*, %struct.file_security_struct** %7, align 8
  %28 = getelementptr inbounds %struct.file_security_struct, %struct.file_security_struct* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.inode_security_struct*, %struct.inode_security_struct** %8, align 8
  %31 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = load %struct.file_security_struct*, %struct.file_security_struct** %7, align 8
  %36 = getelementptr inbounds %struct.file_security_struct, %struct.file_security_struct* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @avc_policy_seqno(i32* @selinux_state)
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %45

41:                                               ; preds = %34, %26, %18
  %42 = load %struct.file*, %struct.file** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @selinux_revalidate_file_permission(%struct.file* %42, i32 %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %40, %17
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.file_security_struct* @selinux_file(%struct.file*) #1

declare dso_local i64 @current_sid(...) #1

declare dso_local %struct.inode_security_struct* @inode_security(%struct.inode*) #1

declare dso_local i64 @avc_policy_seqno(i32*) #1

declare dso_local i32 @selinux_revalidate_file_permission(%struct.file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
