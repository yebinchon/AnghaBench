; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_delete_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_delete_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ext4_dir_entry_2 = type { i32 }
%struct.buffer_head = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"get_write_access\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"call ext4_handle_dirty_metadata\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.ext4_dir_entry_2*, %struct.buffer_head*)* @ext4_delete_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_delete_entry(i32* %0, %struct.inode* %1, %struct.ext4_dir_entry_2* %2, %struct.buffer_head* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ext4_dir_entry_2*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.ext4_dir_entry_2* %2, %struct.ext4_dir_entry_2** %8, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %9, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.inode*, %struct.inode** %7, align 8
  %14 = call i64 @ext4_has_inline_data(%struct.inode* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %4
  store i32 1, i32* %12, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = load %struct.inode*, %struct.inode** %7, align 8
  %19 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %8, align 8
  %20 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %21 = call i32 @ext4_delete_inline_entry(i32* %17, %struct.inode* %18, %struct.ext4_dir_entry_2* %19, %struct.buffer_head* %20, i32* %12)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %5, align 4
  br label %87

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %26, %4
  %28 = load %struct.inode*, %struct.inode** %7, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = call i64 @ext4_has_metadata_csum(%struct.TYPE_3__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 4, i32* %11, align 4
  br label %34

34:                                               ; preds = %33, %27
  %35 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %36 = call i32 @BUFFER_TRACE(%struct.buffer_head* %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %37 = load i32*, i32** %6, align 8
  %38 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %39 = call i32 @ext4_journal_get_write_access(i32* %37, %struct.buffer_head* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %74

44:                                               ; preds = %34
  %45 = load i32*, i32** %6, align 8
  %46 = load %struct.inode*, %struct.inode** %7, align 8
  %47 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %8, align 8
  %48 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %49 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %50 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.inode*, %struct.inode** %7, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @ext4_generic_delete_entry(i32* %45, %struct.inode* %46, %struct.ext4_dir_entry_2* %47, %struct.buffer_head* %48, i32 %51, i32 %56, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %44
  br label %74

62:                                               ; preds = %44
  %63 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %64 = call i32 @BUFFER_TRACE(%struct.buffer_head* %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32*, i32** %6, align 8
  %66 = load %struct.inode*, %struct.inode** %7, align 8
  %67 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %68 = call i32 @ext4_handle_dirty_dirblock(i32* %65, %struct.inode* %66, %struct.buffer_head* %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  br label %74

73:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %87

74:                                               ; preds = %72, %61, %43
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @ENOENT, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp ne i32 %75, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.inode*, %struct.inode** %7, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @ext4_std_error(%struct.TYPE_3__* %82, i32 %83)
  br label %85

85:                                               ; preds = %79, %74
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %85, %73, %24
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i64 @ext4_has_inline_data(%struct.inode*) #1

declare dso_local i32 @ext4_delete_inline_entry(i32*, %struct.inode*, %struct.ext4_dir_entry_2*, %struct.buffer_head*, i32*) #1

declare dso_local i64 @ext4_has_metadata_csum(%struct.TYPE_3__*) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @ext4_journal_get_write_access(i32*, %struct.buffer_head*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ext4_generic_delete_entry(i32*, %struct.inode*, %struct.ext4_dir_entry_2*, %struct.buffer_head*, i32, i32, i32) #1

declare dso_local i32 @ext4_handle_dirty_dirblock(i32*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ext4_std_error(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
