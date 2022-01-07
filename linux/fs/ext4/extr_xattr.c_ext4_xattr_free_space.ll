; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_free_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_free_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_xattr_entry = type { i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ext4_xattr_entry*, i64*, i8*, i32*)* @ext4_xattr_free_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ext4_xattr_free_space(%struct.ext4_xattr_entry* %0, i64* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.ext4_xattr_entry*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.ext4_xattr_entry* %0, %struct.ext4_xattr_entry** %5, align 8
  store i64* %1, i64** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  br label %10

10:                                               ; preds = %52, %4
  %11 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %5, align 8
  %12 = call i32 @IS_LAST_ENTRY(%struct.ext4_xattr_entry* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %55

15:                                               ; preds = %10
  %16 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %5, align 8
  %17 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %15
  %21 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %5, align 8
  %22 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %5, align 8
  %27 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @le16_to_cpu(i32 %28)
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i64*, i64** %6, align 8
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i64, i64* %9, align 8
  %36 = load i64*, i64** %6, align 8
  store i64 %35, i64* %36, align 8
  br label %37

37:                                               ; preds = %34, %25
  br label %38

38:                                               ; preds = %37, %20, %15
  %39 = load i32*, i32** %8, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %5, align 8
  %43 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @EXT4_XATTR_LEN(i32 %44)
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %45
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 4
  br label %51

51:                                               ; preds = %41, %38
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %5, align 8
  %54 = call %struct.ext4_xattr_entry* @EXT4_XATTR_NEXT(%struct.ext4_xattr_entry* %53)
  store %struct.ext4_xattr_entry* %54, %struct.ext4_xattr_entry** %5, align 8
  br label %10

55:                                               ; preds = %10
  %56 = load i64*, i64** %6, align 8
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %5, align 8
  %59 = bitcast %struct.ext4_xattr_entry* %58 to i8*
  %60 = load i8*, i8** %7, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = sub i64 %57, %63
  %65 = sub i64 %64, 4
  ret i64 %65
}

declare dso_local i32 @IS_LAST_ENTRY(%struct.ext4_xattr_entry*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @EXT4_XATTR_LEN(i32) #1

declare dso_local %struct.ext4_xattr_entry* @EXT4_XATTR_NEXT(%struct.ext4_xattr_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
