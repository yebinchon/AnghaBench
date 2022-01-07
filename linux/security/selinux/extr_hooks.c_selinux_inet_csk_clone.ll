; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_inet_csk_clone.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_inet_csk_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.sk_security_struct* }
%struct.sk_security_struct = type { i32, i32 }
%struct.request_sock = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.request_sock*)* @selinux_inet_csk_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @selinux_inet_csk_clone(%struct.sock* %0, %struct.request_sock* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.request_sock*, align 8
  %5 = alloca %struct.sk_security_struct*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.request_sock* %1, %struct.request_sock** %4, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 0
  %8 = load %struct.sk_security_struct*, %struct.sk_security_struct** %7, align 8
  store %struct.sk_security_struct* %8, %struct.sk_security_struct** %5, align 8
  %9 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %10 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.sk_security_struct*, %struct.sk_security_struct** %5, align 8
  %13 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %15 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.sk_security_struct*, %struct.sk_security_struct** %5, align 8
  %18 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.sock*, %struct.sock** %3, align 8
  %20 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %21 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @selinux_netlbl_inet_csk_clone(%struct.sock* %19, i32 %24)
  ret void
}

declare dso_local i32 @selinux_netlbl_inet_csk_clone(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
