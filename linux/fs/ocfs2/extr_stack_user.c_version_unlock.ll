; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_stack_user.c_version_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_stack_user.c_version_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_cluster_connection = type { %struct.ocfs2_live_connection* }
%struct.ocfs2_live_connection = type { i32 }

@VERSION_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_cluster_connection*)* @version_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @version_unlock(%struct.ocfs2_cluster_connection* %0) #0 {
  %2 = alloca %struct.ocfs2_cluster_connection*, align 8
  %3 = alloca %struct.ocfs2_live_connection*, align 8
  store %struct.ocfs2_cluster_connection* %0, %struct.ocfs2_cluster_connection** %2, align 8
  %4 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %2, align 8
  %5 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %4, i32 0, i32 0
  %6 = load %struct.ocfs2_live_connection*, %struct.ocfs2_live_connection** %5, align 8
  store %struct.ocfs2_live_connection* %6, %struct.ocfs2_live_connection** %3, align 8
  %7 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %2, align 8
  %8 = load %struct.ocfs2_live_connection*, %struct.ocfs2_live_connection** %3, align 8
  %9 = getelementptr inbounds %struct.ocfs2_live_connection, %struct.ocfs2_live_connection* %8, i32 0, i32 0
  %10 = load i32, i32* @VERSION_LOCK, align 4
  %11 = call i32 @sync_unlock(%struct.ocfs2_cluster_connection* %7, i32* %9, i32 %10)
  ret i32 %11
}

declare dso_local i32 @sync_unlock(%struct.ocfs2_cluster_connection*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
