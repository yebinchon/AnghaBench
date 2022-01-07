; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_dir.c_ovl_whiteout.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_dir.c_ovl_whiteout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*)* @ovl_whiteout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @ovl_whiteout(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  %7 = load %struct.dentry*, %struct.dentry** %3, align 8
  %8 = getelementptr inbounds %struct.dentry, %struct.dentry* %7, i32 0, i32 0
  %9 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %9, %struct.inode** %6, align 8
  %10 = load %struct.dentry*, %struct.dentry** %3, align 8
  %11 = call %struct.dentry* @ovl_lookup_temp(%struct.dentry* %10)
  store %struct.dentry* %11, %struct.dentry** %5, align 8
  %12 = load %struct.dentry*, %struct.dentry** %5, align 8
  %13 = call i64 @IS_ERR(%struct.dentry* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load %struct.dentry*, %struct.dentry** %5, align 8
  store %struct.dentry* %16, %struct.dentry** %2, align 8
  br label %30

17:                                               ; preds = %1
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = load %struct.dentry*, %struct.dentry** %5, align 8
  %20 = call i32 @ovl_do_whiteout(%struct.inode* %18, %struct.dentry* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.dentry*, %struct.dentry** %5, align 8
  %25 = call i32 @dput(%struct.dentry* %24)
  %26 = load i32, i32* %4, align 4
  %27 = call %struct.dentry* @ERR_PTR(i32 %26)
  store %struct.dentry* %27, %struct.dentry** %5, align 8
  br label %28

28:                                               ; preds = %23, %17
  %29 = load %struct.dentry*, %struct.dentry** %5, align 8
  store %struct.dentry* %29, %struct.dentry** %2, align 8
  br label %30

30:                                               ; preds = %28, %15
  %31 = load %struct.dentry*, %struct.dentry** %2, align 8
  ret %struct.dentry* %31
}

declare dso_local %struct.dentry* @ovl_lookup_temp(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @ovl_do_whiteout(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
