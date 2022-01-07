; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_super.c_ovl_destroy_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_super.c_ovl_destroy_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ovl_inode = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @ovl_destroy_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ovl_destroy_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.ovl_inode*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = call %struct.ovl_inode* @OVL_I(%struct.inode* %4)
  store %struct.ovl_inode* %5, %struct.ovl_inode** %3, align 8
  %6 = load %struct.ovl_inode*, %struct.ovl_inode** %3, align 8
  %7 = getelementptr inbounds %struct.ovl_inode, %struct.ovl_inode* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @dput(i32 %8)
  %10 = load %struct.ovl_inode*, %struct.ovl_inode** %3, align 8
  %11 = getelementptr inbounds %struct.ovl_inode, %struct.ovl_inode* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @iput(i32 %12)
  %14 = load %struct.inode*, %struct.inode** %2, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @S_ISDIR(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.inode*, %struct.inode** %2, align 8
  %21 = call i32 @ovl_dir_cache_free(%struct.inode* %20)
  br label %27

22:                                               ; preds = %1
  %23 = load %struct.ovl_inode*, %struct.ovl_inode** %3, align 8
  %24 = getelementptr inbounds %struct.ovl_inode, %struct.ovl_inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @iput(i32 %25)
  br label %27

27:                                               ; preds = %22, %19
  ret void
}

declare dso_local %struct.ovl_inode* @OVL_I(%struct.inode*) #1

declare dso_local i32 @dput(i32) #1

declare dso_local i32 @iput(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @ovl_dir_cache_free(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
