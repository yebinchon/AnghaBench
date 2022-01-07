; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_util.c_ovl_dentry_set_redirect.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_util.c_ovl_dentry_set_redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.ovl_inode = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ovl_dentry_set_redirect(%struct.dentry* %0, i8* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ovl_inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.dentry*, %struct.dentry** %3, align 8
  %7 = call i32 @d_inode(%struct.dentry* %6)
  %8 = call %struct.ovl_inode* @OVL_I(i32 %7)
  store %struct.ovl_inode* %8, %struct.ovl_inode** %5, align 8
  %9 = load %struct.ovl_inode*, %struct.ovl_inode** %5, align 8
  %10 = getelementptr inbounds %struct.ovl_inode, %struct.ovl_inode* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @kfree(i8* %11)
  %13 = load i8*, i8** %4, align 8
  %14 = load %struct.ovl_inode*, %struct.ovl_inode** %5, align 8
  %15 = getelementptr inbounds %struct.ovl_inode, %struct.ovl_inode* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  ret void
}

declare dso_local %struct.ovl_inode* @OVL_I(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
