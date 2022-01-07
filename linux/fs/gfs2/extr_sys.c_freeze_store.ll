; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_sys.c_freeze_store.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_sys.c_freeze_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"freeze %d error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, i8*, i64)* @freeze_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @freeze_store(%struct.gfs2_sbd* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @kstrtoint(i8* %10, i32 0, i32* %9)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %50

16:                                               ; preds = %3
  %17 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %18 = call i32 @capable(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @EPERM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %50

23:                                               ; preds = %16
  %24 = load i32, i32* %9, align 4
  switch i32 %24, label %35 [
    i32 0, label %25
    i32 1, label %30
  ]

25:                                               ; preds = %23
  %26 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %27 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @thaw_super(i32 %28)
  store i32 %29, i32* %8, align 4
  br label %38

30:                                               ; preds = %23
  %31 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %32 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @freeze_super(i32 %33)
  store i32 %34, i32* %8, align 4
  br label %38

35:                                               ; preds = %23
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %50

38:                                               ; preds = %30, %25
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @fs_warn(%struct.gfs2_sbd* %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %50

47:                                               ; preds = %38
  %48 = load i64, i64* %7, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %47, %41, %35, %20, %14
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @kstrtoint(i8*, i32, i32*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @thaw_super(i32) #1

declare dso_local i32 @freeze_super(i32) #1

declare dso_local i32 @fs_warn(%struct.gfs2_sbd*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
