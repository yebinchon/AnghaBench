; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_dx_make_map.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_dx_make_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_dir_entry_2 = type { i32, i64, i32, i64 }
%struct.dx_hash_info = type { i32 }
%struct.dx_map_entry = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ext4_dir_entry_2*, i32, %struct.dx_hash_info*, %struct.dx_map_entry*)* @dx_make_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dx_make_map(%struct.inode* %0, %struct.ext4_dir_entry_2* %1, i32 %2, %struct.dx_hash_info* %3, %struct.dx_map_entry* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ext4_dir_entry_2*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dx_hash_info*, align 8
  %10 = alloca %struct.dx_map_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.dx_hash_info, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.ext4_dir_entry_2* %1, %struct.ext4_dir_entry_2** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.dx_hash_info* %3, %struct.dx_hash_info** %9, align 8
  store %struct.dx_map_entry* %4, %struct.dx_map_entry** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %7, align 8
  %15 = bitcast %struct.ext4_dir_entry_2* %14 to i8*
  store i8* %15, i8** %12, align 8
  %16 = load %struct.dx_hash_info*, %struct.dx_hash_info** %9, align 8
  %17 = bitcast %struct.dx_hash_info* %13 to i8*
  %18 = bitcast %struct.dx_hash_info* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 4, i1 false)
  br label %19

19:                                               ; preds = %71, %5
  %20 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %7, align 8
  %21 = bitcast %struct.ext4_dir_entry_2* %20 to i8*
  %22 = load i8*, i8** %12, align 8
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = icmp ult i8* %21, %25
  br i1 %26, label %27, label %75

27:                                               ; preds = %19
  %28 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %7, align 8
  %29 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %71

32:                                               ; preds = %27
  %33 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %7, align 8
  %34 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %71

37:                                               ; preds = %32
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %7, align 8
  %40 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %7, align 8
  %43 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @ext4fs_dirhash(%struct.inode* %38, i32 %41, i64 %44, %struct.dx_hash_info* %13)
  %46 = load %struct.dx_map_entry*, %struct.dx_map_entry** %10, align 8
  %47 = getelementptr inbounds %struct.dx_map_entry, %struct.dx_map_entry* %46, i32 -1
  store %struct.dx_map_entry* %47, %struct.dx_map_entry** %10, align 8
  %48 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %13, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.dx_map_entry*, %struct.dx_map_entry** %10, align 8
  %51 = getelementptr inbounds %struct.dx_map_entry, %struct.dx_map_entry* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %7, align 8
  %53 = bitcast %struct.ext4_dir_entry_2* %52 to i8*
  %54 = load i8*, i8** %12, align 8
  %55 = ptrtoint i8* %53 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = ashr i64 %57, 2
  %59 = trunc i64 %58 to i32
  %60 = load %struct.dx_map_entry*, %struct.dx_map_entry** %10, align 8
  %61 = getelementptr inbounds %struct.dx_map_entry, %struct.dx_map_entry* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %7, align 8
  %63 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @le16_to_cpu(i32 %64)
  %66 = load %struct.dx_map_entry*, %struct.dx_map_entry** %10, align 8
  %67 = getelementptr inbounds %struct.dx_map_entry, %struct.dx_map_entry* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  %70 = call i32 (...) @cond_resched()
  br label %71

71:                                               ; preds = %37, %32, %27
  %72 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call %struct.ext4_dir_entry_2* @ext4_next_entry(%struct.ext4_dir_entry_2* %72, i32 %73)
  store %struct.ext4_dir_entry_2* %74, %struct.ext4_dir_entry_2** %7, align 8
  br label %19

75:                                               ; preds = %19
  %76 = load i32, i32* %11, align 4
  ret i32 %76
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ext4fs_dirhash(%struct.inode*, i32, i64, %struct.dx_hash_info*) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i32 @cond_resched(...) #2

declare dso_local %struct.ext4_dir_entry_2* @ext4_next_entry(%struct.ext4_dir_entry_2*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
