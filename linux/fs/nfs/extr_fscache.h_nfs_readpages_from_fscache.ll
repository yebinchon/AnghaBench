; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_fscache.h_nfs_readpages_from_fscache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_fscache.h_nfs_readpages_from_fscache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_open_context = type { i32 }
%struct.inode = type { i32 }
%struct.address_space = type { i32 }
%struct.list_head = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_open_context*, %struct.inode*, %struct.address_space*, %struct.list_head*, i32*)* @nfs_readpages_from_fscache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_readpages_from_fscache(%struct.nfs_open_context* %0, %struct.inode* %1, %struct.address_space* %2, %struct.list_head* %3, i32* %4) #0 {
  %6 = alloca %struct.nfs_open_context*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.address_space*, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca i32*, align 8
  store %struct.nfs_open_context* %0, %struct.nfs_open_context** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.address_space* %2, %struct.address_space** %8, align 8
  store %struct.list_head* %3, %struct.list_head** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i32, i32* @ENOBUFS, align 4
  %12 = sub nsw i32 0, %11
  ret i32 %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
