; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_namei.c_linear_search_in_dir_item.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_namei.c_linear_search_in_dir_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_key = type { i32 }
%struct.reiserfs_dir_entry = type { i32, i32, i32, i64, i32, %struct.reiserfs_de_head* }
%struct.reiserfs_de_head = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"vs-7010: array of entry headers not found\00", align 1
@NAME_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"vs-7015: two diritems of the same directory in one node?\00", align 1
@GOTO_PREVIOUS_ITEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpu_key*, %struct.reiserfs_dir_entry*, i8*, i32)* @linear_search_in_dir_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linear_search_in_dir_item(%struct.cpu_key* %0, %struct.reiserfs_dir_entry* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpu_key*, align 8
  %7 = alloca %struct.reiserfs_dir_entry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.reiserfs_de_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cpu_key* %0, %struct.cpu_key** %6, align 8
  store %struct.reiserfs_dir_entry* %1, %struct.reiserfs_dir_entry** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %7, align 8
  %14 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %13, i32 0, i32 5
  %15 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %14, align 8
  store %struct.reiserfs_de_head* %15, %struct.reiserfs_de_head** %10, align 8
  %16 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %7, align 8
  %17 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %7, align 8
  %21 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @ih_entry_count(i32 %22)
  %24 = icmp eq i32 %19, %23
  br i1 %24, label %36, label %25

25:                                               ; preds = %4
  %26 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %10, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %26, i64 %28
  %30 = call i32 @deh_offset(%struct.reiserfs_de_head* %29)
  %31 = call i64 @GET_HASH_VALUE(i32 %30)
  %32 = load %struct.cpu_key*, %struct.cpu_key** %6, align 8
  %33 = call i32 @cpu_key_k_offset(%struct.cpu_key* %32)
  %34 = call i64 @GET_HASH_VALUE(i32 %33)
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %25, %4
  %37 = load i32, i32* %12, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %12, align 4
  br label %39

39:                                               ; preds = %36, %25
  %40 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %7, align 8
  %41 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %40, i32 0, i32 5
  %42 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %41, align 8
  %43 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %7, align 8
  %44 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %7, align 8
  %47 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.reiserfs_de_head* @B_I_DEH(i32 %45, i32 %48)
  %50 = icmp ne %struct.reiserfs_de_head* %42, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @RFALSE(i32 %51, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %10, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %54, i64 %55
  store %struct.reiserfs_de_head* %56, %struct.reiserfs_de_head** %10, align 8
  br label %57

57:                                               ; preds = %102, %39
  %58 = load i32, i32* %12, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %107

60:                                               ; preds = %57
  %61 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %10, align 8
  %62 = call i32 @deh_offset(%struct.reiserfs_de_head* %61)
  %63 = call i64 @GET_HASH_VALUE(i32 %62)
  %64 = load %struct.cpu_key*, %struct.cpu_key** %6, align 8
  %65 = call i32 @cpu_key_k_offset(%struct.cpu_key* %64)
  %66 = call i64 @GET_HASH_VALUE(i32 %65)
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i32, i32* @NAME_NOT_FOUND, align 4
  store i32 %69, i32* %5, align 4
  br label %122

70:                                               ; preds = %60
  %71 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %7, align 8
  %72 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %10, align 8
  %77 = call i32 @deh_offset(%struct.reiserfs_de_head* %76)
  %78 = call i32 @GET_GENERATION_NUMBER(i32 %77)
  %79 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %7, align 8
  %80 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @set_bit(i32 %78, i64 %81)
  br label %83

83:                                               ; preds = %75, %70
  %84 = load i32, i32* %12, align 4
  %85 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %7, align 8
  %86 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %7, align 8
  %88 = call i32 @set_de_name_and_namelen(%struct.reiserfs_dir_entry* %87)
  %89 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %7, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @reiserfs_match(%struct.reiserfs_dir_entry* %89, i8* %90, i32 %91)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* @NAME_NOT_FOUND, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %83
  %96 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %7, align 8
  %97 = call i32 @set_de_object_key(%struct.reiserfs_dir_entry* %96)
  %98 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %7, align 8
  %99 = call i32 @store_de_entry_key(%struct.reiserfs_dir_entry* %98)
  %100 = load i32, i32* %11, align 4
  store i32 %100, i32* %5, align 4
  br label %122

101:                                              ; preds = %83
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %12, align 4
  %105 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %10, align 8
  %106 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %105, i32 -1
  store %struct.reiserfs_de_head* %106, %struct.reiserfs_de_head** %10, align 8
  br label %57

107:                                              ; preds = %57
  %108 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %7, align 8
  %109 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @le_ih_k_offset(i32 %110)
  %112 = call i32 @GET_GENERATION_NUMBER(i32 %111)
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = load i32, i32* @NAME_NOT_FOUND, align 4
  store i32 %115, i32* %5, align 4
  br label %122

116:                                              ; preds = %107
  %117 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %7, align 8
  %118 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @RFALSE(i32 %119, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %121 = load i32, i32* @GOTO_PREVIOUS_ITEM, align 4
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %116, %114, %95, %68
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i32 @ih_entry_count(i32) #1

declare dso_local i64 @GET_HASH_VALUE(i32) #1

declare dso_local i32 @deh_offset(%struct.reiserfs_de_head*) #1

declare dso_local i32 @cpu_key_k_offset(%struct.cpu_key*) #1

declare dso_local i32 @RFALSE(i32, i8*) #1

declare dso_local %struct.reiserfs_de_head* @B_I_DEH(i32, i32) #1

declare dso_local i32 @set_bit(i32, i64) #1

declare dso_local i32 @GET_GENERATION_NUMBER(i32) #1

declare dso_local i32 @set_de_name_and_namelen(%struct.reiserfs_dir_entry*) #1

declare dso_local i32 @reiserfs_match(%struct.reiserfs_dir_entry*, i8*, i32) #1

declare dso_local i32 @set_de_object_key(%struct.reiserfs_dir_entry*) #1

declare dso_local i32 @store_de_entry_key(%struct.reiserfs_dir_entry*) #1

declare dso_local i32 @le_ih_k_offset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
