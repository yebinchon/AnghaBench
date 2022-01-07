; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_inode_security_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_inode_security_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode_security_struct = type { i32 }
%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode_security_struct* (%struct.inode*, i32)* @inode_security_rcu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode_security_struct* @inode_security_rcu(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode_security_struct*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @__inode_security_revalidate(%struct.inode* %7, i32* null, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.inode_security_struct* @ERR_PTR(i32 %16)
  store %struct.inode_security_struct* %17, %struct.inode_security_struct** %3, align 8
  br label %21

18:                                               ; preds = %2
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = call %struct.inode_security_struct* @selinux_inode(%struct.inode* %19)
  store %struct.inode_security_struct* %20, %struct.inode_security_struct** %3, align 8
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %struct.inode_security_struct*, %struct.inode_security_struct** %3, align 8
  ret %struct.inode_security_struct* %22
}

declare dso_local i32 @__inode_security_revalidate(%struct.inode*, i32*, i32) #1

declare dso_local %struct.inode_security_struct* @ERR_PTR(i32) #1

declare dso_local %struct.inode_security_struct* @selinux_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
