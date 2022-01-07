; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_uptodate.c_ocfs2_remove_metadata_array.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_uptodate.c_ocfs2_remove_metadata_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_caching_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@OCFS2_CACHE_INFO_MAX_ARRAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_caching_info*, i32)* @ocfs2_remove_metadata_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_remove_metadata_array(%struct.ocfs2_caching_info* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_caching_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.ocfs2_caching_info* %0, %struct.ocfs2_caching_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %8 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @OCFS2_CACHE_INFO_MAX_ARRAY, align 4
  %16 = icmp sge i32 %14, %15
  br label %17

17:                                               ; preds = %13, %2
  %18 = phi i1 [ true, %2 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %23 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %21, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %29 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %36 = call i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info* %35)
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %39 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @trace_ocfs2_remove_metadata_array(i64 %36, i32 %37, i32 %40)
  %42 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %43 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %43, align 8
  %46 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %47 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %76

50:                                               ; preds = %17
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %53 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %50
  %57 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %58 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sub nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = mul i64 4, %62
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %6, align 4
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @memmove(i32* %68, i32* %73, i32 %74)
  br label %76

76:                                               ; preds = %56, %50, %17
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @trace_ocfs2_remove_metadata_array(i64, i32, i32) #1

declare dso_local i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
