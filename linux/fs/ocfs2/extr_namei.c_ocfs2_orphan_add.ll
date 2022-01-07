; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_namei.c_ocfs2_orphan_add.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_namei.c_ocfs2_orphan_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dir_lookup_result = type { i32 }
%struct.inode = type { i32 }
%struct.ocfs2_dinode = type { i8*, i32, i8* }
%struct.TYPE_2__ = type { i64, i32 }

@OCFS2_DIO_ORPHAN_PREFIX_LEN = common dso_local global i32 0, align 4
@OCFS2_ORPHAN_NAMELEN = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@OCFS2_DIO_ORPHANED_FL = common dso_local global i32 0, align 4
@OCFS2_ORPHANED_FL = common dso_local global i32 0, align 4
@OCFS2_INODE_SKIP_ORPHAN_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, i32*, %struct.inode*, %struct.buffer_head*, i8*, %struct.ocfs2_dir_lookup_result*, %struct.inode*, i32)* @ocfs2_orphan_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_orphan_add(%struct.ocfs2_super* %0, i32* %1, %struct.inode* %2, %struct.buffer_head* %3, i8* %4, %struct.ocfs2_dir_lookup_result* %5, %struct.inode* %6, i32 %7) #0 {
  %9 = alloca %struct.ocfs2_super*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.ocfs2_dir_lookup_result*, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.buffer_head*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.ocfs2_dinode*, align 8
  %20 = alloca %struct.ocfs2_dinode*, align 8
  %21 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.inode* %2, %struct.inode** %11, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %12, align 8
  store i8* %4, i8** %13, align 8
  store %struct.ocfs2_dir_lookup_result* %5, %struct.ocfs2_dir_lookup_result** %14, align 8
  store %struct.inode* %6, %struct.inode** %15, align 8
  store i32 %7, i32* %16, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %17, align 8
  store i32 0, i32* %18, align 4
  %22 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %23 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %25, %struct.ocfs2_dinode** %20, align 8
  %26 = load i32, i32* %16, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %8
  %29 = load i32, i32* @OCFS2_DIO_ORPHAN_PREFIX_LEN, align 4
  %30 = load i32, i32* @OCFS2_ORPHAN_NAMELEN, align 4
  %31 = add nsw i32 %29, %30
  br label %34

32:                                               ; preds = %8
  %33 = load i32, i32* @OCFS2_ORPHAN_NAMELEN, align 4
  br label %34

34:                                               ; preds = %32, %28
  %35 = phi i32 [ %31, %28 ], [ %33, %32 ]
  store i32 %35, i32* %21, align 4
  %36 = load %struct.inode*, %struct.inode** %11, align 8
  %37 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @trace_ocfs2_orphan_add_begin(i64 %39)
  %41 = load %struct.inode*, %struct.inode** %15, align 8
  %42 = call i32 @ocfs2_read_inode_block(%struct.inode* %41, %struct.buffer_head** %17)
  store i32 %42, i32* %18, align 4
  %43 = load i32, i32* %18, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = load i32, i32* %18, align 4
  %47 = call i32 @mlog_errno(i32 %46)
  br label %176

48:                                               ; preds = %34
  %49 = load i32*, i32** %10, align 8
  %50 = load %struct.inode*, %struct.inode** %15, align 8
  %51 = call i32 @INODE_CACHE(%struct.inode* %50)
  %52 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %53 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %54 = call i32 @ocfs2_journal_access_di(i32* %49, i32 %51, %struct.buffer_head* %52, i32 %53)
  store i32 %54, i32* %18, align 4
  %55 = load i32, i32* %18, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load i32, i32* %18, align 4
  %59 = call i32 @mlog_errno(i32 %58)
  br label %176

60:                                               ; preds = %48
  %61 = load i32*, i32** %10, align 8
  %62 = load %struct.inode*, %struct.inode** %11, align 8
  %63 = call i32 @INODE_CACHE(%struct.inode* %62)
  %64 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %65 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %66 = call i32 @ocfs2_journal_access_di(i32* %61, i32 %63, %struct.buffer_head* %64, i32 %65)
  store i32 %66, i32* %18, align 4
  %67 = load i32, i32* %18, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = load i32, i32* %18, align 4
  %71 = call i32 @mlog_errno(i32 %70)
  br label %176

