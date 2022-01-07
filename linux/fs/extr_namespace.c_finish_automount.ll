; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c_finish_automount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c_finish_automount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i64, i64 }
%struct.path = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.mount = type { i32 }

@ELOOP = common dso_local global i32 0, align 4
@MNT_SHRINKABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @finish_automount(%struct.vfsmount* %0, %struct.path* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.path*, align 8
  %6 = alloca %struct.mount*, align 8
  %7 = alloca i32, align 4
  store %struct.vfsmount* %0, %struct.vfsmount** %4, align 8
  store %struct.path* %1, %struct.path** %5, align 8
  %8 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %9 = call %struct.mount* @real_mount(%struct.vfsmount* %8)
  store %struct.mount* %9, %struct.mount** %6, align 8
  %10 = load %struct.mount*, %struct.mount** %6, align 8
  %11 = call i32 @mnt_get_count(%struct.mount* %10)
  %12 = icmp slt i32 %11, 2
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %16 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.path*, %struct.path** %5, align 8
  %19 = getelementptr inbounds %struct.path, %struct.path* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %17, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %2
  %25 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %26 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.path*, %struct.path** %5, align 8
  %29 = getelementptr inbounds %struct.path, %struct.path* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @ELOOP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %50

35:                                               ; preds = %24, %2
  %36 = load %struct.mount*, %struct.mount** %6, align 8
  %37 = load %struct.path*, %struct.path** %5, align 8
  %38 = load %struct.path*, %struct.path** %5, align 8
  %39 = getelementptr inbounds %struct.path, %struct.path* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @MNT_SHRINKABLE, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @do_add_mount(%struct.mount* %36, %struct.path* %37, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %67

49:                                               ; preds = %35
  br label %50

50:                                               ; preds = %49, %32
  %51 = load %struct.mount*, %struct.mount** %6, align 8
  %52 = getelementptr inbounds %struct.mount, %struct.mount* %51, i32 0, i32 0
  %53 = call i32 @list_empty(i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  %56 = call i32 (...) @namespace_lock()
  %57 = load %struct.mount*, %struct.mount** %6, align 8
  %58 = getelementptr inbounds %struct.mount, %struct.mount* %57, i32 0, i32 0
  %59 = call i32 @list_del_init(i32* %58)
  %60 = call i32 (...) @namespace_unlock()
  br label %61

61:                                               ; preds = %55, %50
  %62 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %63 = call i32 @mntput(%struct.vfsmount* %62)
  %64 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %65 = call i32 @mntput(%struct.vfsmount* %64)
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %61, %48
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.mount* @real_mount(%struct.vfsmount*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mnt_get_count(%struct.mount*) #1

declare dso_local i32 @do_add_mount(%struct.mount*, %struct.path*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @namespace_lock(...) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @namespace_unlock(...) #1

declare dso_local i32 @mntput(%struct.vfsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
