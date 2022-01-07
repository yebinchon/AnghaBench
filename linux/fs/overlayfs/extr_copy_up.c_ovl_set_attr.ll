; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_copy_up.c_ovl_set_attr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_copy_up.c_ovl_set_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.kstat = type { i32, i32, i32 }
%struct.iattr = type { i32, i32, i32, i32 }

@ATTR_MODE = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovl_set_attr(%struct.dentry* %0, %struct.kstat* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.kstat*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iattr, align 4
  %7 = alloca %struct.iattr, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.kstat* %1, %struct.kstat** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.kstat*, %struct.kstat** %4, align 8
  %9 = getelementptr inbounds %struct.kstat, %struct.kstat* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @S_ISLNK(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.iattr, %struct.iattr* %6, i32 0, i32 0
  %15 = load i32, i32* @ATTR_MODE, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.iattr, %struct.iattr* %6, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.iattr, %struct.iattr* %6, i32 0, i32 2
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.iattr, %struct.iattr* %6, i32 0, i32 3
  %19 = load %struct.kstat*, %struct.kstat** %4, align 8
  %20 = getelementptr inbounds %struct.kstat, %struct.kstat* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %18, align 4
  %22 = load %struct.dentry*, %struct.dentry** %3, align 8
  %23 = call i32 @notify_change(%struct.dentry* %22, %struct.iattr* %6, i32* null)
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %13, %2
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %43, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.iattr, %struct.iattr* %7, i32 0, i32 0
  %29 = load i32, i32* @ATTR_UID, align 4
  %30 = load i32, i32* @ATTR_GID, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %28, align 4
  %32 = getelementptr inbounds %struct.iattr, %struct.iattr* %7, i32 0, i32 1
  %33 = load %struct.kstat*, %struct.kstat** %4, align 8
  %34 = getelementptr inbounds %struct.kstat, %struct.kstat* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %32, align 4
  %36 = getelementptr inbounds %struct.iattr, %struct.iattr* %7, i32 0, i32 2
  %37 = load %struct.kstat*, %struct.kstat** %4, align 8
  %38 = getelementptr inbounds %struct.kstat, %struct.kstat* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %36, align 4
  %40 = getelementptr inbounds %struct.iattr, %struct.iattr* %7, i32 0, i32 3
  store i32 0, i32* %40, align 4
  %41 = load %struct.dentry*, %struct.dentry** %3, align 8
  %42 = call i32 @notify_change(%struct.dentry* %41, %struct.iattr* %7, i32* null)
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %27, %24
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = load %struct.dentry*, %struct.dentry** %3, align 8
  %48 = load %struct.kstat*, %struct.kstat** %4, align 8
  %49 = call i32 @ovl_set_timestamps(%struct.dentry* %47, %struct.kstat* %48)
  br label %50

50:                                               ; preds = %46, %43
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @S_ISLNK(i32) #1

declare dso_local i32 @notify_change(%struct.dentry*, %struct.iattr*, i32*) #1

declare dso_local i32 @ovl_set_timestamps(%struct.dentry*, %struct.kstat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
