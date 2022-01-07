; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_lbalance.c_leaf_delete_items_entirely.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_lbalance.c_leaf_delete_items_entirely.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_info = type { i64, i32, i32, %struct.buffer_head* }
%struct.buffer_head = type { i32, %struct.item_head* }
%struct.item_head = type { i32 }
%struct.block_head = type { i32 }
%struct.disk_child = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"10210: buffer is 0\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"10215: del_num less than 0 (%d)\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"10220: first=%d, number=%d, there is %d items\00", align 1
@IH_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer_info*, i32, i32)* @leaf_delete_items_entirely to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @leaf_delete_items_entirely(%struct.buffer_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.buffer_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.block_head*, align 8
  %14 = alloca %struct.item_head*, align 8
  %15 = alloca %struct.disk_child*, align 8
  store %struct.buffer_info* %0, %struct.buffer_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load %struct.buffer_info*, %struct.buffer_info** %4, align 8
  %17 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %16, i32 0, i32 3
  %18 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  store %struct.buffer_head* %18, %struct.buffer_head** %7, align 8
  %19 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %20 = icmp eq %struct.buffer_head* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 (i32, i8*, ...) @RFALSE(i32 %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %6, align 4
  %27 = call i32 (i32, i8*, ...) @RFALSE(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %217

31:                                               ; preds = %3
  %32 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %33 = call %struct.block_head* @B_BLK_HEAD(%struct.buffer_head* %32)
  store %struct.block_head* %33, %struct.block_head** %13, align 8
  %34 = load %struct.block_head*, %struct.block_head** %13, align 8
  %35 = call i32 @blkh_nr_item(%struct.block_head* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %39, %40
  %42 = load i32, i32* %8, align 4
  %43 = icmp sgt i32 %41, %42
  br label %44

44:                                               ; preds = %38, %31
  %45 = phi i1 [ true, %31 ], [ %43, %38 ]
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 (i32, i8*, ...) @RFALSE(i32 %46, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 %48, i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %44
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load %struct.buffer_info*, %struct.buffer_info** %4, align 8
  %59 = call i32 @make_empty_node(%struct.buffer_info* %58)
  %60 = load %struct.buffer_info*, %struct.buffer_info** %4, align 8
  %61 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %64 = call i32 @do_balance_mark_leaf_dirty(i32 %62, %struct.buffer_head* %63, i32 0)
  br label %217

65:                                               ; preds = %53, %44
  %66 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call %struct.item_head* @item_head(%struct.buffer_head* %66, i32 %67)
  store %struct.item_head* %68, %struct.item_head** %14, align 8
  %69 = load i32, i32* %5, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %73 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  br label %79

75:                                               ; preds = %65
  %76 = load %struct.item_head*, %struct.item_head** %14, align 8
  %77 = getelementptr inbounds %struct.item_head, %struct.item_head* %76, i64 -1
  %78 = call i32 @ih_location(%struct.item_head* %77)
  br label %79

79:                                               ; preds = %75, %71
  %80 = phi i32 [ %74, %71 ], [ %78, %75 ]
  store i32 %80, i32* %10, align 4
  %81 = load %struct.item_head*, %struct.item_head** %14, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sub nsw i32 %82, 1
  %84 = load i32, i32* %5, align 4
  %85 = sub nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.item_head, %struct.item_head* %81, i64 %86
  %88 = call i32 @ih_location(%struct.item_head* %87)
  store i32 %88, i32* %11, align 4
  %89 = load %struct.item_head*, %struct.item_head** %14, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.item_head, %struct.item_head* %89, i64 %92
  %94 = call i32 @ih_location(%struct.item_head* %93)
  store i32 %94, i32* %12, align 4
  %95 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %96 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %95, i32 0, i32 1
  %97 = load %struct.item_head*, %struct.item_head** %96, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.item_head, %struct.item_head* %97, i64 %99
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.item_head, %struct.item_head* %100, i64 %102
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = sub i64 0, %105
  %107 = getelementptr inbounds %struct.item_head, %struct.item_head* %103, i64 %106
  %108 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %109 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %108, i32 0, i32 1
  %110 = load %struct.item_head*, %struct.item_head** %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.item_head, %struct.item_head* %110, i64 %112
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %11, align 4
  %116 = sub nsw i32 %114, %115
  %117 = call i32 @memmove(%struct.item_head* %107, %struct.item_head* %113, i32 %116)
  %118 = load %struct.item_head*, %struct.item_head** %14, align 8
  %119 = load %struct.item_head*, %struct.item_head** %14, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.item_head, %struct.item_head* %119, i64 %121
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %5, align 4
  %125 = sub nsw i32 %123, %124
  %126 = load i32, i32* %6, align 4
  %127 = sub nsw i32 %125, %126
  %128 = load i32, i32* @IH_SIZE, align 4
  %129 = mul nsw i32 %127, %128
  %130 = call i32 @memmove(%struct.item_head* %118, %struct.item_head* %122, i32 %129)
  %131 = load i32, i32* %5, align 4
  store i32 %131, i32* %9, align 4
  br label %132

132:                                              ; preds = %157, %79
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* %6, align 4
  %136 = sub nsw i32 %134, %135
  %137 = icmp slt i32 %133, %136
  br i1 %137, label %138, label %160

138:                                              ; preds = %132
  %139 = load %struct.item_head*, %struct.item_head** %14, align 8
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* %5, align 4
  %142 = sub nsw i32 %140, %141
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.item_head, %struct.item_head* %139, i64 %143
  %145 = load %struct.item_head*, %struct.item_head** %14, align 8
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* %5, align 4
  %148 = sub nsw i32 %146, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.item_head, %struct.item_head* %145, i64 %149
  %151 = call i32 @ih_location(%struct.item_head* %150)
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* %12, align 4
  %154 = sub nsw i32 %152, %153
  %155 = add nsw i32 %151, %154
  %156 = call i32 @put_ih_location(%struct.item_head* %144, i32 %155)
  br label %157

157:                                              ; preds = %138
  %158 = load i32, i32* %9, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %9, align 4
  br label %132

160:                                              ; preds = %132
  %161 = load %struct.block_head*, %struct.block_head** %13, align 8
  %162 = load %struct.block_head*, %struct.block_head** %13, align 8
  %163 = call i32 @blkh_nr_item(%struct.block_head* %162)
  %164 = load i32, i32* %6, align 4
  %165 = sub nsw i32 %163, %164
  %166 = call i32 @set_blkh_nr_item(%struct.block_head* %161, i32 %165)
  %167 = load %struct.block_head*, %struct.block_head** %13, align 8
  %168 = load %struct.block_head*, %struct.block_head** %13, align 8
  %169 = call i64 @blkh_free_space(%struct.block_head* %168)
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* %12, align 4
  %172 = sub nsw i32 %170, %171
  %173 = load i32, i32* @IH_SIZE, align 4
  %174 = load i32, i32* %6, align 4
  %175 = mul nsw i32 %173, %174
  %176 = add nsw i32 %172, %175
  %177 = sext i32 %176 to i64
  %178 = add nsw i64 %169, %177
  %179 = call i32 @set_blkh_free_space(%struct.block_head* %167, i64 %178)
  %180 = load %struct.buffer_info*, %struct.buffer_info** %4, align 8
  %181 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %184 = call i32 @do_balance_mark_leaf_dirty(i32 %182, %struct.buffer_head* %183, i32 0)
  %185 = load %struct.buffer_info*, %struct.buffer_info** %4, align 8
  %186 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %217

189:                                              ; preds = %160
  %190 = load %struct.buffer_info*, %struct.buffer_info** %4, align 8
  %191 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.buffer_info*, %struct.buffer_info** %4, align 8
  %194 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = call %struct.disk_child* @B_N_CHILD(i64 %192, i32 %195)
  store %struct.disk_child* %196, %struct.disk_child** %15, align 8
  %197 = load %struct.disk_child*, %struct.disk_child** %15, align 8
  %198 = load %struct.disk_child*, %struct.disk_child** %15, align 8
  %199 = call i64 @dc_size(%struct.disk_child* %198)
  %200 = load i32, i32* %10, align 4
  %201 = load i32, i32* %12, align 4
  %202 = sub nsw i32 %200, %201
  %203 = load i32, i32* @IH_SIZE, align 4
  %204 = load i32, i32* %6, align 4
  %205 = mul nsw i32 %203, %204
  %206 = add nsw i32 %202, %205
  %207 = sext i32 %206 to i64
  %208 = sub nsw i64 %199, %207
  %209 = call i32 @put_dc_size(%struct.disk_child* %197, i64 %208)
  %210 = load %struct.buffer_info*, %struct.buffer_info** %4, align 8
  %211 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.buffer_info*, %struct.buffer_info** %4, align 8
  %214 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = call i32 @do_balance_mark_internal_dirty(i32 %212, i64 %215, i32 0)
  br label %217

217:                                              ; preds = %30, %57, %189, %160
  ret void
}

declare dso_local i32 @RFALSE(i32, i8*, ...) #1

declare dso_local %struct.block_head* @B_BLK_HEAD(%struct.buffer_head*) #1

declare dso_local i32 @blkh_nr_item(%struct.block_head*) #1

declare dso_local i32 @make_empty_node(%struct.buffer_info*) #1

declare dso_local i32 @do_balance_mark_leaf_dirty(i32, %struct.buffer_head*, i32) #1

declare dso_local %struct.item_head* @item_head(%struct.buffer_head*, i32) #1

declare dso_local i32 @ih_location(%struct.item_head*) #1

declare dso_local i32 @memmove(%struct.item_head*, %struct.item_head*, i32) #1

declare dso_local i32 @put_ih_location(%struct.item_head*, i32) #1

declare dso_local i32 @set_blkh_nr_item(%struct.block_head*, i32) #1

declare dso_local i32 @set_blkh_free_space(%struct.block_head*, i64) #1

declare dso_local i64 @blkh_free_space(%struct.block_head*) #1

declare dso_local %struct.disk_child* @B_N_CHILD(i64, i32) #1

declare dso_local i32 @put_dc_size(%struct.disk_child*, i64) #1

declare dso_local i64 @dc_size(%struct.disk_child*) #1

declare dso_local i32 @do_balance_mark_internal_dirty(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
