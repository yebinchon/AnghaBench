; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_stackglue.c_ocfs2_cluster_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_stackglue.c_ocfs2_cluster_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ocfs2_cluster_connection*)* }
%struct.ocfs2_cluster_connection = type { i32 }

@active_stack = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_cluster_disconnect(%struct.ocfs2_cluster_connection* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_cluster_connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ocfs2_cluster_connection* %0, %struct.ocfs2_cluster_connection** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %3, align 8
  %7 = icmp eq %struct.ocfs2_cluster_connection* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @active_stack, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32 (%struct.ocfs2_cluster_connection*)*, i32 (%struct.ocfs2_cluster_connection*)** %13, align 8
  %15 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %3, align 8
  %16 = call i32 %14(%struct.ocfs2_cluster_connection* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %2
  %20 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %3, align 8
  %21 = call i32 @kfree(%struct.ocfs2_cluster_connection* %20)
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = call i32 (...) @ocfs2_stack_driver_put()
  br label %26

26:                                               ; preds = %24, %19
  br label %27

27:                                               ; preds = %26, %2
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kfree(%struct.ocfs2_cluster_connection*) #1

declare dso_local i32 @ocfs2_stack_driver_put(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
