; ModuleID = '/home/carl/AnghaBench/linux/ipc/extr_mqueue.c_mqueue_init_fs_context.c'
source_filename = "/home/carl/AnghaBench/linux/ipc/extr_mqueue.c_mqueue_init_fs_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.fs_context = type { i32*, %struct.mqueue_fs_context*, i32 }
%struct.mqueue_fs_context = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@mqueue_fs_context_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*)* @mqueue_init_fs_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mqueue_init_fs_context(%struct.fs_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fs_context*, align 8
  %4 = alloca %struct.mqueue_fs_context*, align 8
  store %struct.fs_context* %0, %struct.fs_context** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.mqueue_fs_context* @kzalloc(i32 8, i32 %5)
  store %struct.mqueue_fs_context* %6, %struct.mqueue_fs_context** %4, align 8
  %7 = load %struct.mqueue_fs_context*, %struct.mqueue_fs_context** %4, align 8
  %8 = icmp ne %struct.mqueue_fs_context* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %38

12:                                               ; preds = %1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_5__* @get_ipc_ns(i32 %17)
  %19 = load %struct.mqueue_fs_context*, %struct.mqueue_fs_context** %4, align 8
  %20 = getelementptr inbounds %struct.mqueue_fs_context, %struct.mqueue_fs_context* %19, i32 0, i32 0
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %20, align 8
  %21 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %22 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @put_user_ns(i32 %23)
  %25 = load %struct.mqueue_fs_context*, %struct.mqueue_fs_context** %4, align 8
  %26 = getelementptr inbounds %struct.mqueue_fs_context, %struct.mqueue_fs_context* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @get_user_ns(i32 %29)
  %31 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %32 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.mqueue_fs_context*, %struct.mqueue_fs_context** %4, align 8
  %34 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %35 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %34, i32 0, i32 1
  store %struct.mqueue_fs_context* %33, %struct.mqueue_fs_context** %35, align 8
  %36 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %37 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %36, i32 0, i32 0
  store i32* @mqueue_fs_context_ops, i32** %37, align 8
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %12, %9
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.mqueue_fs_context* @kzalloc(i32, i32) #1

declare dso_local %struct.TYPE_5__* @get_ipc_ns(i32) #1

declare dso_local i32 @put_user_ns(i32) #1

declare dso_local i32 @get_user_ns(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
