; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c___fillup_metapath.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c___fillup_metapath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32 }
%struct.metapath = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.metapath*, i32, i32)* @__fillup_metapath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__fillup_metapath(%struct.gfs2_inode* %0, %struct.metapath* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca %struct.metapath*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %6, align 8
  store %struct.metapath* %1, %struct.metapath** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  br label %13

13:                                               ; preds = %45, %4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %48

17:                                               ; preds = %13
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.metapath*, %struct.metapath** %7, align 8
  %20 = call i32* @metapointer(i32 %18, %struct.metapath* %19)
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @be64_to_cpu(i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  br label %48

27:                                               ; preds = %17
  %28 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = add i32 %29, 1
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.metapath*, %struct.metapath** %7, align 8
  %33 = getelementptr inbounds %struct.metapath, %struct.metapath* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = add i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = call i32 @gfs2_meta_indirect_buffer(%struct.gfs2_inode* %28, i32 %30, i32 %31, i32* %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %27
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %5, align 4
  br label %53

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %8, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %13

48:                                               ; preds = %26, %13
  %49 = load i32, i32* %8, align 4
  %50 = add i32 %49, 1
  %51 = load %struct.metapath*, %struct.metapath** %7, align 8
  %52 = getelementptr inbounds %struct.metapath, %struct.metapath* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %48, %42
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32* @metapointer(i32, %struct.metapath*) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @gfs2_meta_indirect_buffer(%struct.gfs2_inode*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
