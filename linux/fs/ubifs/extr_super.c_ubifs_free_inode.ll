; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_super.c_ubifs_free_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_super.c_ubifs_free_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ubifs_inode = type { i32 }

@ubifs_inode_slab = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @ubifs_free_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ubifs_free_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.ubifs_inode*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %4)
  store %struct.ubifs_inode* %5, %struct.ubifs_inode** %3, align 8
  %6 = load %struct.ubifs_inode*, %struct.ubifs_inode** %3, align 8
  %7 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @kfree(i32 %8)
  %10 = load %struct.inode*, %struct.inode** %2, align 8
  %11 = call i32 @fscrypt_free_inode(%struct.inode* %10)
  %12 = load i32, i32* @ubifs_inode_slab, align 4
  %13 = load %struct.ubifs_inode*, %struct.ubifs_inode** %3, align 8
  %14 = call i32 @kmem_cache_free(i32 %12, %struct.ubifs_inode* %13)
  ret void
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @fscrypt_free_inode(%struct.inode*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.ubifs_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
