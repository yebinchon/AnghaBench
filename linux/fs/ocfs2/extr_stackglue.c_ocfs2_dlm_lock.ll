; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_stackglue.c_ocfs2_dlm_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_stackglue.c_ocfs2_dlm_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ocfs2_cluster_connection*, i32, %struct.ocfs2_dlm_lksb*, i32, i8*, i32)* }
%struct.ocfs2_cluster_connection = type { i32 }
%struct.ocfs2_dlm_lksb = type { %struct.ocfs2_cluster_connection* }

@active_stack = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_dlm_lock(%struct.ocfs2_cluster_connection* %0, i32 %1, %struct.ocfs2_dlm_lksb* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.ocfs2_cluster_connection*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocfs2_dlm_lksb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.ocfs2_cluster_connection* %0, %struct.ocfs2_cluster_connection** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ocfs2_dlm_lksb* %2, %struct.ocfs2_dlm_lksb** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load %struct.ocfs2_dlm_lksb*, %struct.ocfs2_dlm_lksb** %9, align 8
  %14 = getelementptr inbounds %struct.ocfs2_dlm_lksb, %struct.ocfs2_dlm_lksb* %13, i32 0, i32 0
  %15 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %14, align 8
  %16 = icmp ne %struct.ocfs2_cluster_connection* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %6
  %18 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %7, align 8
  %19 = load %struct.ocfs2_dlm_lksb*, %struct.ocfs2_dlm_lksb** %9, align 8
  %20 = getelementptr inbounds %struct.ocfs2_dlm_lksb, %struct.ocfs2_dlm_lksb* %19, i32 0, i32 0
  store %struct.ocfs2_cluster_connection* %18, %struct.ocfs2_cluster_connection** %20, align 8
  br label %29

21:                                               ; preds = %6
  %22 = load %struct.ocfs2_dlm_lksb*, %struct.ocfs2_dlm_lksb** %9, align 8
  %23 = getelementptr inbounds %struct.ocfs2_dlm_lksb, %struct.ocfs2_dlm_lksb* %22, i32 0, i32 0
  %24 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %23, align 8
  %25 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %7, align 8
  %26 = icmp ne %struct.ocfs2_cluster_connection* %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  br label %29

29:                                               ; preds = %21, %17
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @active_stack, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32 (%struct.ocfs2_cluster_connection*, i32, %struct.ocfs2_dlm_lksb*, i32, i8*, i32)*, i32 (%struct.ocfs2_cluster_connection*, i32, %struct.ocfs2_dlm_lksb*, i32, i8*, i32)** %33, align 8
  %35 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.ocfs2_dlm_lksb*, %struct.ocfs2_dlm_lksb** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i8*, i8** %11, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call i32 %34(%struct.ocfs2_cluster_connection* %35, i32 %36, %struct.ocfs2_dlm_lksb* %37, i32 %38, i8* %39, i32 %40)
  ret i32 %41
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
