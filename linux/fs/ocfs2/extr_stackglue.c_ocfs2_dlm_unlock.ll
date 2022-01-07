; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_stackglue.c_ocfs2_dlm_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_stackglue.c_ocfs2_dlm_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ocfs2_cluster_connection*, %struct.ocfs2_dlm_lksb*, i32)* }
%struct.ocfs2_cluster_connection = type { i32 }
%struct.ocfs2_dlm_lksb = type { i32* }

@active_stack = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_dlm_unlock(%struct.ocfs2_cluster_connection* %0, %struct.ocfs2_dlm_lksb* %1, i32 %2) #0 {
  %4 = alloca %struct.ocfs2_cluster_connection*, align 8
  %5 = alloca %struct.ocfs2_dlm_lksb*, align 8
  %6 = alloca i32, align 4
  store %struct.ocfs2_cluster_connection* %0, %struct.ocfs2_cluster_connection** %4, align 8
  store %struct.ocfs2_dlm_lksb* %1, %struct.ocfs2_dlm_lksb** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ocfs2_dlm_lksb*, %struct.ocfs2_dlm_lksb** %5, align 8
  %8 = getelementptr inbounds %struct.ocfs2_dlm_lksb, %struct.ocfs2_dlm_lksb* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @active_stack, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32 (%struct.ocfs2_cluster_connection*, %struct.ocfs2_dlm_lksb*, i32)*, i32 (%struct.ocfs2_cluster_connection*, %struct.ocfs2_dlm_lksb*, i32)** %16, align 8
  %18 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %4, align 8
  %19 = load %struct.ocfs2_dlm_lksb*, %struct.ocfs2_dlm_lksb** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 %17(%struct.ocfs2_cluster_connection* %18, %struct.ocfs2_dlm_lksb* %19, i32 %20)
  ret i32 %21
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
