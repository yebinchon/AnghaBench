; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit_watch.c_audit_init_parent.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit_watch.c_audit_init_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_parent = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.path = type { i32 }
%struct.inode = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@audit_watch_group = common dso_local global i32 0, align 4
@AUDIT_FS_WATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.audit_parent* (%struct.path*)* @audit_init_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.audit_parent* @audit_init_parent(%struct.path* %0) #0 {
  %2 = alloca %struct.audit_parent*, align 8
  %3 = alloca %struct.path*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.audit_parent*, align 8
  %6 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %3, align 8
  %7 = load %struct.path*, %struct.path** %3, align 8
  %8 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.inode* @d_backing_inode(i32 %9)
  store %struct.inode* %10, %struct.inode** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.audit_parent* @kzalloc(i32 8, i32 %11)
  store %struct.audit_parent* %12, %struct.audit_parent** %5, align 8
  %13 = load %struct.audit_parent*, %struct.audit_parent** %5, align 8
  %14 = icmp ne %struct.audit_parent* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.audit_parent* @ERR_PTR(i32 %21)
  store %struct.audit_parent* %22, %struct.audit_parent** %2, align 8
  br label %48

23:                                               ; preds = %1
  %24 = load %struct.audit_parent*, %struct.audit_parent** %5, align 8
  %25 = getelementptr inbounds %struct.audit_parent, %struct.audit_parent* %24, i32 0, i32 1
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.audit_parent*, %struct.audit_parent** %5, align 8
  %28 = getelementptr inbounds %struct.audit_parent, %struct.audit_parent* %27, i32 0, i32 0
  %29 = load i32, i32* @audit_watch_group, align 4
  %30 = call i32 @fsnotify_init_mark(%struct.TYPE_3__* %28, i32 %29)
  %31 = load i32, i32* @AUDIT_FS_WATCH, align 4
  %32 = load %struct.audit_parent*, %struct.audit_parent** %5, align 8
  %33 = getelementptr inbounds %struct.audit_parent, %struct.audit_parent* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load %struct.audit_parent*, %struct.audit_parent** %5, align 8
  %36 = getelementptr inbounds %struct.audit_parent, %struct.audit_parent* %35, i32 0, i32 0
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = call i32 @fsnotify_add_inode_mark(%struct.TYPE_3__* %36, %struct.inode* %37, i32 0)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %23
  %42 = load %struct.audit_parent*, %struct.audit_parent** %5, align 8
  %43 = call i32 @audit_free_parent(%struct.audit_parent* %42)
  %44 = load i32, i32* %6, align 4
  %45 = call %struct.audit_parent* @ERR_PTR(i32 %44)
  store %struct.audit_parent* %45, %struct.audit_parent** %2, align 8
  br label %48

46:                                               ; preds = %23
  %47 = load %struct.audit_parent*, %struct.audit_parent** %5, align 8
  store %struct.audit_parent* %47, %struct.audit_parent** %2, align 8
  br label %48

48:                                               ; preds = %46, %41, %19
  %49 = load %struct.audit_parent*, %struct.audit_parent** %2, align 8
  ret %struct.audit_parent* %49
}

declare dso_local %struct.inode* @d_backing_inode(i32) #1

declare dso_local %struct.audit_parent* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.audit_parent* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @fsnotify_init_mark(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @fsnotify_add_inode_mark(%struct.TYPE_3__*, %struct.inode*, i32) #1

declare dso_local i32 @audit_free_parent(%struct.audit_parent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
