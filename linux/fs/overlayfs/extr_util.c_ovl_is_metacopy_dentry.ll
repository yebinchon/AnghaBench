; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_util.c_ovl_is_metacopy_dentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_util.c_ovl_is_metacopy_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.ovl_entry* }
%struct.ovl_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovl_is_metacopy_dentry(%struct.dentry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.ovl_entry*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  %5 = load %struct.dentry*, %struct.dentry** %3, align 8
  %6 = getelementptr inbounds %struct.dentry, %struct.dentry* %5, i32 0, i32 0
  %7 = load %struct.ovl_entry*, %struct.ovl_entry** %6, align 8
  store %struct.ovl_entry* %7, %struct.ovl_entry** %4, align 8
  %8 = load %struct.dentry*, %struct.dentry** %3, align 8
  %9 = call i32 @d_is_reg(%struct.dentry* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

12:                                               ; preds = %1
  %13 = load %struct.dentry*, %struct.dentry** %3, align 8
  %14 = call i64 @ovl_dentry_upper(%struct.dentry* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load %struct.dentry*, %struct.dentry** %3, align 8
  %18 = call i32 @d_inode(%struct.dentry* %17)
  %19 = call i32 @ovl_has_upperdata(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %29

22:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %29

23:                                               ; preds = %12
  %24 = load %struct.ovl_entry*, %struct.ovl_entry** %4, align 8
  %25 = getelementptr inbounds %struct.ovl_entry, %struct.ovl_entry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 1
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %23, %22, %21, %11
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @d_is_reg(%struct.dentry*) #1

declare dso_local i64 @ovl_dentry_upper(%struct.dentry*) #1

declare dso_local i32 @ovl_has_upperdata(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
