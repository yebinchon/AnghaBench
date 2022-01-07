; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_do_tmpfile.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_do_tmpfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i32 }
%struct.open_flags = type { i32, i32 }
%struct.file = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dentry = type { i32 }
%struct.path = type { i32, %struct.dentry* }

@LOOKUP_DIRECTORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nameidata*, i32, %struct.open_flags*, %struct.file*)* @do_tmpfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_tmpfile(%struct.nameidata* %0, i32 %1, %struct.open_flags* %2, %struct.file* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nameidata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.open_flags*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.path, align 8
  %12 = alloca i32, align 4
  store %struct.nameidata* %0, %struct.nameidata** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.open_flags* %2, %struct.open_flags** %8, align 8
  store %struct.file* %3, %struct.file** %9, align 8
  %13 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @LOOKUP_DIRECTORY, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @path_lookupat(%struct.nameidata* %13, i32 %16, %struct.path* %11)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %5, align 4
  br label %81

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @mnt_want_write(i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %78

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 1
  %33 = load %struct.dentry*, %struct.dentry** %32, align 8
  %34 = load %struct.open_flags*, %struct.open_flags** %8, align 8
  %35 = getelementptr inbounds %struct.open_flags, %struct.open_flags* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.open_flags*, %struct.open_flags** %8, align 8
  %38 = getelementptr inbounds %struct.open_flags, %struct.open_flags* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.dentry* @vfs_tmpfile(%struct.dentry* %33, i32 %36, i32 %39)
  store %struct.dentry* %40, %struct.dentry** %10, align 8
  %41 = load %struct.dentry*, %struct.dentry** %10, align 8
  %42 = call i32 @PTR_ERR(%struct.dentry* %41)
  store i32 %42, i32* %12, align 4
  %43 = load %struct.dentry*, %struct.dentry** %10, align 8
  %44 = call i64 @IS_ERR(%struct.dentry* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %31
  br label %74

47:                                               ; preds = %31
  %48 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 1
  %49 = load %struct.dentry*, %struct.dentry** %48, align 8
  %50 = call i32 @dput(%struct.dentry* %49)
  %51 = load %struct.dentry*, %struct.dentry** %10, align 8
  %52 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 1
  store %struct.dentry* %51, %struct.dentry** %52, align 8
  %53 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %54 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.dentry*, %struct.dentry** %10, align 8
  %57 = call i32 @audit_inode(i32 %55, %struct.dentry* %56, i32 0)
  %58 = load %struct.open_flags*, %struct.open_flags** %8, align 8
  %59 = getelementptr inbounds %struct.open_flags, %struct.open_flags* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @may_open(%struct.path* %11, i32 0, i32 %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %47
  br label %74

65:                                               ; preds = %47
  %66 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.file*, %struct.file** %9, align 8
  %69 = getelementptr inbounds %struct.file, %struct.file* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 4
  %71 = load %struct.file*, %struct.file** %9, align 8
  %72 = load %struct.dentry*, %struct.dentry** %10, align 8
  %73 = call i32 @finish_open(%struct.file* %71, %struct.dentry* %72, i32* null)
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %65, %64, %46
  %75 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @mnt_drop_write(i32 %76)
  br label %78

78:                                               ; preds = %74, %30
  %79 = call i32 @path_put(%struct.path* %11)
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %78, %21
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @path_lookupat(%struct.nameidata*, i32, %struct.path*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mnt_want_write(i32) #1

declare dso_local %struct.dentry* @vfs_tmpfile(%struct.dentry*, i32, i32) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @audit_inode(i32, %struct.dentry*, i32) #1

declare dso_local i32 @may_open(%struct.path*, i32, i32) #1

declare dso_local i32 @finish_open(%struct.file*, %struct.dentry*, i32*) #1

declare dso_local i32 @mnt_drop_write(i32) #1

declare dso_local i32 @path_put(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