72:                                               ; preds = %60
  %73 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %74 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %76, %struct.ocfs2_dinode** %19, align 8
  %77 = load %struct.inode*, %struct.inode** %11, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @S_ISDIR(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %72
  %83 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %19, align 8
  %84 = call i32 @ocfs2_add_links_count(%struct.ocfs2_dinode* %83, i32 1)
  br label %85

85:                                               ; preds = %82, %72
  %86 = load %struct.inode*, %struct.inode** %15, align 8
  %87 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %19, align 8
  %88 = call i32 @ocfs2_read_links_count(%struct.ocfs2_dinode* %87)
  %89 = call i32 @set_nlink(%struct.inode* %86, i32 %88)
  %90 = load i32*, i32** %10, align 8
  %91 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %92 = call i32 @ocfs2_journal_dirty(i32* %90, %struct.buffer_head* %91)
  %93 = load i32*, i32** %10, align 8
  %94 = load %struct.inode*, %struct.inode** %15, align 8
  %95 = load i8*, i8** %13, align 8
  %96 = load i32, i32* %21, align 4
  %97 = load %struct.inode*, %struct.inode** %11, align 8
  %98 = load %struct.inode*, %struct.inode** %11, align 8
  %99 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %98)
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %103 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %14, align 8
  %104 = call i32 @__ocfs2_add_entry(i32* %93, %struct.inode* %94, i8* %95, i32 %96, %struct.inode* %97, i64 %101, %struct.buffer_head* %102, %struct.ocfs2_dir_lookup_result* %103)
  store i32 %104, i32* %18, align 4
  %105 = load i32, i32* %18, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %85
  %108 = load i32, i32* %18, align 4
  %109 = call i32 @mlog_errno(i32 %108)
  br label %158

110:                                              ; preds = %85
  %111 = load i32, i32* %16, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %110
  %114 = load i32, i32* @OCFS2_DIO_ORPHANED_FL, align 4
  %115 = call i32 @cpu_to_le32(i32 %114)
  %116 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %20, align 8
  %117 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 8
  %120 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %121 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i8* @cpu_to_le16(i32 %122)
  %124 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %20, align 8
  %125 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %124, i32 0, i32 2
  store i8* %123, i8** %125, align 8
  br label %146

126:                                              ; preds = %110
  %127 = load i32, i32* @OCFS2_ORPHANED_FL, align 4
  %128 = call i32 @cpu_to_le32(i32 %127)
  %129 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %20, align 8
  %130 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 8
  %133 = load i32, i32* @OCFS2_INODE_SKIP_ORPHAN_DIR, align 4
  %134 = xor i32 %133, -1
  %135 = load %struct.inode*, %struct.inode** %11, align 8
  %136 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %135)
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = and i32 %138, %134
  store i32 %139, i32* %137, align 8
  %140 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %141 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i8* @cpu_to_le16(i32 %142)
  %144 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %20, align 8
  %145 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %144, i32 0, i32 0
  store i8* %143, i8** %145, align 8
  br label %146

146:                                              ; preds = %126, %113
  %147 = load i32*, i32** %10, align 8
  %148 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %149 = call i32 @ocfs2_journal_dirty(i32* %147, %struct.buffer_head* %148)
  %150 = load %struct.inode*, %struct.inode** %11, align 8
  %151 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %150)
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %155 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @trace_ocfs2_orphan_add_end(i64 %153, i32 %156)
  br label %158

158:                                              ; preds = %146, %107
  %159 = load i32, i32* %18, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %175

161:                                              ; preds = %158
  %162 = load %struct.inode*, %struct.inode** %11, align 8
  %163 = getelementptr inbounds %struct.inode, %struct.inode* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i64 @S_ISDIR(i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %161
  %168 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %19, align 8
  %169 = call i32 @ocfs2_add_links_count(%struct.ocfs2_dinode* %168, i32 -1)
  br label %170

170:                                              ; preds = %167, %161
  %171 = load %struct.inode*, %struct.inode** %15, align 8
  %172 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %19, align 8
  %173 = call i32 @ocfs2_read_links_count(%struct.ocfs2_dinode* %172)
  %174 = call i32 @set_nlink(%struct.inode* %171, i32 %173)
  br label %175

175:                                              ; preds = %170, %158
  br label %176

176:                                              ; preds = %175, %69, %57, %45
  %177 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %178 = call i32 @brelse(%struct.buffer_head* %177)
  %179 = load i32, i32* %18, align 4
  ret i32 %179
}

declare dso_local i32 @trace_ocfs2_orphan_add_begin(i64) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_read_inode_block(%struct.inode*, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @ocfs2_add_links_count(%struct.ocfs2_dinode*, i32) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_read_links_count(%struct.ocfs2_dinode*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @__ocfs2_add_entry(i32*, %struct.inode*, i8*, i32, %struct.inode*, i64, %struct.buffer_head*, %struct.ocfs2_dir_lookup_result*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @trace_ocfs2_orphan_add_end(i64, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
