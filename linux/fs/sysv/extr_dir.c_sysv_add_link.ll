; ModuleID = '/home/carl/AnghaBench/linux/fs/sysv/extr_dir.c_sysv_add_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysv/extr_dir.c_sysv_add_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.inode = type { i32, i32, i32, i32 }
%struct.page = type { i32 }
%struct.sysv_dir_entry = type { i64, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@SYSV_DIRSIZE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@SYSV_NAMELEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysv_add_link(%struct.dentry* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  %10 = alloca %struct.sysv_dir_entry*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %16 = load %struct.dentry*, %struct.dentry** %4, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.inode* @d_inode(i32 %18)
  store %struct.inode* %19, %struct.inode** %6, align 8
  %20 = load %struct.dentry*, %struct.dentry** %4, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %7, align 8
  %24 = load %struct.dentry*, %struct.dentry** %4, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %8, align 4
  store %struct.page* null, %struct.page** %9, align 8
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = call i64 @dir_pages(%struct.inode* %28)
  store i64 %29, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %30

30:                                               ; preds = %85, %2
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* %11, align 8
  %33 = icmp ule i64 %31, %32
  br i1 %33, label %34, label %88

34:                                               ; preds = %30
  %35 = load %struct.inode*, %struct.inode** %6, align 8
  %36 = load i64, i64* %12, align 8
  %37 = call %struct.page* @dir_get_page(%struct.inode* %35, i64 %36)
  store %struct.page* %37, %struct.page** %9, align 8
  %38 = load %struct.page*, %struct.page** %9, align 8
  %39 = call i32 @PTR_ERR(%struct.page* %38)
  store i32 %39, i32* %15, align 4
  %40 = load %struct.page*, %struct.page** %9, align 8
  %41 = call i64 @IS_ERR(%struct.page* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %157

44:                                               ; preds = %34
  %45 = load %struct.page*, %struct.page** %9, align 8
  %46 = call i64 @page_address(%struct.page* %45)
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** %13, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = bitcast i8* %48 to %struct.sysv_dir_entry*
  store %struct.sysv_dir_entry* %49, %struct.sysv_dir_entry** %10, align 8
  %50 = load i64, i64* @PAGE_SIZE, align 8
  %51 = load i32, i32* @SYSV_DIRSIZE, align 4
  %52 = sext i32 %51 to i64
  %53 = sub nsw i64 %50, %52
  %54 = load i8*, i8** %13, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 %53
  store i8* %55, i8** %13, align 8
  br label %56

56:                                               ; preds = %79, %44
  %57 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %10, align 8
  %58 = bitcast %struct.sysv_dir_entry* %57 to i8*
  %59 = load i8*, i8** %13, align 8
  %60 = icmp ule i8* %58, %59
  br i1 %60, label %61, label %82

61:                                               ; preds = %56
  %62 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %10, align 8
  %63 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  br label %92

67:                                               ; preds = %61
  %68 = load i32, i32* @EEXIST, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @SYSV_NAMELEN, align 4
  %72 = load i8*, i8** %7, align 8
  %73 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %10, align 8
  %74 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @namecompare(i32 %70, i32 %71, i8* %72, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  br label %154

79:                                               ; preds = %67
  %80 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %10, align 8
  %81 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %80, i32 1
  store %struct.sysv_dir_entry* %81, %struct.sysv_dir_entry** %10, align 8
  br label %56

82:                                               ; preds = %56
  %83 = load %struct.page*, %struct.page** %9, align 8
  %84 = call i32 @dir_put_page(%struct.page* %83)
  br label %85

85:                                               ; preds = %82
  %86 = load i64, i64* %12, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %12, align 8
  br label %30

88:                                               ; preds = %30
  %89 = call i32 (...) @BUG()
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %162

92:                                               ; preds = %66
  %93 = load %struct.page*, %struct.page** %9, align 8
  %94 = call i32 @page_offset(%struct.page* %93)
  %95 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %10, align 8
  %96 = bitcast %struct.sysv_dir_entry* %95 to i8*
  %97 = sext i32 %94 to i64
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  %99 = load %struct.page*, %struct.page** %9, align 8
  %100 = call i64 @page_address(%struct.page* %99)
  %101 = inttoptr i64 %100 to i8*
  %102 = ptrtoint i8* %98 to i64
  %103 = ptrtoint i8* %101 to i64
  %104 = sub i64 %102, %103
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %14, align 4
  %106 = load %struct.page*, %struct.page** %9, align 8
  %107 = call i32 @lock_page(%struct.page* %106)
  %108 = load %struct.page*, %struct.page** %9, align 8
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* @SYSV_DIRSIZE, align 4
  %111 = call i32 @sysv_prepare_chunk(%struct.page* %108, i32 %109, i32 %110)
  store i32 %111, i32* %15, align 4
  %112 = load i32, i32* %15, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %92
  br label %159

115:                                              ; preds = %92
  %116 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %10, align 8
  %117 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load i8*, i8** %7, align 8
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @memcpy(i32 %118, i8* %119, i32 %120)
  %122 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %10, align 8
  %123 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %124, %125
  %127 = load i32, i32* @SYSV_DIRSIZE, align 4
  %128 = load i32, i32* %8, align 4
  %129 = sub nsw i32 %127, %128
  %130 = sub nsw i32 %129, 2
  %131 = call i32 @memset(i32 %126, i32 0, i32 %130)
  %132 = load %struct.inode*, %struct.inode** %5, align 8
  %133 = getelementptr inbounds %struct.inode, %struct.inode* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @SYSV_SB(i32 %134)
  %136 = load %struct.inode*, %struct.inode** %5, align 8
  %137 = getelementptr inbounds %struct.inode, %struct.inode* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @cpu_to_fs16(i32 %135, i32 %138)
  %140 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %10, align 8
  %141 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %140, i32 0, i32 0
  store i64 %139, i64* %141, align 8
  %142 = load %struct.page*, %struct.page** %9, align 8
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* @SYSV_DIRSIZE, align 4
  %145 = call i32 @dir_commit_chunk(%struct.page* %142, i32 %143, i32 %144)
  store i32 %145, i32* %15, align 4
  %146 = load %struct.inode*, %struct.inode** %6, align 8
  %147 = call i32 @current_time(%struct.inode* %146)
  %148 = load %struct.inode*, %struct.inode** %6, align 8
  %149 = getelementptr inbounds %struct.inode, %struct.inode* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 4
  %150 = load %struct.inode*, %struct.inode** %6, align 8
  %151 = getelementptr inbounds %struct.inode, %struct.inode* %150, i32 0, i32 1
  store i32 %147, i32* %151, align 4
  %152 = load %struct.inode*, %struct.inode** %6, align 8
  %153 = call i32 @mark_inode_dirty(%struct.inode* %152)
  br label %154

154:                                              ; preds = %159, %115, %78
  %155 = load %struct.page*, %struct.page** %9, align 8
  %156 = call i32 @dir_put_page(%struct.page* %155)
  br label %157

157:                                              ; preds = %154, %43
  %158 = load i32, i32* %15, align 4
  store i32 %158, i32* %3, align 4
  br label %162

159:                                              ; preds = %114
  %160 = load %struct.page*, %struct.page** %9, align 8
  %161 = call i32 @unlock_page(%struct.page* %160)
  br label %154

162:                                              ; preds = %157, %88
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i64 @dir_pages(%struct.inode*) #1

declare dso_local %struct.page* @dir_get_page(%struct.inode*, i64) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i64 @namecompare(i32, i32, i8*, i32) #1

declare dso_local i32 @dir_put_page(%struct.page*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @page_offset(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @sysv_prepare_chunk(%struct.page*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @cpu_to_fs16(i32, i32) #1

declare dso_local i32 @SYSV_SB(i32) #1

declare dso_local i32 @dir_commit_chunk(%struct.page*, i32, i32) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
