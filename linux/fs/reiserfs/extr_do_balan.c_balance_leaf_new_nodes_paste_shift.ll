; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_balance_leaf_new_nodes_paste_shift.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_balance_leaf_new_nodes_paste_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i64, i32*, i32*, i32, %struct.TYPE_2__*, %struct.buffer_head**, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.item_head = type { i32 }
%struct.buffer_head = type { i32 }
%struct.buffer_info = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"PAP-12210: ih must be 0\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"PAP-12225: item too short or insert_size <= 0\00", align 1
@LEAF_FROM_S_TO_SNEW = common dso_local global i32 0, align 4
@UNFM_P_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree_balance*, %struct.item_head*, i8*, %struct.item_head*, %struct.buffer_head**, i32)* @balance_leaf_new_nodes_paste_shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @balance_leaf_new_nodes_paste_shift(%struct.tree_balance* %0, %struct.item_head* %1, i8* %2, %struct.item_head* %3, %struct.buffer_head** %4, i32 %5) #0 {
  %7 = alloca %struct.tree_balance*, align 8
  %8 = alloca %struct.item_head*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.item_head*, align 8
  %11 = alloca %struct.buffer_head**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca %struct.item_head*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.item_head*, align 8
  %21 = alloca %struct.buffer_info, align 4
  store %struct.tree_balance* %0, %struct.tree_balance** %7, align 8
  store %struct.item_head* %1, %struct.item_head** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.item_head* %3, %struct.item_head** %10, align 8
  store %struct.buffer_head** %4, %struct.buffer_head*** %11, align 8
  store i32 %5, i32* %12, align 4
  %22 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %23 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.buffer_head* @PATH_PLAST_BUFFER(i32 %24)
  store %struct.buffer_head* %25, %struct.buffer_head** %13, align 8
  %26 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %27 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %28 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.item_head* @item_head(%struct.buffer_head* %26, i32 %29)
  store %struct.item_head* %30, %struct.item_head** %14, align 8
  %31 = load %struct.item_head*, %struct.item_head** %8, align 8
  %32 = ptrtoint %struct.item_head* %31 to i32
  %33 = call i32 @RFALSE(i32 %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.item_head*, %struct.item_head** %14, align 8
  %35 = call i64 @is_direntry_le_ih(%struct.item_head* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %6
  %38 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %39 = load %struct.item_head*, %struct.item_head** %8, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = load %struct.item_head*, %struct.item_head** %10, align 8
  %42 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @balance_leaf_new_nodes_paste_dirent(%struct.tree_balance* %38, %struct.item_head* %39, i8* %40, %struct.item_head* %41, %struct.buffer_head** %42, i32 %43)
  br label %207

45:                                               ; preds = %6
  %46 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %47 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %50 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %51 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 8
  %53 = call %struct.item_head* @item_head(%struct.buffer_head* %49, i32 %52)
  %54 = call i64 @ih_item_len(%struct.item_head* %53)
  %55 = icmp ne i64 %48, %54
  br i1 %55, label %63, label %56

56:                                               ; preds = %45
  %57 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %58 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp sle i32 %61, 0
  br label %63

63:                                               ; preds = %56, %45
  %64 = phi i1 [ true, %45 ], [ %62, %56 ]
  %65 = zext i1 %64 to i32
  %66 = call i32 @RFALSE(i32 %65, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %67 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %68 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %75 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %73, %78
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %15, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %63
  store i32 0, i32* %15, align 4
  br label %83

83:                                               ; preds = %82, %63
  %84 = load i32, i32* @LEAF_FROM_S_TO_SNEW, align 4
  %85 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %86 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %87 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %86, i32 0, i32 6
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %15, align 4
  %94 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %95 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %94, i32 0, i32 5
  %96 = load %struct.buffer_head**, %struct.buffer_head*** %95, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %96, i64 %98
  %100 = load %struct.buffer_head*, %struct.buffer_head** %99, align 8
  %101 = call i32 @leaf_move_items(i32 %84, %struct.tree_balance* %85, i32 %92, i32 %93, %struct.buffer_head* %100)
  %102 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %103 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %108 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = sub nsw i32 %106, %113
  store i32 %114, i32* %16, align 4
  %115 = load i32, i32* %16, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %83
  store i32 0, i32* %16, align 4
  br label %118

118:                                              ; preds = %117, %83
  %119 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %120 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %121 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %120, i32 0, i32 5
  %122 = load %struct.buffer_head**, %struct.buffer_head*** %121, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %122, i64 %124
  %126 = load %struct.buffer_head*, %struct.buffer_head** %125, align 8
  %127 = call i32 @buffer_info_init_bh(%struct.tree_balance* %119, %struct.buffer_info* %21, %struct.buffer_head* %126)
  %128 = load i32, i32* %16, align 4
  %129 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %130 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = icmp sgt i32 %128, %131
  br i1 %132, label %133, label %144

133:                                              ; preds = %118
  store i32 0, i32* %17, align 4
  %134 = load i8*, i8** %9, align 8
  %135 = load i32, i32* %16, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  %138 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %139 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = sub i64 0, %141
  %143 = getelementptr inbounds i8, i8* %137, i64 %142
  store i8* %143, i8** %19, align 8
  br label %156

144:                                              ; preds = %118
  %145 = load i8*, i8** %9, align 8
  store i8* %145, i8** %19, align 8
  %146 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %147 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %16, align 4
  %150 = sub nsw i32 %148, %149
  store i32 %150, i32* %17, align 4
  %151 = load i32, i32* %17, align 4
  %152 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %153 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = sub nsw i32 %154, %151
  store i32 %155, i32* %153, align 8
  br label %156

156:                                              ; preds = %144, %133
  %157 = load i32, i32* %15, align 4
  %158 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %159 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %16, align 4
  %164 = sub nsw i32 %162, %163
  %165 = load i8*, i8** %19, align 8
  %166 = load i32, i32* %17, align 4
  %167 = call i32 @leaf_paste_in_buffer(%struct.buffer_info* %21, i32 0, i32 %157, i32 %164, i8* %165, i32 %166)
  %168 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %169 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %168, i32 0, i32 5
  %170 = load %struct.buffer_head**, %struct.buffer_head*** %169, align 8
  %171 = load i32, i32* %12, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %170, i64 %172
  %174 = load %struct.buffer_head*, %struct.buffer_head** %173, align 8
  %175 = call %struct.item_head* @item_head(%struct.buffer_head* %174, i32 0)
  store %struct.item_head* %175, %struct.item_head** %20, align 8
  store i32 0, i32* %18, align 4
  %176 = load %struct.item_head*, %struct.item_head** %20, align 8
  %177 = call i64 @is_indirect_le_ih(%struct.item_head* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %156
  %180 = load %struct.item_head*, %struct.item_head** %20, align 8
  %181 = call i32 @set_ih_free_space(%struct.item_head* %180, i32 0)
  %182 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %183 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %182, i32 0, i32 4
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @UNFM_P_SHIFT, align 4
  %188 = sub nsw i32 %186, %187
  store i32 %188, i32* %18, align 4
  br label %189

189:                                              ; preds = %179, %156
  %190 = load %struct.item_head*, %struct.item_head** %20, align 8
  %191 = load i32, i32* %16, align 4
  %192 = load i32, i32* %18, align 4
  %193 = shl i32 %191, %192
  %194 = call i32 @add_le_ih_k_offset(%struct.item_head* %190, i32 %193)
  %195 = load i32, i32* %16, align 4
  %196 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %197 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %196, i32 0, i32 1
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  store i32 %195, i32* %199, align 4
  %200 = load i32, i32* %16, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %207, label %202

202:                                              ; preds = %189
  %203 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %204 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = add nsw i64 %205, 1
  store i64 %206, i64* %204, align 8
  br label %207

207:                                              ; preds = %37, %202, %189
  ret void
}

declare dso_local %struct.buffer_head* @PATH_PLAST_BUFFER(i32) #1

declare dso_local %struct.item_head* @item_head(%struct.buffer_head*, i32) #1

declare dso_local i32 @RFALSE(i32, i8*) #1

declare dso_local i64 @is_direntry_le_ih(%struct.item_head*) #1

declare dso_local i32 @balance_leaf_new_nodes_paste_dirent(%struct.tree_balance*, %struct.item_head*, i8*, %struct.item_head*, %struct.buffer_head**, i32) #1

declare dso_local i64 @ih_item_len(%struct.item_head*) #1

declare dso_local i32 @leaf_move_items(i32, %struct.tree_balance*, i32, i32, %struct.buffer_head*) #1

declare dso_local i32 @buffer_info_init_bh(%struct.tree_balance*, %struct.buffer_info*, %struct.buffer_head*) #1

declare dso_local i32 @leaf_paste_in_buffer(%struct.buffer_info*, i32, i32, i32, i8*, i32) #1

declare dso_local i64 @is_indirect_le_ih(%struct.item_head*) #1

declare dso_local i32 @set_ih_free_space(%struct.item_head*, i32) #1

declare dso_local i32 @add_le_ih_k_offset(%struct.item_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
