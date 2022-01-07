; ModuleID = '/home/carl/AnghaBench/linux/fs/sysv/extr_dir.c_sysv_find_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysv/extr_dir.c_sysv_find_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysv_dir_entry = type { i32, i32 }
%struct.dentry = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.page = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_4__ = type { i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@SYSV_DIRSIZE = common dso_local global i64 0, align 8
@SYSV_NAMELEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sysv_dir_entry* @sysv_find_entry(%struct.dentry* %0, %struct.page** %1) #0 {
  %3 = alloca %struct.sysv_dir_entry*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.page**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca %struct.sysv_dir_entry*, align 8
  %14 = alloca i8*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.page** %1, %struct.page*** %5, align 8
  %15 = load %struct.dentry*, %struct.dentry** %4, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %6, align 8
  %19 = load %struct.dentry*, %struct.dentry** %4, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %7, align 4
  %23 = load %struct.dentry*, %struct.dentry** %4, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.inode* @d_inode(i32 %25)
  store %struct.inode* %26, %struct.inode** %8, align 8
  %27 = load %struct.inode*, %struct.inode** %8, align 8
  %28 = call i64 @dir_pages(%struct.inode* %27)
  store i64 %28, i64* %11, align 8
  store %struct.page* null, %struct.page** %12, align 8
  %29 = load %struct.page**, %struct.page*** %5, align 8
  store %struct.page* null, %struct.page** %29, align 8
  %30 = load %struct.inode*, %struct.inode** %8, align 8
  %31 = call %struct.TYPE_4__* @SYSV_I(%struct.inode* %30)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %11, align 8
  %36 = icmp uge i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  store i64 0, i64* %9, align 8
  br label %38

38:                                               ; preds = %37, %2
  %39 = load i64, i64* %9, align 8
  store i64 %39, i64* %10, align 8
  br label %40

40:                                               ; preds = %93, %38
  %41 = load %struct.inode*, %struct.inode** %8, align 8
  %42 = load i64, i64* %10, align 8
  %43 = call %struct.page* @dir_get_page(%struct.inode* %41, i64 %42)
  store %struct.page* %43, %struct.page** %12, align 8
  %44 = load %struct.page*, %struct.page** %12, align 8
  %45 = call i32 @IS_ERR(%struct.page* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %86, label %47

47:                                               ; preds = %40
  %48 = load %struct.page*, %struct.page** %12, align 8
  %49 = call i64 @page_address(%struct.page* %48)
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** %14, align 8
  %51 = load i8*, i8** %14, align 8
  %52 = bitcast i8* %51 to %struct.sysv_dir_entry*
  store %struct.sysv_dir_entry* %52, %struct.sysv_dir_entry** %13, align 8
  %53 = load i64, i64* @PAGE_SIZE, align 8
  %54 = load i64, i64* @SYSV_DIRSIZE, align 8
  %55 = sub nsw i64 %53, %54
  %56 = load i8*, i8** %14, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 %55
  store i8* %57, i8** %14, align 8
  br label %58

58:                                               ; preds = %80, %47
  %59 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %13, align 8
  %60 = bitcast %struct.sysv_dir_entry* %59 to i8*
  %61 = load i8*, i8** %14, align 8
  %62 = icmp ule i8* %60, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %58
  %64 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %13, align 8
  %65 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  br label %80

69:                                               ; preds = %63
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @SYSV_NAMELEN, align 4
  %72 = load i8*, i8** %6, align 8
  %73 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %13, align 8
  %74 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @namecompare(i32 %70, i32 %71, i8* %72, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  br label %98

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %79, %68
  %81 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %13, align 8
  %82 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %81, i32 1
  store %struct.sysv_dir_entry* %82, %struct.sysv_dir_entry** %13, align 8
  br label %58

83:                                               ; preds = %58
  %84 = load %struct.page*, %struct.page** %12, align 8
  %85 = call i32 @dir_put_page(%struct.page* %84)
  br label %86

86:                                               ; preds = %83, %40
  %87 = load i64, i64* %10, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %10, align 8
  %89 = load i64, i64* %11, align 8
  %90 = icmp uge i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  store i64 0, i64* %10, align 8
  br label %92

92:                                               ; preds = %91, %86
  br label %93

93:                                               ; preds = %92
  %94 = load i64, i64* %10, align 8
  %95 = load i64, i64* %9, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %40, label %97

97:                                               ; preds = %93
  store %struct.sysv_dir_entry* null, %struct.sysv_dir_entry** %3, align 8
  br label %106

98:                                               ; preds = %78
  %99 = load i64, i64* %10, align 8
  %100 = load %struct.inode*, %struct.inode** %8, align 8
  %101 = call %struct.TYPE_4__* @SYSV_I(%struct.inode* %100)
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store i64 %99, i64* %102, align 8
  %103 = load %struct.page*, %struct.page** %12, align 8
  %104 = load %struct.page**, %struct.page*** %5, align 8
  store %struct.page* %103, %struct.page** %104, align 8
  %105 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %13, align 8
  store %struct.sysv_dir_entry* %105, %struct.sysv_dir_entry** %3, align 8
  br label %106

106:                                              ; preds = %98, %97
  %107 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %3, align 8
  ret %struct.sysv_dir_entry* %107
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i64 @dir_pages(%struct.inode*) #1

declare dso_local %struct.TYPE_4__* @SYSV_I(%struct.inode*) #1

declare dso_local %struct.page* @dir_get_page(%struct.inode*, i64) #1

declare dso_local i32 @IS_ERR(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i64 @namecompare(i32, i32, i8*, i32) #1

declare dso_local i32 @dir_put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
