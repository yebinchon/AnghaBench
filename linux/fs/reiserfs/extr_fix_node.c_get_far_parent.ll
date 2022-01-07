; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_fix_node.c_get_far_parent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_fix_node.c_get_far_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.tree_balance = type { i32*, i32*, i32, %struct.treepath* }
%struct.treepath = type { i32 }
%struct.buffer_head = type { i64 }
%struct.cpu_key = type { i32 }

@s_path_to_neighbor_father = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@INT_MAX = common dso_local global i32 0, align 4
@FIRST_PATH_ELEMENT_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"PAP-8180: invalid path length\00", align 1
@REPEAT_SEARCH = common dso_local global i32 0, align 4
@RIGHT_PARENTS = common dso_local global i8 0, align 1
@CARRY_ON = common dso_local global i32 0, align 4
@DISK_LEAF_NODE_LEVEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"PAP-8185: (%b %z) level too small\00", align 1
@LEFT_PARENTS = common dso_local global i8 0, align 1
@IO_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"PAP-8190: (%b %z) level too small\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"PAP-8192: path length is too small\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree_balance*, i32, %struct.buffer_head**, %struct.buffer_head**, i8)* @get_far_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_far_parent(%struct.tree_balance* %0, i32 %1, %struct.buffer_head** %2, %struct.buffer_head** %3, i8 signext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tree_balance*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head**, align 8
  %10 = alloca %struct.buffer_head**, align 8
  %11 = alloca i8, align 1
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.treepath*, align 8
  %14 = alloca %struct.cpu_key, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.tree_balance* %0, %struct.tree_balance** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.buffer_head** %2, %struct.buffer_head*** %9, align 8
  store %struct.buffer_head** %3, %struct.buffer_head*** %10, align 8
  store i8 %4, i8* %11, align 1
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @s_path_to_neighbor_father, i32 0, i32 0), align 4
  %21 = call i32 @INITIALIZE_PATH(i32 %20)
  %22 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %23 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %22, i32 0, i32 3
  %24 = load %struct.treepath*, %struct.treepath** %23, align 8
  store %struct.treepath* %24, %struct.treepath** %13, align 8
  %25 = load i32, i32* @INT_MAX, align 4
  store i32 %25, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %26 = load %struct.treepath*, %struct.treepath** %13, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @PATH_H_PATH_OFFSET(%struct.treepath* %26, i32 %27)
  store i32 %28, i32* %18, align 4
  %29 = load i32, i32* %18, align 4
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* @FIRST_PATH_ELEMENT_OFFSET, align 4
  %32 = icmp slt i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 (i32, i8*, ...) @RFALSE(i32 %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %90, %5
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* @FIRST_PATH_ELEMENT_OFFSET, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %93

39:                                               ; preds = %35
  %40 = load %struct.treepath*, %struct.treepath** %13, align 8
  %41 = load i32, i32* %15, align 4
  %42 = sub nsw i32 %41, 1
  %43 = call %struct.buffer_head* @PATH_OFFSET_PBUFFER(%struct.treepath* %40, i32 %42)
  store %struct.buffer_head* %43, %struct.buffer_head** %12, align 8
  %44 = call i32 @B_IS_IN_TREE(%struct.buffer_head* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @REPEAT_SEARCH, align 4
  store i32 %47, i32* %6, align 4
  br label %238

48:                                               ; preds = %39
  %49 = load %struct.treepath*, %struct.treepath** %13, align 8
  %50 = load i32, i32* %15, align 4
  %51 = sub nsw i32 %50, 1
  %52 = call i32 @PATH_OFFSET_POSITION(%struct.treepath* %49, i32 %51)
  store i32 %52, i32* %16, align 4
  %53 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %54 = call i32 @B_NR_ITEMS(%struct.buffer_head* %53)
  %55 = icmp sgt i32 %52, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* @REPEAT_SEARCH, align 4
  store i32 %57, i32* %6, align 4
  br label %238

58:                                               ; preds = %48
  %59 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %60 = load i32, i32* %16, align 4
  %61 = call i64 @B_N_CHILD_NUM(%struct.buffer_head* %59, i32 %60)
  %62 = load %struct.treepath*, %struct.treepath** %13, align 8
  %63 = load i32, i32* %15, align 4
  %64 = call %struct.buffer_head* @PATH_OFFSET_PBUFFER(%struct.treepath* %62, i32 %63)
  %65 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %61, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = load i32, i32* @REPEAT_SEARCH, align 4
  store i32 %69, i32* %6, align 4
  br label %238

70:                                               ; preds = %58
  %71 = load i8, i8* %11, align 1
  %72 = sext i8 %71 to i32
  %73 = load i8, i8* @RIGHT_PARENTS, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %78 = call i32 @B_NR_ITEMS(%struct.buffer_head* %77)
  store i32 %78, i32* %17, align 4
  br label %79

79:                                               ; preds = %76, %70
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* %17, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %85 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  store %struct.buffer_head* %84, %struct.buffer_head** %85, align 8
  %86 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %87 = load %struct.buffer_head*, %struct.buffer_head** %86, align 8
  %88 = call i32 @get_bh(%struct.buffer_head* %87)
  br label %93

89:                                               ; preds = %79
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %15, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %15, align 4
  br label %35

93:                                               ; preds = %83, %35
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* @FIRST_PATH_ELEMENT_OFFSET, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %116

97:                                               ; preds = %93
  %98 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %99 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %98, i32 0, i32 3
  %100 = load %struct.treepath*, %struct.treepath** %99, align 8
  %101 = load i32, i32* @FIRST_PATH_ELEMENT_OFFSET, align 4
  %102 = call %struct.buffer_head* @PATH_OFFSET_PBUFFER(%struct.treepath* %100, i32 %101)
  %103 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %106 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @SB_ROOT_BLOCK(i32 %107)
  %109 = icmp eq i64 %104, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %97
  %111 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %111, align 8
  %112 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %112, align 8
  %113 = load i32, i32* @CARRY_ON, align 4
  store i32 %113, i32* %6, align 4
  br label %238

114:                                              ; preds = %97
  %115 = load i32, i32* @REPEAT_SEARCH, align 4
  store i32 %115, i32* %6, align 4
  br label %238

116:                                              ; preds = %93
  %117 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %118 = load %struct.buffer_head*, %struct.buffer_head** %117, align 8
  %119 = call i32 @B_LEVEL(%struct.buffer_head* %118)
  %120 = load i32, i32* @DISK_LEAF_NODE_LEVEL, align 4
  %121 = icmp sle i32 %119, %120
  %122 = zext i1 %121 to i32
  %123 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %124 = load %struct.buffer_head*, %struct.buffer_head** %123, align 8
  %125 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %126 = load %struct.buffer_head*, %struct.buffer_head** %125, align 8
  %127 = call i32 (i32, i8*, ...) @RFALSE(i32 %122, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.buffer_head* %124, %struct.buffer_head* %126)
  %128 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %129 = load %struct.buffer_head*, %struct.buffer_head** %128, align 8
  %130 = call i64 @buffer_locked(%struct.buffer_head* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %154

132:                                              ; preds = %116
  %133 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %134 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @reiserfs_write_unlock_nested(i32 %135)
  store i32 %136, i32* %19, align 4
  %137 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %138 = load %struct.buffer_head*, %struct.buffer_head** %137, align 8
  %139 = call i32 @__wait_on_buffer(%struct.buffer_head* %138)
  %140 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %141 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %19, align 4
  %144 = call i32 @reiserfs_write_lock_nested(i32 %142, i32 %143)
  %145 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %146 = call i64 @FILESYSTEM_CHANGED_TB(%struct.tree_balance* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %132
  %149 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %150 = load %struct.buffer_head*, %struct.buffer_head** %149, align 8
  %151 = call i32 @brelse(%struct.buffer_head* %150)
  %152 = load i32, i32* @REPEAT_SEARCH, align 4
  store i32 %152, i32* %6, align 4
  br label %238

153:                                              ; preds = %132
  br label %154

154:                                              ; preds = %153, %116
  %155 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %156 = load %struct.buffer_head*, %struct.buffer_head** %155, align 8
  %157 = load i8, i8* %11, align 1
  %158 = sext i8 %157 to i32
  %159 = load i8, i8* @LEFT_PARENTS, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %158, %160
  br i1 %161, label %162, label %172

162:                                              ; preds = %154
  %163 = load i32, i32* %16, align 4
  %164 = sub nsw i32 %163, 1
  %165 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %166 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %8, align 4
  %169 = sub nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %167, i64 %170
  store i32 %164, i32* %171, align 4
  br label %181

172:                                              ; preds = %154
  %173 = load i32, i32* %16, align 4
  %174 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %175 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %8, align 4
  %178 = sub nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %176, i64 %179
  store i32 %173, i32* %180, align 4
  br label %181

181:                                              ; preds = %172, %162
  %182 = phi i32 [ %164, %162 ], [ %173, %172 ]
  %183 = call i32 @internal_key(%struct.buffer_head* %156, i32 %182)
  %184 = call i32 @le_key2cpu_key(%struct.cpu_key* %14, i32 %183)
  %185 = load i8, i8* %11, align 1
  %186 = sext i8 %185 to i32
  %187 = load i8, i8* @LEFT_PARENTS, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp eq i32 %186, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %181
  %191 = call i32 @decrement_key(%struct.cpu_key* %14)
  br label %192

192:                                              ; preds = %190, %181
  %193 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %194 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* %8, align 4
  %197 = add nsw i32 %196, 1
  %198 = call i64 @search_by_key(i32 %195, %struct.cpu_key* %14, %struct.TYPE_6__* @s_path_to_neighbor_father, i32 %197)
  %199 = load i64, i64* @IO_ERROR, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %192
  %202 = load i64, i64* @IO_ERROR, align 8
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %6, align 4
  br label %238

204:                                              ; preds = %192
  %205 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %206 = call i64 @FILESYSTEM_CHANGED_TB(%struct.tree_balance* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %204
  %209 = call i32 @pathrelse(%struct.TYPE_6__* @s_path_to_neighbor_father)
  %210 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %211 = load %struct.buffer_head*, %struct.buffer_head** %210, align 8
  %212 = call i32 @brelse(%struct.buffer_head* %211)
  %213 = load i32, i32* @REPEAT_SEARCH, align 4
  store i32 %213, i32* %6, align 4
  br label %238

214:                                              ; preds = %204
  %215 = call %struct.buffer_head* @PATH_PLAST_BUFFER(%struct.TYPE_6__* @s_path_to_neighbor_father)
  %216 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  store %struct.buffer_head* %215, %struct.buffer_head** %216, align 8
  %217 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %218 = load %struct.buffer_head*, %struct.buffer_head** %217, align 8
  %219 = call i32 @B_LEVEL(%struct.buffer_head* %218)
  %220 = load i32, i32* %8, align 4
  %221 = add nsw i32 %220, 1
  %222 = icmp ne i32 %219, %221
  %223 = zext i1 %222 to i32
  %224 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %225 = load %struct.buffer_head*, %struct.buffer_head** %224, align 8
  %226 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %227 = load %struct.buffer_head*, %struct.buffer_head** %226, align 8
  %228 = call i32 (i32, i8*, ...) @RFALSE(i32 %223, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), %struct.buffer_head* %225, %struct.buffer_head* %227)
  %229 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @s_path_to_neighbor_father, i32 0, i32 0), align 4
  %230 = load i32, i32* @FIRST_PATH_ELEMENT_OFFSET, align 4
  %231 = icmp slt i32 %229, %230
  %232 = zext i1 %231 to i32
  %233 = call i32 (i32, i8*, ...) @RFALSE(i32 %232, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %234 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @s_path_to_neighbor_father, i32 0, i32 0), align 4
  %235 = add nsw i32 %234, -1
  store i32 %235, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @s_path_to_neighbor_father, i32 0, i32 0), align 4
  %236 = call i32 @pathrelse(%struct.TYPE_6__* @s_path_to_neighbor_father)
  %237 = load i32, i32* @CARRY_ON, align 4
  store i32 %237, i32* %6, align 4
  br label %238

238:                                              ; preds = %214, %208, %201, %148, %114, %110, %68, %56, %46
  %239 = load i32, i32* %6, align 4
  ret i32 %239
}

declare dso_local i32 @INITIALIZE_PATH(i32) #1

declare dso_local i32 @PATH_H_PATH_OFFSET(%struct.treepath*, i32) #1

declare dso_local i32 @RFALSE(i32, i8*, ...) #1

declare dso_local i32 @B_IS_IN_TREE(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @PATH_OFFSET_PBUFFER(%struct.treepath*, i32) #1

declare dso_local i32 @PATH_OFFSET_POSITION(%struct.treepath*, i32) #1

declare dso_local i32 @B_NR_ITEMS(%struct.buffer_head*) #1

declare dso_local i64 @B_N_CHILD_NUM(%struct.buffer_head*, i32) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i64 @SB_ROOT_BLOCK(i32) #1

declare dso_local i32 @B_LEVEL(%struct.buffer_head*) #1

declare dso_local i64 @buffer_locked(%struct.buffer_head*) #1

declare dso_local i32 @reiserfs_write_unlock_nested(i32) #1

declare dso_local i32 @__wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @reiserfs_write_lock_nested(i32, i32) #1

declare dso_local i64 @FILESYSTEM_CHANGED_TB(%struct.tree_balance*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @le_key2cpu_key(%struct.cpu_key*, i32) #1

declare dso_local i32 @internal_key(%struct.buffer_head*, i32) #1

declare dso_local i32 @decrement_key(%struct.cpu_key*) #1

declare dso_local i64 @search_by_key(i32, %struct.cpu_key*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @pathrelse(%struct.TYPE_6__*) #1

declare dso_local %struct.buffer_head* @PATH_PLAST_BUFFER(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
