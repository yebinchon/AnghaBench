; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_mpage.c_mpage_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_mpage.c_mpage_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.bio = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.block_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@PF_MEMALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bio* (%struct.block_device*, i32, i32, i32)* @mpage_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bio* @mpage_alloc(%struct.block_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.block_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bio*, align 8
  store %struct.block_device* %0, %struct.block_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = load i32, i32* %8, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.bio* @bio_alloc(i32 %13, i32 %14)
  store %struct.bio* %15, %struct.bio** %9, align 8
  %16 = load %struct.bio*, %struct.bio** %9, align 8
  %17 = icmp eq %struct.bio* %16, null
  br i1 %17, label %18, label %40

18:                                               ; preds = %4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PF_MEMALLOC, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %35, %25
  %27 = load %struct.bio*, %struct.bio** %9, align 8
  %28 = icmp ne %struct.bio* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = sdiv i32 %30, 2
  store i32 %31, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %29, %26
  %34 = phi i1 [ false, %26 ], [ %32, %29 ]
  br i1 %34, label %35, label %39

35:                                               ; preds = %33
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call %struct.bio* @bio_alloc(i32 %36, i32 %37)
  store %struct.bio* %38, %struct.bio** %9, align 8
  br label %26

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %18, %4
  %41 = load %struct.bio*, %struct.bio** %9, align 8
  %42 = icmp ne %struct.bio* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load %struct.bio*, %struct.bio** %9, align 8
  %45 = load %struct.block_device*, %struct.block_device** %5, align 8
  %46 = call i32 @bio_set_dev(%struct.bio* %44, %struct.block_device* %45)
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.bio*, %struct.bio** %9, align 8
  %49 = getelementptr inbounds %struct.bio, %struct.bio* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  br label %51

51:                                               ; preds = %43, %40
  %52 = load %struct.bio*, %struct.bio** %9, align 8
  ret %struct.bio* %52
}

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, %struct.block_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
