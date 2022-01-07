; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_dir_make_exhash.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_dir_make_exhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.gfs2_inode = type { i64, i32, i32, i32, i32 }
%struct.gfs2_sbd = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.gfs2_dirent = type { i8* }
%struct.qstr = type { i32, i64 }
%struct.buffer_head = type { i32, i64, i32 }
%struct.gfs2_leaf = type { i8* }

@ENOSPC = common dso_local global i32 0, align 4
@gfs2_dirent_last = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFS2_DIF_EXHASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*)* @dir_make_exhash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dir_make_exhash(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.gfs2_inode*, align 8
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca %struct.gfs2_dirent*, align 8
  %7 = alloca %struct.qstr, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.gfs2_leaf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %16)
  store %struct.gfs2_inode* %17, %struct.gfs2_inode** %4, align 8
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %18)
  store %struct.gfs2_sbd* %19, %struct.gfs2_sbd** %5, align 8
  %20 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %21 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %20, %struct.buffer_head** %9)
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %15, align 4
  store i32 %25, i32* %2, align 4
  br label %174

26:                                               ; preds = %1
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = call %struct.gfs2_leaf* @new_leaf(%struct.inode* %27, %struct.buffer_head** %8, i32 0)
  store %struct.gfs2_leaf* %28, %struct.gfs2_leaf** %10, align 8
  %29 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %10, align 8
  %30 = icmp ne %struct.gfs2_leaf* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOSPC, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %174

34:                                               ; preds = %26
  %35 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %36 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %14, align 4
  %38 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %39 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %40 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @BIT(i32 16)
  %43 = icmp slt i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @gfs2_assert(%struct.gfs2_sbd* %38, i32 %44)
  %46 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %47 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i8* @cpu_to_be16(i64 %48)
  %50 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %10, align 8
  %51 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %53 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %54 = call i32 @gfs2_buffer_copy_tail(%struct.buffer_head* %52, i32 8, %struct.buffer_head* %53, i32 4)
  store i32 0, i32* %12, align 4
  %55 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %56 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = sub i64 %58, 4
  %60 = add i64 %59, 8
  %61 = trunc i64 %60 to i32
  %62 = getelementptr inbounds %struct.qstr, %struct.qstr* %7, i32 0, i32 0
  store i32 %61, i32* %62, align 8
  %63 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %64 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.qstr, %struct.qstr* %7, i32 0, i32 1
  store i64 %65, i64* %66, align 8
  %67 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %68 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %67, i32 0, i32 3
  %69 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %70 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %73 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @gfs2_dirent_last, align 4
  %76 = call %struct.gfs2_dirent* @gfs2_dirent_scan(i32* %68, i64 %71, i32 %74, i32 %75, %struct.qstr* %7, i32* null)
  store %struct.gfs2_dirent* %76, %struct.gfs2_dirent** %6, align 8
  %77 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %78 = icmp ne %struct.gfs2_dirent* %77, null
  br i1 %78, label %86, label %79

79:                                               ; preds = %34
  %80 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %81 = call i32 @brelse(%struct.buffer_head* %80)
  %82 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %83 = call i32 @brelse(%struct.buffer_head* %82)
  %84 = load i32, i32* @EIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %174

86:                                               ; preds = %34
  %87 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %88 = call i64 @IS_ERR(%struct.gfs2_dirent* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  %91 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %92 = call i32 @brelse(%struct.buffer_head* %91)
  %93 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %94 = call i32 @brelse(%struct.buffer_head* %93)
  %95 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %96 = call i32 @PTR_ERR(%struct.gfs2_dirent* %95)
  store i32 %96, i32* %2, align 4
  br label %174

97:                                               ; preds = %86
  %98 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %99 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i64 @be16_to_cpu(i8* %100)
  %102 = add i64 %101, 4
  %103 = sub i64 %102, 8
  %104 = call i8* @cpu_to_be16(i64 %103)
  %105 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %106 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  %107 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %108 = call i32 @brelse(%struct.buffer_head* %107)
  %109 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %110 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %113 = call i32 @gfs2_trans_add_meta(i32 %111, %struct.buffer_head* %112)
  %114 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %115 = call i32 @gfs2_buffer_clear_tail(%struct.buffer_head* %114, i32 4)
  %116 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %117 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = add i64 %118, 4
  %120 = inttoptr i64 %119 to i32*
  store i32* %120, i32** %13, align 8
  %121 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %122 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %12, align 4
  br label %124

124:                                              ; preds = %132, %97
  %125 = load i32, i32* %12, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %12, align 4
  %127 = icmp ne i32 %125, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %124
  %129 = load i32, i32* %14, align 4
  %130 = call i32 @cpu_to_be64(i32 %129)
  %131 = load i32*, i32** %13, align 8
  store i32 %130, i32* %131, align 4
  br label %132

132:                                              ; preds = %128
  %133 = load i32*, i32** %13, align 8
  %134 = getelementptr inbounds i32, i32* %133, i32 1
  store i32* %134, i32** %13, align 8
  br label %124

135:                                              ; preds = %124
  %136 = load %struct.inode*, %struct.inode** %3, align 8
  %137 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %138 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = sdiv i32 %140, 2
  %142 = call i32 @i_size_write(%struct.inode* %136, i32 %141)
  %143 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %144 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %143, i32 0, i32 3
  %145 = call i32 @gfs2_add_inode_blocks(i32* %144, i32 1)
  %146 = load i32, i32* @GFS2_DIF_EXHASH, align 4
  %147 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %148 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 4
  %151 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %152 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %12, align 4
  store i32 -1, i32* %11, align 4
  br label %154

154:                                              ; preds = %158, %135
  %155 = load i32, i32* %12, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %154
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %12, align 4
  %160 = ashr i32 %159, 1
  store i32 %160, i32* %12, align 4
  %161 = load i32, i32* %11, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %11, align 4
  br label %154

163:                                              ; preds = %154
  %164 = load i32, i32* %11, align 4
  %165 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %166 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 8
  %167 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %168 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %169 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @gfs2_dinode_out(%struct.gfs2_inode* %167, i64 %170)
  %172 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %173 = call i32 @brelse(%struct.buffer_head* %172)
  store i32 0, i32* %2, align 4
  br label %174

174:                                              ; preds = %163, %90, %79, %31, %24
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local %struct.gfs2_leaf* @new_leaf(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @gfs2_assert(%struct.gfs2_sbd*, i32) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i8* @cpu_to_be16(i64) #1

declare dso_local i32 @gfs2_buffer_copy_tail(%struct.buffer_head*, i32, %struct.buffer_head*, i32) #1

declare dso_local %struct.gfs2_dirent* @gfs2_dirent_scan(i32*, i64, i32, i32, %struct.qstr*, i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @IS_ERR(%struct.gfs2_dirent*) #1

declare dso_local i32 @PTR_ERR(%struct.gfs2_dirent*) #1

declare dso_local i64 @be16_to_cpu(i8*) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i32 @gfs2_buffer_clear_tail(%struct.buffer_head*, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @gfs2_add_inode_blocks(i32*, i32) #1

declare dso_local i32 @gfs2_dinode_out(%struct.gfs2_inode*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
