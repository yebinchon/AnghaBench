; ModuleID = '/home/carl/AnghaBench/linux/fs/squashfs/extr_page_actor.h_squashfs_next_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/squashfs/extr_page_actor.h_squashfs_next_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.squashfs_page_actor = type { i64, i64, i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.squashfs_page_actor*)* @squashfs_next_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @squashfs_next_page(%struct.squashfs_page_actor* %0) #0 {
  %2 = alloca %struct.squashfs_page_actor*, align 8
  store %struct.squashfs_page_actor* %0, %struct.squashfs_page_actor** %2, align 8
  %3 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %2, align 8
  %4 = getelementptr inbounds %struct.squashfs_page_actor, %struct.squashfs_page_actor* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %2, align 8
  %7 = getelementptr inbounds %struct.squashfs_page_actor, %struct.squashfs_page_actor* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %5, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %21

11:                                               ; preds = %1
  %12 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %2, align 8
  %13 = getelementptr inbounds %struct.squashfs_page_actor, %struct.squashfs_page_actor* %12, i32 0, i32 2
  %14 = load i8**, i8*** %13, align 8
  %15 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %2, align 8
  %16 = getelementptr inbounds %struct.squashfs_page_actor, %struct.squashfs_page_actor* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %16, align 8
  %19 = getelementptr inbounds i8*, i8** %14, i64 %17
  %20 = load i8*, i8** %19, align 8
  br label %21

21:                                               ; preds = %11, %10
  %22 = phi i8* [ null, %10 ], [ %20, %11 ]
  ret i8* %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
