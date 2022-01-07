; ModuleID = '/home/carl/AnghaBench/linux/fs/qnx6/extr_dir.c_qnx6_find_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/qnx6/extr_dir.c_qnx6_find_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.page = type { i32 }
%struct.qnx6_inode_info = type { i64 }
%struct.qnx6_dir_entry = type { i32 }
%struct.qnx6_long_dir_entry = type { i32 }

@QNX6_SHORT_NAME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"undefined filename size in inode.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qnx6_find_entry(i32 %0, %struct.inode* %1, i8* %2, %struct.page** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.page**, align 8
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca %struct.qnx6_inode_info*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.qnx6_dir_entry*, align 8
  %18 = alloca %struct.qnx6_long_dir_entry*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.inode* %1, %struct.inode** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.page** %3, %struct.page*** %9, align 8
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load %struct.super_block*, %struct.super_block** %22, align 8
  store %struct.super_block* %23, %struct.super_block** %10, align 8
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = call %struct.qnx6_inode_info* @QNX6_I(%struct.inode* %24)
  store %struct.qnx6_inode_info* %25, %struct.qnx6_inode_info** %11, align 8
  store %struct.page* null, %struct.page** %12, align 8
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = call i64 @dir_pages(%struct.inode* %26)
  store i64 %27, i64* %15, align 8
  %28 = load %struct.page**, %struct.page*** %9, align 8
  store %struct.page* null, %struct.page** %28, align 8
  %29 = load i64, i64* %15, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %129

32:                                               ; preds = %4
  %33 = load %struct.qnx6_inode_info*, %struct.qnx6_inode_info** %11, align 8
  %34 = getelementptr inbounds %struct.qnx6_inode_info, %struct.qnx6_inode_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %13, align 8
  %36 = load i64, i64* %13, align 8
  %37 = load i64, i64* %15, align 8
  %38 = icmp uge i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i64 0, i64* %13, align 8
  br label %40

40:                                               ; preds = %39, %32
  %41 = load i64, i64* %13, align 8
  store i64 %41, i64* %14, align 8
  br label %42

