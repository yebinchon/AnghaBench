; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_alloc.c_hpfs_alloc_dnode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_alloc.c_hpfs_alloc_dnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dnode = type { i32*, i8*, i8*, i8* }
%struct.super_block = type { i32 }
%struct.quad_buffer_head = type { i32 }

@FREE_DNODES_ADD = common dso_local global i64 0, align 8
@DNODE_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dnode* @hpfs_alloc_dnode(%struct.super_block* %0, i32 %1, i32* %2, %struct.quad_buffer_head* %3) #0 {
  %5 = alloca %struct.dnode*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.quad_buffer_head*, align 8
  %10 = alloca %struct.dnode*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.quad_buffer_head* %3, %struct.quad_buffer_head** %9, align 8
  %11 = load %struct.super_block*, %struct.super_block** %6, align 8
  %12 = call i64 @hpfs_get_free_dnodes(%struct.super_block* %11)
  %13 = load i64, i64* @FREE_DNODES_ADD, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %4
  %16 = load %struct.super_block*, %struct.super_block** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @alloc_in_dirband(%struct.super_block* %16, i32 %17)
  %19 = load i32*, i32** %8, align 8
  store i32 %18, i32* %19, align 4
  %20 = icmp ne i32 %18, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %15
  %22 = load %struct.super_block*, %struct.super_block** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @hpfs_alloc_sector(%struct.super_block* %22, i32 %23, i32 4, i32 0)
  %25 = load i32*, i32** %8, align 8
  store i32 %24, i32* %25, align 4
  %26 = icmp ne i32 %24, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store %struct.dnode* null, %struct.dnode** %5, align 8
  br label %89

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %15
  br label %45

30:                                               ; preds = %4
  %31 = load %struct.super_block*, %struct.super_block** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @hpfs_alloc_sector(%struct.super_block* %31, i32 %32, i32 4, i32 0)
  %34 = load i32*, i32** %8, align 8
  store i32 %33, i32* %34, align 4
  %35 = icmp ne i32 %33, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %30
  %37 = load %struct.super_block*, %struct.super_block** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @alloc_in_dirband(%struct.super_block* %37, i32 %38)
  %40 = load i32*, i32** %8, align 8
  store i32 %39, i32* %40, align 4
  %41 = icmp ne i32 %39, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  store %struct.dnode* null, %struct.dnode** %5, align 8
  br label %89

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %30
  br label %45

45:                                               ; preds = %44, %29
  %46 = load %struct.super_block*, %struct.super_block** %6, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %9, align 8
  %50 = call %struct.dnode* @hpfs_get_4sectors(%struct.super_block* %46, i32 %48, %struct.quad_buffer_head* %49)
  store %struct.dnode* %50, %struct.dnode** %10, align 8
  %51 = icmp ne %struct.dnode* %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %45
  %53 = load %struct.super_block*, %struct.super_block** %6, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @hpfs_free_dnode(%struct.super_block* %53, i32 %55)
  store %struct.dnode* null, %struct.dnode** %5, align 8
  br label %89

57:                                               ; preds = %45
  %58 = load %struct.dnode*, %struct.dnode** %10, align 8
  %59 = call i32 @memset(%struct.dnode* %58, i32 0, i32 2048)
  %60 = load i32, i32* @DNODE_MAGIC, align 4
  %61 = call i8* @cpu_to_le32(i32 %60)
  %62 = load %struct.dnode*, %struct.dnode** %10, align 8
  %63 = getelementptr inbounds %struct.dnode, %struct.dnode* %62, i32 0, i32 3
  store i8* %61, i8** %63, align 8
  %64 = call i8* @cpu_to_le32(i32 52)
  %65 = load %struct.dnode*, %struct.dnode** %10, align 8
  %66 = getelementptr inbounds %struct.dnode, %struct.dnode* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = load %struct.dnode*, %struct.dnode** %10, align 8
  %68 = getelementptr inbounds %struct.dnode, %struct.dnode* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  store i32 32, i32* %70, align 4
  %71 = load %struct.dnode*, %struct.dnode** %10, align 8
  %72 = getelementptr inbounds %struct.dnode, %struct.dnode* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  store i32 8, i32* %74, align 4
  %75 = load %struct.dnode*, %struct.dnode** %10, align 8
  %76 = getelementptr inbounds %struct.dnode, %struct.dnode* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 30
  store i32 1, i32* %78, align 4
  %79 = load %struct.dnode*, %struct.dnode** %10, align 8
  %80 = getelementptr inbounds %struct.dnode, %struct.dnode* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 31
  store i32 255, i32* %82, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @cpu_to_le32(i32 %84)
  %86 = load %struct.dnode*, %struct.dnode** %10, align 8
  %87 = getelementptr inbounds %struct.dnode, %struct.dnode* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  %88 = load %struct.dnode*, %struct.dnode** %10, align 8
  store %struct.dnode* %88, %struct.dnode** %5, align 8
  br label %89

89:                                               ; preds = %57, %52, %42, %27
  %90 = load %struct.dnode*, %struct.dnode** %5, align 8
  ret %struct.dnode* %90
}

declare dso_local i64 @hpfs_get_free_dnodes(%struct.super_block*) #1

declare dso_local i32 @alloc_in_dirband(%struct.super_block*, i32) #1

declare dso_local i32 @hpfs_alloc_sector(%struct.super_block*, i32, i32, i32) #1

declare dso_local %struct.dnode* @hpfs_get_4sectors(%struct.super_block*, i32, %struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_free_dnode(%struct.super_block*, i32) #1

declare dso_local i32 @memset(%struct.dnode*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
