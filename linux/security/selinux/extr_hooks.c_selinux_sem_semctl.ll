; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_sem_semctl.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_sem_semctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kern_ipc_perm = type { i32 }

@selinux_state = common dso_local global i32 0, align 4
@SECINITSID_KERNEL = common dso_local global i32 0, align 4
@SECCLASS_SYSTEM = common dso_local global i32 0, align 4
@SYSTEM__IPC_INFO = common dso_local global i32 0, align 4
@SEM__GETATTR = common dso_local global i32 0, align 4
@SEM__READ = common dso_local global i32 0, align 4
@SEM__WRITE = common dso_local global i32 0, align 4
@SEM__DESTROY = common dso_local global i32 0, align 4
@SEM__SETATTR = common dso_local global i32 0, align 4
@SEM__ASSOCIATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kern_ipc_perm*, i32)* @selinux_sem_semctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_sem_semctl(%struct.kern_ipc_perm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kern_ipc_perm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kern_ipc_perm* %0, %struct.kern_ipc_perm** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %29 [
    i32 136, label %9
    i32 132, label %9
    i32 139, label %15
    i32 140, label %15
    i32 137, label %15
    i32 138, label %17
    i32 141, label %17
    i32 128, label %19
    i32 129, label %19
    i32 135, label %21
    i32 134, label %23
    i32 133, label %25
    i32 131, label %25
    i32 130, label %25
  ]

9:                                                ; preds = %2, %2
  %10 = call i32 (...) @current_sid()
  %11 = load i32, i32* @SECINITSID_KERNEL, align 4
  %12 = load i32, i32* @SECCLASS_SYSTEM, align 4
  %13 = load i32, i32* @SYSTEM__IPC_INFO, align 4
  %14 = call i32 @avc_has_perm(i32* @selinux_state, i32 %10, i32 %11, i32 %12, i32 %13, i32* null)
  store i32 %14, i32* %3, align 4
  br label %35

15:                                               ; preds = %2, %2, %2
  %16 = load i32, i32* @SEM__GETATTR, align 4
  store i32 %16, i32* %7, align 4
  br label %30

17:                                               ; preds = %2, %2
  %18 = load i32, i32* @SEM__READ, align 4
  store i32 %18, i32* %7, align 4
  br label %30

19:                                               ; preds = %2, %2
  %20 = load i32, i32* @SEM__WRITE, align 4
  store i32 %20, i32* %7, align 4
  br label %30

21:                                               ; preds = %2
  %22 = load i32, i32* @SEM__DESTROY, align 4
  store i32 %22, i32* %7, align 4
  br label %30

23:                                               ; preds = %2
  %24 = load i32, i32* @SEM__SETATTR, align 4
  store i32 %24, i32* %7, align 4
  br label %30

25:                                               ; preds = %2, %2, %2
  %26 = load i32, i32* @SEM__GETATTR, align 4
  %27 = load i32, i32* @SEM__ASSOCIATE, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %7, align 4
  br label %30

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %35

30:                                               ; preds = %25, %23, %21, %19, %17, %15
  %31 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @ipc_has_perm(%struct.kern_ipc_perm* %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %30, %29, %9
  %36 = load i32, i32* %3, align 4
  ret i32 %36
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
