; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_dir.c_nilfs_empty_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_dir.c_nilfs_empty_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.page = type { i32 }
%struct.nilfs_dir_entry = type { i64, i64, i8*, i32 }

@.str = private unnamed_addr constant [46 x i8] c"zero-length directory entry (kaddr=%p, de=%p)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_empty_dir(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nilfs_dir_entry*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.page* null, %struct.page** %4, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = call i64 @dir_pages(%struct.inode* %9)
  store i64 %10, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %11

11:                                               ; preds = %105, %1
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %108

15:                                               ; preds = %11
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call %struct.page* @nilfs_get_page(%struct.inode* %16, i64 %17)
  store %struct.page* %18, %struct.page** %4, align 8
  %19 = load %struct.page*, %struct.page** %4, align 8
  %20 = call i64 @IS_ERR(%struct.page* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %105

23:                                               ; preds = %15
  %24 = load %struct.page*, %struct.page** %4, align 8
  %25 = call i8* @page_address(%struct.page* %24)
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = bitcast i8* %26 to %struct.nilfs_dir_entry*
  store %struct.nilfs_dir_entry* %27, %struct.nilfs_dir_entry** %8, align 8
  %28 = load %struct.inode*, %struct.inode** %3, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @nilfs_last_byte(%struct.inode* %28, i64 %29)
  %31 = call i64 @NILFS_DIR_REC_LEN(i32 1)
  %32 = sub nsw i64 %30, %31
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 %32
  store i8* %34, i8** %7, align 8
  br label %35

35:                                               ; preds = %99, %23
  %36 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %8, align 8
  %37 = bitcast %struct.nilfs_dir_entry* %36 to i8*
  %38 = load i8*, i8** %7, align 8
  %39 = icmp ule i8* %37, %38
  br i1 %39, label %40, label %102

40:                                               ; preds = %35
  %41 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %8, align 8
  %42 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.inode*, %struct.inode** %3, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %8, align 8
  %51 = call i32 @nilfs_error(i32 %48, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %49, %struct.nilfs_dir_entry* %50)
  br label %109

52:                                               ; preds = %40
  %53 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %8, align 8
  %54 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %99

57:                                               ; preds = %52
  %58 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %8, align 8
  %59 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 46
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %109

66:                                               ; preds = %57
  %67 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %8, align 8
  %68 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = icmp sgt i32 %69, 2
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %109

72:                                               ; preds = %66
  %73 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %8, align 8
  %74 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %75, 2
  br i1 %76, label %77, label %88

77:                                               ; preds = %72
  %78 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %8, align 8
  %79 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.inode*, %struct.inode** %3, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @cpu_to_le64(i32 %83)
  %85 = icmp ne i64 %80, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  br label %109

87:                                               ; preds = %77
  br label %98

88:                                               ; preds = %72
  %89 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %8, align 8
  %90 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 46
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  br label %109

97:                                               ; preds = %88
  br label %98

98:                                               ; preds = %97, %87
  br label %99

99:                                               ; preds = %98, %52
  %100 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %8, align 8
  %101 = call %struct.nilfs_dir_entry* @nilfs_next_entry(%struct.nilfs_dir_entry* %100)
  store %struct.nilfs_dir_entry* %101, %struct.nilfs_dir_entry** %8, align 8
  br label %35

102:                                              ; preds = %35
  %103 = load %struct.page*, %struct.page** %4, align 8
  %104 = call i32 @nilfs_put_page(%struct.page* %103)
  br label %105

105:                                              ; preds = %102, %22
  %106 = load i64, i64* %5, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %5, align 8
  br label %11

108:                                              ; preds = %11
  store i32 1, i32* %2, align 4
  br label %112

109:                                              ; preds = %96, %86, %71, %65, %45
  %110 = load %struct.page*, %struct.page** %4, align 8
  %111 = call i32 @nilfs_put_page(%struct.page* %110)
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %109, %108
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i64 @dir_pages(%struct.inode*) #1

declare dso_local %struct.page* @nilfs_get_page(%struct.inode*, i64) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i64 @nilfs_last_byte(%struct.inode*, i64) #1

declare dso_local i64 @NILFS_DIR_REC_LEN(i32) #1

declare dso_local i32 @nilfs_error(i32, i8*, i8*, %struct.nilfs_dir_entry*) #1

declare dso_local i64 @cpu_to_le64(i32) #1

declare dso_local %struct.nilfs_dir_entry* @nilfs_next_entry(%struct.nilfs_dir_entry*) #1

declare dso_local i32 @nilfs_put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
