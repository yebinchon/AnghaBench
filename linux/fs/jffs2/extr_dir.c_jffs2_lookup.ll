; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_dir.c_jffs2_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_dir.c_jffs2_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.jffs2_inode_info = type { i32, %struct.jffs2_full_dirent* }
%struct.jffs2_full_dirent = type { i32, i64, i64, i32, %struct.jffs2_full_dirent* }

@.str = private unnamed_addr constant [16 x i8] c"jffs2_lookup()\0A\00", align 1
@JFFS2_MAX_NAME_LEN = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"iget() failed for ino #%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, i32)* @jffs2_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @jffs2_lookup(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.jffs2_inode_info*, align 8
  %9 = alloca %struct.jffs2_full_dirent*, align 8
  %10 = alloca %struct.jffs2_full_dirent*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.jffs2_full_dirent* null, %struct.jffs2_full_dirent** %9, align 8
  store i64 0, i64* %11, align 8
  store %struct.inode* null, %struct.inode** %12, align 8
  %14 = call i32 @jffs2_dbg(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.dentry*, %struct.dentry** %6, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @JFFS2_MAX_NAME_LEN, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32, i32* @ENAMETOOLONG, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.dentry* @ERR_PTR(i32 %23)
  store %struct.dentry* %24, %struct.dentry** %4, align 8
  br label %132

25:                                               ; preds = %3
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = call %struct.jffs2_inode_info* @JFFS2_INODE_INFO(%struct.inode* %26)
  store %struct.jffs2_inode_info* %27, %struct.jffs2_inode_info** %8, align 8
  %28 = load %struct.dentry*, %struct.dentry** %6, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.dentry*, %struct.dentry** %6, align 8
  %33 = getelementptr inbounds %struct.dentry, %struct.dentry* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @full_name_hash(i32* null, i32 %31, i64 %35)
  store i32 %36, i32* %13, align 4
  %37 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %8, align 8
  %38 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %37, i32 0, i32 0
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %8, align 8
  %41 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %40, i32 0, i32 1
  %42 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %41, align 8
  store %struct.jffs2_full_dirent* %42, %struct.jffs2_full_dirent** %10, align 8
  br label %43

43:                                               ; preds = %98, %25
  %44 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %10, align 8
  %45 = icmp ne %struct.jffs2_full_dirent* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %10, align 8
  %48 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %13, align 4
  %51 = icmp ule i32 %49, %50
  br label %52

52:                                               ; preds = %46, %43
  %53 = phi i1 [ false, %43 ], [ %51, %46 ]
  br i1 %53, label %54, label %102

54:                                               ; preds = %52
  %55 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %10, align 8
  %56 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %97

60:                                               ; preds = %54
  %61 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %9, align 8
  %62 = icmp ne %struct.jffs2_full_dirent* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %10, align 8
  %65 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %9, align 8
  %68 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %66, %69
  br i1 %70, label %71, label %97

71:                                               ; preds = %63, %60
  %72 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %10, align 8
  %73 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @strlen(i32 %74)
  %76 = load %struct.dentry*, %struct.dentry** %6, align 8
  %77 = getelementptr inbounds %struct.dentry, %struct.dentry* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %75, %79
  br i1 %80, label %81, label %97

81:                                               ; preds = %71
  %82 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %10, align 8
  %83 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.dentry*, %struct.dentry** %6, align 8
  %86 = getelementptr inbounds %struct.dentry, %struct.dentry* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.dentry*, %struct.dentry** %6, align 8
  %90 = getelementptr inbounds %struct.dentry, %struct.dentry* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @strncmp(i32 %84, i32 %88, i64 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %81
  %96 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %10, align 8
  store %struct.jffs2_full_dirent* %96, %struct.jffs2_full_dirent** %9, align 8
  br label %97

97:                                               ; preds = %95, %81, %71, %63, %54
  br label %98

98:                                               ; preds = %97
  %99 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %10, align 8
  %100 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %99, i32 0, i32 4
  %101 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %100, align 8
  store %struct.jffs2_full_dirent* %101, %struct.jffs2_full_dirent** %10, align 8
  br label %43

102:                                              ; preds = %52
  %103 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %9, align 8
  %104 = icmp ne %struct.jffs2_full_dirent* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %9, align 8
  %107 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %11, align 8
  br label %109

109:                                              ; preds = %105, %102
  %110 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %8, align 8
  %111 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %110, i32 0, i32 0
  %112 = call i32 @mutex_unlock(i32* %111)
  %113 = load i64, i64* %11, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %109
  %116 = load %struct.inode*, %struct.inode** %5, align 8
  %117 = getelementptr inbounds %struct.inode, %struct.inode* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i64, i64* %11, align 8
  %120 = call %struct.inode* @jffs2_iget(i32 %118, i64 %119)
  store %struct.inode* %120, %struct.inode** %12, align 8
  %121 = load %struct.inode*, %struct.inode** %12, align 8
  %122 = call i64 @IS_ERR(%struct.inode* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %115
  %125 = load i64, i64* %11, align 8
  %126 = call i32 @pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %125)
  br label %127

127:                                              ; preds = %124, %115
  br label %128

128:                                              ; preds = %127, %109
  %129 = load %struct.inode*, %struct.inode** %12, align 8
  %130 = load %struct.dentry*, %struct.dentry** %6, align 8
  %131 = call %struct.dentry* @d_splice_alias(%struct.inode* %129, %struct.dentry* %130)
  store %struct.dentry* %131, %struct.dentry** %4, align 8
  br label %132

132:                                              ; preds = %128, %21
  %133 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %133
}

declare dso_local i32 @jffs2_dbg(i32, i8*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.jffs2_inode_info* @JFFS2_INODE_INFO(%struct.inode*) #1

declare dso_local i32 @full_name_hash(i32*, i32, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @strncmp(i32, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.inode* @jffs2_iget(i32, i64) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @pr_warn(i8*, i64) #1

declare dso_local %struct.dentry* @d_splice_alias(%struct.inode*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
