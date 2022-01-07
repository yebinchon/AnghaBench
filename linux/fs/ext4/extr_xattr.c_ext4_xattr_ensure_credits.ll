; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_ensure_credits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_ensure_credits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Extend journal (error %d)\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Handle metadata (error %d)\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Restart journal (error %d)\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Get write access failed (error %d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.inode*, i32, %struct.buffer_head*, i32, i32)* @ext4_xattr_ensure_credits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_xattr_ensure_credits(%struct.TYPE_8__* %0, %struct.inode* %1, i32 %2, %struct.buffer_head* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.buffer_head* %3, %struct.buffer_head** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %16 = call i32 @ext4_handle_valid(%struct.TYPE_8__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %105

19:                                               ; preds = %6
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %105

26:                                               ; preds = %19
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %28, %31
  %33 = call i32 @ext4_journal_extend(%struct.TYPE_8__* %27, i32 %32)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %105

37:                                               ; preds = %26
  %38 = load i32, i32* %14, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load %struct.inode*, %struct.inode** %9, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @ext4_warning(i32 %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* %7, align 4
  br label %105

47:                                               ; preds = %37
  %48 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %49 = icmp ne %struct.buffer_head* %48, null
  br i1 %49, label %50, label %74

50:                                               ; preds = %47
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %50
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.inode*, %struct.inode** %9, align 8
  %58 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %59 = call i32 @ext4_xattr_block_csum_set(%struct.inode* %57, %struct.buffer_head* %58)
  br label %60

60:                                               ; preds = %56, %53
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %62 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %63 = call i32 @ext4_handle_dirty_metadata(%struct.TYPE_8__* %61, i32* null, %struct.buffer_head* %62)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load %struct.inode*, %struct.inode** %9, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @ext4_warning(i32 %69, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %14, align 4
  store i32 %72, i32* %7, align 4
  br label %105

73:                                               ; preds = %60
  br label %74

74:                                               ; preds = %73, %50, %47
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @ext4_journal_restart(%struct.TYPE_8__* %75, i32 %76)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load %struct.inode*, %struct.inode** %9, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @ext4_warning(i32 %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %14, align 4
  store i32 %86, i32* %7, align 4
  br label %105

87:                                               ; preds = %74
  %88 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %89 = icmp ne %struct.buffer_head* %88, null
  br i1 %89, label %90, label %104

90:                                               ; preds = %87
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %92 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %93 = call i32 @ext4_journal_get_write_access(%struct.TYPE_8__* %91, %struct.buffer_head* %92)
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %90
  %97 = load %struct.inode*, %struct.inode** %9, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @ext4_warning(i32 %99, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %14, align 4
  store i32 %102, i32* %7, align 4
  br label %105

103:                                              ; preds = %90
  br label %104

104:                                              ; preds = %103, %87
  store i32 0, i32* %7, align 4
  br label %105

105:                                              ; preds = %104, %96, %80, %66, %40, %36, %25, %18
  %106 = load i32, i32* %7, align 4
  ret i32 %106
}

declare dso_local i32 @ext4_handle_valid(%struct.TYPE_8__*) #1

declare dso_local i32 @ext4_journal_extend(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ext4_warning(i32, i8*, i32) #1

declare dso_local i32 @ext4_xattr_block_csum_set(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ext4_handle_dirty_metadata(%struct.TYPE_8__*, i32*, %struct.buffer_head*) #1

declare dso_local i32 @ext4_journal_restart(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ext4_journal_get_write_access(%struct.TYPE_8__*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
