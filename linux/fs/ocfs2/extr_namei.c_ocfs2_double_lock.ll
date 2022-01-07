; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_namei.c_ocfs2_double_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_namei.c_ocfs2_double_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.buffer_head = type { i32 }
%struct.inode = type opaque
%struct.ocfs2_inode_info = type { i64 }

@OI_LS_RENAME1 = common dso_local global i32 0, align 4
@OI_LS_PARENT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@OI_LS_RENAME2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.buffer_head**, %struct.inode*, %struct.buffer_head**, %struct.inode*, i32)* @ocfs2_double_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_double_lock(%struct.ocfs2_super* %0, %struct.buffer_head** %1, %struct.inode* %2, %struct.buffer_head** %3, %struct.inode* %4, i32 %5) #0 {
  %7 = alloca %struct.ocfs2_super*, align 8
  %8 = alloca %struct.buffer_head**, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.buffer_head**, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ocfs2_inode_info*, align 8
  %17 = alloca %struct.ocfs2_inode_info*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %7, align 8
  store %struct.buffer_head** %1, %struct.buffer_head*** %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store %struct.buffer_head** %3, %struct.buffer_head*** %10, align 8
  store %struct.inode* %4, %struct.inode** %11, align 8
  store i32 %5, i32* %12, align 4
  %18 = load %struct.inode*, %struct.inode** %9, align 8
  %19 = bitcast %struct.inode* %18 to %struct.buffer_head**
  %20 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.buffer_head** %19)
  store %struct.ocfs2_inode_info* %20, %struct.ocfs2_inode_info** %16, align 8
  %21 = load %struct.inode*, %struct.inode** %11, align 8
  %22 = bitcast %struct.inode* %21 to %struct.buffer_head**
  %23 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.buffer_head** %22)
  store %struct.ocfs2_inode_info* %23, %struct.ocfs2_inode_info** %17, align 8
  %24 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %16, align 8
  %25 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %17, align 8
  %28 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @trace_ocfs2_double_lock(i64 %26, i64 %29)
  %31 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  %32 = load %struct.buffer_head*, %struct.buffer_head** %31, align 8
  %33 = icmp ne %struct.buffer_head* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %6
  %35 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %35, align 8
  br label %36

36:                                               ; preds = %34, %6
  %37 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %38 = load %struct.buffer_head*, %struct.buffer_head** %37, align 8
  %39 = icmp ne %struct.buffer_head* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %41, align 8
  br label %42

42:                                               ; preds = %40, %36
  %43 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %16, align 8
  %44 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %17, align 8
  %47 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %50, label %124

50:                                               ; preds = %42
  %51 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %52 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %17, align 8
  %53 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %16, align 8
  %56 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @ocfs2_check_if_ancestor(%struct.ocfs2_super* %51, i64 %54, i64 %57)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = load i32, i32* %14, align 4
  store i32 %62, i32* %13, align 4
  br label %172

63:                                               ; preds = %50
  %64 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %65 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %16, align 8
  %66 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %17, align 8
  %69 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @ocfs2_check_if_ancestor(%struct.ocfs2_super* %64, i64 %67, i64 %70)
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %63
  %75 = load i32, i32* %15, align 4
  store i32 %75, i32* %13, align 4
  br label %172

76:                                               ; preds = %63
  %77 = load i32, i32* %14, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %90, label %79

79:                                               ; preds = %76
  %80 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %16, align 8
  %81 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %17, align 8
  %84 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp slt i64 %82, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %79
  %88 = load i32, i32* %15, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %87, %76
  %91 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %92 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  %93 = call i32 @swap(%struct.buffer_head** %91, %struct.buffer_head** %92)
  %94 = load %struct.inode*, %struct.inode** %11, align 8
  %95 = bitcast %struct.inode* %94 to %struct.buffer_head**
  %96 = load %struct.inode*, %struct.inode** %9, align 8
  %97 = bitcast %struct.inode* %96 to %struct.buffer_head**
  %98 = call i32 @swap(%struct.buffer_head** %95, %struct.buffer_head** %97)
  br label %99