42:                                               ; preds = %117, %40
  %43 = load %struct.inode*, %struct.inode** %7, align 8
  %44 = load i64, i64* %14, align 8
  %45 = call %struct.page* @qnx6_get_page(%struct.inode* %43, i64 %44)
  store %struct.page* %45, %struct.page** %12, align 8
  %46 = load %struct.page*, %struct.page** %12, align 8
  %47 = call i32 @IS_ERR(%struct.page* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %110, label %49

49:                                               ; preds = %42
  %50 = load %struct.inode*, %struct.inode** %7, align 8
  %51 = load i64, i64* %14, align 8
  %52 = call i32 @last_entry(%struct.inode* %50, i64 %51)
  store i32 %52, i32* %19, align 4
  %53 = load %struct.page*, %struct.page** %12, align 8
  %54 = call i64 @page_address(%struct.page* %53)
  %55 = inttoptr i64 %54 to %struct.qnx6_dir_entry*
  store %struct.qnx6_dir_entry* %55, %struct.qnx6_dir_entry** %17, align 8
  store i32 0, i32* %20, align 4
  br label %56

56:                                               ; preds = %102, %49
  %57 = load i32, i32* %20, align 4
  %58 = load i32, i32* %19, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %107

60:                                               ; preds = %56
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @QNX6_SHORT_NAME_MAX, align 4
  %63 = icmp sle i32 %61, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %60
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.qnx6_dir_entry*, %struct.qnx6_dir_entry** %17, align 8
  %67 = getelementptr inbounds %struct.qnx6_dir_entry, %struct.qnx6_dir_entry* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %102

71:                                               ; preds = %64
  %72 = load %struct.super_block*, %struct.super_block** %10, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load i8*, i8** %8, align 8
  %75 = load %struct.qnx6_dir_entry*, %struct.qnx6_dir_entry** %17, align 8
  %76 = call i32 @qnx6_match(%struct.super_block* %72, i32 %73, i8* %74, %struct.qnx6_dir_entry* %75)
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %16, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %122

80:                                               ; preds = %71
  br label %101

81:                                               ; preds = %60
  %82 = load %struct.qnx6_dir_entry*, %struct.qnx6_dir_entry** %17, align 8
  %83 = getelementptr inbounds %struct.qnx6_dir_entry, %struct.qnx6_dir_entry* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 255
  br i1 %85, label %86, label %98

86:                                               ; preds = %81
  %87 = load %struct.qnx6_dir_entry*, %struct.qnx6_dir_entry** %17, align 8
  %88 = bitcast %struct.qnx6_dir_entry* %87 to %struct.qnx6_long_dir_entry*
  store %struct.qnx6_long_dir_entry* %88, %struct.qnx6_long_dir_entry** %18, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load i8*, i8** %8, align 8
  %91 = load %struct.qnx6_long_dir_entry*, %struct.qnx6_long_dir_entry** %18, align 8
  %92 = load %struct.inode*, %struct.inode** %7, align 8
  %93 = call i32 @qnx6_long_match(i32 %89, i8* %90, %struct.qnx6_long_dir_entry* %91, %struct.inode* %92)
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %16, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %86
  br label %122

97:                                               ; preds = %86
  br label %100

98:                                               ; preds = %81
  %99 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %97
  br label %101

101:                                              ; preds = %100, %80
  br label %102

102:                                              ; preds = %101, %70
  %103 = load i32, i32* %20, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %20, align 4
  %105 = load %struct.qnx6_dir_entry*, %struct.qnx6_dir_entry** %17, align 8
  %106 = getelementptr inbounds %struct.qnx6_dir_entry, %struct.qnx6_dir_entry* %105, i32 1
  store %struct.qnx6_dir_entry* %106, %struct.qnx6_dir_entry** %17, align 8
  br label %56

107:                                              ; preds = %56
  %108 = load %struct.page*, %struct.page** %12, align 8
  %109 = call i32 @qnx6_put_page(%struct.page* %108)
  br label %110

110:                                              ; preds = %107, %42
  %111 = load i64, i64* %14, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %14, align 8
  %113 = load i64, i64* %15, align 8
  %114 = icmp uge i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  store i64 0, i64* %14, align 8
  br label %116

116:                                              ; preds = %115, %110
  br label %117

117:                                              ; preds = %116
  %118 = load i64, i64* %14, align 8
  %119 = load i64, i64* %13, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %42, label %121

121:                                              ; preds = %117
  store i32 0, i32* %5, align 4
  br label %129

122:                                              ; preds = %96, %79
  %123 = load %struct.page*, %struct.page** %12, align 8
  %124 = load %struct.page**, %struct.page*** %9, align 8
  store %struct.page* %123, %struct.page** %124, align 8
  %125 = load i64, i64* %14, align 8
  %126 = load %struct.qnx6_inode_info*, %struct.qnx6_inode_info** %11, align 8
  %127 = getelementptr inbounds %struct.qnx6_inode_info, %struct.qnx6_inode_info* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  %128 = load i32, i32* %16, align 4
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %122, %121, %31
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local %struct.qnx6_inode_info* @QNX6_I(%struct.inode*) #1

declare dso_local i64 @dir_pages(%struct.inode*) #1

declare dso_local %struct.page* @qnx6_get_page(%struct.inode*, i64) #1

declare dso_local i32 @IS_ERR(%struct.page*) #1

declare dso_local i32 @last_entry(%struct.inode*, i64) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @qnx6_match(%struct.super_block*, i32, i8*, %struct.qnx6_dir_entry*) #1

declare dso_local i32 @qnx6_long_match(i32, i8*, %struct.qnx6_long_dir_entry*, %struct.inode*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @qnx6_put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
