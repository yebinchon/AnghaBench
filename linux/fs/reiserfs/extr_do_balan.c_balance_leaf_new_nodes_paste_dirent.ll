; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_balance_leaf_new_nodes_paste_dirent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_balance_leaf_new_nodes_paste_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32*, i32, i32*, i32*, i32*, i32, i32, i32 }
%struct.item_head = type { i32 }
%struct.buffer_head = type { i32 }
%struct.buffer_info = type { i32 }
%struct.reiserfs_de_head = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"PAP-12215: insert_size is already 0\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"PAP-12220: there are no so much entries (%d), only %d\00", align 1
@LEAF_FROM_S_TO_SNEW = common dso_local global i32 0, align 4
@DEH_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree_balance*, %struct.item_head*, i8*, %struct.item_head*, %struct.buffer_head**, i32)* @balance_leaf_new_nodes_paste_dirent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @balance_leaf_new_nodes_paste_dirent(%struct.tree_balance* %0, %struct.item_head* %1, i8* %2, %struct.item_head* %3, %struct.buffer_head** %4, i32 %5) #0 {
  %7 = alloca %struct.tree_balance*, align 8
  %8 = alloca %struct.item_head*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.item_head*, align 8
  %11 = alloca %struct.buffer_head**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca %struct.item_head*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.buffer_info, align 4
  store %struct.tree_balance* %0, %struct.tree_balance** %7, align 8
  store %struct.item_head* %1, %struct.item_head** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.item_head* %3, %struct.item_head** %10, align 8
  store %struct.buffer_head** %4, %struct.buffer_head*** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %18 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.buffer_head* @PATH_PLAST_BUFFER(i32 %19)
  store %struct.buffer_head* %20, %struct.buffer_head** %13, align 8
  %21 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %22 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %23 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.item_head* @item_head(%struct.buffer_head* %21, i32 %24)
  store %struct.item_head* %25, %struct.item_head** %14, align 8
  %26 = load %struct.item_head*, %struct.item_head** %14, align 8
  %27 = call i32 @ih_entry_count(%struct.item_head* %26)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %30 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %28, %35
  %37 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %38 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %170

41:                                               ; preds = %6
  %42 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %43 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %15, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %170

47:                                               ; preds = %41
  %48 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %49 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 (i32, i8*, ...) @RFALSE(i32 %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %58 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %63, 1
  %65 = load i32, i32* %15, align 4
  %66 = icmp sge i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %69 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %74, 1
  %76 = load i32, i32* %15, align 4
  %77 = call i32 (i32, i8*, ...) @RFALSE(i32 %67, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %76)
  %78 = load i32, i32* @LEAF_FROM_S_TO_SNEW, align 4
  %79 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %80 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %81 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %88 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 %93, 1
  %95 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %96 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @leaf_move_items(i32 %78, %struct.tree_balance* %79, i32 %86, i32 %94, i32 %101)
  %103 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %104 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %105 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @buffer_info_init_bh(%struct.tree_balance* %103, %struct.buffer_info* %16, i32 %110)
  %112 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %113 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %15, align 4
  %116 = sub nsw i32 %114, %115
  %117 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %118 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %116, %123
  %125 = sub nsw i32 %124, 1
  %126 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %127 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %126, i32 0, i32 4
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = load i8*, i8** %9, align 8
  %132 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %133 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @leaf_paste_in_buffer(%struct.buffer_info* %16, i32 0, i32 %125, i32 %130, i8* %131, i32 %134)
  %136 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %137 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %15, align 4
  %140 = sub nsw i32 %138, %139
  %141 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %142 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %140, %147
  %149 = sub nsw i32 %148, 1
  %150 = load i8*, i8** %9, align 8
  %151 = bitcast i8* %150 to %struct.reiserfs_de_head*
  %152 = load i8*, i8** %9, align 8
  %153 = load i32, i32* @DEH_SIZE, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %152, i64 %154
  %156 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %157 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %156, i32 0, i32 4
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @leaf_paste_entries(%struct.buffer_info* %16, i32 0, i32 %149, i32 1, %struct.reiserfs_de_head* %151, i8* %155, i32 %160)
  %162 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %163 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %162, i32 0, i32 4
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  store i32 0, i32* %165, align 4
  %166 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %167 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 8
  br label %195

170:                                              ; preds = %41, %6
  %171 = load i32, i32* @LEAF_FROM_S_TO_SNEW, align 4
  %172 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %173 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %174 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %173, i32 0, i32 3
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %12, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %181 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %12, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %188 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %187, i32 0, i32 2
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %12, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @leaf_move_items(i32 %171, %struct.tree_balance* %172, i32 %179, i32 %186, i32 %193)
  br label %195

195:                                              ; preds = %170, %47
  ret void
}

declare dso_local %struct.buffer_head* @PATH_PLAST_BUFFER(i32) #1

declare dso_local %struct.item_head* @item_head(%struct.buffer_head*, i32) #1

declare dso_local i32 @ih_entry_count(%struct.item_head*) #1

declare dso_local i32 @RFALSE(i32, i8*, ...) #1

declare dso_local i32 @leaf_move_items(i32, %struct.tree_balance*, i32, i32, i32) #1

declare dso_local i32 @buffer_info_init_bh(%struct.tree_balance*, %struct.buffer_info*, i32) #1

declare dso_local i32 @leaf_paste_in_buffer(%struct.buffer_info*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @leaf_paste_entries(%struct.buffer_info*, i32, i32, i32, %struct.reiserfs_de_head*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
