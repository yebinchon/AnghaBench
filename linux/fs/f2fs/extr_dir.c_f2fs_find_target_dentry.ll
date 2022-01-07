; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_dir.c_f2fs_find_target_dentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_dir.c_f2fs_find_target_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_dir_entry = type { i32 }
%struct.fscrypt_name = type { i32 }
%struct.f2fs_dentry_ptr = type { i64, %struct.f2fs_dir_entry*, i32, i32 }
%struct.fscrypt_str = type { i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.f2fs_dir_entry* @f2fs_find_target_dentry(%struct.fscrypt_name* %0, i32 %1, i32* %2, %struct.f2fs_dentry_ptr* %3) #0 {
  %5 = alloca %struct.fscrypt_name*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.f2fs_dentry_ptr*, align 8
  %9 = alloca %struct.f2fs_dir_entry*, align 8
  %10 = alloca %struct.fscrypt_str, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.fscrypt_name* %0, %struct.fscrypt_name** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.f2fs_dentry_ptr* %3, %struct.f2fs_dentry_ptr** %8, align 8
  %13 = bitcast %struct.fscrypt_str* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 16, i1 false)
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32*, i32** %7, align 8
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %16, %4
  br label %19

19:                                               ; preds = %74, %51, %32, %18
  %20 = load i64, i64* %11, align 8
  %21 = load %struct.f2fs_dentry_ptr*, %struct.f2fs_dentry_ptr** %8, align 8
  %22 = getelementptr inbounds %struct.f2fs_dentry_ptr, %struct.f2fs_dentry_ptr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %82

25:                                               ; preds = %19
  %26 = load i64, i64* %11, align 8
  %27 = load %struct.f2fs_dentry_ptr*, %struct.f2fs_dentry_ptr** %8, align 8
  %28 = getelementptr inbounds %struct.f2fs_dentry_ptr, %struct.f2fs_dentry_ptr* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @test_bit_le(i64 %26, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %25
  %33 = load i64, i64* %11, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %11, align 8
  %35 = load i32, i32* %12, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %12, align 4
  br label %19

37:                                               ; preds = %25
  %38 = load %struct.f2fs_dentry_ptr*, %struct.f2fs_dentry_ptr** %8, align 8
  %39 = getelementptr inbounds %struct.f2fs_dentry_ptr, %struct.f2fs_dentry_ptr* %38, i32 0, i32 1
  %40 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %39, align 8
  %41 = load i64, i64* %11, align 8
  %42 = getelementptr inbounds %struct.f2fs_dir_entry, %struct.f2fs_dir_entry* %40, i64 %41
  store %struct.f2fs_dir_entry* %42, %struct.f2fs_dir_entry** %9, align 8
  %43 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %9, align 8
  %44 = getelementptr inbounds %struct.f2fs_dir_entry, %struct.f2fs_dir_entry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %37
  %52 = load i64, i64* %11, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %11, align 8
  br label %19

54:                                               ; preds = %37
  %55 = load %struct.f2fs_dentry_ptr*, %struct.f2fs_dentry_ptr** %8, align 8
  %56 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %9, align 8
  %57 = load %struct.fscrypt_name*, %struct.fscrypt_name** %5, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i64 @f2fs_match_name(%struct.f2fs_dentry_ptr* %55, %struct.f2fs_dir_entry* %56, %struct.fscrypt_name* %57, %struct.fscrypt_str* %10, i64 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %83

63:                                               ; preds = %54
  %64 = load i32*, i32** %7, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load i32, i32* %12, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %68, align 4
  %70 = icmp sgt i32 %67, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* %12, align 4
  %73 = load i32*, i32** %7, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %66, %63
  store i32 0, i32* %12, align 4
  %75 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %9, align 8
  %76 = getelementptr inbounds %struct.f2fs_dir_entry, %struct.f2fs_dir_entry* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @le16_to_cpu(i32 %77)
  %79 = call i64 @GET_DENTRY_SLOTS(i32 %78)
  %80 = load i64, i64* %11, align 8
  %81 = add i64 %80, %79
  store i64 %81, i64* %11, align 8
  br label %19

82:                                               ; preds = %19
  store %struct.f2fs_dir_entry* null, %struct.f2fs_dir_entry** %9, align 8
  br label %83

83:                                               ; preds = %82, %62
  %84 = load i32*, i32** %7, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %94

86:                                               ; preds = %83
  %87 = load i32, i32* %12, align 4
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %88, align 4
  %90 = icmp sgt i32 %87, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i32, i32* %12, align 4
  %93 = load i32*, i32** %7, align 8
  store i32 %92, i32* %93, align 4
  br label %94

94:                                               ; preds = %91, %86, %83
  %95 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %9, align 8
  ret %struct.f2fs_dir_entry* %95
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @test_bit_le(i64, i32) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i64 @f2fs_match_name(%struct.f2fs_dentry_ptr*, %struct.f2fs_dir_entry*, %struct.fscrypt_name*, %struct.fscrypt_str*, i64, i32) #2

declare dso_local i64 @GET_DENTRY_SLOTS(i32) #2

declare dso_local i32 @le16_to_cpu(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