99:                                               ; preds = %90, %87, %79
  %100 = load %struct.inode*, %struct.inode** %11, align 8
  %101 = bitcast %struct.inode* %100 to %struct.buffer_head**
  %102 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %103 = load i32, i32* %12, align 4
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = load i32, i32* @OI_LS_RENAME1, align 4
  br label %109

107:                                              ; preds = %99
  %108 = load i32, i32* @OI_LS_PARENT, align 4
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i32 [ %106, %105 ], [ %108, %107 ]
  %111 = call i32 @ocfs2_inode_lock_nested(%struct.buffer_head** %101, %struct.buffer_head** %102, i32 1, i32 %110)
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %109
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* @ENOENT, align 4
  %117 = sub nsw i32 0, %116
  %118 = icmp ne i32 %115, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load i32, i32* %13, align 4
  %121 = call i32 @mlog_errno(i32 %120)
  br label %122

122:                                              ; preds = %119, %114
  br label %172

123:                                              ; preds = %109
  br label %124

124:                                              ; preds = %123, %42
  %125 = load %struct.inode*, %struct.inode** %9, align 8
  %126 = bitcast %struct.inode* %125 to %struct.buffer_head**
  %127 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  %128 = load i32, i32* %12, align 4
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = load i32, i32* @OI_LS_RENAME2, align 4
  br label %134

132:                                              ; preds = %124
  %133 = load i32, i32* @OI_LS_PARENT, align 4
  br label %134

134:                                              ; preds = %132, %130
  %135 = phi i32 [ %131, %130 ], [ %133, %132 ]
  %136 = call i32 @ocfs2_inode_lock_nested(%struct.buffer_head** %126, %struct.buffer_head** %127, i32 1, i32 %135)
  store i32 %136, i32* %13, align 4
  %137 = load i32, i32* %13, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %164

139:                                              ; preds = %134
  %140 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %16, align 8
  %141 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %17, align 8
  %144 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %142, %145
  br i1 %146, label %147, label %155

147:                                              ; preds = %139
  %148 = load %struct.inode*, %struct.inode** %11, align 8
  %149 = bitcast %struct.inode* %148 to %struct.buffer_head**
  %150 = call i32 @ocfs2_inode_unlock(%struct.buffer_head** %149, i32 1)
  %151 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %152 = load %struct.buffer_head*, %struct.buffer_head** %151, align 8
  %153 = call i32 @brelse(%struct.buffer_head* %152)
  %154 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %154, align 8
  br label %155

155:                                              ; preds = %147, %139
  %156 = load i32, i32* %13, align 4
  %157 = load i32, i32* @ENOENT, align 4
  %158 = sub nsw i32 0, %157
  %159 = icmp ne i32 %156, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load i32, i32* %13, align 4
  %162 = call i32 @mlog_errno(i32 %161)
  br label %163

163:                                              ; preds = %160, %155
  br label %164

164:                                              ; preds = %163, %134
  %165 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %16, align 8
  %166 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %17, align 8
  %169 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @trace_ocfs2_double_lock_end(i64 %167, i64 %170)
  br label %172

172:                                              ; preds = %164, %122, %74, %61
  %173 = load i32, i32* %13, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load i32, i32* %13, align 4
  %177 = call i32 @mlog_errno(i32 %176)
  br label %178

178:                                              ; preds = %175, %172
  %179 = load i32, i32* %13, align 4
  ret i32 %179
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.buffer_head**) #1

declare dso_local i32 @trace_ocfs2_double_lock(i64, i64) #1

declare dso_local i32 @ocfs2_check_if_ancestor(%struct.ocfs2_super*, i64, i64) #1

declare dso_local i32 @swap(%struct.buffer_head**, %struct.buffer_head**) #1

declare dso_local i32 @ocfs2_inode_lock_nested(%struct.buffer_head**, %struct.buffer_head**, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.buffer_head**, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @trace_ocfs2_double_lock_end(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
