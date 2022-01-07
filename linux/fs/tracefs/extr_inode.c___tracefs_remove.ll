; ModuleID = '/home/carl/AnghaBench/linux/fs/tracefs/extr_inode.c___tracefs_remove.c'
source_filename = "/home/carl/AnghaBench/linux/fs/tracefs/extr_inode.c___tracefs_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@S_IFMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.dentry*)* @__tracefs_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tracefs_remove(%struct.dentry* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.dentry*, %struct.dentry** %3, align 8
  %7 = call i64 @simple_positive(%struct.dentry* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %60

9:                                                ; preds = %2
  %10 = load %struct.dentry*, %struct.dentry** %3, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %59

14:                                               ; preds = %9
  %15 = load %struct.dentry*, %struct.dentry** %3, align 8
  %16 = call i32 @dget(%struct.dentry* %15)
  %17 = load %struct.dentry*, %struct.dentry** %3, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @S_IFMT, align 4
  %23 = and i32 %21, %22
  switch i32 %23, label %39 [
    i32 128, label %24
  ]

24:                                               ; preds = %14
  %25 = load %struct.dentry*, %struct.dentry** %4, align 8
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = load %struct.dentry*, %struct.dentry** %3, align 8
  %29 = call i32 @simple_rmdir(%struct.TYPE_5__* %27, %struct.dentry* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %24
  %33 = load %struct.dentry*, %struct.dentry** %4, align 8
  %34 = getelementptr inbounds %struct.dentry, %struct.dentry* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load %struct.dentry*, %struct.dentry** %3, align 8
  %37 = call i32 @fsnotify_rmdir(%struct.TYPE_5__* %35, %struct.dentry* %36)
  br label %38

38:                                               ; preds = %32, %24
  br label %50

39:                                               ; preds = %14
  %40 = load %struct.dentry*, %struct.dentry** %4, align 8
  %41 = getelementptr inbounds %struct.dentry, %struct.dentry* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = load %struct.dentry*, %struct.dentry** %3, align 8
  %44 = call i32 @simple_unlink(%struct.TYPE_5__* %42, %struct.dentry* %43)
  %45 = load %struct.dentry*, %struct.dentry** %4, align 8
  %46 = getelementptr inbounds %struct.dentry, %struct.dentry* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load %struct.dentry*, %struct.dentry** %3, align 8
  %49 = call i32 @fsnotify_unlink(%struct.TYPE_5__* %47, %struct.dentry* %48)
  br label %50

50:                                               ; preds = %39, %38
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load %struct.dentry*, %struct.dentry** %3, align 8
  %55 = call i32 @d_delete(%struct.dentry* %54)
  br label %56

56:                                               ; preds = %53, %50
  %57 = load %struct.dentry*, %struct.dentry** %3, align 8
  %58 = call i32 @dput(%struct.dentry* %57)
  br label %59

59:                                               ; preds = %56, %9
  br label %60

60:                                               ; preds = %59, %2
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i64 @simple_positive(%struct.dentry*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @simple_rmdir(%struct.TYPE_5__*, %struct.dentry*) #1

declare dso_local i32 @fsnotify_rmdir(%struct.TYPE_5__*, %struct.dentry*) #1

declare dso_local i32 @simple_unlink(%struct.TYPE_5__*, %struct.dentry*) #1

declare dso_local i32 @fsnotify_unlink(%struct.TYPE_5__*, %struct.dentry*) #1

declare dso_local i32 @d_delete(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
