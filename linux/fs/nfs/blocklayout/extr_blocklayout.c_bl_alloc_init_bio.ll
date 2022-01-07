; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_blocklayout.c_bl_alloc_init_bio.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_blocklayout.c_bl_alloc_init_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.bio = type { %struct.parallel_io*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.block_device = type { i32 }
%struct.parallel_io = type { i32 }

@BIO_MAX_PAGES = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@PF_MEMALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bio* (i32, %struct.block_device*, i32, i32, %struct.parallel_io*)* @bl_alloc_init_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bio* @bl_alloc_init_bio(i32 %0, %struct.block_device* %1, i32 %2, i32 %3, %struct.parallel_io* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.block_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.parallel_io*, align 8
  %11 = alloca %struct.bio*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.block_device* %1, %struct.block_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.parallel_io* %4, %struct.parallel_io** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @BIO_MAX_PAGES, align 4
  %14 = call i32 @min(i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @GFP_NOIO, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.bio* @bio_alloc(i32 %15, i32 %16)
  store %struct.bio* %17, %struct.bio** %11, align 8
  %18 = load %struct.bio*, %struct.bio** %11, align 8
  %19 = icmp ne %struct.bio* %18, null
  br i1 %19, label %42, label %20

20:                                               ; preds = %5
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PF_MEMALLOC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %37, %27
  %29 = load %struct.bio*, %struct.bio** %11, align 8
  %30 = icmp ne %struct.bio* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = sdiv i32 %32, 2
  store i32 %33, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br label %35

35:                                               ; preds = %31, %28
  %36 = phi i1 [ false, %28 ], [ %34, %31 ]
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  %38 = load i32, i32* @GFP_NOIO, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call %struct.bio* @bio_alloc(i32 %38, i32 %39)
  store %struct.bio* %40, %struct.bio** %11, align 8
  br label %28

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41, %20, %5
  %43 = load %struct.bio*, %struct.bio** %11, align 8
  %44 = icmp ne %struct.bio* %43, null
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.bio*, %struct.bio** %11, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  %50 = load %struct.bio*, %struct.bio** %11, align 8
  %51 = load %struct.block_device*, %struct.block_device** %7, align 8
  %52 = call i32 @bio_set_dev(%struct.bio* %50, %struct.block_device* %51)
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.bio*, %struct.bio** %11, align 8
  %55 = getelementptr inbounds %struct.bio, %struct.bio* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.parallel_io*, %struct.parallel_io** %10, align 8
  %57 = load %struct.bio*, %struct.bio** %11, align 8
  %58 = getelementptr inbounds %struct.bio, %struct.bio* %57, i32 0, i32 0
  store %struct.parallel_io* %56, %struct.parallel_io** %58, align 8
  br label %59

59:                                               ; preds = %45, %42
  %60 = load %struct.bio*, %struct.bio** %11, align 8
  ret %struct.bio* %60
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, %struct.block_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
