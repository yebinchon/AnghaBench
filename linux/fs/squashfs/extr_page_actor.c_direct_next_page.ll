; ModuleID = '/home/carl/AnghaBench/linux/fs/squashfs/extr_page_actor.c_direct_next_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/squashfs/extr_page_actor.c_direct_next_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.squashfs_page_actor = type { i8*, i64, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.squashfs_page_actor*)* @direct_next_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @direct_next_page(%struct.squashfs_page_actor* %0) #0 {
  %2 = alloca %struct.squashfs_page_actor*, align 8
  store %struct.squashfs_page_actor* %0, %struct.squashfs_page_actor** %2, align 8
  %3 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %2, align 8
  %4 = getelementptr inbounds %struct.squashfs_page_actor, %struct.squashfs_page_actor* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %2, align 8
  %9 = getelementptr inbounds %struct.squashfs_page_actor, %struct.squashfs_page_actor* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 @kunmap_atomic(i8* %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %2, align 8
  %14 = getelementptr inbounds %struct.squashfs_page_actor, %struct.squashfs_page_actor* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %2, align 8
  %17 = getelementptr inbounds %struct.squashfs_page_actor, %struct.squashfs_page_actor* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %32

21:                                               ; preds = %12
  %22 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %2, align 8
  %23 = getelementptr inbounds %struct.squashfs_page_actor, %struct.squashfs_page_actor* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %2, align 8
  %26 = getelementptr inbounds %struct.squashfs_page_actor, %struct.squashfs_page_actor* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %26, align 8
  %29 = getelementptr inbounds i32, i32* %24, i64 %27
  %30 = load i32, i32* %29, align 4
  %31 = call i32* @kmap_atomic(i32 %30)
  br label %32

32:                                               ; preds = %21, %20
  %33 = phi i32* [ null, %20 ], [ %31, %21 ]
  %34 = bitcast i32* %33 to i8*
  %35 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %2, align 8
  %36 = getelementptr inbounds %struct.squashfs_page_actor, %struct.squashfs_page_actor* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  ret i8* %34
}

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32* @kmap_atomic(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
