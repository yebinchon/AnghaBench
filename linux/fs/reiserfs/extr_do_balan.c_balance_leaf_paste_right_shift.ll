; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_balance_leaf_paste_right_shift.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_balance_leaf_paste_right_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32, i32*, i64, i32, %struct.buffer_head**, i32*, i32*, %struct.TYPE_2__*, i32*, i32, i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.item_head = type { i32 }
%struct.buffer_info = type { i32 }

@.str = private unnamed_addr constant [69 x i8] c"PAP-12155: invalid position to paste. ih_item_len=%d, pos_in_item=%d\00", align 1
@UNFM_P_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree_balance*, %struct.item_head*, i8*)* @balance_leaf_paste_right_shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @balance_leaf_paste_right_shift(%struct.tree_balance* %0, %struct.item_head* %1, i8* %2) #0 {
  %4 = alloca %struct.tree_balance*, align 8
  %5 = alloca %struct.item_head*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.buffer_info, align 4
  %15 = alloca i32, align 4
  store %struct.tree_balance* %0, %struct.tree_balance** %4, align 8
  store %struct.item_head* %1, %struct.item_head** %5, align 8
  store i8* %2, i8** %6, align 8
  %16 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %17 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %16, i32 0, i32 10
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.buffer_head* @PATH_PLAST_BUFFER(i32 %18)
  store %struct.buffer_head* %19, %struct.buffer_head** %7, align 8
  %20 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %21 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %22 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @item_head(%struct.buffer_head* %20, i32 %23)
  %25 = call i64 @is_direntry_le_ih(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %29 = load %struct.item_head*, %struct.item_head** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @balance_leaf_paste_right_shift_dirent(%struct.tree_balance* %28, %struct.item_head* %29, i8* %30)
  br label %220

32:                                               ; preds = %3
  %33 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %34 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %37 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %35, %40
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %44, %32
  %46 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %47 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %50 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %51 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %50, i32 0, i32 9
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @item_head(%struct.buffer_head* %49, i32 %52)
  %54 = call i64 @ih_item_len(i32 %53)
  %55 = icmp ne i64 %48, %54
  %56 = zext i1 %55 to i32
  %57 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %58 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %61 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %62 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @item_head(%struct.buffer_head* %60, i32 %63)
  %65 = call i64 @ih_item_len(i32 %64)
  %66 = call i32 @RFALSE(i32 %56, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i64 %59, i64 %65)
  %67 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %68 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %69 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %68, i32 0, i32 8
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @leaf_shift_right(%struct.tree_balance* %67, i32 %72, i32 %73)
  %75 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %76 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %81 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sub nsw i32 %79, %82
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %45
  store i32 0, i32* %9, align 4
  br label %87

87:                                               ; preds = %86, %45
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %12, align 8
  %90 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %91 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %90, i32 0, i32 4
  %92 = load %struct.buffer_head**, %struct.buffer_head*** %91, align 8
  %93 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %92, i64 0
  %94 = load %struct.buffer_head*, %struct.buffer_head** %93, align 8
  %95 = call i32 @item_head(%struct.buffer_head* %94, i32 0)
  %96 = call i32 @ih_version(i32 %95)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %99 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %98, i32 0, i32 4
  %100 = load %struct.buffer_head**, %struct.buffer_head*** %99, align 8
  %101 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %100, i64 0
  %102 = load %struct.buffer_head*, %struct.buffer_head** %101, align 8
  %103 = call i32 @leaf_key(%struct.buffer_head* %102, i32 0)
  %104 = call i64 @is_indirect_le_key(i32 %97, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %87
  %107 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %108 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %107, i32 0, i32 7
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @UNFM_P_SHIFT, align 4
  %113 = sub nsw i32 %111, %112
  store i32 %113, i32* %15, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %15, align 4
  %116 = shl i32 %114, %115
  %117 = sext i32 %116 to i64
  store i64 %117, i64* %12, align 8
  br label %118

118:                                              ; preds = %106, %87
  %119 = load i32, i32* %11, align 4
  %120 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %121 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %120, i32 0, i32 4
  %122 = load %struct.buffer_head**, %struct.buffer_head*** %121, align 8
  %123 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %122, i64 0
  %124 = load %struct.buffer_head*, %struct.buffer_head** %123, align 8
  %125 = call i32 @leaf_key(%struct.buffer_head* %124, i32 0)
  %126 = load i64, i64* %12, align 8
  %127 = call i32 @add_le_key_k_offset(i32 %119, i32 %125, i64 %126)
  %128 = load i32, i32* %11, align 4
  %129 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %130 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %129, i32 0, i32 5
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %135 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %134, i32 0, i32 6
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @internal_key(i32 %133, i32 %138)
  %140 = load i64, i64* %12, align 8
  %141 = call i32 @add_le_key_k_offset(i32 %128, i32 %139, i64 %140)
  %142 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %143 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %144 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %143, i32 0, i32 5
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @do_balance_mark_internal_dirty(%struct.tree_balance* %142, i32 %147, i32 0)
  %149 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %150 = call i32 @buffer_info_init_right(%struct.tree_balance* %149, %struct.buffer_info* %14)
  %151 = load i32, i32* %9, align 4
  %152 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %153 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = icmp sgt i32 %151, %154
  br i1 %155, label %156, label %167

156:                                              ; preds = %118
  store i32 0, i32* %10, align 4
  %157 = load i8*, i8** %6, align 8
  %158 = load i32, i32* %9, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %157, i64 %159
  %161 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %162 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = sext i32 %163 to i64
  %165 = sub i64 0, %164
  %166 = getelementptr inbounds i8, i8* %160, i64 %165
  store i8* %166, i8** %13, align 8
  br label %179

167:                                              ; preds = %118
  %168 = load i8*, i8** %6, align 8
  store i8* %168, i8** %13, align 8
  %169 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %170 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* %9, align 4
  %173 = sub nsw i32 %171, %172
  store i32 %173, i32* %10, align 4
  %174 = load i32, i32* %10, align 4
  %175 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %176 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = sub nsw i32 %177, %174
  store i32 %178, i32* %176, align 8
  br label %179

179:                                              ; preds = %167, %156
  %180 = load i32, i32* %8, align 4
  %181 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %182 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %181, i32 0, i32 1
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %9, align 4
  %187 = sub nsw i32 %185, %186
  %188 = load i8*, i8** %13, align 8
  %189 = load i32, i32* %10, align 4
  %190 = call i32 @leaf_paste_in_buffer(%struct.buffer_info* %14, i32 0, i32 %180, i32 %187, i8* %188, i32 %189)
  %191 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %192 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %191, i32 0, i32 4
  %193 = load %struct.buffer_head**, %struct.buffer_head*** %192, align 8
  %194 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %193, i64 0
  %195 = load %struct.buffer_head*, %struct.buffer_head** %194, align 8
  %196 = call i32 @item_head(%struct.buffer_head* %195, i32 0)
  %197 = call i64 @is_indirect_le_ih(i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %207

199:                                              ; preds = %179
  %200 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %201 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %200, i32 0, i32 4
  %202 = load %struct.buffer_head**, %struct.buffer_head*** %201, align 8
  %203 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %202, i64 0
  %204 = load %struct.buffer_head*, %struct.buffer_head** %203, align 8
  %205 = call i32 @item_head(%struct.buffer_head* %204, i32 0)
  %206 = call i32 @set_ih_free_space(i32 %205, i32 0)
  br label %207

207:                                              ; preds = %199, %179
  %208 = load i32, i32* %9, align 4
  %209 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %210 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %209, i32 0, i32 1
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 0
  store i32 %208, i32* %212, align 4
  %213 = load i32, i32* %9, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %220, label %215

215:                                              ; preds = %207
  %216 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %217 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = add nsw i64 %218, 1
  store i64 %219, i64* %217, align 8
  br label %220

220:                                              ; preds = %27, %215, %207
  ret void
}

declare dso_local %struct.buffer_head* @PATH_PLAST_BUFFER(i32) #1

declare dso_local i64 @is_direntry_le_ih(i32) #1

declare dso_local i32 @item_head(%struct.buffer_head*, i32) #1

declare dso_local i32 @balance_leaf_paste_right_shift_dirent(%struct.tree_balance*, %struct.item_head*, i8*) #1

declare dso_local i32 @RFALSE(i32, i8*, i64, i64) #1

declare dso_local i64 @ih_item_len(i32) #1

declare dso_local i32 @leaf_shift_right(%struct.tree_balance*, i32, i32) #1

declare dso_local i32 @ih_version(i32) #1

declare dso_local i64 @is_indirect_le_key(i32, i32) #1

declare dso_local i32 @leaf_key(%struct.buffer_head*, i32) #1

declare dso_local i32 @add_le_key_k_offset(i32, i32, i64) #1

declare dso_local i32 @internal_key(i32, i32) #1

declare dso_local i32 @do_balance_mark_internal_dirty(%struct.tree_balance*, i32, i32) #1

declare dso_local i32 @buffer_info_init_right(%struct.tree_balance*, %struct.buffer_info*) #1

declare dso_local i32 @leaf_paste_in_buffer(%struct.buffer_info*, i32, i32, i32, i8*, i32) #1

declare dso_local i64 @is_indirect_le_ih(i32) #1

declare dso_local i32 @set_ih_free_space(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
