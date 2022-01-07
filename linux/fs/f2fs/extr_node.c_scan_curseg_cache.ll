; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_scan_curseg_cache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_scan_curseg_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.curseg_info = type { i32, %struct.f2fs_journal* }
%struct.f2fs_journal = type { i32 }
%struct.TYPE_2__ = type { i32 }

@CURSEG_HOT_DATA = common dso_local global i32 0, align 4
@NULL_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*)* @scan_curseg_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_curseg_cache(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca %struct.f2fs_sb_info*, align 8
  %3 = alloca %struct.curseg_info*, align 8
  %4 = alloca %struct.f2fs_journal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_2__, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %2, align 8
  %9 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %10 = load i32, i32* @CURSEG_HOT_DATA, align 4
  %11 = call %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info* %9, i32 %10)
  store %struct.curseg_info* %11, %struct.curseg_info** %3, align 8
  %12 = load %struct.curseg_info*, %struct.curseg_info** %3, align 8
  %13 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %12, i32 0, i32 1
  %14 = load %struct.f2fs_journal*, %struct.f2fs_journal** %13, align 8
  store %struct.f2fs_journal* %14, %struct.f2fs_journal** %4, align 8
  %15 = load %struct.curseg_info*, %struct.curseg_info** %3, align 8
  %16 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %15, i32 0, i32 0
  %17 = call i32 @down_read(i32* %16)
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %48, %1
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.f2fs_journal*, %struct.f2fs_journal** %4, align 8
  %21 = call i32 @nats_in_cursum(%struct.f2fs_journal* %20)
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %51

23:                                               ; preds = %18
  %24 = load %struct.f2fs_journal*, %struct.f2fs_journal** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @nat_in_journal(%struct.f2fs_journal* %24, i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @le32_to_cpu(i32 %29)
  %31 = ptrtoint i8* %30 to i64
  store i64 %31, i64* %6, align 8
  %32 = load %struct.f2fs_journal*, %struct.f2fs_journal** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @nid_in_journal(%struct.f2fs_journal* %32, i32 %33)
  %35 = call i8* @le32_to_cpu(i32 %34)
  store i8* %35, i8** %7, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @NULL_ADDR, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %23
  %40 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @add_free_nid(%struct.f2fs_sb_info* %40, i8* %41, i32 1, i32 0)
  br label %47

43:                                               ; preds = %23
  %44 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @remove_free_nid(%struct.f2fs_sb_info* %44, i8* %45)
  br label %47

47:                                               ; preds = %43, %39
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %18

51:                                               ; preds = %18
  %52 = load %struct.curseg_info*, %struct.curseg_info** %3, align 8
  %53 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %52, i32 0, i32 0
  %54 = call i32 @up_read(i32* %53)
  ret void
}

declare dso_local %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @nats_in_cursum(%struct.f2fs_journal*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @nat_in_journal(%struct.f2fs_journal*, i32) #1

declare dso_local i32 @nid_in_journal(%struct.f2fs_journal*, i32) #1

declare dso_local i32 @add_free_nid(%struct.f2fs_sb_info*, i8*, i32, i32) #1

declare dso_local i32 @remove_free_nid(%struct.f2fs_sb_info*, i8*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
