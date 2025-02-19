; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_group_from_res.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_group_from_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_suballoc_result = type { i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ocfs2_suballoc_result*)* @ocfs2_group_from_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ocfs2_group_from_res(%struct.ocfs2_suballoc_result* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ocfs2_suballoc_result*, align 8
  store %struct.ocfs2_suballoc_result* %0, %struct.ocfs2_suballoc_result** %3, align 8
  %4 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %3, align 8
  %5 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %26

9:                                                ; preds = %1
  %10 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %3, align 8
  %11 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %3, align 8
  %16 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %2, align 8
  br label %26

18:                                               ; preds = %9
  %19 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %3, align 8
  %20 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %3, align 8
  %23 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @ocfs2_which_suballoc_group(i64 %21, i32 %24)
  store i64 %25, i64* %2, align 8
  br label %26

26:                                               ; preds = %18, %14, %8
  %27 = load i64, i64* %2, align 8
  ret i64 %27
}

declare dso_local i64 @ocfs2_which_suballoc_group(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
