; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_sys.c_statfs_sync_store.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_sys.c_statfs_sync_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, i8*, i64)* @statfs_sync_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @statfs_sync_store(%struct.gfs2_sbd* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %11 = call i32 @capable(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EPERM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %36

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @kstrtoint(i8* %17, i32 0, i32* %9)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %36

23:                                               ; preds = %16
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %36

29:                                               ; preds = %23
  %30 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %31 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @gfs2_statfs_sync(i32 %32, i32 0)
  %34 = load i64, i64* %7, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %29, %26, %21, %13
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @kstrtoint(i8*, i32, i32*) #1

declare dso_local i32 @gfs2_statfs_sync(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
