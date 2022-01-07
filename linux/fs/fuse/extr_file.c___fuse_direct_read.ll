; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c___fuse_direct_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c___fuse_direct_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_io_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iov_iter = type { i32 }
%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fuse_io_priv*, %struct.iov_iter*, i32*)* @__fuse_direct_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__fuse_direct_read(%struct.fuse_io_priv* %0, %struct.iov_iter* %1, i32* %2) #0 {
  %4 = alloca %struct.fuse_io_priv*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  store %struct.fuse_io_priv* %0, %struct.fuse_io_priv** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %4, align 8
  %10 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.inode* @file_inode(i32 %13)
  store %struct.inode* %14, %struct.inode** %8, align 8
  %15 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %4, align 8
  %16 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @fuse_direct_io(%struct.fuse_io_priv* %15, %struct.iov_iter* %16, i32* %17, i32 0)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.inode*, %struct.inode** %8, align 8
  %20 = call i32 @fuse_invalidate_atime(%struct.inode* %19)
  %21 = load i32, i32* %7, align 4
  ret i32 %21
}

declare dso_local %struct.inode* @file_inode(i32) #1

declare dso_local i32 @fuse_direct_io(%struct.fuse_io_priv*, %struct.iov_iter*, i32*, i32) #1

declare dso_local i32 @fuse_invalidate_atime(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
