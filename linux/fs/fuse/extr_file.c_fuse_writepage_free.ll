; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_writepage_free.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_writepage_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_writepage_args = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.fuse_args_pages }
%struct.fuse_args_pages = type { i32, %struct.fuse_writepage_args* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_writepage_args*)* @fuse_writepage_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_writepage_free(%struct.fuse_writepage_args* %0) #0 {
  %2 = alloca %struct.fuse_writepage_args*, align 8
  %3 = alloca %struct.fuse_args_pages*, align 8
  %4 = alloca i32, align 4
  store %struct.fuse_writepage_args* %0, %struct.fuse_writepage_args** %2, align 8
  %5 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %2, align 8
  %6 = getelementptr inbounds %struct.fuse_writepage_args, %struct.fuse_writepage_args* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  store %struct.fuse_args_pages* %7, %struct.fuse_args_pages** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %22, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %3, align 8
  %11 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %8
  %15 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %3, align 8
  %16 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %15, i32 0, i32 1
  %17 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.fuse_writepage_args, %struct.fuse_writepage_args* %17, i64 %19
  %21 = call i32 @__free_page(%struct.fuse_writepage_args* byval(%struct.fuse_writepage_args) align 8 %20)
  br label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %8

25:                                               ; preds = %8
  %26 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %2, align 8
  %27 = getelementptr inbounds %struct.fuse_writepage_args, %struct.fuse_writepage_args* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %2, align 8
  %33 = getelementptr inbounds %struct.fuse_writepage_args, %struct.fuse_writepage_args* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @fuse_file_put(i64 %35, i32 0, i32 0)
  br label %37

37:                                               ; preds = %31, %25
  %38 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %3, align 8
  %39 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %38, i32 0, i32 1
  %40 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %39, align 8
  %41 = call i32 @kfree(%struct.fuse_writepage_args* %40)
  %42 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %2, align 8
  %43 = call i32 @kfree(%struct.fuse_writepage_args* %42)
  ret void
}

declare dso_local i32 @__free_page(%struct.fuse_writepage_args* byval(%struct.fuse_writepage_args) align 8) #1

declare dso_local i32 @fuse_file_put(i64, i32, i32) #1

declare dso_local i32 @kfree(%struct.fuse_writepage_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
