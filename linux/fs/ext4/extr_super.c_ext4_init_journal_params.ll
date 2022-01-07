; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_init_journal_params.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_init_journal_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.ext4_sb_info = type { i32, i32, i32 }

@BARRIER = common dso_local global i32 0, align 4
@JBD2_BARRIER = common dso_local global i32 0, align 4
@DATA_ERR_ABORT = common dso_local global i32 0, align 4
@JBD2_ABORT_ON_SYNCDATA_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, %struct.TYPE_3__*)* @ext4_init_journal_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_init_journal_params(%struct.super_block* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.ext4_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %6 = load %struct.super_block*, %struct.super_block** %3, align 8
  %7 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %6)
  store %struct.ext4_sb_info* %7, %struct.ext4_sb_info** %5, align 8
  %8 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %9 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 4
  %13 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %14 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %19 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i32 @write_lock(i32* %24)
  %26 = load %struct.super_block*, %struct.super_block** %3, align 8
  %27 = load i32, i32* @BARRIER, align 4
  %28 = call i64 @test_opt(%struct.super_block* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load i32, i32* @JBD2_BARRIER, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %43

36:                                               ; preds = %2
  %37 = load i32, i32* @JBD2_BARRIER, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %36, %30
  %44 = load %struct.super_block*, %struct.super_block** %3, align 8
  %45 = load i32, i32* @DATA_ERR_ABORT, align 4
  %46 = call i64 @test_opt(%struct.super_block* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i32, i32* @JBD2_ABORT_ON_SYNCDATA_ERR, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %61

54:                                               ; preds = %43
  %55 = load i32, i32* @JBD2_ABORT_ON_SYNCDATA_ERR, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %54, %48
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = call i32 @write_unlock(i32* %63)
  ret void
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i64 @test_opt(%struct.super_block*, i32) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
