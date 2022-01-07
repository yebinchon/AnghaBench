; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_do_file_open_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_do_file_open_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.dentry = type { i32 }
%struct.vfsmount = type { i32 }
%struct.open_flags = type { i32, i32 }
%struct.nameidata = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dentry*, %struct.vfsmount* }
%struct.filename = type { i32 }

@LOOKUP_ROOT = common dso_local global i32 0, align 4
@LOOKUP_OPEN = common dso_local global i32 0, align 4
@ELOOP = common dso_local global i32 0, align 4
@LOOKUP_RCU = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@LOOKUP_REVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.file* @do_file_open_root(%struct.dentry* %0, %struct.vfsmount* %1, i8* %2, %struct.open_flags* %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.vfsmount*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.open_flags*, align 8
  %10 = alloca %struct.nameidata, align 8
  %11 = alloca %struct.file*, align 8
  %12 = alloca %struct.filename*, align 8
  %13 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store %struct.vfsmount* %1, %struct.vfsmount** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.open_flags* %3, %struct.open_flags** %9, align 8
  %14 = load %struct.open_flags*, %struct.open_flags** %9, align 8
  %15 = getelementptr inbounds %struct.open_flags, %struct.open_flags* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @LOOKUP_ROOT, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %13, align 4
  %19 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  %20 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %10, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store %struct.vfsmount* %19, %struct.vfsmount** %21, align 8
  %22 = load %struct.dentry*, %struct.dentry** %6, align 8
  %23 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %10, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.dentry* %22, %struct.dentry** %24, align 8
  %25 = load %struct.dentry*, %struct.dentry** %6, align 8
  %26 = call i64 @d_is_symlink(%struct.dentry* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %4
  %29 = load %struct.open_flags*, %struct.open_flags** %9, align 8
  %30 = getelementptr inbounds %struct.open_flags, %struct.open_flags* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @LOOKUP_OPEN, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32, i32* @ELOOP, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.file* @ERR_PTR(i32 %37)
  store %struct.file* %38, %struct.file** %5, align 8
  br label %88

39:                                               ; preds = %28, %4
  %40 = load i8*, i8** %8, align 8
  %41 = call %struct.filename* @getname_kernel(i8* %40)
  store %struct.filename* %41, %struct.filename** %12, align 8
  %42 = load %struct.filename*, %struct.filename** %12, align 8
  %43 = call i64 @IS_ERR(%struct.filename* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load %struct.filename*, %struct.filename** %12, align 8
  %47 = call %struct.file* @ERR_CAST(%struct.filename* %46)
  store %struct.file* %47, %struct.file** %5, align 8
  br label %88

48:                                               ; preds = %39
  %49 = load %struct.filename*, %struct.filename** %12, align 8
  %50 = call i32 @set_nameidata(%struct.nameidata* %10, i32 -1, %struct.filename* %49)
  %51 = load %struct.open_flags*, %struct.open_flags** %9, align 8
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @LOOKUP_RCU, align 4
  %54 = or i32 %52, %53
  %55 = call %struct.file* @path_openat(%struct.nameidata* %10, %struct.open_flags* %51, i32 %54)
  store %struct.file* %55, %struct.file** %11, align 8
  %56 = load %struct.file*, %struct.file** %11, align 8
  %57 = load i32, i32* @ECHILD, align 4
  %58 = sub nsw i32 0, %57
  %59 = call %struct.file* @ERR_PTR(i32 %58)
  %60 = icmp eq %struct.file* %56, %59
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %48
  %65 = load %struct.open_flags*, %struct.open_flags** %9, align 8
  %66 = load i32, i32* %13, align 4
  %67 = call %struct.file* @path_openat(%struct.nameidata* %10, %struct.open_flags* %65, i32 %66)
  store %struct.file* %67, %struct.file** %11, align 8
  br label %68

68:                                               ; preds = %64, %48
  %69 = load %struct.file*, %struct.file** %11, align 8
  %70 = load i32, i32* @ESTALE, align 4
  %71 = sub nsw i32 0, %70
  %72 = call %struct.file* @ERR_PTR(i32 %71)
  %73 = icmp eq %struct.file* %69, %72
  %74 = zext i1 %73 to i32
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %68
  %78 = load %struct.open_flags*, %struct.open_flags** %9, align 8
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @LOOKUP_REVAL, align 4
  %81 = or i32 %79, %80
  %82 = call %struct.file* @path_openat(%struct.nameidata* %10, %struct.open_flags* %78, i32 %81)
  store %struct.file* %82, %struct.file** %11, align 8
  br label %83

83:                                               ; preds = %77, %68
  %84 = call i32 (...) @restore_nameidata()
  %85 = load %struct.filename*, %struct.filename** %12, align 8
  %86 = call i32 @putname(%struct.filename* %85)
  %87 = load %struct.file*, %struct.file** %11, align 8
  store %struct.file* %87, %struct.file** %5, align 8
  br label %88

88:                                               ; preds = %83, %45, %35
  %89 = load %struct.file*, %struct.file** %5, align 8
  ret %struct.file* %89
}

declare dso_local i64 @d_is_symlink(%struct.dentry*) #1

declare dso_local %struct.file* @ERR_PTR(i32) #1

declare dso_local %struct.filename* @getname_kernel(i8*) #1

declare dso_local i64 @IS_ERR(%struct.filename*) #1

declare dso_local %struct.file* @ERR_CAST(%struct.filename*) #1

declare dso_local i32 @set_nameidata(%struct.nameidata*, i32, %struct.filename*) #1

declare dso_local %struct.file* @path_openat(%struct.nameidata*, %struct.open_flags*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @restore_nameidata(...) #1

declare dso_local i32 @putname(%struct.filename*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
