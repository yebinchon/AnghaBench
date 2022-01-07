; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_inode.c_alloc_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_inode.c_alloc_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64 }
%struct.super_block = type { %struct.super_operations* }
%struct.super_operations = type { i64, i32 (%struct.inode.0*)*, %struct.inode* (%struct.super_block.1*)* }
%struct.inode.0 = type opaque
%struct.super_block.1 = type opaque

@inode_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*)* @alloc_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @alloc_inode(%struct.super_block* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.super_operations*, align 8
  %5 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %6 = load %struct.super_block*, %struct.super_block** %3, align 8
  %7 = getelementptr inbounds %struct.super_block, %struct.super_block* %6, i32 0, i32 0
  %8 = load %struct.super_operations*, %struct.super_operations** %7, align 8
  store %struct.super_operations* %8, %struct.super_operations** %4, align 8
  %9 = load %struct.super_operations*, %struct.super_operations** %4, align 8
  %10 = getelementptr inbounds %struct.super_operations, %struct.super_operations* %9, i32 0, i32 2
  %11 = load %struct.inode* (%struct.super_block.1*)*, %struct.inode* (%struct.super_block.1*)** %10, align 8
  %12 = icmp ne %struct.inode* (%struct.super_block.1*)* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.super_operations*, %struct.super_operations** %4, align 8
  %15 = getelementptr inbounds %struct.super_operations, %struct.super_operations* %14, i32 0, i32 2
  %16 = load %struct.inode* (%struct.super_block.1*)*, %struct.inode* (%struct.super_block.1*)** %15, align 8
  %17 = load %struct.super_block*, %struct.super_block** %3, align 8
  %18 = bitcast %struct.super_block* %17 to %struct.super_block.1*
  %19 = call %struct.inode* %16(%struct.super_block.1* %18)
  store %struct.inode* %19, %struct.inode** %5, align 8
  br label %24

20:                                               ; preds = %1
  %21 = load i32, i32* @inode_cachep, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.inode* @kmem_cache_alloc(i32 %21, i32 %22)
  store %struct.inode* %23, %struct.inode** %5, align 8
  br label %24

24:                                               ; preds = %20, %13
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = icmp ne %struct.inode* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  store %struct.inode* null, %struct.inode** %2, align 8
  br label %63

28:                                               ; preds = %24
  %29 = load %struct.super_block*, %struct.super_block** %3, align 8
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = call i32 @inode_init_always(%struct.super_block* %29, %struct.inode* %30)
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %61

34:                                               ; preds = %28
  %35 = load %struct.super_operations*, %struct.super_operations** %4, align 8
  %36 = getelementptr inbounds %struct.super_operations, %struct.super_operations* %35, i32 0, i32 1
  %37 = load i32 (%struct.inode.0*)*, i32 (%struct.inode.0*)** %36, align 8
  %38 = icmp ne i32 (%struct.inode.0*)* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load %struct.super_operations*, %struct.super_operations** %4, align 8
  %41 = getelementptr inbounds %struct.super_operations, %struct.super_operations* %40, i32 0, i32 1
  %42 = load i32 (%struct.inode.0*)*, i32 (%struct.inode.0*)** %41, align 8
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = bitcast %struct.inode* %43 to %struct.inode.0*
  %45 = call i32 %42(%struct.inode.0* %44)
  %46 = load %struct.super_operations*, %struct.super_operations** %4, align 8
  %47 = getelementptr inbounds %struct.super_operations, %struct.super_operations* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %39
  store %struct.inode* null, %struct.inode** %2, align 8
  br label %63

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51, %34
  %53 = load %struct.super_operations*, %struct.super_operations** %4, align 8
  %54 = getelementptr inbounds %struct.super_operations, %struct.super_operations* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.inode*, %struct.inode** %5, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load %struct.inode*, %struct.inode** %5, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 0
  %60 = call i32 @i_callback(i32* %59)
  store %struct.inode* null, %struct.inode** %2, align 8
  br label %63

61:                                               ; preds = %28
  %62 = load %struct.inode*, %struct.inode** %5, align 8
  store %struct.inode* %62, %struct.inode** %2, align 8
  br label %63

63:                                               ; preds = %61, %52, %50, %27
  %64 = load %struct.inode*, %struct.inode** %2, align 8
  ret %struct.inode* %64
}

declare dso_local %struct.inode* @kmem_cache_alloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @inode_init_always(%struct.super_block*, %struct.inode*) #1

declare dso_local i32 @i_callback(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
