; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_sock_graft.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_sock_graft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, %struct.sk_security_struct* }
%struct.sk_security_struct = type { i32, i32 }
%struct.socket = type { i32 }
%struct.inode_security_struct = type { i32, i32 }

@PF_INET = common dso_local global i64 0, align 8
@PF_INET6 = common dso_local global i64 0, align 8
@PF_UNIX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.socket*)* @selinux_sock_graft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @selinux_sock_graft(%struct.sock* %0, %struct.socket* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.inode_security_struct*, align 8
  %6 = alloca %struct.sk_security_struct*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.socket* %1, %struct.socket** %4, align 8
  %7 = load %struct.socket*, %struct.socket** %4, align 8
  %8 = call i32 @SOCK_INODE(%struct.socket* %7)
  %9 = call %struct.inode_security_struct* @inode_security_novalidate(i32 %8)
  store %struct.inode_security_struct* %9, %struct.inode_security_struct** %5, align 8
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = getelementptr inbounds %struct.sock, %struct.sock* %10, i32 0, i32 1
  %12 = load %struct.sk_security_struct*, %struct.sk_security_struct** %11, align 8
  store %struct.sk_security_struct* %12, %struct.sk_security_struct** %6, align 8
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PF_INET, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %30, label %18

18:                                               ; preds = %2
  %19 = load %struct.sock*, %struct.sock** %3, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PF_INET6, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.sock*, %struct.sock** %3, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PF_UNIX, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24, %18, %2
  %31 = load %struct.sk_security_struct*, %struct.sk_security_struct** %6, align 8
  %32 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.inode_security_struct*, %struct.inode_security_struct** %5, align 8
  %35 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %30, %24
  %37 = load %struct.inode_security_struct*, %struct.inode_security_struct** %5, align 8
  %38 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sk_security_struct*, %struct.sk_security_struct** %6, align 8
  %41 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  ret void
}

declare dso_local %struct.inode_security_struct* @inode_security_novalidate(i32) #1

declare dso_local i32 @SOCK_INODE(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
