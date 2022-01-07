; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_remove_empty_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_remove_empty_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_list = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_extent_list*)* @ocfs2_remove_empty_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_remove_empty_extent(%struct.ocfs2_extent_list* %0) #0 {
  %2 = alloca %struct.ocfs2_extent_list*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ocfs2_extent_list* %0, %struct.ocfs2_extent_list** %2, align 8
  %5 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %2, align 8
  %6 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @le16_to_cpu(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %2, align 8
  %14 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = call i64 @ocfs2_is_empty_extent(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %3, align 4
  %26 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %2, align 8
  %27 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %2, align 8
  %31 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @memmove(i32* %29, i32* %33, i32 %34)
  %36 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %2, align 8
  %37 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = call i32 @memset(i32* %41, i32 0, i32 4)
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @cpu_to_le16(i32 %43)
  %45 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %2, align 8
  %46 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %19, %1
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @ocfs2_is_empty_extent(i32*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
