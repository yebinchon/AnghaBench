; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_util.c_gfs2_io_error_bh_i.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_util.c_gfs2_io_error_bh_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32 }
%struct.buffer_head = type { i64 }

@SDF_WITHDRAWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"fatal: I/O error\0A  block = %llu\0A  function = %s, file = %s, line = %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_io_error_bh_i(%struct.gfs2_sbd* %0, %struct.buffer_head* %1, i8* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.gfs2_sbd*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %7, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* @SDF_WITHDRAWN, align 4
  %14 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %15 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %14, i32 0, i32 0
  %16 = call i32 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %6
  %19 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %20 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %21 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @fs_err(%struct.gfs2_sbd* %19, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i64 %22, i8* %23, i8* %24, i32 %25)
  br label %27

27:                                               ; preds = %18, %6
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %32 = call i32 @gfs2_lm_withdraw(%struct.gfs2_sbd* %31, i32* null)
  br label %33

33:                                               ; preds = %30, %27
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @fs_err(%struct.gfs2_sbd*, i8*, i64, i8*, i8*, i32) #1

declare dso_local i32 @gfs2_lm_withdraw(%struct.gfs2_sbd*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
