; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_balance_leaf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_balance_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i64*, i32*, i32, i32*, i32, i64*, i32*, i64*, i32*, i32*, i32, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.item_head = type { i32 }
%struct.buffer_head = type { i32 }

@balance_at = common dso_local global i32* null, align 8
@M_INSERT = common dso_local global i32 0, align 4
@UNFM_P_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"PAP-12180: blknum can not be %d. It must be <= 3\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"PAP-12185: blknum can not be %d. It must be >= 0\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"PAP-12190: lnum and rnum must not be zero\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"vs-12195\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"CFR not initialized\00", align 1
@M_PASTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree_balance*, %struct.item_head*, i8*, i32, %struct.item_head*, %struct.buffer_head**)* @balance_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @balance_leaf(%struct.tree_balance* %0, %struct.item_head* %1, i8* %2, i32 %3, %struct.item_head* %4, %struct.buffer_head** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.tree_balance*, align 8
  %9 = alloca %struct.item_head*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.item_head*, align 8
  %13 = alloca %struct.buffer_head**, align 8
  %14 = alloca %struct.buffer_head*, align 8
  store %struct.tree_balance* %0, %struct.tree_balance** %8, align 8
  store %struct.item_head* %1, %struct.item_head** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.item_head* %4, %struct.item_head** %12, align 8
  store %struct.buffer_head** %5, %struct.buffer_head*** %13, align 8
  %15 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %16 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %15, i32 0, i32 13
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = call %struct.buffer_head* @PATH_PLAST_BUFFER(%struct.TYPE_3__* %17)
  store %struct.buffer_head* %18, %struct.buffer_head** %14, align 8
  %19 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %20 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load i32*, i32** @balance_at, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @PROC_INFO_INC(i32 %21, i32 %24)
  %26 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %27 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %6
  %33 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @balance_leaf_when_delete(%struct.tree_balance* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  br label %228

36:                                               ; preds = %6
  %37 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %38 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %37, i32 0, i32 13
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = call i32 @PATH_LAST_POSITION(%struct.TYPE_3__* %39)
  %41 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %42 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %41, i32 0, i32 10
  store i32 %40, i32* %42, align 8
  %43 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %44 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %43, i32 0, i32 13
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %49 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %48, i32 0, i32 11
  store i32 %47, i32* %49, align 4
  %50 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %51 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %50, i32 0, i32 12
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @M_INSERT, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %36
  %56 = load i8*, i8** %10, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %55
  %59 = load %struct.item_head*, %struct.item_head** %9, align 8
  %60 = call i64 @ih_item_len(%struct.item_head* %59)
  %61 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %62 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %61, i32 0, i32 12
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %58, %55, %36
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @M_INSERT, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %63
  %68 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %69 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %70 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %69, i32 0, i32 10
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @item_head(%struct.buffer_head* %68, i32 %71)
  %73 = call i64 @is_indirect_le_ih(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %67
  %76 = load i32, i32* @UNFM_P_SIZE, align 4
  %77 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %78 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %77, i32 0, i32 11
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %75, %67, %63
  %82 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %83 = load %struct.item_head*, %struct.item_head** %9, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @balance_leaf_left(%struct.tree_balance* %82, %struct.item_head* %83, i8* %84, i32 %85)
  %87 = load i8*, i8** %10, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  store i8* %89, i8** %10, align 8
  %90 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %91 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %96 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, -1
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 1, i32 0
  %101 = sub nsw i32 %94, %100
  %102 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %103 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %102, i32 0, i32 10
  %104 = load i32, i32* %103, align 8
  %105 = sub nsw i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %107 = load %struct.item_head*, %struct.item_head** %9, align 8
  %108 = load i8*, i8** %10, align 8
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @balance_leaf_right(%struct.tree_balance* %106, %struct.item_head* %107, i8* %108, i32 %109)
  %111 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %112 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp sgt i32 %115, 3
  %117 = zext i1 %116 to i32
  %118 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %119 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %118, i32 0, i32 3
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (i32, i8*, ...) @RFALSE(i32 %117, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %122)
  %124 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %125 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp slt i32 %128, 0
  %130 = zext i1 %129 to i32
  %131 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %132 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %131, i32 0, i32 3
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 (i32, i8*, ...) @RFALSE(i32 %130, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %135)
  %137 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %138 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %137, i32 0, i32 3
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %215

143:                                              ; preds = %81
  %144 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %145 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %143
  %151 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %152 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %151, i32 0, i32 9
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  %157 = xor i1 %156, true
  br label %158

158:                                              ; preds = %150, %143
  %159 = phi i1 [ true, %143 ], [ %157, %150 ]
  %160 = zext i1 %159 to i32
  %161 = call i32 (i32, i8*, ...) @RFALSE(i32 %160, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %162 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %163 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %162, i32 0, i32 5
  %164 = load i64*, i64** %163, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %211

168:                                              ; preds = %158
  %169 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %170 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %169, i32 0, i32 7
  %171 = load i64*, i64** %170, align 8
  %172 = getelementptr inbounds i64, i64* %171, i64 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %180, label %175

175:                                              ; preds = %168
  %176 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %177 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = call i32 (i32, i8*, i8*, ...) @reiserfs_panic(i32 %178, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %180

180:                                              ; preds = %175, %168
  %181 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %182 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %181, i32 0, i32 5
  %183 = load i64*, i64** %182, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 0
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %187 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %186, i32 0, i32 8
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @internal_key(i64 %185, i32 %190)
  %192 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %193 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %192, i32 0, i32 7
  %194 = load i64*, i64** %193, align 8
  %195 = getelementptr inbounds i64, i64* %194, i64 0
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %198 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %197, i32 0, i32 6
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 0
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @internal_key(i64 %196, i32 %201)
  %203 = call i32 @copy_key(i32 %191, i32 %202)
  %204 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %205 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %206 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %205, i32 0, i32 5
  %207 = load i64*, i64** %206, align 8
  %208 = getelementptr inbounds i64, i64* %207, i64 0
  %209 = load i64, i64* %208, align 8
  %210 = call i32 @do_balance_mark_internal_dirty(%struct.tree_balance* %204, i64 %209, i32 0)
  br label %211

211:                                              ; preds = %180, %158
  %212 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %213 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %214 = call i32 @reiserfs_invalidate_buffer(%struct.tree_balance* %212, %struct.buffer_head* %213)
  store i32 0, i32* %7, align 4
  br label %228

215:                                              ; preds = %81
  %216 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %217 = load %struct.item_head*, %struct.item_head** %9, align 8
  %218 = load i8*, i8** %10, align 8
  %219 = load %struct.item_head*, %struct.item_head** %12, align 8
  %220 = load %struct.buffer_head**, %struct.buffer_head*** %13, align 8
  %221 = load i32, i32* %11, align 4
  %222 = call i32 @balance_leaf_new_nodes(%struct.tree_balance* %216, %struct.item_head* %217, i8* %218, %struct.item_head* %219, %struct.buffer_head** %220, i32 %221)
  %223 = load %struct.tree_balance*, %struct.tree_balance** %8, align 8
  %224 = load %struct.item_head*, %struct.item_head** %9, align 8
  %225 = load i8*, i8** %10, align 8
  %226 = load i32, i32* %11, align 4
  %227 = call i32 @balance_leaf_finish_node(%struct.tree_balance* %223, %struct.item_head* %224, i8* %225, i32 %226)
  store i32 0, i32* %7, align 4
  br label %228

228:                                              ; preds = %215, %211, %32
  %229 = load i32, i32* %7, align 4
  ret i32 %229
}

declare dso_local %struct.buffer_head* @PATH_PLAST_BUFFER(%struct.TYPE_3__*) #1

declare dso_local i32 @PROC_INFO_INC(i32, i32) #1

declare dso_local i32 @balance_leaf_when_delete(%struct.tree_balance*, i32) #1

declare dso_local i32 @PATH_LAST_POSITION(%struct.TYPE_3__*) #1

declare dso_local i64 @ih_item_len(%struct.item_head*) #1

declare dso_local i64 @is_indirect_le_ih(i32) #1

declare dso_local i32 @item_head(%struct.buffer_head*, i32) #1

declare dso_local i32 @balance_leaf_left(%struct.tree_balance*, %struct.item_head*, i8*, i32) #1

declare dso_local i32 @balance_leaf_right(%struct.tree_balance*, %struct.item_head*, i8*, i32) #1

declare dso_local i32 @RFALSE(i32, i8*, ...) #1

declare dso_local i32 @reiserfs_panic(i32, i8*, i8*, ...) #1

declare dso_local i32 @copy_key(i32, i32) #1

declare dso_local i32 @internal_key(i64, i32) #1

declare dso_local i32 @do_balance_mark_internal_dirty(%struct.tree_balance*, i64, i32) #1

declare dso_local i32 @reiserfs_invalidate_buffer(%struct.tree_balance*, %struct.buffer_head*) #1

declare dso_local i32 @balance_leaf_new_nodes(%struct.tree_balance*, %struct.item_head*, i8*, %struct.item_head*, %struct.buffer_head**, i32) #1

declare dso_local i32 @balance_leaf_finish_node(%struct.tree_balance*, %struct.item_head*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
