; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_close_cached_files.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_close_cached_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*)* @nfsd_close_cached_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsd_close_cached_files(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %4 = load %struct.dentry*, %struct.dentry** %2, align 8
  %5 = call %struct.inode* @d_inode(%struct.dentry* %4)
  store %struct.inode* %5, %struct.inode** %3, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = icmp ne %struct.inode* %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @S_ISREG(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = call i32 @nfsd_file_close_inode_sync(%struct.inode* %15)
  br label %17

17:                                               ; preds = %14, %8, %1
  ret void
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @nfsd_file_close_inode_sync(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
