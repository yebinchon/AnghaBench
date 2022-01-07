; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit_fsnotify.c_audit_update_mark.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit_fsnotify.c_audit_update_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_fsnotify_mark = type { i32, i32 }
%struct.inode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AUDIT_DEV_UNSET = common dso_local global i32 0, align 4
@AUDIT_INO_UNSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audit_fsnotify_mark*, %struct.inode*)* @audit_update_mark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audit_update_mark(%struct.audit_fsnotify_mark* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.audit_fsnotify_mark*, align 8
  %4 = alloca %struct.inode*, align 8
  store %struct.audit_fsnotify_mark* %0, %struct.audit_fsnotify_mark** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %5 = load %struct.inode*, %struct.inode** %4, align 8
  %6 = icmp ne %struct.inode* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @AUDIT_DEV_UNSET, align 4
  br label %15

15:                                               ; preds = %13, %7
  %16 = phi i32 [ %12, %7 ], [ %14, %13 ]
  %17 = load %struct.audit_fsnotify_mark*, %struct.audit_fsnotify_mark** %3, align 8
  %18 = getelementptr inbounds %struct.audit_fsnotify_mark, %struct.audit_fsnotify_mark* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = icmp ne %struct.inode* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  br label %27

25:                                               ; preds = %15
  %26 = load i32, i32* @AUDIT_INO_UNSET, align 4
  br label %27

27:                                               ; preds = %25, %21
  %28 = phi i32 [ %24, %21 ], [ %26, %25 ]
  %29 = load %struct.audit_fsnotify_mark*, %struct.audit_fsnotify_mark** %3, align 8
  %30 = getelementptr inbounds %struct.audit_fsnotify_mark, %struct.audit_fsnotify_mark* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
