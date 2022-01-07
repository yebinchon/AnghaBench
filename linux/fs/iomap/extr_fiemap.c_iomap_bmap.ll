; ModuleID = '/home/carl/AnghaBench/linux/fs/iomap/extr_fiemap.c_iomap_bmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/iomap/extr_fiemap.c_iomap_bmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.iomap_ops = type { i32 }

@iomap_bmap_actor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iomap_bmap(%struct.address_space* %0, i32 %1, %struct.iomap_ops* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iomap_ops*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.iomap_ops* %2, %struct.iomap_ops** %7, align 8
  %11 = load %struct.address_space*, %struct.address_space** %5, align 8
  %12 = getelementptr inbounds %struct.address_space, %struct.address_space* %11, i32 0, i32 0
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.inode*, %struct.inode** %8, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %14, %17
  store i32 %18, i32* %9, align 4
  %19 = load %struct.inode*, %struct.inode** %8, align 8
  %20 = call i32 @i_blocksize(%struct.inode* %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.address_space*, %struct.address_space** %5, align 8
  %22 = call i64 @filemap_write_and_wait(%struct.address_space* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %33

25:                                               ; preds = %3
  store i32 0, i32* %6, align 4
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.iomap_ops*, %struct.iomap_ops** %7, align 8
  %30 = load i32, i32* @iomap_bmap_actor, align 4
  %31 = call i32 @iomap_apply(%struct.inode* %26, i32 %27, i32 %28, i32 0, %struct.iomap_ops* %29, i32* %6, i32 %30)
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %25, %24
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @i_blocksize(%struct.inode*) #1

declare dso_local i64 @filemap_write_and_wait(%struct.address_space*) #1

declare dso_local i32 @iomap_apply(%struct.inode*, i32, i32, i32, %struct.iomap_ops*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
