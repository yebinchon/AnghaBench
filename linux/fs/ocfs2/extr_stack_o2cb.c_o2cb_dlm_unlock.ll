; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_stack_o2cb.c_o2cb_dlm_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_stack_o2cb.c_o2cb_dlm_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_cluster_connection = type { i32 }
%struct.ocfs2_dlm_lksb = type { i32 }

@o2dlm_unlock_ast_wrapper = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_cluster_connection*, %struct.ocfs2_dlm_lksb*, i32)* @o2cb_dlm_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @o2cb_dlm_unlock(%struct.ocfs2_cluster_connection* %0, %struct.ocfs2_dlm_lksb* %1, i32 %2) #0 {
  %4 = alloca %struct.ocfs2_cluster_connection*, align 8
  %5 = alloca %struct.ocfs2_dlm_lksb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ocfs2_cluster_connection* %0, %struct.ocfs2_cluster_connection** %4, align 8
  store %struct.ocfs2_dlm_lksb* %1, %struct.ocfs2_dlm_lksb** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @flags_to_o2dlm(i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %4, align 8
  %13 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ocfs2_dlm_lksb*, %struct.ocfs2_dlm_lksb** %5, align 8
  %16 = getelementptr inbounds %struct.ocfs2_dlm_lksb, %struct.ocfs2_dlm_lksb* %15, i32 0, i32 0
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @o2dlm_unlock_ast_wrapper, align 4
  %19 = load %struct.ocfs2_dlm_lksb*, %struct.ocfs2_dlm_lksb** %5, align 8
  %20 = call i32 @dlmunlock(i32 %14, i32* %16, i32 %17, i32 %18, %struct.ocfs2_dlm_lksb* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @dlm_status_to_errno(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  ret i32 %23
}

declare dso_local i32 @flags_to_o2dlm(i32) #1

declare dso_local i32 @dlmunlock(i32, i32*, i32, i32, %struct.ocfs2_dlm_lksb*) #1

declare dso_local i32 @dlm_status_to_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
