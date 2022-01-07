; ModuleID = '/home/carl/AnghaBench/linux/fs/notify/fanotify/extr_fanotify.h_fanotify_fid_equal.c'
source_filename = "/home/carl/AnghaBench/linux/fs/notify/fanotify/extr_fanotify.h_fanotify_fid_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fanotify_fid = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fanotify_fid*, %struct.fanotify_fid*, i32)* @fanotify_fid_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fanotify_fid_equal(%struct.fanotify_fid* %0, %struct.fanotify_fid* %1, i32 %2) #0 {
  %4 = alloca %struct.fanotify_fid*, align 8
  %5 = alloca %struct.fanotify_fid*, align 8
  %6 = alloca i32, align 4
  store %struct.fanotify_fid* %0, %struct.fanotify_fid** %4, align 8
  store %struct.fanotify_fid* %1, %struct.fanotify_fid** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.fanotify_fid*, %struct.fanotify_fid** %4, align 8
  %8 = getelementptr inbounds %struct.fanotify_fid, %struct.fanotify_fid* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.fanotify_fid*, %struct.fanotify_fid** %5, align 8
  %14 = getelementptr inbounds %struct.fanotify_fid, %struct.fanotify_fid* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %12, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %3
  %21 = load %struct.fanotify_fid*, %struct.fanotify_fid** %4, align 8
  %22 = getelementptr inbounds %struct.fanotify_fid, %struct.fanotify_fid* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.fanotify_fid*, %struct.fanotify_fid** %5, align 8
  %28 = getelementptr inbounds %struct.fanotify_fid, %struct.fanotify_fid* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %26, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %20
  %35 = load %struct.fanotify_fid*, %struct.fanotify_fid** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @fanotify_fid_fh(%struct.fanotify_fid* %35, i32 %36)
  %38 = load %struct.fanotify_fid*, %struct.fanotify_fid** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @fanotify_fid_fh(%struct.fanotify_fid* %38, i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @memcmp(i32 %37, i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %34, %20, %3
  %46 = phi i1 [ false, %20 ], [ false, %3 ], [ %44, %34 ]
  %47 = zext i1 %46 to i32
  ret i32 %47
}

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @fanotify_fid_fh(%struct.fanotify_fid*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
