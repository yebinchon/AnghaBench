; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_dat.c_nilfs_dat_get_vinfo.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_dat.c_nilfs_dat_get_vinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_dat_entry = type { i32, i32, i32 }
%struct.nilfs_vinfo = type { i64, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_dat_get_vinfo(%struct.inode* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.nilfs_dat_entry*, align 8
  %12 = alloca %struct.nilfs_vinfo*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.nilfs_vinfo*
  store %struct.nilfs_vinfo* %22, %struct.nilfs_vinfo** %12, align 8
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %16, align 8
  store i32 0, i32* %17, align 4
  br label %27

27:                                               ; preds = %122, %4
  %28 = load i32, i32* %17, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %9, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %126

32:                                               ; preds = %27
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = load %struct.nilfs_vinfo*, %struct.nilfs_vinfo** %12, align 8
  %35 = getelementptr inbounds %struct.nilfs_vinfo, %struct.nilfs_vinfo* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @nilfs_palloc_get_entry_block(%struct.inode* %33, i64 %36, i32 0, %struct.buffer_head** %10)
  store i32 %37, i32* %20, align 4
  %38 = load i32, i32* %20, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %20, align 4
  store i32 %41, i32* %5, align 4
  br label %129

42:                                               ; preds = %32
  %43 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %44 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @kmap_atomic(i32 %45)
  store i8* %46, i8** %15, align 8
  %47 = load %struct.nilfs_vinfo*, %struct.nilfs_vinfo** %12, align 8
  %48 = getelementptr inbounds %struct.nilfs_vinfo, %struct.nilfs_vinfo* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %13, align 8
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* %16, align 8
  %52 = call i32 @do_div(i64 %50, i64 %51)
  %53 = load i64, i64* %16, align 8
  %54 = load i64, i64* %13, align 8
  %55 = mul i64 %54, %53
  store i64 %55, i64* %13, align 8
  %56 = load i64, i64* %13, align 8
  %57 = load i64, i64* %16, align 8
  %58 = add i64 %56, %57
  %59 = sub i64 %58, 1
  store i64 %59, i64* %14, align 8
  %60 = load i32, i32* %17, align 4
  store i32 %60, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %61

61:                                               ; preds = %106, %42
  %62 = load i32, i32* %18, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %9, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %61
  %67 = load %struct.nilfs_vinfo*, %struct.nilfs_vinfo** %12, align 8
  %68 = getelementptr inbounds %struct.nilfs_vinfo, %struct.nilfs_vinfo* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %13, align 8
  %71 = icmp uge i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load %struct.nilfs_vinfo*, %struct.nilfs_vinfo** %12, align 8
  %74 = getelementptr inbounds %struct.nilfs_vinfo, %struct.nilfs_vinfo* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %14, align 8
  %77 = icmp ule i64 %75, %76
  br label %78

78:                                               ; preds = %72, %66, %61
  %79 = phi i1 [ false, %66 ], [ false, %61 ], [ %77, %72 ]
  br i1 %79, label %80, label %117

80:                                               ; preds = %78
  %81 = load %struct.inode*, %struct.inode** %6, align 8
  %82 = load %struct.nilfs_vinfo*, %struct.nilfs_vinfo** %12, align 8
  %83 = getelementptr inbounds %struct.nilfs_vinfo, %struct.nilfs_vinfo* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %86 = load i8*, i8** %15, align 8
  %87 = call %struct.nilfs_dat_entry* @nilfs_palloc_block_get_entry(%struct.inode* %81, i64 %84, %struct.buffer_head* %85, i8* %86)
  store %struct.nilfs_dat_entry* %87, %struct.nilfs_dat_entry** %11, align 8
  %88 = load %struct.nilfs_dat_entry*, %struct.nilfs_dat_entry** %11, align 8
  %89 = getelementptr inbounds %struct.nilfs_dat_entry, %struct.nilfs_dat_entry* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @le64_to_cpu(i32 %90)
  %92 = load %struct.nilfs_vinfo*, %struct.nilfs_vinfo** %12, align 8
  %93 = getelementptr inbounds %struct.nilfs_vinfo, %struct.nilfs_vinfo* %92, i32 0, i32 3
  store i8* %91, i8** %93, align 8
  %94 = load %struct.nilfs_dat_entry*, %struct.nilfs_dat_entry** %11, align 8
  %95 = getelementptr inbounds %struct.nilfs_dat_entry, %struct.nilfs_dat_entry* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @le64_to_cpu(i32 %96)
  %98 = load %struct.nilfs_vinfo*, %struct.nilfs_vinfo** %12, align 8
  %99 = getelementptr inbounds %struct.nilfs_vinfo, %struct.nilfs_vinfo* %98, i32 0, i32 2
  store i8* %97, i8** %99, align 8
  %100 = load %struct.nilfs_dat_entry*, %struct.nilfs_dat_entry** %11, align 8
  %101 = getelementptr inbounds %struct.nilfs_dat_entry, %struct.nilfs_dat_entry* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i8* @le64_to_cpu(i32 %102)
  %104 = load %struct.nilfs_vinfo*, %struct.nilfs_vinfo** %12, align 8
  %105 = getelementptr inbounds %struct.nilfs_vinfo, %struct.nilfs_vinfo* %104, i32 0, i32 1
  store i8* %103, i8** %105, align 8
  br label %106

106:                                              ; preds = %80
  %107 = load i32, i32* %18, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %18, align 4
  %109 = load i32, i32* %19, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %19, align 4
  %111 = load %struct.nilfs_vinfo*, %struct.nilfs_vinfo** %12, align 8
  %112 = bitcast %struct.nilfs_vinfo* %111 to i8*
  %113 = load i32, i32* %8, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr i8, i8* %112, i64 %114
  %116 = bitcast i8* %115 to %struct.nilfs_vinfo*
  store %struct.nilfs_vinfo* %116, %struct.nilfs_vinfo** %12, align 8
  br label %61

117:                                              ; preds = %78
  %118 = load i8*, i8** %15, align 8
  %119 = call i32 @kunmap_atomic(i8* %118)
  %120 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %121 = call i32 @brelse(%struct.buffer_head* %120)
  br label %122

122:                                              ; preds = %117
  %123 = load i32, i32* %19, align 4
  %124 = load i32, i32* %17, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %17, align 4
  br label %27

126:                                              ; preds = %27
  %127 = load i64, i64* %9, align 8
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %126, %40
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local %struct.TYPE_2__* @NILFS_MDT(%struct.inode*) #1

declare dso_local i32 @nilfs_palloc_get_entry_block(%struct.inode*, i64, i32, %struct.buffer_head**) #1

declare dso_local i8* @kmap_atomic(i32) #1

declare dso_local i32 @do_div(i64, i64) #1

declare dso_local %struct.nilfs_dat_entry* @nilfs_palloc_block_get_entry(%struct.inode*, i64, %struct.buffer_head*, i8*) #1

declare dso_local i8* @le64_to_cpu(i32) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
