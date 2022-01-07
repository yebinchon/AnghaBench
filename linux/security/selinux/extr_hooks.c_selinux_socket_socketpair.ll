; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_socket_socketpair.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_socket_socketpair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sk_security_struct* }
%struct.sk_security_struct = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.socket*)* @selinux_socket_socketpair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_socket_socketpair(%struct.socket* %0, %struct.socket* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sk_security_struct*, align 8
  %6 = alloca %struct.sk_security_struct*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.socket* %1, %struct.socket** %4, align 8
  %7 = load %struct.socket*, %struct.socket** %3, align 8
  %8 = getelementptr inbounds %struct.socket, %struct.socket* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.sk_security_struct*, %struct.sk_security_struct** %10, align 8
  store %struct.sk_security_struct* %11, %struct.sk_security_struct** %5, align 8
  %12 = load %struct.socket*, %struct.socket** %4, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.sk_security_struct*, %struct.sk_security_struct** %15, align 8
  store %struct.sk_security_struct* %16, %struct.sk_security_struct** %6, align 8
  %17 = load %struct.sk_security_struct*, %struct.sk_security_struct** %6, align 8
  %18 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sk_security_struct*, %struct.sk_security_struct** %5, align 8
  %21 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.sk_security_struct*, %struct.sk_security_struct** %5, align 8
  %23 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sk_security_struct*, %struct.sk_security_struct** %6, align 8
  %26 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
