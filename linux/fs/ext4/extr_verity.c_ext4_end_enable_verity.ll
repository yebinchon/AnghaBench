; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_verity.c_ext4_end_enable_verity.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_verity.c_ext4_end_enable_verity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i32 }
%struct.ext4_iloc = type { i32 }

@EXT4_STATE_VERITY_IN_PROGRESS = common dso_local global i32 0, align 4
@EXT4_HT_INODE = common dso_local global i32 0, align 4
@EXT4_INODE_VERITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i64, i32)* @ext4_end_enable_verity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_end_enable_verity(%struct.file* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ext4_iloc, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.file*, %struct.file** %6, align 8
  %17 = call %struct.inode* @file_inode(%struct.file* %16)
  store %struct.inode* %17, %struct.inode** %10, align 8
  store i32 2, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %4
  %21 = load %struct.inode*, %struct.inode** %10, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @ext4_write_verity_descriptor(%struct.inode* %21, i8* %22, i64 %23, i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %20
  %29 = load %struct.inode*, %struct.inode** %10, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @filemap_write_and_wait(i32 %31)
  store i32 %32, i32* %13, align 4
  br label %33

33:                                               ; preds = %28, %20
  br label %34

34:                                               ; preds = %33, %4
  %35 = load i8*, i8** %7, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37, %34
  %41 = load %struct.inode*, %struct.inode** %10, align 8
  %42 = call i32 @ext4_truncate(%struct.inode* %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load %struct.inode*, %struct.inode** %10, align 8
  %45 = load i32, i32* @EXT4_STATE_VERITY_IN_PROGRESS, align 4
  %46 = call i32 @ext4_clear_inode_state(%struct.inode* %44, i32 %45)
  %47 = load %struct.inode*, %struct.inode** %10, align 8
  %48 = load i32, i32* @EXT4_HT_INODE, align 4
  %49 = call i32* @ext4_journal_start(%struct.inode* %47, i32 %48, i32 2)
  store i32* %49, i32** %12, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = call i64 @IS_ERR(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %43
  %54 = load %struct.inode*, %struct.inode** %10, align 8
  %55 = call i32 @ext4_orphan_del(i32* null, %struct.inode* %54)
  %56 = load i32*, i32** %12, align 8
  %57 = call i32 @PTR_ERR(i32* %56)
  store i32 %57, i32* %5, align 4
  br label %98

58:                                               ; preds = %43
  %59 = load i32*, i32** %12, align 8
  %60 = load %struct.inode*, %struct.inode** %10, align 8
  %61 = call i32 @ext4_orphan_del(i32* %59, %struct.inode* %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %88

65:                                               ; preds = %58
  %66 = load i8*, i8** %7, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %87

68:                                               ; preds = %65
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %87, label %71

71:                                               ; preds = %68
  %72 = load i32*, i32** %12, align 8
  %73 = load %struct.inode*, %struct.inode** %10, align 8
  %74 = call i32 @ext4_reserve_inode_write(i32* %72, %struct.inode* %73, %struct.ext4_iloc* %15)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %88

78:                                               ; preds = %71
  %79 = load %struct.inode*, %struct.inode** %10, align 8
  %80 = load i32, i32* @EXT4_INODE_VERITY, align 4
  %81 = call i32 @ext4_set_inode_flag(%struct.inode* %79, i32 %80)
  %82 = load %struct.inode*, %struct.inode** %10, align 8
  %83 = call i32 @ext4_set_inode_flags(%struct.inode* %82)
  %84 = load i32*, i32** %12, align 8
  %85 = load %struct.inode*, %struct.inode** %10, align 8
  %86 = call i32 @ext4_mark_iloc_dirty(i32* %84, %struct.inode* %85, %struct.ext4_iloc* %15)
  store i32 %86, i32* %13, align 4
  br label %87

87:                                               ; preds = %78, %68, %65
  br label %88

88:                                               ; preds = %87, %77, %64
  %89 = load i32*, i32** %12, align 8
  %90 = call i32 @ext4_journal_stop(i32* %89)
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %96

94:                                               ; preds = %88
  %95 = load i32, i32* %14, align 4
  br label %96

96:                                               ; preds = %94, %93
  %97 = phi i32 [ %91, %93 ], [ %95, %94 ]
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %96, %53
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @ext4_write_verity_descriptor(%struct.inode*, i8*, i64, i32) #1

declare dso_local i32 @filemap_write_and_wait(i32) #1

declare dso_local i32 @ext4_truncate(%struct.inode*) #1

declare dso_local i32 @ext4_clear_inode_state(%struct.inode*, i32) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @ext4_orphan_del(i32*, %struct.inode*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ext4_reserve_inode_write(i32*, %struct.inode*, %struct.ext4_iloc*) #1

declare dso_local i32 @ext4_set_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @ext4_set_inode_flags(%struct.inode*) #1

declare dso_local i32 @ext4_mark_iloc_dirty(i32*, %struct.inode*, %struct.ext4_iloc*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
