; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_balance_leaf_insert_right.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_balance_leaf_insert_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32*, i32, i32, i32, i32*, i32*, i32*, i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.item_head = type { i32 }
%struct.buffer_head = type { i32 }
%struct.buffer_info = type { i32 }

@UNFM_P_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree_balance*, %struct.item_head*, i8*)* @balance_leaf_insert_right to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @balance_leaf_insert_right(%struct.tree_balance* %0, %struct.item_head* %1, i8* %2) #0 {
  %4 = alloca %struct.tree_balance*, align 8
  %5 = alloca %struct.item_head*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_info, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.tree_balance* %0, %struct.tree_balance** %4, align 8
  store %struct.item_head* %1, %struct.item_head** %5, align 8
  store i8* %2, i8** %6, align 8
  %16 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %17 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %16, i32 0, i32 9
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.buffer_head* @PATH_PLAST_BUFFER(i32 %18)
  store %struct.buffer_head* %19, %struct.buffer_head** %7, align 8
  %20 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %21 = call i32 @B_NR_ITEMS(%struct.buffer_head* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %24 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %22, %27
  %29 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %30 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp sge i32 %28, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %3
  %34 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %35 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %36 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %41 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @leaf_shift_right(%struct.tree_balance* %34, i32 %39, i32 %42)
  br label %258

44:                                               ; preds = %3
  %45 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %46 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %50 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %48, %53
  %55 = add nsw i32 %54, 1
  %56 = icmp eq i32 %47, %55
  br i1 %56, label %57, label %188

57:                                               ; preds = %44
  %58 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %59 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, -1
  br i1 %61, label %62, label %188

62:                                               ; preds = %57
  %63 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %64 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %65 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %68, 1
  %70 = call i32 @leaf_shift_right(%struct.tree_balance* %63, i32 %69, i32 -1)
  %71 = load %struct.item_head*, %struct.item_head** %5, align 8
  %72 = call i32 @le_ih_k_offset(%struct.item_head* %71)
  store i32 %72, i32* %10, align 4
  %73 = load %struct.item_head*, %struct.item_head** %5, align 8
  %74 = call i32 @ih_item_len(%struct.item_head* %73)
  store i32 %74, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %75 = load %struct.item_head*, %struct.item_head** %5, align 8
  %76 = call i64 @is_indirect_le_ih(%struct.item_head* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %62
  %79 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %80 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %79, i32 0, i32 8
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @UNFM_P_SHIFT, align 4
  %85 = sub nsw i32 %83, %84
  store i32 %85, i32* %14, align 4
  br label %86

86:                                               ; preds = %78, %62
  %87 = load %struct.item_head*, %struct.item_head** %5, align 8
  %88 = call i32 @le_ih_k_offset(%struct.item_head* %87)
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %91 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %89, %92
  %94 = load i32, i32* %14, align 4
  %95 = shl i32 %93, %94
  %96 = add nsw i32 %88, %95
  store i32 %96, i32* %15, align 4
  %97 = load %struct.item_head*, %struct.item_head** %5, align 8
  %98 = load i32, i32* %15, align 4
  %99 = call i32 @set_le_ih_k_offset(%struct.item_head* %97, i32 %98)
  %100 = load %struct.item_head*, %struct.item_head** %5, align 8
  %101 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %102 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @put_ih_item_len(%struct.item_head* %100, i32 %103)
  %105 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %106 = call i32 @buffer_info_init_right(%struct.tree_balance* %105, %struct.buffer_info* %9)
  %107 = load i32, i32* %11, align 4
  %108 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %109 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %107, %110
  %112 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %113 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = icmp sgt i32 %111, %114
  br i1 %115, label %116, label %131

116:                                              ; preds = %86
  store i32 0, i32* %12, align 4
  %117 = load i8*, i8** %6, align 8
  %118 = load i32, i32* %11, align 4
  %119 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %120 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = sub nsw i32 %118, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %117, i64 %123
  %125 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %126 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = sub i64 0, %128
  %130 = getelementptr inbounds i8, i8* %124, i64 %129
  store i8* %130, i8** %13, align 8
  br label %147

131:                                              ; preds = %86
  %132 = load i8*, i8** %6, align 8
  store i8* %132, i8** %13, align 8
  %133 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %134 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %11, align 4
  %137 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %138 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = sub nsw i32 %136, %139
  %141 = sub nsw i32 %135, %140
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %12, align 4
  %143 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %144 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = sub nsw i32 %145, %142
  store i32 %146, i32* %144, align 8
  br label %147

147:                                              ; preds = %131, %116
  %148 = load %struct.item_head*, %struct.item_head** %5, align 8
  %149 = load i8*, i8** %13, align 8
  %150 = load i32, i32* %12, align 4
  %151 = call i32 @leaf_insert_into_buf(%struct.buffer_info* %9, i32 0, %struct.item_head* %148, i8* %149, i32 %150)
  %152 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %153 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %154 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %153, i32 0, i32 7
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %159 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %158, i32 0, i32 6
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %164 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %163, i32 0, i32 5
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @replace_key(%struct.tree_balance* %152, i32 %157, i32 %162, i32 %167, i32 0)
  %169 = load %struct.item_head*, %struct.item_head** %5, align 8
  %170 = load i32, i32* %10, align 4
  %171 = call i32 @set_le_ih_k_offset(%struct.item_head* %169, i32 %170)
  %172 = load %struct.item_head*, %struct.item_head** %5, align 8
  %173 = load i32, i32* %11, align 4
  %174 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %175 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = sub nsw i32 %173, %176
  %178 = call i32 @put_ih_item_len(%struct.item_head* %172, i32 %177)
  %179 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %180 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %183 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %182, i32 0, i32 4
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  %186 = load i32, i32* %185, align 4
  %187 = sub nsw i32 %186, %181
  store i32 %187, i32* %185, align 4
  br label %258

188:                                              ; preds = %57, %44
  %189 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %190 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %191 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  %194 = load i32, i32* %193, align 4
  %195 = sub nsw i32 %194, 1
  %196 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %197 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @leaf_shift_right(%struct.tree_balance* %189, i32 %195, i32 %198)
  %200 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %201 = call i32 @buffer_info_init_right(%struct.tree_balance* %200, %struct.buffer_info* %9)
  %202 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %203 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* %8, align 4
  %206 = sub nsw i32 %204, %205
  %207 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %208 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %206, %211
  %213 = sub nsw i32 %212, 1
  %214 = load %struct.item_head*, %struct.item_head** %5, align 8
  %215 = load i8*, i8** %6, align 8
  %216 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %217 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @leaf_insert_into_buf(%struct.buffer_info* %9, i32 %213, %struct.item_head* %214, i8* %215, i32 %218)
  %220 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %221 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* %8, align 4
  %224 = sub nsw i32 %222, %223
  %225 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %226 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %225, i32 0, i32 0
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 0
  %229 = load i32, i32* %228, align 4
  %230 = add nsw i32 %224, %229
  %231 = sub nsw i32 %230, 1
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %251

233:                                              ; preds = %188
  %234 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %235 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %236 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %235, i32 0, i32 7
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 0
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %241 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %240, i32 0, i32 6
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 0
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %246 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %245, i32 0, i32 5
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 0
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @replace_key(%struct.tree_balance* %234, i32 %239, i32 %244, i32 %249, i32 0)
  br label %251

251:                                              ; preds = %233, %188
  %252 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %253 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %252, i32 0, i32 4
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 0
  store i32 0, i32* %255, align 4
  %256 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %257 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %256, i32 0, i32 3
  store i32 0, i32* %257, align 8
  br label %258

258:                                              ; preds = %33, %251, %147
  ret void
}

declare dso_local %struct.buffer_head* @PATH_PLAST_BUFFER(i32) #1

declare dso_local i32 @B_NR_ITEMS(%struct.buffer_head*) #1

declare dso_local i32 @leaf_shift_right(%struct.tree_balance*, i32, i32) #1

declare dso_local i32 @le_ih_k_offset(%struct.item_head*) #1

declare dso_local i32 @ih_item_len(%struct.item_head*) #1

declare dso_local i64 @is_indirect_le_ih(%struct.item_head*) #1

declare dso_local i32 @set_le_ih_k_offset(%struct.item_head*, i32) #1

declare dso_local i32 @put_ih_item_len(%struct.item_head*, i32) #1

declare dso_local i32 @buffer_info_init_right(%struct.tree_balance*, %struct.buffer_info*) #1

declare dso_local i32 @leaf_insert_into_buf(%struct.buffer_info*, i32, %struct.item_head*, i8*, i32) #1

declare dso_local i32 @replace_key(%struct.tree_balance*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
