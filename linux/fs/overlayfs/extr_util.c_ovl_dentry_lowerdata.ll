; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_util.c_ovl_dentry_lowerdata.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_util.c_ovl_dentry_lowerdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.ovl_entry* }
%struct.ovl_entry = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.dentry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @ovl_dentry_lowerdata(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.ovl_entry*, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %4 = load %struct.dentry*, %struct.dentry** %2, align 8
  %5 = getelementptr inbounds %struct.dentry, %struct.dentry* %4, i32 0, i32 0
  %6 = load %struct.ovl_entry*, %struct.ovl_entry** %5, align 8
  store %struct.ovl_entry* %6, %struct.ovl_entry** %3, align 8
  %7 = load %struct.ovl_entry*, %struct.ovl_entry** %3, align 8
  %8 = getelementptr inbounds %struct.ovl_entry, %struct.ovl_entry* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.ovl_entry*, %struct.ovl_entry** %3, align 8
  %13 = getelementptr inbounds %struct.ovl_entry, %struct.ovl_entry* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load %struct.ovl_entry*, %struct.ovl_entry** %3, align 8
  %16 = getelementptr inbounds %struct.ovl_entry, %struct.ovl_entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.dentry*, %struct.dentry** %21, align 8
  br label %24

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %23, %11
  %25 = phi %struct.dentry* [ %22, %11 ], [ null, %23 ]
  ret %struct.dentry* %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
