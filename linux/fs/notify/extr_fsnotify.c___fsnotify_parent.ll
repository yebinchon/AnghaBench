; ModuleID = '/home/carl/AnghaBench/linux/fs/notify/extr_fsnotify.c___fsnotify_parent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/notify/extr_fsnotify.c___fsnotify_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32, %struct.dentry* }
%struct.dentry = type { i32, %struct.path* }
%struct.inode = type { i32, %struct.dentry* }
%struct.name_snapshot = type { i32 }

@DCACHE_FSNOTIFY_PARENT_WATCHED = common dso_local global i32 0, align 4
@ALL_FSNOTIFY_EVENTS = common dso_local global i32 0, align 4
@FS_EVENT_ON_CHILD = common dso_local global i32 0, align 4
@FSNOTIFY_EVENT_PATH = common dso_local global i32 0, align 4
@FSNOTIFY_EVENT_INODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__fsnotify_parent(%struct.path* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.path*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.name_snapshot, align 4
  store %struct.path* %0, %struct.path** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.dentry*, %struct.dentry** %6, align 8
  %13 = icmp ne %struct.dentry* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load %struct.path*, %struct.path** %5, align 8
  %16 = getelementptr inbounds %struct.path, %struct.path* %15, i32 0, i32 1
  %17 = load %struct.dentry*, %struct.dentry** %16, align 8
  store %struct.dentry* %17, %struct.dentry** %6, align 8
  br label %18

18:                                               ; preds = %14, %3
  %19 = load %struct.dentry*, %struct.dentry** %6, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @DCACHE_FSNOTIFY_PARENT_WATCHED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %87

26:                                               ; preds = %18
  %27 = load %struct.dentry*, %struct.dentry** %6, align 8
  %28 = call %struct.dentry* @dget_parent(%struct.dentry* %27)
  store %struct.dentry* %28, %struct.dentry** %8, align 8
  %29 = load %struct.dentry*, %struct.dentry** %8, align 8
  %30 = getelementptr inbounds %struct.dentry, %struct.dentry* %29, i32 0, i32 1
  %31 = load %struct.path*, %struct.path** %30, align 8
  %32 = bitcast %struct.path* %31 to %struct.inode*
  store %struct.inode* %32, %struct.inode** %9, align 8
  %33 = load %struct.inode*, %struct.inode** %9, align 8
  %34 = bitcast %struct.inode* %33 to %struct.path*
  %35 = call i32 @fsnotify_inode_watches_children(%struct.path* %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %26
  %42 = load %struct.inode*, %struct.inode** %9, align 8
  %43 = bitcast %struct.inode* %42 to %struct.path*
  %44 = call i32 @__fsnotify_update_child_dentry_flags(%struct.path* %43)
  br label %83

45:                                               ; preds = %26
  %46 = load %struct.inode*, %struct.inode** %9, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @ALL_FSNOTIFY_EVENTS, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %82

54:                                               ; preds = %45
  %55 = load i32, i32* @FS_EVENT_ON_CHILD, align 4
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  %58 = load %struct.dentry*, %struct.dentry** %6, align 8
  %59 = call i32 @take_dentry_name_snapshot(%struct.name_snapshot* %11, %struct.dentry* %58)
  %60 = load %struct.path*, %struct.path** %5, align 8
  %61 = icmp ne %struct.path* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %54
  %63 = load %struct.inode*, %struct.inode** %9, align 8
  %64 = bitcast %struct.inode* %63 to %struct.path*
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.path*, %struct.path** %5, align 8
  %67 = load i32, i32* @FSNOTIFY_EVENT_PATH, align 4
  %68 = getelementptr inbounds %struct.name_snapshot, %struct.name_snapshot* %11, i32 0, i32 0
  %69 = call i32 @fsnotify(%struct.path* %64, i32 %65, %struct.path* %66, i32 %67, i32* %68, i32 0)
  store i32 %69, i32* %10, align 4
  br label %80

70:                                               ; preds = %54
  %71 = load %struct.inode*, %struct.inode** %9, align 8
  %72 = bitcast %struct.inode* %71 to %struct.path*
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.dentry*, %struct.dentry** %6, align 8
  %75 = getelementptr inbounds %struct.dentry, %struct.dentry* %74, i32 0, i32 1
  %76 = load %struct.path*, %struct.path** %75, align 8
  %77 = load i32, i32* @FSNOTIFY_EVENT_INODE, align 4
  %78 = getelementptr inbounds %struct.name_snapshot, %struct.name_snapshot* %11, i32 0, i32 0
  %79 = call i32 @fsnotify(%struct.path* %72, i32 %73, %struct.path* %76, i32 %77, i32* %78, i32 0)
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %70, %62
  %81 = call i32 @release_dentry_name_snapshot(%struct.name_snapshot* %11)
  br label %82

82:                                               ; preds = %80, %45
  br label %83

83:                                               ; preds = %82, %41
  %84 = load %struct.dentry*, %struct.dentry** %8, align 8
  %85 = call i32 @dput(%struct.dentry* %84)
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %83, %25
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local %struct.dentry* @dget_parent(%struct.dentry*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @fsnotify_inode_watches_children(%struct.path*) #1

declare dso_local i32 @__fsnotify_update_child_dentry_flags(%struct.path*) #1

declare dso_local i32 @take_dentry_name_snapshot(%struct.name_snapshot*, %struct.dentry*) #1

declare dso_local i32 @fsnotify(%struct.path*, i32, %struct.path*, i32, i32*, i32) #1

declare dso_local i32 @release_dentry_name_snapshot(%struct.name_snapshot*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
