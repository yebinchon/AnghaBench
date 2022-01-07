; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_show_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.dentry = type { %struct.super_block* }
%struct.super_block = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i32 }
%struct.nilfs_root = type { i64 }
%struct.TYPE_2__ = type { %struct.nilfs_root* }

@BARRIER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c",nobarrier\00", align 1
@NILFS_CPTREE_CURRENT_CNO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c",cp=%llu\00", align 1
@ERRORS_PANIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c",errors=panic\00", align 1
@ERRORS_CONT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c",errors=continue\00", align 1
@STRICT_ORDER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c",order=strict\00", align 1
@NORECOVERY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c",norecovery\00", align 1
@DISCARD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c",discard\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.dentry*)* @nilfs_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_show_options(%struct.seq_file* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.the_nilfs*, align 8
  %7 = alloca %struct.nilfs_root*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %8 = load %struct.dentry*, %struct.dentry** %4, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 0
  %10 = load %struct.super_block*, %struct.super_block** %9, align 8
  store %struct.super_block* %10, %struct.super_block** %5, align 8
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = getelementptr inbounds %struct.super_block, %struct.super_block* %11, i32 0, i32 0
  %13 = load %struct.the_nilfs*, %struct.the_nilfs** %12, align 8
  store %struct.the_nilfs* %13, %struct.the_nilfs** %6, align 8
  %14 = load %struct.dentry*, %struct.dentry** %4, align 8
  %15 = call i32 @d_inode(%struct.dentry* %14)
  %16 = call %struct.TYPE_2__* @NILFS_I(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.nilfs_root*, %struct.nilfs_root** %17, align 8
  store %struct.nilfs_root* %18, %struct.nilfs_root** %7, align 8
  %19 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %20 = load i32, i32* @BARRIER, align 4
  %21 = call i64 @nilfs_test_opt(%struct.the_nilfs* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %25 = call i32 @seq_puts(%struct.seq_file* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %2
  %27 = load %struct.nilfs_root*, %struct.nilfs_root** %7, align 8
  %28 = getelementptr inbounds %struct.nilfs_root, %struct.nilfs_root* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NILFS_CPTREE_CURRENT_CNO, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %34 = load %struct.nilfs_root*, %struct.nilfs_root** %7, align 8
  %35 = getelementptr inbounds %struct.nilfs_root, %struct.nilfs_root* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @seq_printf(%struct.seq_file* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  br label %38

38:                                               ; preds = %32, %26
  %39 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %40 = load i32, i32* @ERRORS_PANIC, align 4
  %41 = call i64 @nilfs_test_opt(%struct.the_nilfs* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %45 = call i32 @seq_puts(%struct.seq_file* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %38
  %47 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %48 = load i32, i32* @ERRORS_CONT, align 4
  %49 = call i64 @nilfs_test_opt(%struct.the_nilfs* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %53 = call i32 @seq_puts(%struct.seq_file* %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %46
  %55 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %56 = load i32, i32* @STRICT_ORDER, align 4
  %57 = call i64 @nilfs_test_opt(%struct.the_nilfs* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %61 = call i32 @seq_puts(%struct.seq_file* %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %54
  %63 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %64 = load i32, i32* @NORECOVERY, align 4
  %65 = call i64 @nilfs_test_opt(%struct.the_nilfs* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %69 = call i32 @seq_puts(%struct.seq_file* %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %62
  %71 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %72 = load i32, i32* @DISCARD, align 4
  %73 = call i64 @nilfs_test_opt(%struct.the_nilfs* %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %77 = call i32 @seq_puts(%struct.seq_file* %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %70
  ret i32 0
}

declare dso_local %struct.TYPE_2__* @NILFS_I(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i64 @nilfs_test_opt(%struct.the_nilfs*, i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
