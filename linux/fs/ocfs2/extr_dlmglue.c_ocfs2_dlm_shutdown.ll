; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_dlm_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_dlm_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32*, %struct.TYPE_2__, i32, i32, i32, i32* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_dlm_shutdown(%struct.ocfs2_super* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %6 = call i32 @ocfs2_drop_osb_locks(%struct.ocfs2_super* %5)
  %7 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %8 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %7, i32 0, i32 5
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %13 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %12, i32 0, i32 5
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @kthread_stop(i32* %14)
  %16 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %17 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %16, i32 0, i32 5
  store i32* null, i32** %17, align 8
  br label %18

18:                                               ; preds = %11, %2
  %19 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %20 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %19, i32 0, i32 4
  %21 = call i32 @ocfs2_lock_res_free(i32* %20)
  %22 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %23 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %22, i32 0, i32 3
  %24 = call i32 @ocfs2_lock_res_free(i32* %23)
  %25 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %26 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %25, i32 0, i32 2
  %27 = call i32 @ocfs2_lock_res_free(i32* %26)
  %28 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %29 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @ocfs2_lock_res_free(i32* %30)
  %32 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %33 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @ocfs2_cluster_disconnect(i32* %34, i32 %35)
  %37 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %38 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  %39 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %40 = call i32 @ocfs2_dlm_shutdown_debug(%struct.ocfs2_super* %39)
  ret void
}

declare dso_local i32 @ocfs2_drop_osb_locks(%struct.ocfs2_super*) #1

declare dso_local i32 @kthread_stop(i32*) #1

declare dso_local i32 @ocfs2_lock_res_free(i32*) #1

declare dso_local i32 @ocfs2_cluster_disconnect(i32*, i32) #1

declare dso_local i32 @ocfs2_dlm_shutdown_debug(%struct.ocfs2_super*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
