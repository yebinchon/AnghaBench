; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c___inode_security_revalidate.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c___inode_security_revalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.inode_security_struct = type { i64 }

@selinux_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@LABEL_INITIALIZED = common dso_local global i64 0, align 8
@ECHILD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @__inode_security_revalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__inode_security_revalidate(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode_security_struct*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.inode*, %struct.inode** %5, align 8
  %10 = call %struct.inode_security_struct* @selinux_inode(%struct.inode* %9)
  store %struct.inode_security_struct* %10, %struct.inode_security_struct** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @might_sleep_if(i32 %11)
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @selinux_state, i32 0, i32 0), align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %3
  %16 = load %struct.inode_security_struct*, %struct.inode_security_struct** %8, align 8
  %17 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @LABEL_INITIALIZED, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @ECHILD, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %32

27:                                               ; preds = %21
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = load %struct.dentry*, %struct.dentry** %6, align 8
  %30 = call i32 @inode_doinit_with_dentry(%struct.inode* %28, %struct.dentry* %29)
  br label %31

31:                                               ; preds = %27, %15, %3
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %24
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %struct.inode_security_struct* @selinux_inode(%struct.inode*) #1

declare dso_local i32 @might_sleep_if(i32) #1

declare dso_local i32 @inode_doinit_with_dentry(%struct.inode*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
