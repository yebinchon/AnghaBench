; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_hash.c___ext4fs_dirhash.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_hash.c___ext4fs_dirhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dx_hash_info = type { i32, i32, i32, i64* }

@EXT4_HTREE_EOF_32BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.dx_hash_info*)* @__ext4fs_dirhash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ext4fs_dirhash(i8* %0, i32 %1, %struct.dx_hash_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dx_hash_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [8 x i32], align 16
  %13 = alloca [4 x i32], align 16
  %14 = alloca void (i8*, i32, i32*, i32)*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dx_hash_info* %2, %struct.dx_hash_info** %7, align 8
  store i32 0, i32* %9, align 4
  store void (i8*, i32, i32*, i32)* @str2hashbuf_signed, void (i8*, i32, i32*, i32)** %14, align 8
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  store i32 1732584193, i32* %15, align 16
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  store i32 -271733879, i32* %16, align 4
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  store i32 -1732584194, i32* %17, align 8
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 3
  store i32 271733878, i32* %18, align 4
  %19 = load %struct.dx_hash_info*, %struct.dx_hash_info** %7, align 8
  %20 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %19, i32 0, i32 3
  %21 = load i64*, i64** %20, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %23, label %47

23:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %43, %23
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %25, 4
  br i1 %26, label %27, label %46

27:                                               ; preds = %24
  %28 = load %struct.dx_hash_info*, %struct.dx_hash_info** %7, align 8
  %29 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %28, i32 0, i32 3
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %27
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %38 = load %struct.dx_hash_info*, %struct.dx_hash_info** %7, align 8
  %39 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %38, i32 0, i32 3
  %40 = load i64*, i64** %39, align 8
  %41 = call i32 @memcpy(i32* %37, i64* %40, i32 16)
  br label %46

42:                                               ; preds = %27
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %11, align 4
  br label %24

46:                                               ; preds = %36, %24
  br label %47

47:                                               ; preds = %46, %3
  %48 = load %struct.dx_hash_info*, %struct.dx_hash_info** %7, align 8
  %49 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %105 [
    i32 130, label %51
    i32 131, label %55
    i32 132, label %59
    i32 133, label %60
    i32 128, label %82
    i32 129, label %83
  ]

51:                                               ; preds = %47
  %52 = load i8*, i8** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @dx_hack_hash_unsigned(i8* %52, i32 %53)
  store i32 %54, i32* %8, align 4
  br label %108

55:                                               ; preds = %47
  %56 = load i8*, i8** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @dx_hack_hash_signed(i8* %56, i32 %57)
  store i32 %58, i32* %8, align 4
  br label %108

59:                                               ; preds = %47
  store void (i8*, i32, i32*, i32)* @str2hashbuf_unsigned, void (i8*, i32, i32*, i32)** %14, align 8
  br label %60

60:                                               ; preds = %47, %59
  %61 = load i8*, i8** %5, align 8
  store i8* %61, i8** %10, align 8
  br label %62

62:                                               ; preds = %65, %60
  %63 = load i32, i32* %6, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  %66 = load void (i8*, i32, i32*, i32)*, void (i8*, i32, i32*, i32)** %14, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = load i32, i32* %6, align 4
  %69 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  call void %66(i8* %67, i32 %68, i32* %69, i32 8)
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %71 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %72 = call i32 @half_md4_transform(i32* %70, i32* %71)
  %73 = load i32, i32* %6, align 4
  %74 = sub nsw i32 %73, 32
  store i32 %74, i32* %6, align 4
  %75 = load i8*, i8** %10, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 32
  store i8* %76, i8** %10, align 8
  br label %62

77:                                               ; preds = %62
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %9, align 4
  %80 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %8, align 4
  br label %108

82:                                               ; preds = %47
  store void (i8*, i32, i32*, i32)* @str2hashbuf_unsigned, void (i8*, i32, i32*, i32)** %14, align 8
  br label %83

83:                                               ; preds = %47, %82
  %84 = load i8*, i8** %5, align 8
  store i8* %84, i8** %10, align 8
  br label %85

85:                                               ; preds = %88, %83
  %86 = load i32, i32* %6, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %85
  %89 = load void (i8*, i32, i32*, i32)*, void (i8*, i32, i32*, i32)** %14, align 8
  %90 = load i8*, i8** %10, align 8
  %91 = load i32, i32* %6, align 4
  %92 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  call void %89(i8* %90, i32 %91, i32* %92, i32 4)
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %94 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %95 = call i32 @TEA_transform(i32* %93, i32* %94)
  %96 = load i32, i32* %6, align 4
  %97 = sub nsw i32 %96, 16
  store i32 %97, i32* %6, align 4
  %98 = load i8*, i8** %10, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 16
  store i8* %99, i8** %10, align 8
  br label %85

100:                                              ; preds = %85
  %101 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %102 = load i32, i32* %101, align 16
  store i32 %102, i32* %8, align 4
  %103 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %9, align 4
  br label %108

105:                                              ; preds = %47
  %106 = load %struct.dx_hash_info*, %struct.dx_hash_info** %7, align 8
  %107 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %106, i32 0, i32 1
  store i32 0, i32* %107, align 4
  store i32 -1, i32* %4, align 4
  br label %126

108:                                              ; preds = %100, %77, %55, %51
  %109 = load i32, i32* %8, align 4
  %110 = and i32 %109, -2
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @EXT4_HTREE_EOF_32BIT, align 4
  %113 = shl i32 %112, 1
  %114 = icmp eq i32 %111, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %108
  %116 = load i32, i32* @EXT4_HTREE_EOF_32BIT, align 4
  %117 = sub nsw i32 %116, 1
  %118 = shl i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %119

119:                                              ; preds = %115, %108
  %120 = load i32, i32* %8, align 4
  %121 = load %struct.dx_hash_info*, %struct.dx_hash_info** %7, align 8
  %122 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.dx_hash_info*, %struct.dx_hash_info** %7, align 8
  %125 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  store i32 0, i32* %4, align 4
  br label %126

126:                                              ; preds = %119, %105
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local void @str2hashbuf_signed(i8*, i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

declare dso_local i32 @dx_hack_hash_unsigned(i8*, i32) #1

declare dso_local i32 @dx_hack_hash_signed(i8*, i32) #1

declare dso_local void @str2hashbuf_unsigned(i8*, i32, i32*, i32) #1

declare dso_local i32 @half_md4_transform(i32*, i32*) #1

declare dso_local i32 @TEA_transform(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
