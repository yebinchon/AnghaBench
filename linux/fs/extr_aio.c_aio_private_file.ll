; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_aio.c_aio_private_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_aio.c_aio_private_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.file = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.kioctx*, i32* }
%struct.kioctx = type { i32 }
%struct.inode = type { i32, %struct.TYPE_4__* }

@aio_mnt = common dso_local global %struct.TYPE_5__* null, align 8
@aio_ctx_aops = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"[aio]\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@aio_ring_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.file* (%struct.kioctx*, i32)* @aio_private_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.file* @aio_private_file(%struct.kioctx* %0, i32 %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.kioctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.inode*, align 8
  store %struct.kioctx* %0, %struct.kioctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @aio_mnt, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.inode* @alloc_anon_inode(i32 %10)
  store %struct.inode* %11, %struct.inode** %7, align 8
  %12 = load %struct.inode*, %struct.inode** %7, align 8
  %13 = call i64 @IS_ERR(%struct.inode* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = call %struct.inode* @ERR_CAST(%struct.inode* %16)
  %18 = bitcast %struct.inode* %17 to %struct.file*
  store %struct.file* %18, %struct.file** %3, align 8
  br label %48

19:                                               ; preds = %2
  %20 = load %struct.inode*, %struct.inode** %7, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i32* @aio_ctx_aops, i32** %23, align 8
  %24 = load %struct.kioctx*, %struct.kioctx** %4, align 8
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store %struct.kioctx* %24, %struct.kioctx** %28, align 8
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = load i32, i32* %5, align 4
  %31 = mul nsw i32 %29, %30
  %32 = load %struct.inode*, %struct.inode** %7, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.inode*, %struct.inode** %7, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** @aio_mnt, align 8
  %36 = load i32, i32* @O_RDWR, align 4
  %37 = call %struct.inode* @alloc_file_pseudo(%struct.inode* %34, %struct.TYPE_5__* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %36, i32* @aio_ring_fops)
  %38 = bitcast %struct.inode* %37 to %struct.file*
  store %struct.file* %38, %struct.file** %6, align 8
  %39 = load %struct.file*, %struct.file** %6, align 8
  %40 = bitcast %struct.file* %39 to %struct.inode*
  %41 = call i64 @IS_ERR(%struct.inode* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %19
  %44 = load %struct.inode*, %struct.inode** %7, align 8
  %45 = call i32 @iput(%struct.inode* %44)
  br label %46

46:                                               ; preds = %43, %19
  %47 = load %struct.file*, %struct.file** %6, align 8
  store %struct.file* %47, %struct.file** %3, align 8
  br label %48

48:                                               ; preds = %46, %15
  %49 = load %struct.file*, %struct.file** %3, align 8
  ret %struct.file* %49
}

declare dso_local %struct.inode* @alloc_anon_inode(i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.inode* @ERR_CAST(%struct.inode*) #1

declare dso_local %struct.inode* @alloc_file_pseudo(%struct.inode*, %struct.TYPE_5__*, i8*, i32, i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
