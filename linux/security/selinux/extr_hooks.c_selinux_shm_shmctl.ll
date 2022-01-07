; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_shm_shmctl.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_shm_shmctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kern_ipc_perm = type { i32 }

@selinux_state = common dso_local global i32 0, align 4
@SECINITSID_KERNEL = common dso_local global i32 0, align 4
@SECCLASS_SYSTEM = common dso_local global i32 0, align 4
@SYSTEM__IPC_INFO = common dso_local global i32 0, align 4
@SHM__GETATTR = common dso_local global i32 0, align 4
@SHM__ASSOCIATE = common dso_local global i32 0, align 4
@SHM__SETATTR = common dso_local global i32 0, align 4
@SHM__LOCK = common dso_local global i32 0, align 4
@SHM__DESTROY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kern_ipc_perm*, i32)* @selinux_shm_shmctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_shm_shmctl(%struct.kern_ipc_perm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kern_ipc_perm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kern_ipc_perm* %0, %struct.kern_ipc_perm** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %25 [
    i32 136, label %9
    i32 132, label %9
    i32 133, label %15
    i32 130, label %15
    i32 129, label %15
    i32 134, label %19
    i32 131, label %21
    i32 128, label %21
    i32 135, label %23
  ]

9:                                                ; preds = %2, %2
  %10 = call i32 (...) @current_sid()
  %11 = load i32, i32* @SECINITSID_KERNEL, align 4
  %12 = load i32, i32* @SECCLASS_SYSTEM, align 4
  %13 = load i32, i32* @SYSTEM__IPC_INFO, align 4
  %14 = call i32 @avc_has_perm(i32* @selinux_state, i32 %10, i32 %11, i32 %12, i32 %13, i32* null)
  store i32 %14, i32* %3, align 4
  br label %31

15:                                               ; preds = %2, %2, %2
  %16 = load i32, i32* @SHM__GETATTR, align 4
  %17 = load i32, i32* @SHM__ASSOCIATE, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %6, align 4
  br label %26

19:                                               ; preds = %2
  %20 = load i32, i32* @SHM__SETATTR, align 4
  store i32 %20, i32* %6, align 4
  br label %26

21:                                               ; preds = %2, %2
  %22 = load i32, i32* @SHM__LOCK, align 4
  store i32 %22, i32* %6, align 4
  br label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @SHM__DESTROY, align 4
  store i32 %24, i32* %6, align 4
  br label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

26:                                               ; preds = %23, %21, %19, %15
  %27 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @ipc_has_perm(%struct.kern_ipc_perm* %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %26, %25, %9
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @avc_has_perm(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @current_sid(...) #1

declare dso_local i32 @ipc_has_perm(%struct.kern_ipc_perm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
