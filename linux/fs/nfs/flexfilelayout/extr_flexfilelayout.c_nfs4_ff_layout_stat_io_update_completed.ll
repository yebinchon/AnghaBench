; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_nfs4_ff_layout_stat_io_update_completed.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_nfs4_ff_layout_stat_io_update_completed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_ff_layoutstat = type { i32, %struct.nfs4_ff_io_stat }
%struct.nfs4_ff_io_stat = type { i8*, i8*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_ff_layoutstat*, i64, i64, i32, i32)* @nfs4_ff_layout_stat_io_update_completed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_ff_layout_stat_io_update_completed(%struct.nfs4_ff_layoutstat* %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.nfs4_ff_layoutstat*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nfs4_ff_io_stat*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nfs4_ff_layoutstat* %0, %struct.nfs4_ff_layoutstat** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.nfs4_ff_layoutstat*, %struct.nfs4_ff_layoutstat** %6, align 8
  %15 = getelementptr inbounds %struct.nfs4_ff_layoutstat, %struct.nfs4_ff_layoutstat* %14, i32 0, i32 1
  store %struct.nfs4_ff_io_stat* %15, %struct.nfs4_ff_io_stat** %11, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @ktime_sub(i32 %16, i32 %17)
  store i32 %18, i32* %12, align 4
  %19 = load %struct.nfs4_ff_io_stat*, %struct.nfs4_ff_io_stat** %11, align 8
  %20 = getelementptr inbounds %struct.nfs4_ff_io_stat, %struct.nfs4_ff_io_stat* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.nfs4_ff_io_stat*, %struct.nfs4_ff_io_stat** %11, align 8
  %25 = getelementptr inbounds %struct.nfs4_ff_io_stat, %struct.nfs4_ff_io_stat* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %23
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %25, align 4
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = sub nsw i64 %30, %31
  %33 = load %struct.nfs4_ff_io_stat*, %struct.nfs4_ff_io_stat** %11, align 8
  %34 = getelementptr inbounds %struct.nfs4_ff_io_stat, %struct.nfs4_ff_io_stat* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %32
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %34, align 8
  %39 = load %struct.nfs4_ff_layoutstat*, %struct.nfs4_ff_layoutstat** %6, align 8
  %40 = getelementptr inbounds %struct.nfs4_ff_layoutstat, %struct.nfs4_ff_layoutstat* %39, i32 0, i32 0
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @nfs4_ff_end_busy_timer(i32* %40, i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load %struct.nfs4_ff_io_stat*, %struct.nfs4_ff_io_stat** %11, align 8
  %44 = getelementptr inbounds %struct.nfs4_ff_io_stat, %struct.nfs4_ff_io_stat* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* %13, align 4
  %47 = call i8* @ktime_add(i8* %45, i32 %46)
  %48 = load %struct.nfs4_ff_io_stat*, %struct.nfs4_ff_io_stat** %11, align 8
  %49 = getelementptr inbounds %struct.nfs4_ff_io_stat, %struct.nfs4_ff_io_stat* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load %struct.nfs4_ff_io_stat*, %struct.nfs4_ff_io_stat** %11, align 8
  %51 = getelementptr inbounds %struct.nfs4_ff_io_stat, %struct.nfs4_ff_io_stat* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i8* @ktime_add(i8* %52, i32 %53)
  %55 = load %struct.nfs4_ff_io_stat*, %struct.nfs4_ff_io_stat** %11, align 8
  %56 = getelementptr inbounds %struct.nfs4_ff_io_stat, %struct.nfs4_ff_io_stat* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  ret void
}

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @nfs4_ff_end_busy_timer(i32*, i32) #1

declare dso_local i8* @ktime_add(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
