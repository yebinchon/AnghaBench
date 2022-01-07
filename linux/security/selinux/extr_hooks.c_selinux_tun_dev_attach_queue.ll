; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_tun_dev_attach_queue.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_tun_dev_attach_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tun_security_struct = type { i32 }

@selinux_state = common dso_local global i32 0, align 4
@SECCLASS_TUN_SOCKET = common dso_local global i32 0, align 4
@TUN_SOCKET__ATTACH_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @selinux_tun_dev_attach_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_tun_dev_attach_queue(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tun_security_struct*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.tun_security_struct*
  store %struct.tun_security_struct* %5, %struct.tun_security_struct** %3, align 8
  %6 = call i32 (...) @current_sid()
  %7 = load %struct.tun_security_struct*, %struct.tun_security_struct** %3, align 8
  %8 = getelementptr inbounds %struct.tun_security_struct, %struct.tun_security_struct* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @SECCLASS_TUN_SOCKET, align 4
  %11 = load i32, i32* @TUN_SOCKET__ATTACH_QUEUE, align 4
  %12 = call i32 @avc_has_perm(i32* @selinux_state, i32 %6, i32 %9, i32 %10, i32 %11, i32* null)
  ret i32 %12
}

declare dso_local i32 @avc_has_perm(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @current_sid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
