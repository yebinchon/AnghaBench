; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_balance_leaf_paste_right_whole.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_balance_leaf_paste_right_whole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32*, i64, i32, i32*, i32, i32*, i32*, i32*, i32, i32 }
%struct.item_head = type { i32 }
%struct.buffer_head = type { i32 }
%struct.buffer_info = type { i32 }
%struct.reiserfs_de_head = type { i32 }

@DEH_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"PAP-12165: directory item must be first item of node when pasting is in 0th position\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree_balance*, %struct.item_head*, i8*)* @balance_leaf_paste_right_whole to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @balance_leaf_paste_right_whole(%struct.tree_balance* %0, %struct.item_head* %1, i8* %2) #0 {
  %4 = alloca %struct.tree_balance*, align 8
  %5 = alloca %struct.item_head*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.item_head*, align 8
  %10 = alloca %struct.buffer_info, align 4
  store %struct.tree_balance* %0, %struct.tree_balance** %4, align 8
  store %struct.item_head* %1, %struct.item_head** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %12 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %11, i32 0, i32 9
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.buffer_head* @PATH_PLAST_BUFFER(i32 %13)
  store %struct.buffer_head* %14, %struct.buffer_head** %7, align 8
  %15 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %16 = call i32 @B_NR_ITEMS(%struct.buffer_head* %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %18 = call i32 @buffer_info_init_right(%struct.tree_balance* %17, %struct.buffer_info* %10)
  %19 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %20 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %21 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %26 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @leaf_shift_right(%struct.tree_balance* %19, i32 %24, i32 %27)
  %29 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %30 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp sge i64 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %3
  %34 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %35 = call i32 @buffer_info_init_right(%struct.tree_balance* %34, %struct.buffer_info* %10)
  %36 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %37 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sub nsw i32 %38, %39
  %41 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %42 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %40, %45
  %47 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %48 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %51 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %6, align 8
  %56 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %57 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @leaf_paste_in_buffer(%struct.buffer_info* %10, i32 %46, i64 %49, i32 %54, i8* %55, i32 %58)
  br label %60

60:                                               ; preds = %33, %3
  %61 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %62 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %61, i32 0, i32 5
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %67 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sub nsw i32 %68, %69
  %71 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %72 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %70, %75
  %77 = call %struct.item_head* @item_head(i32 %65, i32 %76)
  store %struct.item_head* %77, %struct.item_head** %9, align 8
  %78 = load %struct.item_head*, %struct.item_head** %9, align 8
  %79 = call i64 @is_direntry_le_ih(%struct.item_head* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %148

81:                                               ; preds = %60
  %82 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %83 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp sge i64 %84, 0
  br i1 %85, label %86, label %148

86:                                               ; preds = %81
  %87 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %88 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sub nsw i32 %89, %90
  %92 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %93 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %91, %96
  %98 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %99 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i8*, i8** %6, align 8
  %102 = bitcast i8* %101 to %struct.reiserfs_de_head*
  %103 = load i8*, i8** %6, align 8
  %104 = load i32, i32* @DEH_SIZE, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %108 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @leaf_paste_entries(%struct.buffer_info* %10, i32 %97, i64 %100, i32 1, %struct.reiserfs_de_head* %102, i8* %106, i32 %111)
  %113 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %114 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %147, label %117

117:                                              ; preds = %86
  %118 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %119 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sub nsw i32 %120, %121
  %123 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %124 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %122, %127
  %129 = call i32 @RFALSE(i32 %128, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0))
  %130 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %131 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %132 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %131, i32 0, i32 7
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %137 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %136, i32 0, i32 6
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %142 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %141, i32 0, i32 5
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @replace_key(%struct.tree_balance* %130, i32 %135, i32 %140, i32 %145, i32 0)
  br label %147

147:                                              ; preds = %117, %86
  br label %148

148:                                              ; preds = %147, %81, %60
  %149 = load %struct.item_head*, %struct.item_head** %9, align 8
  %150 = call i64 @is_indirect_le_ih(%struct.item_head* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %148
  %153 = load %struct.item_head*, %struct.item_head** %9, align 8
  %154 = call i32 @set_ih_free_space(%struct.item_head* %153, i32 0)
  br label %155

155:                                              ; preds = %152, %148
  %156 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %157 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %156, i32 0, i32 3
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  store i32 0, i32* %159, align 4
  %160 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %161 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %160, i32 0, i32 4
  store i32 0, i32* %161, align 8
  ret void
}

declare dso_local %struct.buffer_head* @PATH_PLAST_BUFFER(i32) #1

declare dso_local i32 @B_NR_ITEMS(%struct.buffer_head*) #1

declare dso_local i32 @buffer_info_init_right(%struct.tree_balance*, %struct.buffer_info*) #1

declare dso_local i32 @leaf_shift_right(%struct.tree_balance*, i32, i32) #1

declare dso_local i32 @leaf_paste_in_buffer(%struct.buffer_info*, i32, i64, i32, i8*, i32) #1

declare dso_local %struct.item_head* @item_head(i32, i32) #1

declare dso_local i64 @is_direntry_le_ih(%struct.item_head*) #1

declare dso_local i32 @leaf_paste_entries(%struct.buffer_info*, i32, i64, i32, %struct.reiserfs_de_head*, i8*, i32) #1

declare dso_local i32 @RFALSE(i32, i8*) #1

declare dso_local i32 @replace_key(%struct.tree_balance*, i32, i32, i32, i32) #1

declare dso_local i64 @is_indirect_le_ih(%struct.item_head*) #1

declare dso_local i32 @set_ih_free_space(%struct.item_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
