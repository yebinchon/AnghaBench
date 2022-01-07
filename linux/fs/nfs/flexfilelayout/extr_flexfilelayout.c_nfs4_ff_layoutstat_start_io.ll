; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_nfs4_ff_layoutstat_start_io.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_nfs4_ff_layoutstat_start_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_ff_layout_mirror = type { i64, i8*, i32 }
%struct.nfs4_ff_layoutstat = type { i32 }
%struct.nfs4_flexfile_layout = type { i8* }

@FF_LAYOUTSTATS_REPORT_INTERVAL = common dso_local global i64 0, align 8
@layoutstats_timer = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layoutstat*, i8*)* @nfs4_ff_layoutstat_start_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_ff_layoutstat_start_io(%struct.nfs4_ff_layout_mirror* %0, %struct.nfs4_ff_layoutstat* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfs4_ff_layout_mirror*, align 8
  %6 = alloca %struct.nfs4_ff_layoutstat*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nfs4_flexfile_layout*, align 8
  store %struct.nfs4_ff_layout_mirror* %0, %struct.nfs4_ff_layout_mirror** %5, align 8
  store %struct.nfs4_ff_layoutstat* %1, %struct.nfs4_ff_layoutstat** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i64, i64* @FF_LAYOUTSTATS_REPORT_INTERVAL, align 8
  store i64 %10, i64* %8, align 8
  %11 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %5, align 8
  %12 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, %struct.nfs4_ff_layout_mirror* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.nfs4_flexfile_layout* @FF_LAYOUT_FROM_HDR(i32 %13)
  store %struct.nfs4_flexfile_layout* %14, %struct.nfs4_flexfile_layout** %9, align 8
  %15 = load %struct.nfs4_ff_layoutstat*, %struct.nfs4_ff_layoutstat** %6, align 8
  %16 = getelementptr inbounds %struct.nfs4_ff_layoutstat, %struct.nfs4_ff_layoutstat* %15, i32 0, i32 0
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @nfs4_ff_start_busy_timer(i32* %16, i8* %17)
  %19 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %5, align 8
  %20 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, %struct.nfs4_ff_layout_mirror* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %5, align 8
  %26 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, %struct.nfs4_ff_layout_mirror* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  br label %27

27:                                               ; preds = %23, %3
  %28 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %5, align 8
  %29 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, %struct.nfs4_ff_layout_mirror* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %5, align 8
  %34 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, %struct.nfs4_ff_layout_mirror* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = mul nsw i64 %35, 1000
  store i64 %36, i64* %8, align 8
  br label %44

37:                                               ; preds = %27
  %38 = load i64, i64* @layoutstats_timer, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i64, i64* @layoutstats_timer, align 8
  %42 = mul nsw i64 %41, 1000
  store i64 %42, i64* %8, align 8
  br label %43

43:                                               ; preds = %40, %37
  br label %44

44:                                               ; preds = %43, %32
  %45 = load i8*, i8** %7, align 8
  %46 = load %struct.nfs4_flexfile_layout*, %struct.nfs4_flexfile_layout** %9, align 8
  %47 = getelementptr inbounds %struct.nfs4_flexfile_layout, %struct.nfs4_flexfile_layout* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @ktime_sub(i8* %45, i8* %48)
  %50 = call i64 @ktime_to_ms(i32 %49)
  %51 = load i64, i64* %8, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = load i8*, i8** %7, align 8
  %55 = load %struct.nfs4_flexfile_layout*, %struct.nfs4_flexfile_layout** %9, align 8
  %56 = getelementptr inbounds %struct.nfs4_flexfile_layout, %struct.nfs4_flexfile_layout* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  store i32 1, i32* %4, align 4
  br label %58

57:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %53
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.nfs4_flexfile_layout* @FF_LAYOUT_FROM_HDR(i32) #1

declare dso_local i32 @nfs4_ff_start_busy_timer(i32*, i8*) #1

declare dso_local i64 @ktime_to_ms(i32) #1

declare dso_local i32 @ktime_sub(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
