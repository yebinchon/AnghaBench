; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_file.c_orangefs_revalidate_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_file.c_orangefs_revalidate_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.address_space* }
%struct.address_space = type { i32 }
%struct.orangefs_inode_s = type { i64, i64 }

@TASK_KILLABLE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@orangefs_cache_timeout_msecs = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @orangefs_revalidate_mapping(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.orangefs_inode_s*, align 8
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call %struct.orangefs_inode_s* @ORANGEFS_I(%struct.inode* %8)
  store %struct.orangefs_inode_s* %9, %struct.orangefs_inode_s** %4, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 1
  %12 = load %struct.address_space*, %struct.address_space** %11, align 8
  store %struct.address_space* %12, %struct.address_space** %5, align 8
  %13 = load %struct.orangefs_inode_s*, %struct.orangefs_inode_s** %4, align 8
  %14 = getelementptr inbounds %struct.orangefs_inode_s, %struct.orangefs_inode_s* %13, i32 0, i32 0
  store i64* %14, i64** %6, align 8
  br label %15

15:                                               ; preds = %1, %30
  %16 = load i64*, i64** %6, align 8
  %17 = load i32, i32* @TASK_KILLABLE, align 4
  %18 = call i32 @wait_on_bit(i64* %16, i32 1, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %2, align 4
  br label %78

23:                                               ; preds = %15
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load i64*, i64** %6, align 8
  %28 = call i64 @test_bit(i32 1, i64* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load %struct.inode*, %struct.inode** %3, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  br label %15

34:                                               ; preds = %23
  %35 = load i64, i64* @jiffies, align 8
  %36 = load %struct.orangefs_inode_s*, %struct.orangefs_inode_s** %4, align 8
  %37 = getelementptr inbounds %struct.orangefs_inode_s, %struct.orangefs_inode_s* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @time_before(i64 %35, i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  br label %46

42:                                               ; preds = %34
  %43 = load %struct.inode*, %struct.inode** %3, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock(i32* %44)
  store i32 0, i32* %2, align 4
  br label %78

46:                                               ; preds = %41
  %47 = load i64*, i64** %6, align 8
  %48 = call i32 @set_bit(i32 1, i64* %47)
  %49 = call i32 (...) @smp_wmb()
  %50 = load %struct.inode*, %struct.inode** %3, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load %struct.address_space*, %struct.address_space** %5, align 8
  %54 = call i32 @unmap_mapping_range(%struct.address_space* %53, i32 0, i32 0, i32 0)
  %55 = load %struct.address_space*, %struct.address_space** %5, align 8
  %56 = call i32 @filemap_write_and_wait(%struct.address_space* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %46
  %60 = load %struct.address_space*, %struct.address_space** %5, align 8
  %61 = call i32 @invalidate_inode_pages2(%struct.address_space* %60)
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %59, %46
  %63 = load i64, i64* @jiffies, align 8
  %64 = load i32, i32* @orangefs_cache_timeout_msecs, align 4
  %65 = load i32, i32* @HZ, align 4
  %66 = mul nsw i32 %64, %65
  %67 = sdiv i32 %66, 1000
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %63, %68
  %70 = load %struct.orangefs_inode_s*, %struct.orangefs_inode_s** %4, align 8
  %71 = getelementptr inbounds %struct.orangefs_inode_s, %struct.orangefs_inode_s* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  %72 = load i64*, i64** %6, align 8
  %73 = call i32 @clear_bit(i32 1, i64* %72)
  %74 = call i32 (...) @smp_mb__after_atomic()
  %75 = load i64*, i64** %6, align 8
  %76 = call i32 @wake_up_bit(i64* %75, i32 1)
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %62, %42, %21
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.orangefs_inode_s* @ORANGEFS_I(%struct.inode*) #1

declare dso_local i32 @wait_on_bit(i64*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @time_before(i64, i64) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @unmap_mapping_range(%struct.address_space*, i32, i32, i32) #1

declare dso_local i32 @filemap_write_and_wait(%struct.address_space*) #1

declare dso_local i32 @invalidate_inode_pages2(%struct.address_space*) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @wake_up_bit(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
