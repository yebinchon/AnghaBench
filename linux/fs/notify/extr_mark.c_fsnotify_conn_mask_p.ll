; ModuleID = '/home/carl/AnghaBench/linux/fs/notify/extr_mark.c_fsnotify_conn_mask_p.c'
source_filename = "/home/carl/AnghaBench/linux/fs/notify/extr_mark.c_fsnotify_conn_mask_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsnotify_mark_connector = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@FSNOTIFY_OBJ_TYPE_INODE = common dso_local global i64 0, align 8
@FSNOTIFY_OBJ_TYPE_VFSMOUNT = common dso_local global i64 0, align 8
@FSNOTIFY_OBJ_TYPE_SB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.fsnotify_mark_connector*)* @fsnotify_conn_mask_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fsnotify_conn_mask_p(%struct.fsnotify_mark_connector* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.fsnotify_mark_connector*, align 8
  store %struct.fsnotify_mark_connector* %0, %struct.fsnotify_mark_connector** %3, align 8
  %4 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** %3, align 8
  %5 = getelementptr inbounds %struct.fsnotify_mark_connector, %struct.fsnotify_mark_connector* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @FSNOTIFY_OBJ_TYPE_INODE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** %3, align 8
  %11 = call %struct.TYPE_6__* @fsnotify_conn_inode(%struct.fsnotify_mark_connector* %10)
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i32* %12, i32** %2, align 8
  br label %36

13:                                               ; preds = %1
  %14 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** %3, align 8
  %15 = getelementptr inbounds %struct.fsnotify_mark_connector, %struct.fsnotify_mark_connector* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @FSNOTIFY_OBJ_TYPE_VFSMOUNT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** %3, align 8
  %21 = call %struct.TYPE_5__* @fsnotify_conn_mount(%struct.fsnotify_mark_connector* %20)
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32* %22, i32** %2, align 8
  br label %36

23:                                               ; preds = %13
  %24 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** %3, align 8
  %25 = getelementptr inbounds %struct.fsnotify_mark_connector, %struct.fsnotify_mark_connector* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @FSNOTIFY_OBJ_TYPE_SB, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** %3, align 8
  %31 = call %struct.TYPE_4__* @fsnotify_conn_sb(%struct.fsnotify_mark_connector* %30)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32* %32, i32** %2, align 8
  br label %36

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33
  br label %35

35:                                               ; preds = %34
  store i32* null, i32** %2, align 8
  br label %36

36:                                               ; preds = %35, %29, %19, %9
  %37 = load i32*, i32** %2, align 8
  ret i32* %37
}

declare dso_local %struct.TYPE_6__* @fsnotify_conn_inode(%struct.fsnotify_mark_connector*) #1

declare dso_local %struct.TYPE_5__* @fsnotify_conn_mount(%struct.fsnotify_mark_connector*) #1

declare dso_local %struct.TYPE_4__* @fsnotify_conn_sb(%struct.fsnotify_mark_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
