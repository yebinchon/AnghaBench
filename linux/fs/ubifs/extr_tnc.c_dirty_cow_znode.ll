; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_dirty_cow_znode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_dirty_cow_znode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_znode = type { i32 }
%struct.ubifs_info = type { i32, i32 }
%struct.ubifs_zbranch = type { i64, i64, i64, %struct.ubifs_znode* }

@DIRTY_ZNODE = common dso_local global i32 0, align 4
@ubifs_clean_zn_cnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ubifs_znode* (%struct.ubifs_info*, %struct.ubifs_zbranch*)* @dirty_cow_znode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ubifs_znode* @dirty_cow_znode(%struct.ubifs_info* %0, %struct.ubifs_zbranch* %1) #0 {
  %3 = alloca %struct.ubifs_znode*, align 8
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.ubifs_zbranch*, align 8
  %6 = alloca %struct.ubifs_znode*, align 8
  %7 = alloca %struct.ubifs_znode*, align 8
  %8 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.ubifs_zbranch* %1, %struct.ubifs_zbranch** %5, align 8
  %9 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %5, align 8
  %10 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %9, i32 0, i32 3
  %11 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  store %struct.ubifs_znode* %11, %struct.ubifs_znode** %6, align 8
  %12 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %13 = call i32 @ubifs_zn_cow(%struct.ubifs_znode* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %46, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @DIRTY_ZNODE, align 4
  %17 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %18 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %17, i32 0, i32 0
  %19 = call i32 @test_and_set_bit(i32 %16, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %44, label %21

21:                                               ; preds = %15
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %23 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %22, i32 0, i32 1
  %24 = call i32 @atomic_long_inc(i32* %23)
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %26 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %25, i32 0, i32 0
  %27 = call i32 @atomic_long_dec(i32* %26)
  %28 = call i32 @atomic_long_dec(i32* @ubifs_clean_zn_cnt)
  %29 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %30 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %5, align 8
  %31 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %5, align 8
  %34 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @add_idx_dirt(%struct.ubifs_info* %29, i64 %32, i64 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %21
  %41 = load i32, i32* %8, align 4
  %42 = call %struct.ubifs_znode* @ERR_PTR(i32 %41)
  store %struct.ubifs_znode* %42, %struct.ubifs_znode** %3, align 8
  br label %103

43:                                               ; preds = %21
  br label %44

44:                                               ; preds = %43, %15
  %45 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  store %struct.ubifs_znode* %45, %struct.ubifs_znode** %3, align 8
  br label %103

46:                                               ; preds = %2
  %47 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %48 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %49 = call %struct.ubifs_znode* @copy_znode(%struct.ubifs_info* %47, %struct.ubifs_znode* %48)
  store %struct.ubifs_znode* %49, %struct.ubifs_znode** %7, align 8
  %50 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %51 = call i64 @IS_ERR(%struct.ubifs_znode* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  store %struct.ubifs_znode* %54, %struct.ubifs_znode** %3, align 8
  br label %103

55:                                               ; preds = %46
  %56 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %5, align 8
  %57 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %84

60:                                               ; preds = %55
  %61 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %62 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %5, align 8
  %63 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %5, align 8
  %66 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @insert_old_idx(%struct.ubifs_info* %61, i64 %64, i64 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %60
  %73 = load i32, i32* %8, align 4
  %74 = call %struct.ubifs_znode* @ERR_PTR(i32 %73)
  store %struct.ubifs_znode* %74, %struct.ubifs_znode** %3, align 8
  br label %103

75:                                               ; preds = %60
  %76 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %77 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %5, align 8
  %78 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %5, align 8
  %81 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @add_idx_dirt(%struct.ubifs_info* %76, i64 %79, i64 %82)
  store i32 %83, i32* %8, align 4
  br label %85

84:                                               ; preds = %55
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %84, %75
  %86 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %87 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %5, align 8
  %88 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %87, i32 0, i32 3
  store %struct.ubifs_znode* %86, %struct.ubifs_znode** %88, align 8
  %89 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %5, align 8
  %90 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %89, i32 0, i32 2
  store i64 0, i64* %90, align 8
  %91 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %5, align 8
  %92 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  %93 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %5, align 8
  %94 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i64 @unlikely(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %85
  %99 = load i32, i32* %8, align 4
  %100 = call %struct.ubifs_znode* @ERR_PTR(i32 %99)
  store %struct.ubifs_znode* %100, %struct.ubifs_znode** %3, align 8
  br label %103

101:                                              ; preds = %85
  %102 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  store %struct.ubifs_znode* %102, %struct.ubifs_znode** %3, align 8
  br label %103

103:                                              ; preds = %101, %98, %72, %53, %44, %40
  %104 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  ret %struct.ubifs_znode* %104
}

declare dso_local i32 @ubifs_zn_cow(%struct.ubifs_znode*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @atomic_long_dec(i32*) #1

declare dso_local i32 @add_idx_dirt(%struct.ubifs_info*, i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.ubifs_znode* @ERR_PTR(i32) #1

declare dso_local %struct.ubifs_znode* @copy_znode(%struct.ubifs_info*, %struct.ubifs_znode*) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_znode*) #1

declare dso_local i32 @insert_old_idx(%struct.ubifs_info*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
