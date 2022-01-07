; ModuleID = '/home/carl/AnghaBench/linux/ipc/extr_util.c_kernel_to_ipc64_perm.c'
source_filename = "/home/carl/AnghaBench/linux/ipc/extr_util.c_kernel_to_ipc64_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kern_ipc_perm = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ipc64_perm = type { i32, i32, i8*, i8*, i8*, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kernel_to_ipc64_perm(%struct.kern_ipc_perm* %0, %struct.ipc64_perm* %1) #0 {
  %3 = alloca %struct.kern_ipc_perm*, align 8
  %4 = alloca %struct.ipc64_perm*, align 8
  store %struct.kern_ipc_perm* %0, %struct.kern_ipc_perm** %3, align 8
  store %struct.ipc64_perm* %1, %struct.ipc64_perm** %4, align 8
  %5 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %3, align 8
  %6 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ipc64_perm*, %struct.ipc64_perm** %4, align 8
  %9 = getelementptr inbounds %struct.ipc64_perm, %struct.ipc64_perm* %8, i32 0, i32 6
  store i32 %7, i32* %9, align 8
  %10 = call i32 (...) @current_user_ns()
  %11 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %3, align 8
  %12 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @from_kuid_munged(i32 %10, i32 %13)
  %15 = load %struct.ipc64_perm*, %struct.ipc64_perm** %4, align 8
  %16 = getelementptr inbounds %struct.ipc64_perm, %struct.ipc64_perm* %15, i32 0, i32 5
  store i8* %14, i8** %16, align 8
  %17 = call i32 (...) @current_user_ns()
  %18 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %3, align 8
  %19 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @from_kgid_munged(i32 %17, i32 %20)
  %22 = load %struct.ipc64_perm*, %struct.ipc64_perm** %4, align 8
  %23 = getelementptr inbounds %struct.ipc64_perm, %struct.ipc64_perm* %22, i32 0, i32 4
  store i8* %21, i8** %23, align 8
  %24 = call i32 (...) @current_user_ns()
  %25 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %3, align 8
  %26 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @from_kuid_munged(i32 %24, i32 %27)
  %29 = load %struct.ipc64_perm*, %struct.ipc64_perm** %4, align 8
  %30 = getelementptr inbounds %struct.ipc64_perm, %struct.ipc64_perm* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = call i32 (...) @current_user_ns()
  %32 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %3, align 8
  %33 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @from_kgid_munged(i32 %31, i32 %34)
  %36 = load %struct.ipc64_perm*, %struct.ipc64_perm** %4, align 8
  %37 = getelementptr inbounds %struct.ipc64_perm, %struct.ipc64_perm* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %3, align 8
  %39 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ipc64_perm*, %struct.ipc64_perm** %4, align 8
  %42 = getelementptr inbounds %struct.ipc64_perm, %struct.ipc64_perm* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %3, align 8
  %44 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ipc64_perm*, %struct.ipc64_perm** %4, align 8
  %47 = getelementptr inbounds %struct.ipc64_perm, %struct.ipc64_perm* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  ret void
}

declare dso_local i8* @from_kuid_munged(i32, i32) #1

declare dso_local i32 @current_user_ns(...) #1

declare dso_local i8* @from_kgid_munged(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
