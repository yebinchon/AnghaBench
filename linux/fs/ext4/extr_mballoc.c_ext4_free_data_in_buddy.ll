; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.c_ext4_free_data_in_buddy.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.c_ext4_free_data_in_buddy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_free_data = type { i32, i32, i32, i32 }
%struct.ext4_buddy = type { i32, i32, %struct.ext4_group_info* }
%struct.ext4_group_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"gonna free %u blocks in group %u (0x%p):\00", align 1
@DISCARD = common dso_local global i32 0, align 4
@ext4_free_data_cachep = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"freed %u blocks in %u structures\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, %struct.ext4_free_data*)* @ext4_free_data_in_buddy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_free_data_in_buddy(%struct.super_block* %0, %struct.ext4_free_data* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.ext4_free_data*, align 8
  %5 = alloca %struct.ext4_buddy, align 8
  %6 = alloca %struct.ext4_group_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.ext4_free_data* %1, %struct.ext4_free_data** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.ext4_free_data*, %struct.ext4_free_data** %4, align 8
  %11 = getelementptr inbounds %struct.ext4_free_data, %struct.ext4_free_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ext4_free_data*, %struct.ext4_free_data** %4, align 8
  %14 = getelementptr inbounds %struct.ext4_free_data, %struct.ext4_free_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ext4_free_data*, %struct.ext4_free_data** %4, align 8
  %17 = call i32 (i32, i8*, i32, i32, ...) @mb_debug(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15, %struct.ext4_free_data* %16)
  %18 = load %struct.super_block*, %struct.super_block** %3, align 8
  %19 = load %struct.ext4_free_data*, %struct.ext4_free_data** %4, align 8
  %20 = getelementptr inbounds %struct.ext4_free_data, %struct.ext4_free_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ext4_mb_load_buddy(%struct.super_block* %18, i32 %21, %struct.ext4_buddy* %5)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.super_block*, %struct.super_block** %3, align 8
  %28 = call %struct.TYPE_4__* @EXT4_SB(%struct.super_block* %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.ext4_free_data*, %struct.ext4_free_data** %4, align 8
  %32 = getelementptr inbounds %struct.ext4_free_data, %struct.ext4_free_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.super_block*, %struct.super_block** %3, align 8
  %35 = call %struct.TYPE_4__* @EXT4_SB(%struct.super_block* %34)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, %33
  store i32 %38, i32* %36, align 4
  %39 = load %struct.super_block*, %struct.super_block** %3, align 8
  %40 = call %struct.TYPE_4__* @EXT4_SB(%struct.super_block* %39)
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = call i32 @spin_unlock(i32* %41)
  %43 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %5, i32 0, i32 2
  %44 = load %struct.ext4_group_info*, %struct.ext4_group_info** %43, align 8
  store %struct.ext4_group_info* %44, %struct.ext4_group_info** %6, align 8
  %45 = load %struct.ext4_free_data*, %struct.ext4_free_data** %4, align 8
  %46 = getelementptr inbounds %struct.ext4_free_data, %struct.ext4_free_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  %52 = load %struct.super_block*, %struct.super_block** %3, align 8
  %53 = load %struct.ext4_free_data*, %struct.ext4_free_data** %4, align 8
  %54 = getelementptr inbounds %struct.ext4_free_data, %struct.ext4_free_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ext4_lock_group(%struct.super_block* %52, i32 %55)
  %57 = load %struct.ext4_free_data*, %struct.ext4_free_data** %4, align 8
  %58 = getelementptr inbounds %struct.ext4_free_data, %struct.ext4_free_data* %57, i32 0, i32 3
  %59 = load %struct.ext4_group_info*, %struct.ext4_group_info** %6, align 8
  %60 = getelementptr inbounds %struct.ext4_group_info, %struct.ext4_group_info* %59, i32 0, i32 0
  %61 = call i32 @rb_erase(i32* %58, %struct.TYPE_3__* %60)
  %62 = load %struct.ext4_free_data*, %struct.ext4_free_data** %4, align 8
  %63 = getelementptr inbounds %struct.ext4_free_data, %struct.ext4_free_data* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ext4_free_data*, %struct.ext4_free_data** %4, align 8
  %66 = getelementptr inbounds %struct.ext4_free_data, %struct.ext4_free_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @mb_free_blocks(i32* null, %struct.ext4_buddy* %5, i32 %64, i32 %67)
  %69 = load %struct.super_block*, %struct.super_block** %3, align 8
  %70 = load i32, i32* @DISCARD, align 4
  %71 = call i32 @test_opt(%struct.super_block* %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %2
  %74 = load %struct.ext4_group_info*, %struct.ext4_group_info** %6, align 8
  %75 = call i32 @EXT4_MB_GRP_CLEAR_TRIMMED(%struct.ext4_group_info* %74)
  br label %76

76:                                               ; preds = %73, %2
  %77 = load %struct.ext4_group_info*, %struct.ext4_group_info** %6, align 8
  %78 = getelementptr inbounds %struct.ext4_group_info, %struct.ext4_group_info* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %5, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @put_page(i32 %84)
  %86 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %5, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @put_page(i32 %87)
  br label %89

89:                                               ; preds = %82, %76
  %90 = load %struct.super_block*, %struct.super_block** %3, align 8
  %91 = load %struct.ext4_free_data*, %struct.ext4_free_data** %4, align 8
  %92 = getelementptr inbounds %struct.ext4_free_data, %struct.ext4_free_data* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ext4_unlock_group(%struct.super_block* %90, i32 %93)
  %95 = load i32, i32* @ext4_free_data_cachep, align 4
  %96 = load %struct.ext4_free_data*, %struct.ext4_free_data** %4, align 8
  %97 = call i32 @kmem_cache_free(i32 %95, %struct.ext4_free_data* %96)
  %98 = call i32 @ext4_mb_unload_buddy(%struct.ext4_buddy* %5)
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 (i32, i8*, i32, i32, ...) @mb_debug(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %99, i32 %100)
  ret void
}

declare dso_local i32 @mb_debug(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @ext4_mb_load_buddy(%struct.super_block*, i32, %struct.ext4_buddy*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_4__* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ext4_lock_group(%struct.super_block*, i32) #1

declare dso_local i32 @rb_erase(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @mb_free_blocks(i32*, %struct.ext4_buddy*, i32, i32) #1

declare dso_local i32 @test_opt(%struct.super_block*, i32) #1

declare dso_local i32 @EXT4_MB_GRP_CLEAR_TRIMMED(%struct.ext4_group_info*) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @ext4_unlock_group(%struct.super_block*, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.ext4_free_data*) #1

declare dso_local i32 @ext4_mb_unload_buddy(%struct.ext4_buddy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
