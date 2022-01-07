; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_super.c_hfsplus_put_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_super.c_hfsplus_put_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32* }
%struct.hfsplus_sb_info = type { i32, i32*, i32*, i32, i32, i32, i32, i32, %struct.hfsplus_vh*, i32 }
%struct.hfsplus_vh = type { i32, i32 }

@SUPER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"hfsplus_put_super\0A\00", align 1
@HFSPLUS_VOL_UNMNT = common dso_local global i32 0, align 4
@HFSPLUS_VOL_INCNSTNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @hfsplus_put_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfsplus_put_super(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.hfsplus_sb_info*, align 8
  %4 = alloca %struct.hfsplus_vh*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %5 = load %struct.super_block*, %struct.super_block** %2, align 8
  %6 = call %struct.hfsplus_sb_info* @HFSPLUS_SB(%struct.super_block* %5)
  store %struct.hfsplus_sb_info* %6, %struct.hfsplus_sb_info** %3, align 8
  %7 = load i32, i32* @SUPER, align 4
  %8 = call i32 @hfs_dbg(i32 %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %3, align 8
  %10 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %9, i32 0, i32 9
  %11 = call i32 @cancel_delayed_work_sync(i32* %10)
  %12 = load %struct.super_block*, %struct.super_block** %2, align 8
  %13 = call i32 @sb_rdonly(%struct.super_block* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %42, label %15

15:                                               ; preds = %1
  %16 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %3, align 8
  %17 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %16, i32 0, i32 8
  %18 = load %struct.hfsplus_vh*, %struct.hfsplus_vh** %17, align 8
  %19 = icmp ne %struct.hfsplus_vh* %18, null
  br i1 %19, label %20, label %42

20:                                               ; preds = %15
  %21 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %3, align 8
  %22 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %21, i32 0, i32 8
  %23 = load %struct.hfsplus_vh*, %struct.hfsplus_vh** %22, align 8
  store %struct.hfsplus_vh* %23, %struct.hfsplus_vh** %4, align 8
  %24 = call i32 (...) @hfsp_now2mt()
  %25 = load %struct.hfsplus_vh*, %struct.hfsplus_vh** %4, align 8
  %26 = getelementptr inbounds %struct.hfsplus_vh, %struct.hfsplus_vh* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @HFSPLUS_VOL_UNMNT, align 4
  %28 = call i32 @cpu_to_be32(i32 %27)
  %29 = load %struct.hfsplus_vh*, %struct.hfsplus_vh** %4, align 8
  %30 = getelementptr inbounds %struct.hfsplus_vh, %struct.hfsplus_vh* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* @HFSPLUS_VOL_INCNSTNT, align 4
  %34 = xor i32 %33, -1
  %35 = call i32 @cpu_to_be32(i32 %34)
  %36 = load %struct.hfsplus_vh*, %struct.hfsplus_vh** %4, align 8
  %37 = getelementptr inbounds %struct.hfsplus_vh, %struct.hfsplus_vh* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.super_block*, %struct.super_block** %2, align 8
  %41 = call i32 @hfsplus_sync_fs(%struct.super_block* %40, i32 1)
  br label %42

42:                                               ; preds = %20, %15, %1
  %43 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %3, align 8
  %44 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @hfs_btree_close(i32 %45)
  %47 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %3, align 8
  %48 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @hfs_btree_close(i32 %49)
  %51 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %3, align 8
  %52 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @hfs_btree_close(i32 %53)
  %55 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %3, align 8
  %56 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @iput(i32 %57)
  %59 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %3, align 8
  %60 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @iput(i32 %61)
  %63 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %3, align 8
  %64 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @kfree(i32* %65)
  %67 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %3, align 8
  %68 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @kfree(i32* %69)
  %71 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %3, align 8
  %72 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @unload_nls(i32 %73)
  %75 = load %struct.super_block*, %struct.super_block** %2, align 8
  %76 = getelementptr inbounds %struct.super_block, %struct.super_block* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @kfree(i32* %77)
  %79 = load %struct.super_block*, %struct.super_block** %2, align 8
  %80 = getelementptr inbounds %struct.super_block, %struct.super_block* %79, i32 0, i32 0
  store i32* null, i32** %80, align 8
  ret void
}

declare dso_local %struct.hfsplus_sb_info* @HFSPLUS_SB(%struct.super_block*) #1

declare dso_local i32 @hfs_dbg(i32, i8*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @hfsp_now2mt(...) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @hfsplus_sync_fs(%struct.super_block*, i32) #1

declare dso_local i32 @hfs_btree_close(i32) #1

declare dso_local i32 @iput(i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @unload_nls(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
