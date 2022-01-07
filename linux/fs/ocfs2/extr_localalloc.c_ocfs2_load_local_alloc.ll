; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_localalloc.c_ocfs2_load_local_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_localalloc.c_ocfs2_load_local_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i64, i64, i32, %struct.buffer_head*, i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.inode = type { i32 }
%struct.ocfs2_local_alloc = type { i64, i64 }
%struct.TYPE_6__ = type { i64 }

@ML_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"Requested local alloc window %d is larger than max possible %u. Using defaults.\0A\00", align 1
@LOCAL_ALLOC_SYSTEM_INODE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OCFS2_BH_IGNORE_CACHE = common dso_local global i32 0, align 4
@OCFS2_LOCAL_ALLOC_FL = common dso_local global i32 0, align 4
@OCFS2_BITMAP_FL = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Invalid local alloc inode, %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Local alloc size is invalid (la_size = %u)\0A\00", align 1
@.str.3 = private unnamed_addr constant [134 x i8] c"inconsistent detected, clean journal with unrecovered local alloc, please run fsck.ocfs2!\0Afound = %u, set = %u, taken = %u, off = %u\0A\00", align 1
@OCFS2_LA_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_load_local_alloc(%struct.ocfs2_super* %0) #0 {
  %2 = alloca %struct.ocfs2_super*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocfs2_dinode*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ocfs2_local_alloc*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %2, align 8
  store i32 0, i32* %3, align 4
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %4, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %5, align 8
  store %struct.inode* null, %struct.inode** %7, align 8
  %9 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %10 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %167

14:                                               ; preds = %1
  %15 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %16 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %19 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %17, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %14
  %23 = load i32, i32* @ML_NOTICE, align 4
  %24 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %25 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %28 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %29, 1
  %31 = call i32 (i32, i8*, i64, ...) @mlog(i32 %23, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i64 %26, i64 %30)
  %32 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %33 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %36 = call i32 @ocfs2_la_default_mb(%struct.ocfs2_super* %35)
  %37 = call i64 @ocfs2_megabytes_to_clusters(i32 %34, i32 %36)
  %38 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %39 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %22, %14
  %41 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %42 = load i32, i32* @LOCAL_ALLOC_SYSTEM_INODE, align 4
  %43 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %44 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %41, i32 %42, i32 %45)
  store %struct.inode* %46, %struct.inode** %7, align 8
  %47 = load %struct.inode*, %struct.inode** %7, align 8
  %48 = icmp ne %struct.inode* %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @mlog_errno(i32 %52)
  br label %167

54:                                               ; preds = %40
  %55 = load %struct.inode*, %struct.inode** %7, align 8
  %56 = load i32, i32* @OCFS2_BH_IGNORE_CACHE, align 4
  %57 = call i32 @ocfs2_read_inode_block_full(%struct.inode* %55, %struct.buffer_head** %5, i32 %56)
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @mlog_errno(i32 %61)
  br label %167

63:                                               ; preds = %54
  %64 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %65 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %67, %struct.ocfs2_dinode** %4, align 8
  %68 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %69 = call %struct.ocfs2_local_alloc* @OCFS2_LOCAL_ALLOC(%struct.ocfs2_dinode* %68)
  store %struct.ocfs2_local_alloc* %69, %struct.ocfs2_local_alloc** %8, align 8
  %70 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %71 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @le32_to_cpu(i64 %72)
  %74 = load i32, i32* @OCFS2_LOCAL_ALLOC_FL, align 4
  %75 = load i32, i32* @OCFS2_BITMAP_FL, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %73, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %63
  %80 = load i32, i32* @ML_ERROR, align 4
  %81 = load %struct.inode*, %struct.inode** %7, align 8
  %82 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %81)
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 (i32, i8*, i64, ...) @mlog(i32 %80, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %84)
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %167

88:                                               ; preds = %63
  %89 = load %struct.ocfs2_local_alloc*, %struct.ocfs2_local_alloc** %8, align 8
  %90 = getelementptr inbounds %struct.ocfs2_local_alloc, %struct.ocfs2_local_alloc* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %103, label %93

