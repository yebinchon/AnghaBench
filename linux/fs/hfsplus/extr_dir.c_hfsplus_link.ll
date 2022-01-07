; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_dir.c_hfsplus_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_dir.c_hfsplus_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, i32 }
%struct.dentry = type { i32, i8*, %struct.dentry* }
%struct.hfsplus_sb_info = type { i32, i32, i32, i32 }
%struct.qstr = type { i8*, i32 }
%struct.TYPE_2__ = type { i64 }

@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"iNode%d\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* @hfsplus_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfsplus_link(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.hfsplus_sb_info*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.qstr, align 8
  %12 = alloca [32 x i8], align 16
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.hfsplus_sb_info* @HFSPLUS_SB(i32 %18)
  store %struct.hfsplus_sb_info* %19, %struct.hfsplus_sb_info** %8, align 8
  %20 = load %struct.dentry*, %struct.dentry** %5, align 8
  %21 = call %struct.inode* @d_inode(%struct.dentry* %20)
  store %struct.inode* %21, %struct.inode** %9, align 8
  %22 = load %struct.dentry*, %struct.dentry** %5, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 2
  %24 = load %struct.dentry*, %struct.dentry** %23, align 8
  %25 = call %struct.inode* @d_inode(%struct.dentry* %24)
  store %struct.inode* %25, %struct.inode** %10, align 8
  %26 = load %struct.inode*, %struct.inode** %9, align 8
  %27 = call i64 @HFSPLUS_IS_RSRC(%struct.inode* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @EPERM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %155

32:                                               ; preds = %3
  %33 = load %struct.inode*, %struct.inode** %9, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @S_ISREG(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @EPERM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %155

41:                                               ; preds = %32
  %42 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %8, align 8
  %43 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %42, i32 0, i32 0
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.inode*, %struct.inode** %9, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.dentry*, %struct.dentry** %5, align 8
  %49 = getelementptr inbounds %struct.dentry, %struct.dentry* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = ptrtoint i8* %50 to i64
  %52 = icmp eq i64 %47, %51
  br i1 %52, label %53, label %112

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %83, %53
  %55 = call i32 @get_random_bytes(i64* %14, i32 8)
  %56 = load i64, i64* %14, align 8
  %57 = and i64 %56, 1073741823
  store i64 %57, i64* %14, align 8
  %58 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %59 = getelementptr inbounds %struct.qstr, %struct.qstr* %11, i32 0, i32 0
  store i8* %58, i8** %59, align 8
  %60 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %61 = load i64, i64* %14, align 8
  %62 = call i32 @sprintf(i8* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %61)
  %63 = getelementptr inbounds %struct.qstr, %struct.qstr* %11, i32 0, i32 1
  store i32 %62, i32* %63, align 8
  %64 = load %struct.inode*, %struct.inode** %9, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.inode*, %struct.inode** %10, align 8
  %68 = load %struct.dentry*, %struct.dentry** %5, align 8
  %69 = getelementptr inbounds %struct.dentry, %struct.dentry* %68, i32 0, i32 0
  %70 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %8, align 8
  %71 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @hfsplus_rename_cat(i64 %66, %struct.inode* %67, i32* %69, i32 %72, %struct.qstr* %11)
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %54
  br label %84

77:                                               ; preds = %54
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* @EEXIST, align 4
  %80 = sub nsw i32 0, %79
  %81 = icmp ne i32 %78, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %150

83:                                               ; preds = %77
  br label %54

84:                                               ; preds = %76
  %85 = load i64, i64* %14, align 8
  %86 = load %struct.inode*, %struct.inode** %9, align 8
  %87 = call %struct.TYPE_2__* @HFSPLUS_I(%struct.inode* %86)
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  store i64 %85, i64* %88, align 8
  %89 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %8, align 8
  %90 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  %93 = sext i32 %91 to i64
  store i64 %93, i64* %13, align 8
  %94 = load i64, i64* %13, align 8
  %95 = inttoptr i64 %94 to i8*
  %96 = load %struct.dentry*, %struct.dentry** %5, align 8
  %97 = getelementptr inbounds %struct.dentry, %struct.dentry* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  %98 = load i64, i64* %13, align 8
  %99 = load %struct.inode*, %struct.inode** %10, align 8
  %100 = load %struct.dentry*, %struct.dentry** %5, align 8
  %101 = getelementptr inbounds %struct.dentry, %struct.dentry* %100, i32 0, i32 0
  %102 = load %struct.inode*, %struct.inode** %9, align 8
  %103 = call i32 @hfsplus_create_cat(i64 %98, %struct.inode* %99, i32* %101, %struct.inode* %102)
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %15, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %84
  br label %150

107:                                              ; preds = %84
  %108 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %8, align 8
  %109 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %107, %41
  %113 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %8, align 8
  %114 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 4
  %117 = sext i32 %115 to i64
  store i64 %117, i64* %13, align 8
  %118 = load i64, i64* %13, align 8
  %119 = load %struct.inode*, %struct.inode** %6, align 8
  %120 = load %struct.dentry*, %struct.dentry** %7, align 8
  %121 = getelementptr inbounds %struct.dentry, %struct.dentry* %120, i32 0, i32 0
  %122 = load %struct.inode*, %struct.inode** %9, align 8
  %123 = call i32 @hfsplus_create_cat(i64 %118, %struct.inode* %119, i32* %121, %struct.inode* %122)
  store i32 %123, i32* %15, align 4
  %124 = load i32, i32* %15, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %112
  br label %150

127:                                              ; preds = %112
  %128 = load %struct.inode*, %struct.inode** %9, align 8
  %129 = call i32 @inc_nlink(%struct.inode* %128)
  %130 = load %struct.dentry*, %struct.dentry** %7, align 8
  %131 = load %struct.inode*, %struct.inode** %9, align 8
  %132 = load i64, i64* %13, align 8
  %133 = call i32 @hfsplus_instantiate(%struct.dentry* %130, %struct.inode* %131, i64 %132)
  %134 = load %struct.inode*, %struct.inode** %9, align 8
  %135 = call i32 @ihold(%struct.inode* %134)
  %136 = load %struct.inode*, %struct.inode** %9, align 8
  %137 = call i32 @current_time(%struct.inode* %136)
  %138 = load %struct.inode*, %struct.inode** %9, align 8
  %139 = getelementptr inbounds %struct.inode, %struct.inode* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 4
  %140 = load %struct.inode*, %struct.inode** %9, align 8
  %141 = call i32 @mark_inode_dirty(%struct.inode* %140)
  %142 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %8, align 8
  %143 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 4
  %146 = load %struct.inode*, %struct.inode** %6, align 8
  %147 = getelementptr inbounds %struct.inode, %struct.inode* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @hfsplus_mark_mdb_dirty(i32 %148)
  br label %150

150:                                              ; preds = %127, %126, %106, %82
  %151 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %8, align 8
  %152 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %151, i32 0, i32 0
  %153 = call i32 @mutex_unlock(i32* %152)
  %154 = load i32, i32* %15, align 4
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %150, %38, %29
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local %struct.hfsplus_sb_info* @HFSPLUS_SB(i32) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i64 @HFSPLUS_IS_RSRC(%struct.inode*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @get_random_bytes(i64*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @hfsplus_rename_cat(i64, %struct.inode*, i32*, i32, %struct.qstr*) #1

declare dso_local %struct.TYPE_2__* @HFSPLUS_I(%struct.inode*) #1

declare dso_local i32 @hfsplus_create_cat(i64, %struct.inode*, i32*, %struct.inode*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @hfsplus_instantiate(%struct.dentry*, %struct.inode*, i64) #1

declare dso_local i32 @ihold(%struct.inode*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @hfsplus_mark_mdb_dirty(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
