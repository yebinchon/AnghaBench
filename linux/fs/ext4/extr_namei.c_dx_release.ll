; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_dx_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_dx_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dx_frame = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.dx_root_info = type { i32 }
%struct.dx_root = type { %struct.dx_root_info }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dx_frame*)* @dx_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dx_release(%struct.dx_frame* %0) #0 {
  %2 = alloca %struct.dx_frame*, align 8
  %3 = alloca %struct.dx_root_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dx_frame* %0, %struct.dx_frame** %2, align 8
  %6 = load %struct.dx_frame*, %struct.dx_frame** %2, align 8
  %7 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %6, i64 0
  %8 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp eq %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %53

12:                                               ; preds = %1
  %13 = load %struct.dx_frame*, %struct.dx_frame** %2, align 8
  %14 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %13, i64 0
  %15 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.dx_root*
  %20 = getelementptr inbounds %struct.dx_root, %struct.dx_root* %19, i32 0, i32 0
  store %struct.dx_root_info* %20, %struct.dx_root_info** %3, align 8
  %21 = load %struct.dx_root_info*, %struct.dx_root_info** %3, align 8
  %22 = getelementptr inbounds %struct.dx_root_info, %struct.dx_root_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %50, %12
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ule i32 %25, %26
  br i1 %27, label %28, label %53

28:                                               ; preds = %24
  %29 = load %struct.dx_frame*, %struct.dx_frame** %2, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %29, i64 %31
  %33 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = icmp eq %struct.TYPE_2__* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %53

37:                                               ; preds = %28
  %38 = load %struct.dx_frame*, %struct.dx_frame** %2, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %38, i64 %40
  %42 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = call i32 @brelse(%struct.TYPE_2__* %43)
  %45 = load %struct.dx_frame*, %struct.dx_frame** %2, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %45, i64 %47
  %49 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %48, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %49, align 8
  br label %50

50:                                               ; preds = %37
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %24

53:                                               ; preds = %11, %36, %24
  ret void
}

declare dso_local i32 @brelse(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
