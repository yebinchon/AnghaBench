; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_super.c_find_hash_out.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_super.c_find_hash_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.inode = type { i32 }
%struct.cpu_key = type { i32 }
%struct.reiserfs_dir_entry = type { i32, i32, i32, %struct.reiserfs_de_head* }
%struct.reiserfs_de_head = type { i32 }

@path = common dso_local global i32 0, align 4
@DEFAULT_HASH = common dso_local global i64 0, align 8
@TYPE_DIRENTRY = common dso_local global i32 0, align 4
@IO_ERROR = common dso_local global i32 0, align 4
@UNSET_HASH = common dso_local global i64 0, align 8
@NAME_NOT_FOUND = common dso_local global i32 0, align 4
@DOT_DOT_OFFSET = common dso_local global i64 0, align 8
@YURA_HASH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"FS seems to be empty, autodetect is using the default hash\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"reiserfs-2506\00", align 1
@.str.2 = private unnamed_addr constant [89 x i8] c"Unable to automatically detect hash function. Please mount with -o hash={tea,rupasov,r5}\00", align 1
@TEA_HASH = common dso_local global i64 0, align 8
@R5_HASH = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"Unrecognised hash function\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.super_block*)* @find_hash_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_hash_out(%struct.super_block* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.cpu_key, align 4
  %7 = alloca %struct.reiserfs_dir_entry, align 8
  %8 = alloca %struct.reiserfs_de_head*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %14 = load i32, i32* @path, align 4
  %15 = call i32 @INITIALIZE_PATH(i32 %14)
  %16 = load i64, i64* @DEFAULT_HASH, align 8
  store i64 %16, i64* %9, align 8
  %17 = load %struct.super_block*, %struct.super_block** %3, align 8
  %18 = getelementptr inbounds %struct.super_block, %struct.super_block* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.inode* @d_inode(i32 %19)
  store %struct.inode* %20, %struct.inode** %5, align 8
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = load i32, i32* @TYPE_DIRENTRY, align 4
  %23 = call i32 @make_cpu_key(%struct.cpu_key* %6, %struct.inode* %21, i32 -1, i32 %22, i32 3)
  %24 = load %struct.super_block*, %struct.super_block** %3, align 8
  %25 = call i32 @search_by_entry_key(%struct.super_block* %24, %struct.cpu_key* %6, i32* @path, %struct.reiserfs_dir_entry* %7)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @IO_ERROR, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = call i32 @pathrelse(i32* @path)
  %31 = load i64, i64* @UNSET_HASH, align 8
  store i64 %31, i64* %2, align 8
  br label %138

