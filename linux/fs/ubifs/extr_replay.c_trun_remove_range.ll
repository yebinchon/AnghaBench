; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_replay.c_trun_remove_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_replay.c_trun_remove_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.replay_entry = type { i32, i32, i32 }
%union.ubifs_key = type { i32 }

@UBIFS_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.replay_entry*)* @trun_remove_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trun_remove_range(%struct.ubifs_info* %0, %struct.replay_entry* %1) #0 {
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.replay_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.ubifs_key, align 4
  %8 = alloca %union.ubifs_key, align 4
  %9 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store %struct.replay_entry* %1, %struct.replay_entry** %4, align 8
  %10 = load %struct.replay_entry*, %struct.replay_entry** %4, align 8
  %11 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %14 = sdiv i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load %struct.replay_entry*, %struct.replay_entry** %4, align 8
  %16 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %19 = sub nsw i32 %18, 1
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %22, %2
  %26 = load %struct.replay_entry*, %struct.replay_entry** %4, align 8
  %27 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %30 = sdiv i32 %28, %29
  store i32 %30, i32* %6, align 4
  %31 = load %struct.replay_entry*, %struct.replay_entry** %4, align 8
  %32 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %35 = sub nsw i32 %34, 1
  %36 = and i32 %33, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = load i32, i32* %6, align 4
  %40 = sub i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %38, %25
  %42 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %43 = load %struct.replay_entry*, %struct.replay_entry** %4, align 8
  %44 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %43, i32 0, i32 2
  %45 = call i32 @key_inum(%struct.ubifs_info* %42, i32* %44)
  store i32 %45, i32* %9, align 4
  %46 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @data_key_init(%struct.ubifs_info* %46, %union.ubifs_key* %7, i32 %47, i32 %48)
  %50 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @data_key_init(%struct.ubifs_info* %50, %union.ubifs_key* %8, i32 %51, i32 %52)
  %54 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %55 = call i32 @ubifs_tnc_remove_range(%struct.ubifs_info* %54, %union.ubifs_key* %7, %union.ubifs_key* %8)
  ret i32 %55
}

declare dso_local i32 @key_inum(%struct.ubifs_info*, i32*) #1

declare dso_local i32 @data_key_init(%struct.ubifs_info*, %union.ubifs_key*, i32, i32) #1

declare dso_local i32 @ubifs_tnc_remove_range(%struct.ubifs_info*, %union.ubifs_key*, %union.ubifs_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
