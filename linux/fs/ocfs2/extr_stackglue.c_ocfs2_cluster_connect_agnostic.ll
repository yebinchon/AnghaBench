; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_stackglue.c_ocfs2_cluster_connect_agnostic.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_stackglue.c_ocfs2_cluster_connect_agnostic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_locking_protocol = type { i32 }
%struct.ocfs2_cluster_connection = type { i32 }

@cluster_stack_name = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_cluster_connect_agnostic(i8* %0, i32 %1, %struct.ocfs2_locking_protocol* %2, void (i32, i8*)* %3, i8* %4, %struct.ocfs2_cluster_connection** %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocfs2_locking_protocol*, align 8
  %10 = alloca void (i32, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ocfs2_cluster_connection**, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ocfs2_locking_protocol* %2, %struct.ocfs2_locking_protocol** %9, align 8
  store void (i32, i8*)* %3, void (i32, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  store %struct.ocfs2_cluster_connection** %5, %struct.ocfs2_cluster_connection*** %12, align 8
  store i8* null, i8** %13, align 8
  %14 = load i8*, i8** @cluster_stack_name, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %6
  %19 = load i8*, i8** @cluster_stack_name, align 8
  store i8* %19, i8** %13, align 8
  br label %20

20:                                               ; preds = %18, %6
  %21 = load i8*, i8** %13, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.ocfs2_locking_protocol*, %struct.ocfs2_locking_protocol** %9, align 8
  %25 = load void (i32, i8*)*, void (i32, i8*)** %10, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = load %struct.ocfs2_cluster_connection**, %struct.ocfs2_cluster_connection*** %12, align 8
  %28 = call i32 @ocfs2_cluster_connect(i8* %21, i32* null, i32 0, i8* %22, i32 %23, %struct.ocfs2_locking_protocol* %24, void (i32, i8*)* %25, i8* %26, %struct.ocfs2_cluster_connection** %27)
  ret i32 %28
}

declare dso_local i32 @ocfs2_cluster_connect(i8*, i32*, i32, i8*, i32, %struct.ocfs2_locking_protocol*, void (i32, i8*)*, i8*, %struct.ocfs2_cluster_connection**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
