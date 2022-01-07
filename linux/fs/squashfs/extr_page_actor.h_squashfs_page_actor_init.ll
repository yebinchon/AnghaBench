; ModuleID = '/home/carl/AnghaBench/linux/fs/squashfs/extr_page_actor.h_squashfs_page_actor_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/squashfs/extr_page_actor.h_squashfs_page_actor_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.squashfs_page_actor = type { i32, i8**, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.squashfs_page_actor* (i8**, i32, i32)* @squashfs_page_actor_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.squashfs_page_actor* @squashfs_page_actor_init(i8** %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.squashfs_page_actor*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.squashfs_page_actor*, align 8
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.squashfs_page_actor* @kmalloc(i32 32, i32 %9)
  store %struct.squashfs_page_actor* %10, %struct.squashfs_page_actor** %8, align 8
  %11 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %8, align 8
  %12 = icmp eq %struct.squashfs_page_actor* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store %struct.squashfs_page_actor* null, %struct.squashfs_page_actor** %4, align 8
  br label %35

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %22

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = mul nsw i32 %19, %20
  br label %22

22:                                               ; preds = %18, %17
  %23 = phi i32 [ %15, %17 ], [ %21, %18 ]
  %24 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %8, align 8
  %25 = getelementptr inbounds %struct.squashfs_page_actor, %struct.squashfs_page_actor* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i8**, i8*** %5, align 8
  %27 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %8, align 8
  %28 = getelementptr inbounds %struct.squashfs_page_actor, %struct.squashfs_page_actor* %27, i32 0, i32 1
  store i8** %26, i8*** %28, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %8, align 8
  %31 = getelementptr inbounds %struct.squashfs_page_actor, %struct.squashfs_page_actor* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %8, align 8
  %33 = getelementptr inbounds %struct.squashfs_page_actor, %struct.squashfs_page_actor* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %8, align 8
  store %struct.squashfs_page_actor* %34, %struct.squashfs_page_actor** %4, align 8
  br label %35

35:                                               ; preds = %22, %13
  %36 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %4, align 8
  ret %struct.squashfs_page_actor* %36
}

declare dso_local %struct.squashfs_page_actor* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
