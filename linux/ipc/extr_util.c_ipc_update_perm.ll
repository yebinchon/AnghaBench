; ModuleID = '/home/carl/AnghaBench/linux/ipc/extr_util.c_ipc_update_perm.c'
source_filename = "/home/carl/AnghaBench/linux/ipc/extr_util.c_ipc_update_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipc64_perm = type { i32, i32, i32 }
%struct.kern_ipc_perm = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_update_perm(%struct.ipc64_perm* %0, %struct.kern_ipc_perm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipc64_perm*, align 8
  %5 = alloca %struct.kern_ipc_perm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ipc64_perm* %0, %struct.ipc64_perm** %4, align 8
  store %struct.kern_ipc_perm* %1, %struct.kern_ipc_perm** %5, align 8
  %8 = call i32 (...) @current_user_ns()
  %9 = load %struct.ipc64_perm*, %struct.ipc64_perm** %4, align 8
  %10 = getelementptr inbounds %struct.ipc64_perm, %struct.ipc64_perm* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @make_kuid(i32 %8, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = call i32 (...) @current_user_ns()
  %14 = load %struct.ipc64_perm*, %struct.ipc64_perm** %4, align 8
  %15 = getelementptr inbounds %struct.ipc64_perm, %struct.ipc64_perm* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @make_kgid(i32 %13, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @uid_valid(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @gid_valid(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21, %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %49

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %5, align 8
  %31 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %5, align 8
  %34 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %5, align 8
  %36 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @S_IRWXUGO, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = load %struct.ipc64_perm*, %struct.ipc64_perm** %4, align 8
  %42 = getelementptr inbounds %struct.ipc64_perm, %struct.ipc64_perm* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @S_IRWXUGO, align 4
  %45 = and i32 %43, %44
  %46 = or i32 %40, %45
  %47 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %5, align 8
  %48 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %28, %25
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @make_kuid(i32, i32) #1

declare dso_local i32 @current_user_ns(...) #1

declare dso_local i32 @make_kgid(i32, i32) #1

declare dso_local i32 @uid_valid(i32) #1

declare dso_local i32 @gid_valid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
