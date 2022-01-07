; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_truncate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@FAULT_TRUNCATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_truncate(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %5 = load %struct.inode*, %struct.inode** %3, align 8
  %6 = call i32 @F2FS_I_SB(%struct.inode* %5)
  %7 = call i32 @f2fs_cp_error(i32 %6)
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %75

13:                                               ; preds = %1
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @S_ISREG(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %13
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @S_ISDIR(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @S_ISLNK(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %75

32:                                               ; preds = %25, %19, %13
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = call i32 @trace_f2fs_truncate(%struct.inode* %33)
  %35 = load %struct.inode*, %struct.inode** %3, align 8
  %36 = call i32 @F2FS_I_SB(%struct.inode* %35)
  %37 = load i32, i32* @FAULT_TRUNCATE, align 4
  %38 = call i64 @time_to_inject(i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load i32, i32* @FAULT_TRUNCATE, align 4
  %42 = call i32 @f2fs_show_injection_info(i32 %41)
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %75

45:                                               ; preds = %32
  %46 = load %struct.inode*, %struct.inode** %3, align 8
  %47 = call i32 @f2fs_may_inline_data(%struct.inode* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %45
  %50 = load %struct.inode*, %struct.inode** %3, align 8
  %51 = call i32 @f2fs_convert_inline_inode(%struct.inode* %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %75

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %45
  %58 = load %struct.inode*, %struct.inode** %3, align 8
  %59 = load %struct.inode*, %struct.inode** %3, align 8
  %60 = call i32 @i_size_read(%struct.inode* %59)
  %61 = call i32 @f2fs_truncate_blocks(%struct.inode* %58, i32 %60, i32 1)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %75

66:                                               ; preds = %57
  %67 = load %struct.inode*, %struct.inode** %3, align 8
  %68 = call i32 @current_time(%struct.inode* %67)
  %69 = load %struct.inode*, %struct.inode** %3, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.inode*, %struct.inode** %3, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 1
  store i32 %68, i32* %72, align 4
  %73 = load %struct.inode*, %struct.inode** %3, align 8
  %74 = call i32 @f2fs_mark_inode_dirty_sync(%struct.inode* %73, i32 0)
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %66, %64, %54, %40, %31, %10
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @f2fs_cp_error(i32) #1

declare dso_local i32 @F2FS_I_SB(%struct.inode*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @trace_f2fs_truncate(%struct.inode*) #1

declare dso_local i64 @time_to_inject(i32, i32) #1

declare dso_local i32 @f2fs_show_injection_info(i32) #1

declare dso_local i32 @f2fs_may_inline_data(%struct.inode*) #1

declare dso_local i32 @f2fs_convert_inline_inode(%struct.inode*) #1

declare dso_local i32 @f2fs_truncate_blocks(%struct.inode*, i32, i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @f2fs_mark_inode_dirty_sync(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
