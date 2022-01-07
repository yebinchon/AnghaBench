; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_balance_leaf_when_delete_cut.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_balance_leaf_when_delete_cut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32*, i32*, i64*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.buffer_head = type { i32 }
%struct.item_head = type { i32 }
%struct.buffer_info = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"PAP-12030: can not change delimiting key. CFL[0]=%p\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"PAP-12035: cut must leave non-zero dynamic length of item\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree_balance*)* @balance_leaf_when_delete_cut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @balance_leaf_when_delete_cut(%struct.tree_balance* %0) #0 {
  %2 = alloca %struct.tree_balance*, align 8
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.item_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_info, align 4
  store %struct.tree_balance* %0, %struct.tree_balance** %2, align 8
  %8 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %9 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %8, i32 0, i32 3
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = call %struct.buffer_head* @PATH_PLAST_BUFFER(%struct.TYPE_3__* %10)
  store %struct.buffer_head* %11, %struct.buffer_head** %3, align 8
  %12 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %13 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %12, i32 0, i32 3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = call i32 @PATH_LAST_POSITION(%struct.TYPE_3__* %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.item_head* @item_head(%struct.buffer_head* %16, i32 %17)
  store %struct.item_head* %18, %struct.item_head** %5, align 8
  %19 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %20 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %19, i32 0, i32 3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %25 = call i32 @buffer_info_init_tbS0(%struct.tree_balance* %24, %struct.buffer_info* %7)
  %26 = load %struct.item_head*, %struct.item_head** %5, align 8
  %27 = call i64 @is_direntry_le_ih(%struct.item_head* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %92

29:                                               ; preds = %1
  %30 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %31 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 -1, i32* %33, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %37 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 0, %40
  %42 = call i32 @leaf_cut_from_buffer(%struct.buffer_info* %7, i32 %34, i32 %35, i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %29
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %45
  %49 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %50 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %49, i32 0, i32 2
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  %55 = xor i1 %54, true
  br label %56

56:                                               ; preds = %48, %45, %29
  %57 = phi i1 [ false, %45 ], [ false, %29 ], [ %55, %48 ]
  %58 = zext i1 %57 to i32
  %59 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %60 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %59, i32 0, i32 2
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 (i32, i8*, ...) @RFALSE(i32 %58, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %63)
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %91, label %67

67:                                               ; preds = %56
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %91, label %70

70:                                               ; preds = %67
  %71 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %72 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %71, i32 0, i32 2
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %70
  %78 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %79 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %80 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %79, i32 0, i32 2
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %85 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %90 = call i32 @replace_key(%struct.tree_balance* %78, i64 %83, i32 %88, %struct.buffer_head* %89, i32 0)
  br label %91

91:                                               ; preds = %77, %70, %67, %56
  br label %108

92:                                               ; preds = %1
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %96 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 0, %99
  %101 = call i32 @leaf_cut_from_buffer(%struct.buffer_info* %7, i32 %93, i32 %94, i32 %100)
  %102 = load %struct.item_head*, %struct.item_head** %5, align 8
  %103 = call i32 @ih_item_len(%struct.item_head* %102)
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = call i32 (i32, i8*, ...) @RFALSE(i32 %106, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  br label %108

108:                                              ; preds = %92, %91
  ret void
}

declare dso_local %struct.buffer_head* @PATH_PLAST_BUFFER(%struct.TYPE_3__*) #1

declare dso_local i32 @PATH_LAST_POSITION(%struct.TYPE_3__*) #1

declare dso_local %struct.item_head* @item_head(%struct.buffer_head*, i32) #1

declare dso_local i32 @buffer_info_init_tbS0(%struct.tree_balance*, %struct.buffer_info*) #1

declare dso_local i64 @is_direntry_le_ih(%struct.item_head*) #1

declare dso_local i32 @leaf_cut_from_buffer(%struct.buffer_info*, i32, i32, i32) #1

declare dso_local i32 @RFALSE(i32, i8*, ...) #1

declare dso_local i32 @replace_key(%struct.tree_balance*, i64, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @ih_item_len(%struct.item_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
