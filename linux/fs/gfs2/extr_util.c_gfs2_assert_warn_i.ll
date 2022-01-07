; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_util.c_gfs2_assert_warn_i.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_util.c_gfs2_assert_warn_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@jiffies = common dso_local global i64 0, align 8
@gt_complain_secs = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@GFS2_ERRORS_WITHDRAW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [71 x i8] c"warning: assertion \22%s\22 failed at function = %s, file = %s, line = %u\0A\00", align 1
@GFS2_ERRORS_PANIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [100 x i8] c"GFS2: fsid=%s: warning: assertion \22%s\22 failed\0AGFS2: fsid=%s:   function = %s, file = %s, line = %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_assert_warn_i(%struct.gfs2_sbd* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_sbd*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load i64, i64* @jiffies, align 8
  %13 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %14 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %17 = load i32, i32* @gt_complain_secs, align 4
  %18 = call i32 @gfs2_tune_get(%struct.gfs2_sbd* %16, i32 %17)
  %19 = load i32, i32* @HZ, align 4
  %20 = mul nsw i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %15, %21
  %23 = call i64 @time_before(i64 %12, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  store i32 -2, i32* %6, align 4
  br label %73

26:                                               ; preds = %5
  %27 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %28 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @GFS2_ERRORS_WITHDRAW, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %26
  %34 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @fs_warn(%struct.gfs2_sbd* %34, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i8* %35, i8* %36, i8* %37, i32 %38)
  br label %40

40:                                               ; preds = %33, %26
  %41 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %42 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = call i32 (...) @BUG()
  br label %50

48:                                               ; preds = %40
  %49 = call i32 (...) @dump_stack()
  br label %50

50:                                               ; preds = %48, %46
  %51 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %52 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @GFS2_ERRORS_PANIC, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %50
  %58 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %59 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %63 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @panic(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.1, i64 0, i64 0), i32 %60, i8* %61, i32 %64, i8* %65, i8* %66, i32 %67)
  br label %69

69:                                               ; preds = %57, %50
  %70 = load i64, i64* @jiffies, align 8
  %71 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %72 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  store i32 -1, i32* %6, align 4
  br label %73

73:                                               ; preds = %69, %25
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @gfs2_tune_get(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @fs_warn(%struct.gfs2_sbd*, i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @panic(i8*, i32, i8*, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
