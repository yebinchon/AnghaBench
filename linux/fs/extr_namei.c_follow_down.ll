; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_follow_down.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_follow_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.TYPE_5__*, %struct.vfsmount* }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.path*, i32)* }
%struct.vfsmount = type { i32 }

@DCACHE_MANAGED_DENTRY = common dso_local global i32 0, align 4
@DCACHE_MANAGE_TRANSIT = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@DCACHE_MOUNTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @follow_down(%struct.path* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.path*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vfsmount*, align 8
  store %struct.path* %0, %struct.path** %3, align 8
  br label %7

7:                                                ; preds = %78, %1
  %8 = load %struct.path*, %struct.path** %3, align 8
  %9 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @READ_ONCE(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @DCACHE_MANAGED_DENTRY, align 4
  %16 = and i32 %14, %15
  %17 = call i32 @unlikely(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %97

19:                                               ; preds = %7
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @DCACHE_MANAGE_TRANSIT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %67

24:                                               ; preds = %19
  %25 = load %struct.path*, %struct.path** %3, align 8
  %26 = getelementptr inbounds %struct.path, %struct.path* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = icmp ne %struct.TYPE_4__* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load %struct.path*, %struct.path** %3, align 8
  %35 = getelementptr inbounds %struct.path, %struct.path* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32 (%struct.path*, i32)*, i32 (%struct.path*, i32)** %39, align 8
  %41 = icmp ne i32 (%struct.path*, i32)* %40, null
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUG_ON(i32 %43)
  %45 = load %struct.path*, %struct.path** %3, align 8
  %46 = getelementptr inbounds %struct.path, %struct.path* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32 (%struct.path*, i32)*, i32 (%struct.path*, i32)** %50, align 8
  %52 = load %struct.path*, %struct.path** %3, align 8
  %53 = call i32 %51(%struct.path* %52, i32 0)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %24
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @EISDIR, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %5, align 4
  br label %64

64:                                               ; preds = %62, %61
  %65 = phi i32 [ 0, %61 ], [ %63, %62 ]
  store i32 %65, i32* %2, align 4
  br label %98

66:                                               ; preds = %24
  br label %67

67:                                               ; preds = %66, %19
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @DCACHE_MOUNTED, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %96

72:                                               ; preds = %67
  %73 = load %struct.path*, %struct.path** %3, align 8
  %74 = call %struct.vfsmount* @lookup_mnt(%struct.path* %73)
  store %struct.vfsmount* %74, %struct.vfsmount** %6, align 8
  %75 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %76 = icmp ne %struct.vfsmount* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  br label %97

78:                                               ; preds = %72
  %79 = load %struct.path*, %struct.path** %3, align 8
  %80 = getelementptr inbounds %struct.path, %struct.path* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = call i32 @dput(%struct.TYPE_5__* %81)
  %83 = load %struct.path*, %struct.path** %3, align 8
  %84 = getelementptr inbounds %struct.path, %struct.path* %83, i32 0, i32 1
  %85 = load %struct.vfsmount*, %struct.vfsmount** %84, align 8
  %86 = call i32 @mntput(%struct.vfsmount* %85)
  %87 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %88 = load %struct.path*, %struct.path** %3, align 8
  %89 = getelementptr inbounds %struct.path, %struct.path* %88, i32 0, i32 1
  store %struct.vfsmount* %87, %struct.vfsmount** %89, align 8
  %90 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %91 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call %struct.TYPE_5__* @dget(i32 %92)
  %94 = load %struct.path*, %struct.path** %3, align 8
  %95 = getelementptr inbounds %struct.path, %struct.path* %94, i32 0, i32 0
  store %struct.TYPE_5__* %93, %struct.TYPE_5__** %95, align 8
  br label %7

96:                                               ; preds = %67
  br label %97

97:                                               ; preds = %96, %77, %7
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %97, %64
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.vfsmount* @lookup_mnt(%struct.path*) #1

declare dso_local i32 @dput(%struct.TYPE_5__*) #1

declare dso_local i32 @mntput(%struct.vfsmount*) #1

declare dso_local %struct.TYPE_5__* @dget(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
