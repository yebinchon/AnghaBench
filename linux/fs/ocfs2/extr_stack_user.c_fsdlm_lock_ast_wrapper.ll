; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_stack_user.c_fsdlm_lock_ast_wrapper.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_stack_user.c_fsdlm_lock_ast_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_dlm_lksb = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.ocfs2_dlm_lksb*)*, i32 (%struct.ocfs2_dlm_lksb*, i32)* }
%struct.TYPE_4__ = type { i32 }

@DLM_EUNLOCK = common dso_local global i32 0, align 4
@DLM_ECANCEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @fsdlm_lock_ast_wrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsdlm_lock_ast_wrapper(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ocfs2_dlm_lksb*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.ocfs2_dlm_lksb*
  store %struct.ocfs2_dlm_lksb* %6, %struct.ocfs2_dlm_lksb** %3, align 8
  %7 = load %struct.ocfs2_dlm_lksb*, %struct.ocfs2_dlm_lksb** %3, align 8
  %8 = getelementptr inbounds %struct.ocfs2_dlm_lksb, %struct.ocfs2_dlm_lksb* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @DLM_EUNLOCK, align 4
  %13 = sub nsw i32 0, %12
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @DLM_ECANCEL, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %15, %1
  %21 = load %struct.ocfs2_dlm_lksb*, %struct.ocfs2_dlm_lksb** %3, align 8
  %22 = getelementptr inbounds %struct.ocfs2_dlm_lksb, %struct.ocfs2_dlm_lksb* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32 (%struct.ocfs2_dlm_lksb*, i32)*, i32 (%struct.ocfs2_dlm_lksb*, i32)** %26, align 8
  %28 = load %struct.ocfs2_dlm_lksb*, %struct.ocfs2_dlm_lksb** %3, align 8
  %29 = call i32 %27(%struct.ocfs2_dlm_lksb* %28, i32 0)
  br label %40

30:                                               ; preds = %15
  %31 = load %struct.ocfs2_dlm_lksb*, %struct.ocfs2_dlm_lksb** %3, align 8
  %32 = getelementptr inbounds %struct.ocfs2_dlm_lksb, %struct.ocfs2_dlm_lksb* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32 (%struct.ocfs2_dlm_lksb*)*, i32 (%struct.ocfs2_dlm_lksb*)** %36, align 8
  %38 = load %struct.ocfs2_dlm_lksb*, %struct.ocfs2_dlm_lksb** %3, align 8
  %39 = call i32 %37(%struct.ocfs2_dlm_lksb* %38)
  br label %40

40:                                               ; preds = %30, %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
