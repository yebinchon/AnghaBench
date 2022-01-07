; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_sysfs.c_ext4_register_sysfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_sysfs.c_ext4_register_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_sb_info = type { i64, i32, i32 }

@ext4_sb_ktype = common dso_local global i32 0, align 4
@ext4_root = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ext4_proc_root = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@ext4_seq_options_show = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"es_shrinker_info\00", align 1
@ext4_seq_es_shrinker_info_show = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"mb_groups\00", align 1
@ext4_mb_seq_groups_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_register_sysfs(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.ext4_sb_info*, align 8
  %5 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %6 = load %struct.super_block*, %struct.super_block** %3, align 8
  %7 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %6)
  store %struct.ext4_sb_info* %7, %struct.ext4_sb_info** %4, align 8
  %8 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %9 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %8, i32 0, i32 1
  %10 = call i32 @init_completion(i32* %9)
  %11 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %12 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %11, i32 0, i32 2
  %13 = load i32, i32* @ext4_root, align 4
  %14 = load %struct.super_block*, %struct.super_block** %3, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @kobject_init_and_add(i32* %12, i32* @ext4_sb_ktype, i32 %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %22 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %21, i32 0, i32 2
  %23 = call i32 @kobject_put(i32* %22)
  %24 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %25 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %24, i32 0, i32 1
  %26 = call i32 @wait_for_completion(i32* %25)
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %66

28:                                               ; preds = %1
  %29 = load i64, i64* @ext4_proc_root, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load %struct.super_block*, %struct.super_block** %3, align 8
  %33 = getelementptr inbounds %struct.super_block, %struct.super_block* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* @ext4_proc_root, align 8
  %36 = call i64 @proc_mkdir(i32 %34, i64 %35)
  %37 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %38 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %31, %28
  %40 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %41 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %39
  %45 = load i32, i32* @S_IRUGO, align 4
  %46 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %47 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @ext4_seq_options_show, align 4
  %50 = load %struct.super_block*, %struct.super_block** %3, align 8
  %51 = call i32 @proc_create_single_data(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %45, i64 %48, i32 %49, %struct.super_block* %50)
  %52 = load i32, i32* @S_IRUGO, align 4
  %53 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %54 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @ext4_seq_es_shrinker_info_show, align 4
  %57 = load %struct.super_block*, %struct.super_block** %3, align 8
  %58 = call i32 @proc_create_single_data(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %52, i64 %55, i32 %56, %struct.super_block* %57)
  %59 = load i32, i32* @S_IRUGO, align 4
  %60 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %61 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.super_block*, %struct.super_block** %3, align 8
  %64 = call i32 @proc_create_seq_data(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %59, i64 %62, i32* @ext4_mb_seq_groups_ops, %struct.super_block* %63)
  br label %65

65:                                               ; preds = %44, %39
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %20
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @kobject_init_and_add(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @kobject_put(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i64 @proc_mkdir(i32, i64) #1

declare dso_local i32 @proc_create_single_data(i8*, i32, i64, i32, %struct.super_block*) #1

declare dso_local i32 @proc_create_seq_data(i8*, i32, i64, i32*, %struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
