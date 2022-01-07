; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_notify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { i32 }
%struct.fuse_copy_state = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fuse_conn*, i32, i32, %struct.fuse_copy_state*)* @fuse_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_notify(%struct.fuse_conn* %0, i32 %1, i32 %2, %struct.fuse_copy_state* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fuse_conn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fuse_copy_state*, align 8
  store %struct.fuse_conn* %0, %struct.fuse_conn** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.fuse_copy_state* %3, %struct.fuse_copy_state** %9, align 8
  %10 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %9, align 8
  %11 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %43 [
    i32 130, label %13
    i32 131, label %18
    i32 132, label %23
    i32 128, label %28
    i32 129, label %33
    i32 133, label %38
  ]

13:                                               ; preds = %4
  %14 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %9, align 8
  %17 = call i32 @fuse_notify_poll(%struct.fuse_conn* %14, i32 %15, %struct.fuse_copy_state* %16)
  store i32 %17, i32* %5, align 4
  br label %48

18:                                               ; preds = %4
  %19 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %9, align 8
  %22 = call i32 @fuse_notify_inval_inode(%struct.fuse_conn* %19, i32 %20, %struct.fuse_copy_state* %21)
  store i32 %22, i32* %5, align 4
  br label %48

23:                                               ; preds = %4
  %24 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %9, align 8
  %27 = call i32 @fuse_notify_inval_entry(%struct.fuse_conn* %24, i32 %25, %struct.fuse_copy_state* %26)
  store i32 %27, i32* %5, align 4
  br label %48

28:                                               ; preds = %4
  %29 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %9, align 8
  %32 = call i32 @fuse_notify_store(%struct.fuse_conn* %29, i32 %30, %struct.fuse_copy_state* %31)
  store i32 %32, i32* %5, align 4
  br label %48

33:                                               ; preds = %4
  %34 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %9, align 8
  %37 = call i32 @fuse_notify_retrieve(%struct.fuse_conn* %34, i32 %35, %struct.fuse_copy_state* %36)
  store i32 %37, i32* %5, align 4
  br label %48

38:                                               ; preds = %4
  %39 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %9, align 8
  %42 = call i32 @fuse_notify_delete(%struct.fuse_conn* %39, i32 %40, %struct.fuse_copy_state* %41)
  store i32 %42, i32* %5, align 4
  br label %48

43:                                               ; preds = %4
  %44 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %9, align 8
  %45 = call i32 @fuse_copy_finish(%struct.fuse_copy_state* %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %43, %38, %33, %28, %23, %18, %13
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @fuse_notify_poll(%struct.fuse_conn*, i32, %struct.fuse_copy_state*) #1

declare dso_local i32 @fuse_notify_inval_inode(%struct.fuse_conn*, i32, %struct.fuse_copy_state*) #1

declare dso_local i32 @fuse_notify_inval_entry(%struct.fuse_conn*, i32, %struct.fuse_copy_state*) #1

declare dso_local i32 @fuse_notify_store(%struct.fuse_conn*, i32, %struct.fuse_copy_state*) #1

declare dso_local i32 @fuse_notify_retrieve(%struct.fuse_conn*, i32, %struct.fuse_copy_state*) #1

declare dso_local i32 @fuse_notify_delete(%struct.fuse_conn*, i32, %struct.fuse_copy_state*) #1

declare dso_local i32 @fuse_copy_finish(%struct.fuse_copy_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
