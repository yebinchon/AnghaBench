; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_dir.c_hfsplus_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_dir.c_hfsplus_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i64, i32, i32, i32 }
%struct.dentry = type { i32, i64 }
%struct.hfsplus_sb_info = type { i32, i32, %struct.inode* }
%struct.qstr = type { i8*, i32 }
%struct.TYPE_2__ = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"temp%lu\00", align 1
@S_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @hfsplus_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfsplus_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.hfsplus_sb_info*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.qstr, align 8
  %9 = alloca [32 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.hfsplus_sb_info* @HFSPLUS_SB(i32 %14)
  store %struct.hfsplus_sb_info* %15, %struct.hfsplus_sb_info** %6, align 8
  %16 = load %struct.dentry*, %struct.dentry** %5, align 8
  %17 = call %struct.inode* @d_inode(%struct.dentry* %16)
  store %struct.inode* %17, %struct.inode** %7, align 8
  %18 = load %struct.inode*, %struct.inode** %7, align 8
  %19 = call i64 @HFSPLUS_IS_RSRC(%struct.inode* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EPERM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %161

24:                                               ; preds = %2
  %25 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %6, align 8
  %26 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.dentry*, %struct.dentry** %5, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %10, align 8
  %31 = load %struct.inode*, %struct.inode** %7, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %10, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %72

36:                                               ; preds = %24
  %37 = load %struct.inode*, %struct.inode** %7, align 8
  %38 = call %struct.TYPE_2__* @HFSPLUS_I(%struct.inode* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i64 @atomic_read(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %72

42:                                               ; preds = %36
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %44 = getelementptr inbounds %struct.qstr, %struct.qstr* %8, i32 0, i32 0
  store i8* %43, i8** %44, align 8
  %45 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %46 = load %struct.inode*, %struct.inode** %7, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @sprintf(i8* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %48)
  %50 = getelementptr inbounds %struct.qstr, %struct.qstr* %8, i32 0, i32 1
  store i32 %49, i32* %50, align 8
  %51 = load %struct.inode*, %struct.inode** %7, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.inode*, %struct.inode** %4, align 8
  %55 = load %struct.dentry*, %struct.dentry** %5, align 8
  %56 = getelementptr inbounds %struct.dentry, %struct.dentry* %55, i32 0, i32 0
  %57 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %6, align 8
  %58 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %57, i32 0, i32 2
  %59 = load %struct.inode*, %struct.inode** %58, align 8
  %60 = call i32 @hfsplus_rename_cat(i64 %53, %struct.inode* %54, i32* %56, %struct.inode* %59, %struct.qstr* %8)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %42
  %64 = load i32, i32* @S_DEAD, align 4
  %65 = load %struct.inode*, %struct.inode** %7, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load %struct.inode*, %struct.inode** %7, align 8
  %70 = call i32 @drop_nlink(%struct.inode* %69)
  br label %71

71:                                               ; preds = %63, %42
  br label %156

72:                                               ; preds = %36, %24
  %73 = load i64, i64* %10, align 8
  %74 = load %struct.inode*, %struct.inode** %4, align 8
  %75 = load %struct.dentry*, %struct.dentry** %5, align 8
  %76 = getelementptr inbounds %struct.dentry, %struct.dentry* %75, i32 0, i32 0
  %77 = call i32 @hfsplus_delete_cat(i64 %73, %struct.inode* %74, i32* %76)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  br label %156

81:                                               ; preds = %72
  %82 = load %struct.inode*, %struct.inode** %7, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load %struct.inode*, %struct.inode** %7, align 8
  %88 = call i32 @drop_nlink(%struct.inode* %87)
  br label %89

89:                                               ; preds = %86, %81
  %90 = load %struct.inode*, %struct.inode** %7, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %10, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load %struct.inode*, %struct.inode** %7, align 8
  %97 = call i32 @clear_nlink(%struct.inode* %96)
  br label %98

98:                                               ; preds = %95, %89
  %99 = load %struct.inode*, %struct.inode** %7, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %144, label %103

103:                                              ; preds = %98
  %104 = load %struct.inode*, %struct.inode** %7, align 8
  %105 = getelementptr inbounds %struct.inode, %struct.inode* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %10, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %140

109:                                              ; preds = %103
  %110 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %6, align 8
  %111 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %111, align 4
  %114 = load %struct.inode*, %struct.inode** %7, align 8
  %115 = call %struct.TYPE_2__* @HFSPLUS_I(%struct.inode* %114)
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = call i64 @atomic_read(i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %133, label %119

119:                                              ; preds = %109
  %120 = load %struct.inode*, %struct.inode** %7, align 8
  %121 = getelementptr inbounds %struct.inode, %struct.inode* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %6, align 8
  %124 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %123, i32 0, i32 2
  %125 = load %struct.inode*, %struct.inode** %124, align 8
  %126 = call i32 @hfsplus_delete_cat(i64 %122, %struct.inode* %125, i32* null)
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %119
  %130 = load %struct.inode*, %struct.inode** %7, align 8
  %131 = call i32 @hfsplus_delete_inode(%struct.inode* %130)
  br label %132

132:                                              ; preds = %129, %119
  br label %139

133:                                              ; preds = %109
  %134 = load i32, i32* @S_DEAD, align 4
  %135 = load %struct.inode*, %struct.inode** %7, align 8
  %136 = getelementptr inbounds %struct.inode, %struct.inode* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %133, %132
  br label %143

140:                                              ; preds = %103
  %141 = load %struct.inode*, %struct.inode** %7, align 8
  %142 = call i32 @hfsplus_delete_inode(%struct.inode* %141)
  br label %143

143:                                              ; preds = %140, %139
  br label %149

144:                                              ; preds = %98
  %145 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %6, align 8
  %146 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %144, %143
  %150 = load %struct.inode*, %struct.inode** %7, align 8
  %151 = call i32 @current_time(%struct.inode* %150)
  %152 = load %struct.inode*, %struct.inode** %7, align 8
  %153 = getelementptr inbounds %struct.inode, %struct.inode* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 8
  %154 = load %struct.inode*, %struct.inode** %7, align 8
  %155 = call i32 @mark_inode_dirty(%struct.inode* %154)
  br label %156

156:                                              ; preds = %149, %80, %71
  %157 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %6, align 8
  %158 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %157, i32 0, i32 0
  %159 = call i32 @mutex_unlock(i32* %158)
  %160 = load i32, i32* %11, align 4
  store i32 %160, i32* %3, align 4
  br label %161

161:                                              ; preds = %156, %21
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local %struct.hfsplus_sb_info* @HFSPLUS_SB(i32) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i64 @HFSPLUS_IS_RSRC(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.TYPE_2__* @HFSPLUS_I(%struct.inode*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @hfsplus_rename_cat(i64, %struct.inode*, i32*, %struct.inode*, %struct.qstr*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @hfsplus_delete_cat(i64, %struct.inode*, i32*) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @hfsplus_delete_inode(%struct.inode*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
