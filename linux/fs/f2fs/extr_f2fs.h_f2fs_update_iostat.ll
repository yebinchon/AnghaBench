; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_f2fs_update_iostat.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_f2fs_update_iostat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32, i64*, i32 }

@APP_WRITE_IO = common dso_local global i32 0, align 4
@APP_DIRECT_IO = common dso_local global i32 0, align 4
@APP_BUFFERED_IO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*, i32, i64)* @f2fs_update_iostat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f2fs_update_iostat(%struct.f2fs_sb_info* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %8 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %57

12:                                               ; preds = %3
  %13 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %14 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %18 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %23, %16
  store i64 %24, i64* %22, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @APP_WRITE_IO, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %12
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @APP_DIRECT_IO, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %28, %12
  %33 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %34 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* @APP_WRITE_IO, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %41 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* @APP_DIRECT_IO, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %39, %46
  %48 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %49 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* @APP_BUFFERED_IO, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  store i64 %47, i64* %52, align 8
  br label %53

53:                                               ; preds = %32, %28
  %54 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %55 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock(i32* %55)
  br label %57

57:                                               ; preds = %53, %11
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
