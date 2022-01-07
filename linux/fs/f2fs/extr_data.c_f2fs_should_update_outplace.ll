; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_should_update_outplace.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_should_update_outplace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.f2fs_io_info = type { i32, i32 }
%struct.f2fs_sb_info = type { i32 }

@LFS = common dso_local global i32 0, align 4
@SBI_CP_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_should_update_outplace(%struct.inode* %0, %struct.f2fs_io_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.f2fs_io_info*, align 8
  %6 = alloca %struct.f2fs_sb_info*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.f2fs_io_info* %1, %struct.f2fs_io_info** %5, align 8
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %7)
  store %struct.f2fs_sb_info* %8, %struct.f2fs_sb_info** %6, align 8
  %9 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %10 = load i32, i32* @LFS, align 4
  %11 = call i64 @test_opt(%struct.f2fs_sb_info* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %68

14:                                               ; preds = %2
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @S_ISDIR(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %68

21:                                               ; preds = %14
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = call i64 @IS_NOQUOTA(%struct.inode* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %68

26:                                               ; preds = %21
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = call i64 @f2fs_is_atomic_file(%struct.inode* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %68

31:                                               ; preds = %26
  %32 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %5, align 8
  %33 = icmp ne %struct.f2fs_io_info* %32, null
  br i1 %33, label %34, label %67

34:                                               ; preds = %31
  %35 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %5, align 8
  %36 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @is_cold_data(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %68

41:                                               ; preds = %34
  %42 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %5, align 8
  %43 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @IS_ATOMIC_WRITTEN_PAGE(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 1, i32* %3, align 4
  br label %68

48:                                               ; preds = %41
  %49 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %50 = load i32, i32* @SBI_CP_DISABLED, align 4
  %51 = call i64 @is_sbi_flag_set(%struct.f2fs_sb_info* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %55 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %5, align 8
  %56 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @f2fs_is_checkpointed_data(%struct.f2fs_sb_info* %54, i32 %57)
  %59 = icmp ne i64 %58, 0
  br label %60

60:                                               ; preds = %53, %48
  %61 = phi i1 [ false, %48 ], [ %59, %53 ]
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 1, i32* %3, align 4
  br label %68

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66, %31
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %65, %47, %40, %30, %25, %20, %13
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i64 @test_opt(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @IS_NOQUOTA(%struct.inode*) #1

declare dso_local i64 @f2fs_is_atomic_file(%struct.inode*) #1

declare dso_local i64 @is_cold_data(i32) #1

declare dso_local i64 @IS_ATOMIC_WRITTEN_PAGE(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @is_sbi_flag_set(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @f2fs_is_checkpointed_data(%struct.f2fs_sb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
