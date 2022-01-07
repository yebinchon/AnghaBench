; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_quotad_error.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_quotad_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32, i32, i32 }

@EROFS = common dso_local global i32 0, align 4
@SDF_WITHDRAWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"gfs2_quotad: %s error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_sbd*, i8*, i32)* @quotad_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quotad_error(%struct.gfs2_sbd* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @EROFS, align 4
  %12 = sub nsw i32 0, %11
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %3
  br label %32

15:                                               ; preds = %9
  %16 = load i32, i32* @SDF_WITHDRAWN, align 4
  %17 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %18 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %17, i32 0, i32 2
  %19 = call i32 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %15
  %22 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @fs_err(%struct.gfs2_sbd* %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %28 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %30 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %29, i32 0, i32 1
  %31 = call i32 @wake_up(i32* %30)
  br label %32

32:                                               ; preds = %14, %21, %15
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @fs_err(%struct.gfs2_sbd*, i8*, i8*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
