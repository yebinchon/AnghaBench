; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_segbuf.c_nilfs_alloc_seg_bio.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_segbuf.c_nilfs_alloc_seg_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.the_nilfs = type { i32, i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bio* (%struct.the_nilfs*, i32, i32)* @nilfs_alloc_seg_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bio* @nilfs_alloc_seg_bio(%struct.the_nilfs* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.the_nilfs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bio*, align 8
  store %struct.the_nilfs* %0, %struct.the_nilfs** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @GFP_NOIO, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call %struct.bio* @bio_alloc(i32 %8, i32 %9)
  store %struct.bio* %10, %struct.bio** %7, align 8
  %11 = load %struct.bio*, %struct.bio** %7, align 8
  %12 = icmp eq %struct.bio* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %23, %13
  %15 = load %struct.bio*, %struct.bio** %7, align 8
  %16 = icmp ne %struct.bio* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = ashr i32 %18, 1
  store i32 %19, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi i1 [ false, %14 ], [ %20, %17 ]
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  %24 = load i32, i32* @GFP_NOIO, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call %struct.bio* @bio_alloc(i32 %24, i32 %25)
  store %struct.bio* %26, %struct.bio** %7, align 8
  br label %14

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27, %3
  %29 = load %struct.bio*, %struct.bio** %7, align 8
  %30 = call i64 @likely(%struct.bio* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = load %struct.bio*, %struct.bio** %7, align 8
  %34 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %35 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @bio_set_dev(%struct.bio* %33, i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %40 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, 9
  %43 = shl i32 %38, %42
  %44 = load %struct.bio*, %struct.bio** %7, align 8
  %45 = getelementptr inbounds %struct.bio, %struct.bio* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  br label %47

47:                                               ; preds = %32, %28
  %48 = load %struct.bio*, %struct.bio** %7, align 8
  ret %struct.bio* %48
}

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local i64 @likely(%struct.bio*) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