32:                                               ; preds = %1
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @NAME_NOT_FOUND, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %7, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %36, %32
  %41 = call i32 @set_de_name_and_namelen(%struct.reiserfs_dir_entry* %7)
  %42 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %7, i32 0, i32 3
  %43 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %42, align 8
  %44 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %7, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %43, i64 %46
  store %struct.reiserfs_de_head* %47, %struct.reiserfs_de_head** %8, align 8
  %48 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %8, align 8
  %49 = call i64 @deh_offset(%struct.reiserfs_de_head* %48)
  %50 = load i64, i64* @DOT_DOT_OFFSET, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %40
  %53 = load %struct.super_block*, %struct.super_block** %3, align 8
  %54 = call i64 @reiserfs_rupasov_hash(%struct.super_block* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i64, i64* @YURA_HASH, align 8
  store i64 %57, i64* %9, align 8
  br label %58

58:                                               ; preds = %56, %52
  %59 = load %struct.super_block*, %struct.super_block** %3, align 8
  %60 = call i32 @reiserfs_info(%struct.super_block* %59, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  br label %135

61:                                               ; preds = %40
  %62 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %8, align 8
  %63 = call i64 @deh_offset(%struct.reiserfs_de_head* %62)
  %64 = call i64 @GET_HASH_VALUE(i64 %63)
  store i64 %64, i64* %10, align 8
  %65 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %7, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %7, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @r5_hash(i32 %66, i32 %68)
  %70 = call i64 @GET_HASH_VALUE(i64 %69)
  store i64 %70, i64* %12, align 8
  %71 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %7, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %7, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @keyed_hash(i32 %72, i32 %74)
  %76 = call i64 @GET_HASH_VALUE(i64 %75)
  store i64 %76, i64* %11, align 8
  %77 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %7, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %7, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @yura_hash(i32 %78, i32 %80)
  %82 = call i64 @GET_HASH_VALUE(i64 %81)
  store i64 %82, i64* %13, align 8
  %83 = load i64, i64* %11, align 8
  %84 = load i64, i64* %12, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %61
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* %12, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %106, label %90

90:                                               ; preds = %86, %61
  %91 = load i64, i64* %11, align 8
  %92 = load i64, i64* %13, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* %13, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %106, label %98

98:                                               ; preds = %94, %90
  %99 = load i64, i64* %12, align 8
  %100 = load i64, i64* %13, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %98
  %103 = load i64, i64* %10, align 8
  %104 = load i64, i64* %13, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %102, %94, %86
  %107 = load %struct.super_block*, %struct.super_block** %3, align 8
  %108 = call i32 @reiserfs_warning(%struct.super_block* %107, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.2, i64 0, i64 0))
  %109 = load i64, i64* @UNSET_HASH, align 8
  store i64 %109, i64* %9, align 8
  br label %135

110:                                              ; preds = %102, %98
  %111 = load i64, i64* %10, align 8
  %112 = load i64, i64* %13, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = load i64, i64* @YURA_HASH, align 8
  store i64 %115, i64* %9, align 8
  br label %134

116:                                              ; preds = %110
  %117 = load i64, i64* %10, align 8
  %118 = load i64, i64* %11, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = load i64, i64* @TEA_HASH, align 8
  store i64 %121, i64* %9, align 8
  br label %133

122:                                              ; preds = %116
  %123 = load i64, i64* %10, align 8
  %124 = load i64, i64* %12, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = load i64, i64* @R5_HASH, align 8
  store i64 %127, i64* %9, align 8
  br label %132

128:                                              ; preds = %122
  %129 = load %struct.super_block*, %struct.super_block** %3, align 8
  %130 = call i32 @reiserfs_warning(%struct.super_block* %129, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %131 = load i64, i64* @UNSET_HASH, align 8
  store i64 %131, i64* %9, align 8
  br label %132

132:                                              ; preds = %128, %126
  br label %133

133:                                              ; preds = %132, %120
  br label %134

134:                                              ; preds = %133, %114
  br label %135

135:                                              ; preds = %134, %106, %58
  %136 = call i32 @pathrelse(i32* @path)
  %137 = load i64, i64* %9, align 8
  store i64 %137, i64* %2, align 8
  br label %138

138:                                              ; preds = %135, %29
  %139 = load i64, i64* %2, align 8
  ret i64 %139
}

declare dso_local i32 @INITIALIZE_PATH(i32) #1

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i32 @make_cpu_key(%struct.cpu_key*, %struct.inode*, i32, i32, i32) #1

declare dso_local i32 @search_by_entry_key(%struct.super_block*, %struct.cpu_key*, i32*, %struct.reiserfs_dir_entry*) #1

declare dso_local i32 @pathrelse(i32*) #1

declare dso_local i32 @set_de_name_and_namelen(%struct.reiserfs_dir_entry*) #1

declare dso_local i64 @deh_offset(%struct.reiserfs_de_head*) #1

declare dso_local i64 @reiserfs_rupasov_hash(%struct.super_block*) #1

declare dso_local i32 @reiserfs_info(%struct.super_block*, i8*) #1

declare dso_local i64 @GET_HASH_VALUE(i64) #1

declare dso_local i64 @r5_hash(i32, i32) #1

declare dso_local i64 @keyed_hash(i32, i32) #1

declare dso_local i64 @yura_hash(i32, i32) #1

declare dso_local i32 @reiserfs_warning(%struct.super_block*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
