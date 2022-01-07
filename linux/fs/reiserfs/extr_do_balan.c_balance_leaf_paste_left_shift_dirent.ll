; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_balance_leaf_paste_left_shift_dirent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_balance_leaf_paste_left_shift_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32, i32, i32*, i32*, i64, i32, i32* }
%struct.item_head = type { i32 }
%struct.buffer_info = type { i32 }
%struct.reiserfs_de_head = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"PAP-12090: invalid parameter in case of a directory\00", align 1
@DEH_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree_balance*, %struct.item_head*, i8*)* @balance_leaf_paste_left_shift_dirent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @balance_leaf_paste_left_shift_dirent(%struct.tree_balance* %0, %struct.item_head* %1, i8* %2) #0 {
  %4 = alloca %struct.tree_balance*, align 8
  %5 = alloca %struct.item_head*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_info, align 4
  %9 = alloca %struct.item_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tree_balance* %0, %struct.tree_balance** %4, align 8
  store %struct.item_head* %1, %struct.item_head** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %13 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %12, i32 0, i32 6
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @B_NR_ITEMS(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %19 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @RFALSE(i32 %20, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %23 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %26 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %24, %27
  br i1 %28, label %29, label %123

29:                                               ; preds = %3
  %30 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %31 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %11, align 4
  %33 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %34 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %35 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %40 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, 1
  %43 = call i32 @leaf_shift_left(%struct.tree_balance* %33, i32 %38, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %74

46:                                               ; preds = %29
  %47 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %48 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %74, label %51

51:                                               ; preds = %46
  %52 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %53 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %52, i32 0, i32 6
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %58 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %57, i32 0, i32 6
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @B_NR_ITEMS(i32 %61)
  %63 = sub nsw i32 %62, 1
  %64 = call %struct.item_head* @item_head(i32 %56, i32 %63)
  store %struct.item_head* %64, %struct.item_head** %9, align 8
  %65 = load %struct.item_head*, %struct.item_head** %9, align 8
  %66 = call i32 @ih_entry_count(%struct.item_head* %65)
  %67 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %68 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 %69, 1
  %71 = sub nsw i32 %66, %70
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %51, %46, %29
  %75 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %76 = call i32 @buffer_info_init_left(%struct.tree_balance* %75, %struct.buffer_info* %8)
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %80 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %78, %81
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = sub nsw i64 %82, %84
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %88 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = load i8*, i8** %6, align 8
  %93 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %94 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @leaf_paste_in_buffer(%struct.buffer_info* %8, i64 %85, i32 %86, i32 %91, i8* %92, i32 %95)
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %100 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %98, %101
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = sub nsw i64 %102, %104
  %106 = load i32, i32* %11, align 4
  %107 = load i8*, i8** %6, align 8
  %108 = bitcast i8* %107 to %struct.reiserfs_de_head*
  %109 = load i8*, i8** %6, align 8
  %110 = load i32, i32* @DEH_SIZE, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %114 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @leaf_paste_entries(%struct.buffer_info* %8, i64 %105, i32 %106, i32 1, %struct.reiserfs_de_head* %108, i8* %112, i32 %117)
  %119 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %120 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  store i32 0, i32* %122, align 4
  br label %134

123:                                              ; preds = %3
  %124 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %125 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %126 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %131 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @leaf_shift_left(%struct.tree_balance* %124, i32 %129, i32 %132)
  br label %134

134:                                              ; preds = %123, %74
  %135 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %136 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %139 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = sub nsw i32 %140, %137
  store i32 %141, i32* %139, align 4
  ret void
}

declare dso_local i32 @B_NR_ITEMS(i32) #1

declare dso_local i32 @RFALSE(i32, i8*) #1

declare dso_local i32 @leaf_shift_left(%struct.tree_balance*, i32, i32) #1

declare dso_local %struct.item_head* @item_head(i32, i32) #1

declare dso_local i32 @ih_entry_count(%struct.item_head*) #1

declare dso_local i32 @buffer_info_init_left(%struct.tree_balance*, %struct.buffer_info*) #1

declare dso_local i32 @leaf_paste_in_buffer(%struct.buffer_info*, i64, i32, i32, i8*, i32) #1

declare dso_local i32 @leaf_paste_entries(%struct.buffer_info*, i64, i32, i32, %struct.reiserfs_de_head*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
