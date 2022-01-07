; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_find_path.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_find_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_caching_info = type { i32 }
%struct.ocfs2_path = type { i32 }
%struct.find_path_data = type { i32, %struct.ocfs2_path* }

@find_path_ins = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_find_path(%struct.ocfs2_caching_info* %0, %struct.ocfs2_path* %1, i32 %2) #0 {
  %4 = alloca %struct.ocfs2_caching_info*, align 8
  %5 = alloca %struct.ocfs2_path*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.find_path_data, align 8
  store %struct.ocfs2_caching_info* %0, %struct.ocfs2_caching_info** %4, align 8
  store %struct.ocfs2_path* %1, %struct.ocfs2_path** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds %struct.find_path_data, %struct.find_path_data* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load %struct.ocfs2_path*, %struct.ocfs2_path** %5, align 8
  %10 = getelementptr inbounds %struct.find_path_data, %struct.find_path_data* %7, i32 0, i32 1
  store %struct.ocfs2_path* %9, %struct.ocfs2_path** %10, align 8
  %11 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %4, align 8
  %12 = load %struct.ocfs2_path*, %struct.ocfs2_path** %5, align 8
  %13 = call i32 @path_root_el(%struct.ocfs2_path* %12)
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @find_path_ins, align 4
  %16 = call i32 @__ocfs2_find_path(%struct.ocfs2_caching_info* %11, i32 %13, i32 %14, i32 %15, %struct.find_path_data* %7)
  ret i32 %16
}

declare dso_local i32 @__ocfs2_find_path(%struct.ocfs2_caching_info*, i32, i32, i32, %struct.find_path_data*) #1

declare dso_local i32 @path_root_el(%struct.ocfs2_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
