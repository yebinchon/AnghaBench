; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_stack_user.c_user_recover_done.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_stack_user.c_user_recover_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_slot = type { i32, i32 }
%struct.ocfs2_cluster_connection = type { %struct.ocfs2_live_connection* }
%struct.ocfs2_live_connection = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.dlm_slot*, i32, i32, i32)* @user_recover_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @user_recover_done(i8* %0, %struct.dlm_slot* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dlm_slot*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ocfs2_cluster_connection*, align 8
  %12 = alloca %struct.ocfs2_live_connection*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.dlm_slot* %1, %struct.dlm_slot** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.ocfs2_cluster_connection*
  store %struct.ocfs2_cluster_connection* %15, %struct.ocfs2_cluster_connection** %11, align 8
  %16 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %11, align 8
  %17 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %16, i32 0, i32 0
  %18 = load %struct.ocfs2_live_connection*, %struct.ocfs2_live_connection** %17, align 8
  store %struct.ocfs2_live_connection* %18, %struct.ocfs2_live_connection** %12, align 8
  store i32 0, i32* %13, align 4
  br label %19

19:                                               ; preds = %43, %5
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %19
  %24 = load %struct.dlm_slot*, %struct.dlm_slot** %7, align 8
  %25 = load i32, i32* %13, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.dlm_slot, %struct.dlm_slot* %24, i64 %26
  %28 = getelementptr inbounds %struct.dlm_slot, %struct.dlm_slot* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %23
  %33 = load %struct.ocfs2_live_connection*, %struct.ocfs2_live_connection** %12, align 8
  %34 = getelementptr inbounds %struct.ocfs2_live_connection, %struct.ocfs2_live_connection* %33, i32 0, i32 2
  %35 = load %struct.dlm_slot*, %struct.dlm_slot** %7, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.dlm_slot, %struct.dlm_slot* %35, i64 %37
  %39 = getelementptr inbounds %struct.dlm_slot, %struct.dlm_slot* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @atomic_set(i32* %34, i32 %40)
  br label %46

42:                                               ; preds = %23
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %13, align 4
  br label %19

46:                                               ; preds = %32, %19
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.ocfs2_live_connection*, %struct.ocfs2_live_connection** %12, align 8
  %49 = getelementptr inbounds %struct.ocfs2_live_connection, %struct.ocfs2_live_connection* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ocfs2_live_connection*, %struct.ocfs2_live_connection** %12, align 8
  %51 = getelementptr inbounds %struct.ocfs2_live_connection, %struct.ocfs2_live_connection* %50, i32 0, i32 1
  %52 = call i32 @wake_up(i32* %51)
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
