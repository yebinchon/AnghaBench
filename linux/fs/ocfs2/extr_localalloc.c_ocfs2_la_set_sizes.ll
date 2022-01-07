; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_localalloc.c_ocfs2_la_set_sizes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_localalloc.c_ocfs2_la_set_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i8*, i8*, %struct.super_block* }
%struct.super_block = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_la_set_sizes(%struct.ocfs2_super* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %9 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %8, i32 0, i32 2
  %10 = load %struct.super_block*, %struct.super_block** %9, align 8
  store %struct.super_block* %10, %struct.super_block** %5, align 8
  %11 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %12 = call i32 @ocfs2_la_default_mb(%struct.ocfs2_super* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.super_block*, %struct.super_block** %5, align 8
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = call i32 @ocfs2_local_alloc_size(%struct.super_block* %14)
  %16 = mul nsw i32 %15, 8
  %17 = call i32 @ocfs2_clusters_to_megabytes(%struct.super_block* %13, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @trace_ocfs2_la_set_sizes(i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.super_block*, %struct.super_block** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i8* @ocfs2_megabytes_to_clusters(%struct.super_block* %25, i32 %26)
  %28 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %29 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  br label %47

30:                                               ; preds = %2
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ugt i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load %struct.super_block*, %struct.super_block** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i8* @ocfs2_megabytes_to_clusters(%struct.super_block* %35, i32 %36)
  %38 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %39 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  br label %46

40:                                               ; preds = %30
  %41 = load %struct.super_block*, %struct.super_block** %5, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i8* @ocfs2_megabytes_to_clusters(%struct.super_block* %41, i32 %42)
  %44 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %45 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  br label %46

46:                                               ; preds = %40, %34
  br label %47

47:                                               ; preds = %46, %24
  %48 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %49 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %52 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  ret void
}

declare dso_local i32 @ocfs2_la_default_mb(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_clusters_to_megabytes(%struct.super_block*, i32) #1

declare dso_local i32 @ocfs2_local_alloc_size(%struct.super_block*) #1

declare dso_local i32 @trace_ocfs2_la_set_sizes(i32, i32, i32) #1

declare dso_local i8* @ocfs2_megabytes_to_clusters(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