93:                                               ; preds = %88
  %94 = load %struct.ocfs2_local_alloc*, %struct.ocfs2_local_alloc** %8, align 8
  %95 = getelementptr inbounds %struct.ocfs2_local_alloc, %struct.ocfs2_local_alloc* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @le16_to_cpu(i64 %96)
  %98 = load %struct.inode*, %struct.inode** %7, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @ocfs2_local_alloc_size(i32 %100)
  %102 = icmp sgt i32 %97, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %93, %88
  %104 = load i32, i32* @ML_ERROR, align 4
  %105 = load %struct.ocfs2_local_alloc*, %struct.ocfs2_local_alloc** %8, align 8
  %106 = getelementptr inbounds %struct.ocfs2_local_alloc, %struct.ocfs2_local_alloc* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @le16_to_cpu(i64 %107)
  %109 = sext i32 %108 to i64
  %110 = call i32 (i32, i8*, i64, ...) @mlog(i32 %104, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i64 %109)
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %167

113:                                              ; preds = %93
  %114 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %115 = call i32 @ocfs2_local_alloc_count_bits(%struct.ocfs2_dinode* %114)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %137, label %118

118:                                              ; preds = %113
  %119 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %120 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %137, label %125

125:                                              ; preds = %118
  %126 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %127 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %125
  %133 = load %struct.ocfs2_local_alloc*, %struct.ocfs2_local_alloc** %8, align 8
  %134 = getelementptr inbounds %struct.ocfs2_local_alloc, %struct.ocfs2_local_alloc* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %160

137:                                              ; preds = %132, %125, %118, %113
  %138 = load i32, i32* @ML_ERROR, align 4
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %142 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @le32_to_cpu(i64 %145)
  %147 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %148 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @le32_to_cpu(i64 %151)
  %153 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %154 = call %struct.ocfs2_local_alloc* @OCFS2_LOCAL_ALLOC(%struct.ocfs2_dinode* %153)
  %155 = getelementptr inbounds %struct.ocfs2_local_alloc, %struct.ocfs2_local_alloc* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = call i32 (i32, i8*, i64, ...) @mlog(i32 %138, i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.3, i64 0, i64 0), i64 %140, i32 %146, i32 %152, i64 %156)
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %3, align 4
  br label %167

160:                                              ; preds = %132
  %161 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %162 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %163 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %162, i32 0, i32 3
  store %struct.buffer_head* %161, %struct.buffer_head** %163, align 8
  %164 = load i32, i32* @OCFS2_LA_ENABLED, align 4
  %165 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %166 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %165, i32 0, i32 2
  store i32 %164, i32* %166, align 8
  br label %167

167:                                              ; preds = %160, %137, %103, %79, %60, %49, %13
  %168 = load i32, i32* %3, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %172 = call i32 @brelse(%struct.buffer_head* %171)
  br label %173

173:                                              ; preds = %170, %167
  %174 = load %struct.inode*, %struct.inode** %7, align 8
  %175 = call i32 @iput(%struct.inode* %174)
  %176 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %177 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @trace_ocfs2_load_local_alloc(i64 %178)
  %180 = load i32, i32* %3, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %173
  %183 = load i32, i32* %3, align 4
  %184 = call i32 @mlog_errno(i32 %183)
  br label %185

185:                                              ; preds = %182, %173
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local i32 @mlog(i32, i8*, i64, ...) #1

declare dso_local i64 @ocfs2_megabytes_to_clusters(i32, i32) #1

declare dso_local i32 @ocfs2_la_default_mb(%struct.ocfs2_super*) #1

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_read_inode_block_full(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local %struct.ocfs2_local_alloc* @OCFS2_LOCAL_ALLOC(%struct.ocfs2_dinode*) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local %struct.TYPE_6__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @ocfs2_local_alloc_size(i32) #1

declare dso_local i32 @ocfs2_local_alloc_count_bits(%struct.ocfs2_dinode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @trace_ocfs2_load_local_alloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
