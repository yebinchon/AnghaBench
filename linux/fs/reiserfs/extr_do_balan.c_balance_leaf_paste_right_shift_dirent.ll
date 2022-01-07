; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_balance_leaf_paste_right_shift_dirent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_balance_leaf_paste_right_shift_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32, i32, i32 }
%struct.item_head = type { i32 }
%struct.buffer_head = type { i32 }
%struct.buffer_info = type { i32 }
%struct.reiserfs_de_head = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"PAP-12145: invalid parameter in case of a directory\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"PAP-12150: no enough of entries to shift to R[0]: rbytes=%d, entry_count=%d\00", align 1
@DEH_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree_balance*, %struct.item_head*, i8*)* @balance_leaf_paste_right_shift_dirent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @balance_leaf_paste_right_shift_dirent(%struct.tree_balance* %0, %struct.item_head* %1, i8* %2) #0 {
  %4 = alloca %struct.tree_balance*, align 8
  %5 = alloca %struct.item_head*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.buffer_info, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tree_balance* %0, %struct.tree_balance** %4, align 8
  store %struct.item_head* %1, %struct.item_head** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %12 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %11, i32 0, i32 9
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.buffer_head* @PATH_PLAST_BUFFER(i32 %13)
  store %struct.buffer_head* %14, %struct.buffer_head** %7, align 8
  %15 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %16 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 8
  %18 = call i32 (i32, i8*, ...) @RFALSE(i32 %17, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %20 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %21 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @item_head(%struct.buffer_head* %19, i32 %22)
  %24 = call i32 @ih_entry_count(i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %27 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %25, %28
  %30 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %31 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %133

34:                                               ; preds = %3
  %35 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %36 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %37, 1
  %39 = load i32, i32* %9, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %49, label %41

41:                                               ; preds = %34
  %42 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %43 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br label %49

49:                                               ; preds = %41, %34
  %50 = phi i1 [ true, %34 ], [ %48, %41 ]
  %51 = zext i1 %50 to i32
  %52 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %53 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 (i32, i8*, ...) @RFALSE(i32 %51, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %58 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %59 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %64 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 %65, 1
  %67 = call i32 @leaf_shift_right(%struct.tree_balance* %57, i32 %62, i32 %66)
  %68 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %69 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %9, align 4
  %72 = sub nsw i32 %70, %71
  %73 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %74 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %72, %75
  %77 = sub nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  %78 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %79 = call i32 @buffer_info_init_right(%struct.tree_balance* %78, %struct.buffer_info* %8)
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %82 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = load i8*, i8** %6, align 8
  %87 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %88 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @leaf_paste_in_buffer(%struct.buffer_info* %8, i32 0, i32 %80, i32 %85, i8* %86, i32 %89)
  %91 = load i32, i32* %10, align 4
  %92 = load i8*, i8** %6, align 8
  %93 = bitcast i8* %92 to %struct.reiserfs_de_head*
  %94 = load i8*, i8** %6, align 8
  %95 = load i32, i32* @DEH_SIZE, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %99 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @leaf_paste_entries(%struct.buffer_info* %8, i32 0, i32 %91, i32 1, %struct.reiserfs_de_head* %93, i8* %97, i32 %102)
  %104 = load i32, i32* %10, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %124

106:                                              ; preds = %49
  %107 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %108 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %109 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %108, i32 0, i32 6
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %114 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %113, i32 0, i32 5
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %119 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %118, i32 0, i32 4
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @replace_key(%struct.tree_balance* %107, i32 %112, i32 %117, i32 %122, i32 0)
  br label %124

124:                                              ; preds = %106, %49
  %125 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %126 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %125, i32 0, i32 3
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  store i32 0, i32* %128, align 4
  %129 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %130 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 4
  br label %144

133:                                              ; preds = %3
  %134 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %135 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %136 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %141 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @leaf_shift_right(%struct.tree_balance* %134, i32 %139, i32 %142)
  br label %144

144:                                              ; preds = %133, %124
  ret void
}

declare dso_local %struct.buffer_head* @PATH_PLAST_BUFFER(i32) #1

declare dso_local i32 @RFALSE(i32, i8*, ...) #1

declare dso_local i32 @ih_entry_count(i32) #1

declare dso_local i32 @item_head(%struct.buffer_head*, i32) #1

declare dso_local i32 @leaf_shift_right(%struct.tree_balance*, i32, i32) #1

declare dso_local i32 @buffer_info_init_right(%struct.tree_balance*, %struct.buffer_info*) #1

declare dso_local i32 @leaf_paste_in_buffer(%struct.buffer_info*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @leaf_paste_entries(%struct.buffer_info*, i32, i32, i32, %struct.reiserfs_de_head*, i8*, i32) #1

declare dso_local i32 @replace_key(%struct.tree_balance*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
