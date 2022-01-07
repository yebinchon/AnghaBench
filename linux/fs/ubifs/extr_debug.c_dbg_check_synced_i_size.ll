; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_debug.c_dbg_check_synced_i_size.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_debug.c_dbg_check_synced_i_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.inode = type { i32, i32 }
%struct.ubifs_inode = type { i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [59 x i8] c"ui_size is %lld, synced_i_size is %lld, but inode is clean\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"i_ino %lu, i_mode %#x, i_size %lld\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbg_check_synced_i_size(%struct.ubifs_info* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubifs_inode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.inode*, %struct.inode** %5, align 8
  %9 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %8)
  store %struct.ubifs_inode* %9, %struct.ubifs_inode** %7, align 8
  %10 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %11 = call i32 @dbg_is_chk_gen(%struct.ubifs_info* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %72

14:                                               ; preds = %2
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @S_ISREG(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %72

21:                                               ; preds = %14
  %22 = load %struct.ubifs_inode*, %struct.ubifs_inode** %7, align 8
  %23 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %22, i32 0, i32 2
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.ubifs_inode*, %struct.ubifs_inode** %7, align 8
  %26 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %25, i32 0, i32 3
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.ubifs_inode*, %struct.ubifs_inode** %7, align 8
  %29 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ubifs_inode*, %struct.ubifs_inode** %7, align 8
  %32 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %64

35:                                               ; preds = %21
  %36 = load %struct.ubifs_inode*, %struct.ubifs_inode** %7, align 8
  %37 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %64, label %40

40:                                               ; preds = %35
  %41 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %42 = load %struct.ubifs_inode*, %struct.ubifs_inode** %7, align 8
  %43 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.ubifs_inode*, %struct.ubifs_inode** %7, align 8
  %46 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (%struct.ubifs_info*, i8*, i64, i64, ...) @ubifs_err(%struct.ubifs_info* %41, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %44, i64 %47)
  %49 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = load %struct.inode*, %struct.inode** %5, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = load %struct.inode*, %struct.inode** %5, align 8
  %59 = call i32 @i_size_read(%struct.inode* %58)
  %60 = call i32 (%struct.ubifs_info*, i8*, i64, i64, ...) @ubifs_err(%struct.ubifs_info* %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %53, i64 %57, i32 %59)
  %61 = call i32 (...) @dump_stack()
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %40, %35, %21
  %65 = load %struct.ubifs_inode*, %struct.ubifs_inode** %7, align 8
  %66 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %65, i32 0, i32 3
  %67 = call i32 @spin_unlock(i32* %66)
  %68 = load %struct.ubifs_inode*, %struct.ubifs_inode** %7, align 8
  %69 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %68, i32 0, i32 2
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %64, %20, %13
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @dbg_is_chk_gen(%struct.ubifs_info*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i64, i64, ...) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
