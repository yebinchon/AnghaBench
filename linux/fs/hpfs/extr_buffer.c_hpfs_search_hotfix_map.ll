; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_buffer.c_hpfs_search_hotfix_map.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_buffer.c_hpfs_search_hotfix_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.hpfs_sb_info = type { i32, i64*, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hpfs_search_hotfix_map(%struct.super_block* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hpfs_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.super_block*, %struct.super_block** %4, align 8
  %9 = call %struct.hpfs_sb_info* @hpfs_sb(%struct.super_block* %8)
  store %struct.hpfs_sb_info* %9, %struct.hpfs_sb_info** %7, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %38, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %7, align 8
  %13 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %11, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %10
  %20 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %7, align 8
  %21 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %19
  %30 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %7, align 8
  %31 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %30, i32 0, i32 2
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %3, align 8
  br label %43

37:                                               ; preds = %19
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %10

41:                                               ; preds = %10
  %42 = load i64, i64* %5, align 8
  store i64 %42, i64* %3, align 8
  br label %43

43:                                               ; preds = %41, %29
  %44 = load i64, i64* %3, align 8
  ret i64 %44
}

declare dso_local %struct.hpfs_sb_info* @hpfs_sb(%struct.super_block*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
