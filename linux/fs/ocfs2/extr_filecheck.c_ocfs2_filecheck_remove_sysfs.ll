; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_filecheck.c_ocfs2_filecheck_remove_sysfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_filecheck.c_ocfs2_filecheck_remove_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_filecheck_remove_sysfs(%struct.ocfs2_super* %0) #0 {
  %2 = alloca %struct.ocfs2_super*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %2, align 8
  %3 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %4 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %25

9:                                                ; preds = %1
  %10 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %11 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = call i32 @kobject_del(i32* %12)
  %14 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %15 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = call i32 @kobject_put(i32* %16)
  %18 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %19 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @wait_for_completion(i32* %20)
  %22 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %23 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %22, i32 0, i32 0
  %24 = call i32 @ocfs2_filecheck_sysfs_free(%struct.TYPE_2__* %23)
  br label %25

25:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @kobject_del(i32*) #1

declare dso_local i32 @kobject_put(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @ocfs2_filecheck_sysfs_free(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
