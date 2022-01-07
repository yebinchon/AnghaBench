; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c_mntns_install.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c_mntns_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.fs_struct* }
%struct.fs_struct = type { i32 }
%struct.nsproxy = type { %struct.mnt_namespace* }
%struct.mnt_namespace = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ns_common = type { i32 }
%struct.path = type { i32 }

@current = common dso_local global %struct.TYPE_6__* null, align 8
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@CAP_SYS_CHROOT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@LOOKUP_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nsproxy*, %struct.ns_common*)* @mntns_install to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mntns_install(%struct.nsproxy* %0, %struct.ns_common* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nsproxy*, align 8
  %5 = alloca %struct.ns_common*, align 8
  %6 = alloca %struct.fs_struct*, align 8
  %7 = alloca %struct.mnt_namespace*, align 8
  %8 = alloca %struct.mnt_namespace*, align 8
  %9 = alloca %struct.path, align 4
  %10 = alloca i32, align 4
  store %struct.nsproxy* %0, %struct.nsproxy** %4, align 8
  store %struct.ns_common* %1, %struct.ns_common** %5, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.fs_struct*, %struct.fs_struct** %12, align 8
  store %struct.fs_struct* %13, %struct.fs_struct** %6, align 8
  %14 = load %struct.ns_common*, %struct.ns_common** %5, align 8
  %15 = call %struct.mnt_namespace* @to_mnt_ns(%struct.ns_common* %14)
  store %struct.mnt_namespace* %15, %struct.mnt_namespace** %7, align 8
  %16 = load %struct.mnt_namespace*, %struct.mnt_namespace** %7, align 8
  %17 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %20 = call i32 @ns_capable(i32 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = call i32 (...) @current_user_ns()
  %24 = load i32, i32* @CAP_SYS_CHROOT, align 4
  %25 = call i32 @ns_capable(i32 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = call i32 (...) @current_user_ns()
  %29 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %30 = call i32 @ns_capable(i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27, %22, %2
  %33 = load i32, i32* @EPERM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %88

35:                                               ; preds = %27
  %36 = load %struct.mnt_namespace*, %struct.mnt_namespace** %7, align 8
  %37 = call i64 @is_anon_ns(%struct.mnt_namespace* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %88

42:                                               ; preds = %35
  %43 = load %struct.fs_struct*, %struct.fs_struct** %6, align 8
  %44 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 1
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %88

50:                                               ; preds = %42
  %51 = load %struct.mnt_namespace*, %struct.mnt_namespace** %7, align 8
  %52 = call i32 @get_mnt_ns(%struct.mnt_namespace* %51)
  %53 = load %struct.nsproxy*, %struct.nsproxy** %4, align 8
  %54 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %53, i32 0, i32 0
  %55 = load %struct.mnt_namespace*, %struct.mnt_namespace** %54, align 8
  store %struct.mnt_namespace* %55, %struct.mnt_namespace** %8, align 8
  %56 = load %struct.mnt_namespace*, %struct.mnt_namespace** %7, align 8
  %57 = load %struct.nsproxy*, %struct.nsproxy** %4, align 8
  %58 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %57, i32 0, i32 0
  store %struct.mnt_namespace* %56, %struct.mnt_namespace** %58, align 8
  %59 = load %struct.mnt_namespace*, %struct.mnt_namespace** %7, align 8
  %60 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.mnt_namespace*, %struct.mnt_namespace** %7, align 8
  %66 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* @LOOKUP_DOWN, align 4
  %70 = call i32 @vfs_path_lookup(i32 %64, %struct.TYPE_5__* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %69, %struct.path* %9)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %50
  %74 = load %struct.mnt_namespace*, %struct.mnt_namespace** %8, align 8
  %75 = load %struct.nsproxy*, %struct.nsproxy** %4, align 8
  %76 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %75, i32 0, i32 0
  store %struct.mnt_namespace* %74, %struct.mnt_namespace** %76, align 8
  %77 = load %struct.mnt_namespace*, %struct.mnt_namespace** %7, align 8
  %78 = call i32 @put_mnt_ns(%struct.mnt_namespace* %77)
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %3, align 4
  br label %88

80:                                               ; preds = %50
  %81 = load %struct.mnt_namespace*, %struct.mnt_namespace** %8, align 8
  %82 = call i32 @put_mnt_ns(%struct.mnt_namespace* %81)
  %83 = load %struct.fs_struct*, %struct.fs_struct** %6, align 8
  %84 = call i32 @set_fs_pwd(%struct.fs_struct* %83, %struct.path* %9)
  %85 = load %struct.fs_struct*, %struct.fs_struct** %6, align 8
  %86 = call i32 @set_fs_root(%struct.fs_struct* %85, %struct.path* %9)
  %87 = call i32 @path_put(%struct.path* %9)
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %80, %73, %47, %39, %32
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.mnt_namespace* @to_mnt_ns(%struct.ns_common*) #1

declare dso_local i32 @ns_capable(i32, i32) #1

declare dso_local i32 @current_user_ns(...) #1

declare dso_local i64 @is_anon_ns(%struct.mnt_namespace*) #1

declare dso_local i32 @get_mnt_ns(%struct.mnt_namespace*) #1

declare dso_local i32 @vfs_path_lookup(i32, %struct.TYPE_5__*, i8*, i32, %struct.path*) #1

declare dso_local i32 @put_mnt_ns(%struct.mnt_namespace*) #1

declare dso_local i32 @set_fs_pwd(%struct.fs_struct*, %struct.path*) #1

declare dso_local i32 @set_fs_root(%struct.fs_struct*, %struct.path*) #1

declare dso_local i32 @path_put(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
