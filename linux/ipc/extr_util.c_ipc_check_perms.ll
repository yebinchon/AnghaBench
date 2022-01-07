; ModuleID = '/home/carl/AnghaBench/linux/ipc/extr_util.c_ipc_check_perms.c'
source_filename = "/home/carl/AnghaBench/linux/ipc/extr_util.c_ipc_check_perms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipc_namespace = type { i32 }
%struct.kern_ipc_perm = type { i32 }
%struct.ipc_ops = type { i32 (%struct.kern_ipc_perm*, i32)* }
%struct.ipc_params = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipc_namespace*, %struct.kern_ipc_perm*, %struct.ipc_ops*, %struct.ipc_params*)* @ipc_check_perms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipc_check_perms(%struct.ipc_namespace* %0, %struct.kern_ipc_perm* %1, %struct.ipc_ops* %2, %struct.ipc_params* %3) #0 {
  %5 = alloca %struct.ipc_namespace*, align 8
  %6 = alloca %struct.kern_ipc_perm*, align 8
  %7 = alloca %struct.ipc_ops*, align 8
  %8 = alloca %struct.ipc_params*, align 8
  %9 = alloca i32, align 4
  store %struct.ipc_namespace* %0, %struct.ipc_namespace** %5, align 8
  store %struct.kern_ipc_perm* %1, %struct.kern_ipc_perm** %6, align 8
  store %struct.ipc_ops* %2, %struct.ipc_ops** %7, align 8
  store %struct.ipc_params* %3, %struct.ipc_params** %8, align 8
  %10 = load %struct.ipc_namespace*, %struct.ipc_namespace** %5, align 8
  %11 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %12 = load %struct.ipc_params*, %struct.ipc_params** %8, align 8
  %13 = getelementptr inbounds %struct.ipc_params, %struct.ipc_params* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @ipcperms(%struct.ipc_namespace* %10, %struct.kern_ipc_perm* %11, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EACCES, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %9, align 4
  br label %36

20:                                               ; preds = %4
  %21 = load %struct.ipc_ops*, %struct.ipc_ops** %7, align 8
  %22 = getelementptr inbounds %struct.ipc_ops, %struct.ipc_ops* %21, i32 0, i32 0
  %23 = load i32 (%struct.kern_ipc_perm*, i32)*, i32 (%struct.kern_ipc_perm*, i32)** %22, align 8
  %24 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %25 = load %struct.ipc_params*, %struct.ipc_params** %8, align 8
  %26 = getelementptr inbounds %struct.ipc_params, %struct.ipc_params* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 %23(%struct.kern_ipc_perm* %24, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %20
  %32 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %33 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %31, %20
  br label %36

36:                                               ; preds = %35, %17
  %37 = load i32, i32* %9, align 4
  ret i32 %37
}

declare dso_local i64 @ipcperms(%struct.ipc_namespace*, %struct.kern_ipc_perm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
