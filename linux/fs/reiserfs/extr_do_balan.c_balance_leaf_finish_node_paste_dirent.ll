; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_balance_leaf_finish_node_paste_dirent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_balance_leaf_finish_node_paste_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i64, i32*, i32*, i64*, i32*, i32, i32, i32 }
%struct.item_head = type { i32 }
%struct.buffer_head = type { i32 }
%struct.buffer_info = type { i32 }
%struct.reiserfs_de_head = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"PAP-12260: insert_size is 0 already\00", align 1
@DEH_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"PAP-12270: CFL[0]/L[0] must  be specified\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree_balance*, %struct.item_head*, i8*)* @balance_leaf_finish_node_paste_dirent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @balance_leaf_finish_node_paste_dirent(%struct.tree_balance* %0, %struct.item_head* %1, i8* %2) #0 {
  %4 = alloca %struct.tree_balance*, align 8
  %5 = alloca %struct.item_head*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.item_head*, align 8
  %9 = alloca %struct.buffer_info, align 4
  store %struct.tree_balance* %0, %struct.tree_balance** %4, align 8
  store %struct.item_head* %1, %struct.item_head** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %11 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.buffer_head* @PATH_PLAST_BUFFER(i32 %12)
  store %struct.buffer_head* %13, %struct.buffer_head** %7, align 8
  %14 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %15 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %16 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.item_head* @item_head(%struct.buffer_head* %14, i32 %17)
  store %struct.item_head* %18, %struct.item_head** %8, align 8
  %19 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %20 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %21, 0
  br i1 %22, label %23, label %130

23:                                               ; preds = %3
  %24 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %25 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.item_head*, %struct.item_head** %8, align 8
  %28 = call i64 @ih_entry_count(%struct.item_head* %27)
  %29 = icmp sle i64 %26, %28
  br i1 %29, label %30, label %130

30:                                               ; preds = %23
  %31 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %32 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @RFALSE(i32 %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %41 = call i32 @buffer_info_init_tbS0(%struct.tree_balance* %40, %struct.buffer_info* %9)
  %42 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %43 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %46 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %49 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %6, align 8
  %54 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %55 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @leaf_paste_in_buffer(%struct.buffer_info* %9, i32 %44, i64 %47, i32 %52, i8* %53, i32 %56)
  %58 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %59 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %62 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = bitcast i8* %64 to %struct.reiserfs_de_head*
  %66 = load i8*, i8** %6, align 8
  %67 = load i32, i32* @DEH_SIZE, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %71 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @leaf_paste_entries(%struct.buffer_info* %9, i32 %60, i64 %63, i32 1, %struct.reiserfs_de_head* %65, i8* %69, i32 %74)
  %76 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %77 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %125, label %80

80:                                               ; preds = %30
  %81 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %82 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %125, label %85

85:                                               ; preds = %80
  %86 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %87 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %86, i32 0, i32 3
  %88 = load i64*, i64** %87, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %85
  %93 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %94 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %93, i32 0, i32 4
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  br label %100

100:                                              ; preds = %92, %85
  %101 = phi i1 [ true, %85 ], [ %99, %92 ]
  %102 = zext i1 %101 to i32
  %103 = call i32 @RFALSE(i32 %102, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %104 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %105 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %104, i32 0, i32 3
  %106 = load i64*, i64** %105, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %124

110:                                              ; preds = %100
  %111 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %112 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %113 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %112, i32 0, i32 3
  %114 = load i64*, i64** %113, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %118 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %123 = call i32 @replace_key(%struct.tree_balance* %111, i64 %116, i32 %121, %struct.buffer_head* %122, i32 0)
  br label %124

124:                                              ; preds = %110, %100
  br label %125

125:                                              ; preds = %124, %80, %30
  %126 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %127 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  store i32 0, i32* %129, align 4
  br label %130

130:                                              ; preds = %125, %23, %3
  ret void
}

declare dso_local %struct.buffer_head* @PATH_PLAST_BUFFER(i32) #1

declare dso_local %struct.item_head* @item_head(%struct.buffer_head*, i32) #1

declare dso_local i64 @ih_entry_count(%struct.item_head*) #1

declare dso_local i32 @RFALSE(i32, i8*) #1

declare dso_local i32 @buffer_info_init_tbS0(%struct.tree_balance*, %struct.buffer_info*) #1

declare dso_local i32 @leaf_paste_in_buffer(%struct.buffer_info*, i32, i64, i32, i8*, i32) #1

declare dso_local i32 @leaf_paste_entries(%struct.buffer_info*, i32, i64, i32, %struct.reiserfs_de_head*, i8*, i32) #1

declare dso_local i32 @replace_key(%struct.tree_balance*, i64, i32, %struct.buffer_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
