; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_socket_accept.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_socket_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.inode_security_struct = type { i32, i32, i32, i32 }

@SOCKET__ACCEPT = common dso_local global i32 0, align 4
@LABEL_INITIALIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.socket*)* @selinux_socket_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_socket_accept(%struct.socket* %0, %struct.socket* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode_security_struct*, align 8
  %8 = alloca %struct.inode_security_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  %11 = load %struct.socket*, %struct.socket** %4, align 8
  %12 = getelementptr inbounds %struct.socket, %struct.socket* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SOCKET__ACCEPT, align 4
  %15 = call i32 @sock_has_perm(i32 %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %48

20:                                               ; preds = %2
  %21 = load %struct.socket*, %struct.socket** %4, align 8
  %22 = call i32 @SOCK_INODE(%struct.socket* %21)
  %23 = call %struct.inode_security_struct* @inode_security_novalidate(i32 %22)
  store %struct.inode_security_struct* %23, %struct.inode_security_struct** %7, align 8
  %24 = load %struct.inode_security_struct*, %struct.inode_security_struct** %7, align 8
  %25 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %24, i32 0, i32 3
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.inode_security_struct*, %struct.inode_security_struct** %7, align 8
  %28 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load %struct.inode_security_struct*, %struct.inode_security_struct** %7, align 8
  %31 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  %33 = load %struct.inode_security_struct*, %struct.inode_security_struct** %7, align 8
  %34 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %33, i32 0, i32 3
  %35 = call i32 @spin_unlock(i32* %34)
  %36 = load %struct.socket*, %struct.socket** %5, align 8
  %37 = call i32 @SOCK_INODE(%struct.socket* %36)
  %38 = call %struct.inode_security_struct* @inode_security_novalidate(i32 %37)
  store %struct.inode_security_struct* %38, %struct.inode_security_struct** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.inode_security_struct*, %struct.inode_security_struct** %8, align 8
  %41 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.inode_security_struct*, %struct.inode_security_struct** %8, align 8
  %44 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @LABEL_INITIALIZED, align 4
  %46 = load %struct.inode_security_struct*, %struct.inode_security_struct** %8, align 8
  %47 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %20, %18
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @sock_has_perm(i32, i32) #1

declare dso_local %struct.inode_security_struct* @inode_security_novalidate(i32) #1

declare dso_local i32 @SOCK_INODE(%struct.socket*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
