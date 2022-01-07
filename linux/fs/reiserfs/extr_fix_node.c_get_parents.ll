; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_fix_node.c_get_parents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_fix_node.c_get_parents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32*, i32*, %struct.buffer_head**, %struct.buffer_head**, %struct.buffer_head**, %struct.buffer_head**, %struct.treepath* }
%struct.buffer_head = type { i32 }
%struct.treepath = type { i32 }

@FIRST_PATH_ELEMENT_OFFSET = common dso_local global i32 0, align 4
@CARRY_ON = common dso_local global i32 0, align 4
@LEFT_PARENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"PAP-8195: FL (%b) or CFL (%b) is invalid\00", align 1
@RIGHT_PARENTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"PAP-8205: FR (%b) or CFR (%b) is invalid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree_balance*, i32)* @get_parents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_parents(%struct.tree_balance* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tree_balance*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.treepath*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  store %struct.tree_balance* %0, %struct.tree_balance** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %13 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %12, i32 0, i32 6
  %14 = load %struct.treepath*, %struct.treepath** %13, align 8
  store %struct.treepath* %14, %struct.treepath** %6, align 8
  %15 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %16 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %15, i32 0, i32 6
  %17 = load %struct.treepath*, %struct.treepath** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @PATH_H_PATH_OFFSET(%struct.treepath* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @FIRST_PATH_ELEMENT_OFFSET, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %81

23:                                               ; preds = %2
  %24 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %25 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %24, i32 0, i32 5
  %26 = load %struct.buffer_head**, %struct.buffer_head*** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %26, i64 %28
  %30 = load %struct.buffer_head*, %struct.buffer_head** %29, align 8
  %31 = call i32 @brelse(%struct.buffer_head* %30)
  %32 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %33 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %32, i32 0, i32 4
  %34 = load %struct.buffer_head**, %struct.buffer_head*** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %34, i64 %36
  %38 = load %struct.buffer_head*, %struct.buffer_head** %37, align 8
  %39 = call i32 @brelse(%struct.buffer_head* %38)
  %40 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %41 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %40, i32 0, i32 3
  %42 = load %struct.buffer_head**, %struct.buffer_head*** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %42, i64 %44
  %46 = load %struct.buffer_head*, %struct.buffer_head** %45, align 8
  %47 = call i32 @brelse(%struct.buffer_head* %46)
  %48 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %49 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %48, i32 0, i32 2
  %50 = load %struct.buffer_head**, %struct.buffer_head*** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %50, i64 %52
  %54 = load %struct.buffer_head*, %struct.buffer_head** %53, align 8
  %55 = call i32 @brelse(%struct.buffer_head* %54)
  %56 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %57 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %56, i32 0, i32 5
  %58 = load %struct.buffer_head**, %struct.buffer_head*** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %58, i64 %60
  store %struct.buffer_head* null, %struct.buffer_head** %61, align 8
  %62 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %63 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %62, i32 0, i32 4
  %64 = load %struct.buffer_head**, %struct.buffer_head*** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %64, i64 %66
  store %struct.buffer_head* null, %struct.buffer_head** %67, align 8
  %68 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %69 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %68, i32 0, i32 3
  %70 = load %struct.buffer_head**, %struct.buffer_head*** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %70, i64 %72
  store %struct.buffer_head* null, %struct.buffer_head** %73, align 8
  %74 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %75 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %74, i32 0, i32 2
  %76 = load %struct.buffer_head**, %struct.buffer_head*** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %76, i64 %78
  store %struct.buffer_head* null, %struct.buffer_head** %79, align 8
  %80 = load i32, i32* @CARRY_ON, align 4
  store i32 %80, i32* %3, align 4
  br label %265

81:                                               ; preds = %2
  %82 = load %struct.treepath*, %struct.treepath** %6, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sub nsw i32 %83, 1
  %85 = call i32 @PATH_OFFSET_POSITION(%struct.treepath* %82, i32 %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %109

88:                                               ; preds = %81
  %89 = load %struct.treepath*, %struct.treepath** %6, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sub nsw i32 %90, 1
  %92 = call %struct.buffer_head* @PATH_OFFSET_PBUFFER(%struct.treepath* %89, i32 %91)
  store %struct.buffer_head* %92, %struct.buffer_head** %10, align 8
  %93 = load %struct.treepath*, %struct.treepath** %6, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sub nsw i32 %94, 1
  %96 = call %struct.buffer_head* @PATH_OFFSET_PBUFFER(%struct.treepath* %93, i32 %95)
  store %struct.buffer_head* %96, %struct.buffer_head** %11, align 8
  %97 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %98 = call i32 @get_bh(%struct.buffer_head* %97)
  %99 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %100 = call i32 @get_bh(%struct.buffer_head* %99)
  %101 = load i32, i32* %7, align 4
  %102 = sub nsw i32 %101, 1
  %103 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %104 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 %102, i32* %108, align 4
  br label %120

109:                                              ; preds = %81
  %110 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %111 = load i32, i32* %5, align 4
  %112 = add nsw i32 %111, 1
  %113 = load i32, i32* @LEFT_PARENTS, align 4
  %114 = call i32 @get_far_parent(%struct.tree_balance* %110, i32 %112, %struct.buffer_head** %10, %struct.buffer_head** %11, i32 %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* @CARRY_ON, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %109
  %118 = load i32, i32* %8, align 4
  store i32 %118, i32* %3, align 4
  br label %265

119:                                              ; preds = %109
  br label %120

120:                                              ; preds = %119, %88
  %121 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %122 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %121, i32 0, i32 5
  %123 = load %struct.buffer_head**, %struct.buffer_head*** %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %123, i64 %125
  %127 = load %struct.buffer_head*, %struct.buffer_head** %126, align 8
  %128 = call i32 @brelse(%struct.buffer_head* %127)
  %129 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %130 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %131 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %130, i32 0, i32 5
  %132 = load %struct.buffer_head**, %struct.buffer_head*** %131, align 8
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %132, i64 %134
  store %struct.buffer_head* %129, %struct.buffer_head** %135, align 8
  %136 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %137 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %136, i32 0, i32 4
  %138 = load %struct.buffer_head**, %struct.buffer_head*** %137, align 8
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %138, i64 %140
  %142 = load %struct.buffer_head*, %struct.buffer_head** %141, align 8
  %143 = call i32 @brelse(%struct.buffer_head* %142)
  %144 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %145 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %146 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %145, i32 0, i32 4
  %147 = load %struct.buffer_head**, %struct.buffer_head*** %146, align 8
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %147, i64 %149
  store %struct.buffer_head* %144, %struct.buffer_head** %150, align 8
  %151 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %152 = icmp ne %struct.buffer_head* %151, null
  br i1 %152, label %153, label %157

153:                                              ; preds = %120
  %154 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %155 = call i32 @B_IS_IN_TREE(%struct.buffer_head* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %153, %120
  %158 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %159 = icmp ne %struct.buffer_head* %158, null
  br i1 %159, label %160, label %165

160:                                              ; preds = %157
  %161 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %162 = call i32 @B_IS_IN_TREE(%struct.buffer_head* %161)
  %163 = icmp ne i32 %162, 0
  %164 = xor i1 %163, true
  br label %165

165:                                              ; preds = %160, %157
  %166 = phi i1 [ false, %157 ], [ %164, %160 ]
  br label %167

167:                                              ; preds = %165, %153
  %168 = phi i1 [ true, %153 ], [ %166, %165 ]
  %169 = zext i1 %168 to i32
  %170 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %171 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %172 = call i32 @RFALSE(i32 %169, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.buffer_head* %170, %struct.buffer_head* %171)
  %173 = load i32, i32* %7, align 4
  %174 = load %struct.treepath*, %struct.treepath** %6, align 8
  %175 = load i32, i32* %5, align 4
  %176 = add nsw i32 %175, 1
  %177 = call i32 @PATH_H_PBUFFER(%struct.treepath* %174, i32 %176)
  %178 = call i32 @B_NR_ITEMS(i32 %177)
  %179 = icmp eq i32 %173, %178
  br i1 %179, label %180, label %191

180:                                              ; preds = %167
  %181 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %182 = load i32, i32* %5, align 4
  %183 = add nsw i32 %182, 1
  %184 = load i32, i32* @RIGHT_PARENTS, align 4
  %185 = call i32 @get_far_parent(%struct.tree_balance* %181, i32 %183, %struct.buffer_head** %10, %struct.buffer_head** %11, i32 %184)
  store i32 %185, i32* %8, align 4
  %186 = load i32, i32* @CARRY_ON, align 4
  %187 = icmp ne i32 %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %180
  %189 = load i32, i32* %8, align 4
  store i32 %189, i32* %3, align 4
  br label %265

190:                                              ; preds = %180
  br label %211

191:                                              ; preds = %167
  %192 = load %struct.treepath*, %struct.treepath** %6, align 8
  %193 = load i32, i32* %9, align 4
  %194 = sub nsw i32 %193, 1
  %195 = call %struct.buffer_head* @PATH_OFFSET_PBUFFER(%struct.treepath* %192, i32 %194)
  store %struct.buffer_head* %195, %struct.buffer_head** %10, align 8
  %196 = load %struct.treepath*, %struct.treepath** %6, align 8
  %197 = load i32, i32* %9, align 4
  %198 = sub nsw i32 %197, 1
  %199 = call %struct.buffer_head* @PATH_OFFSET_PBUFFER(%struct.treepath* %196, i32 %198)
  store %struct.buffer_head* %199, %struct.buffer_head** %11, align 8
  %200 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %201 = call i32 @get_bh(%struct.buffer_head* %200)
  %202 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %203 = call i32 @get_bh(%struct.buffer_head* %202)
  %204 = load i32, i32* %7, align 4
  %205 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %206 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %205, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %5, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  store i32 %204, i32* %210, align 4
  br label %211

211:                                              ; preds = %191, %190
  %212 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %213 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %212, i32 0, i32 3
  %214 = load %struct.buffer_head**, %struct.buffer_head*** %213, align 8
  %215 = load i32, i32* %5, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %214, i64 %216
  %218 = load %struct.buffer_head*, %struct.buffer_head** %217, align 8
  %219 = call i32 @brelse(%struct.buffer_head* %218)
  %220 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %221 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %222 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %221, i32 0, i32 3
  %223 = load %struct.buffer_head**, %struct.buffer_head*** %222, align 8
  %224 = load i32, i32* %5, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %223, i64 %225
  store %struct.buffer_head* %220, %struct.buffer_head** %226, align 8
  %227 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %228 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %227, i32 0, i32 2
  %229 = load %struct.buffer_head**, %struct.buffer_head*** %228, align 8
  %230 = load i32, i32* %5, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %229, i64 %231
  %233 = load %struct.buffer_head*, %struct.buffer_head** %232, align 8
  %234 = call i32 @brelse(%struct.buffer_head* %233)
  %235 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %236 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %237 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %236, i32 0, i32 2
  %238 = load %struct.buffer_head**, %struct.buffer_head*** %237, align 8
  %239 = load i32, i32* %5, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %238, i64 %240
  store %struct.buffer_head* %235, %struct.buffer_head** %241, align 8
  %242 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %243 = icmp ne %struct.buffer_head* %242, null
  br i1 %243, label %244, label %248

244:                                              ; preds = %211
  %245 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %246 = call i32 @B_IS_IN_TREE(%struct.buffer_head* %245)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %258

248:                                              ; preds = %244, %211
  %249 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %250 = icmp ne %struct.buffer_head* %249, null
  br i1 %250, label %251, label %256

251:                                              ; preds = %248
  %252 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %253 = call i32 @B_IS_IN_TREE(%struct.buffer_head* %252)
  %254 = icmp ne i32 %253, 0
  %255 = xor i1 %254, true
  br label %256

256:                                              ; preds = %251, %248
  %257 = phi i1 [ false, %248 ], [ %255, %251 ]
  br label %258

258:                                              ; preds = %256, %244
  %259 = phi i1 [ true, %244 ], [ %257, %256 ]
  %260 = zext i1 %259 to i32
  %261 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %262 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %263 = call i32 @RFALSE(i32 %260, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), %struct.buffer_head* %261, %struct.buffer_head* %262)
  %264 = load i32, i32* @CARRY_ON, align 4
  store i32 %264, i32* %3, align 4
  br label %265

265:                                              ; preds = %258, %188, %117, %23
  %266 = load i32, i32* %3, align 4
  ret i32 %266
}

declare dso_local i32 @PATH_H_PATH_OFFSET(%struct.treepath*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @PATH_OFFSET_POSITION(%struct.treepath*, i32) #1

declare dso_local %struct.buffer_head* @PATH_OFFSET_PBUFFER(%struct.treepath*, i32) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @get_far_parent(%struct.tree_balance*, i32, %struct.buffer_head**, %struct.buffer_head**, i32) #1

declare dso_local i32 @RFALSE(i32, i8*, %struct.buffer_head*, %struct.buffer_head*) #1

declare dso_local i32 @B_IS_IN_TREE(%struct.buffer_head*) #1

declare dso_local i32 @B_NR_ITEMS(i32) #1

declare dso_local i32 @PATH_H_PBUFFER(%struct.treepath*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
