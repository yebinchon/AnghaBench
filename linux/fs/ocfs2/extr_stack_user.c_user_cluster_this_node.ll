; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_stack_user.c_user_cluster_this_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_stack_user.c_user_cluster_this_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_cluster_connection = type { %struct.ocfs2_live_connection* }
%struct.ocfs2_live_connection = type { i64, i32 }

@WITH_CONTROLD = common dso_local global i64 0, align 8
@NO_CONTROLD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_cluster_connection*, i32*)* @user_cluster_this_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @user_cluster_this_node(%struct.ocfs2_cluster_connection* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocfs2_cluster_connection*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_live_connection*, align 8
  store %struct.ocfs2_cluster_connection* %0, %struct.ocfs2_cluster_connection** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %4, align 8
  %9 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %8, i32 0, i32 0
  %10 = load %struct.ocfs2_live_connection*, %struct.ocfs2_live_connection** %9, align 8
  store %struct.ocfs2_live_connection* %10, %struct.ocfs2_live_connection** %7, align 8
  %11 = load %struct.ocfs2_live_connection*, %struct.ocfs2_live_connection** %7, align 8
  %12 = getelementptr inbounds %struct.ocfs2_live_connection, %struct.ocfs2_live_connection* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @WITH_CONTROLD, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 (...) @ocfs2_control_get_this_node()
  store i32 %17, i32* %6, align 4
  br label %32

18:                                               ; preds = %2
  %19 = load %struct.ocfs2_live_connection*, %struct.ocfs2_live_connection** %7, align 8
  %20 = getelementptr inbounds %struct.ocfs2_live_connection, %struct.ocfs2_live_connection* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NO_CONTROLD, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.ocfs2_live_connection*, %struct.ocfs2_live_connection** %7, align 8
  %26 = getelementptr inbounds %struct.ocfs2_live_connection, %struct.ocfs2_live_connection* %25, i32 0, i32 1
  %27 = call i32 @atomic_read(i32* %26)
  store i32 %27, i32* %6, align 4
  br label %31

28:                                               ; preds = %18
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %28, %24
  br label %32

32:                                               ; preds = %31, %16
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %40

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  %39 = load i32*, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %37, %35
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @ocfs2_control_get_this_node(...) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
