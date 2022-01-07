; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_hash.c___f2fs_dentry_hash.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_hash.c___f2fs_dentry_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qstr = type { i8*, i64 }
%struct.fscrypt_name = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@F2FS_HASH_COL_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qstr*, %struct.fscrypt_name*)* @__f2fs_dentry_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__f2fs_dentry_hash(%struct.qstr* %0, %struct.fscrypt_name* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qstr*, align 8
  %5 = alloca %struct.fscrypt_name*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [8 x i32], align 16
  %10 = alloca [4 x i32], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.qstr* %0, %struct.qstr** %4, align 8
  store %struct.fscrypt_name* %1, %struct.fscrypt_name** %5, align 8
  %13 = load %struct.qstr*, %struct.qstr** %4, align 8
  %14 = getelementptr inbounds %struct.qstr, %struct.qstr* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %11, align 8
  %16 = load %struct.qstr*, %struct.qstr** %4, align 8
  %17 = getelementptr inbounds %struct.qstr, %struct.qstr* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %12, align 8
  %19 = load %struct.fscrypt_name*, %struct.fscrypt_name** %5, align 8
  %20 = icmp ne %struct.fscrypt_name* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load %struct.fscrypt_name*, %struct.fscrypt_name** %5, align 8
  %23 = getelementptr inbounds %struct.fscrypt_name, %struct.fscrypt_name* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %21
  %28 = load %struct.fscrypt_name*, %struct.fscrypt_name** %5, align 8
  %29 = getelementptr inbounds %struct.fscrypt_name, %struct.fscrypt_name* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cpu_to_le32(i32 %30)
  store i32 %31, i32* %3, align 4
  br label %68

32:                                               ; preds = %21, %2
  %33 = load %struct.qstr*, %struct.qstr** %4, align 8
  %34 = call i64 @is_dot_dotdot(%struct.qstr* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %68

37:                                               ; preds = %32
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32 1732584193, i32* %38, align 16
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  store i32 -271733879, i32* %39, align 4
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  store i32 -1732584194, i32* %40, align 8
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  store i32 271733878, i32* %41, align 4
  %42 = load i8*, i8** %11, align 8
  store i8* %42, i8** %8, align 8
  br label %43

43:                                               ; preds = %37, %56
  %44 = load i8*, i8** %8, align 8
  %45 = load i64, i64* %12, align 8
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %47 = call i32 @str2hashbuf(i8* %44, i64 %45, i32* %46, i32 4)
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %50 = call i32 @TEA_transform(i32* %48, i32* %49)
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 16
  store i8* %52, i8** %8, align 8
  %53 = load i64, i64* %12, align 8
  %54 = icmp ule i64 %53, 16
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  br label %59

56:                                               ; preds = %43
  %57 = load i64, i64* %12, align 8
  %58 = sub i64 %57, 16
  store i64 %58, i64* %12, align 8
  br label %43

59:                                               ; preds = %55
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %61 = load i32, i32* %60, align 16
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @F2FS_HASH_COL_BIT, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %62, %64
  %66 = call i32 @cpu_to_le32(i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %59, %36, %27
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @is_dot_dotdot(%struct.qstr*) #1

declare dso_local i32 @str2hashbuf(i8*, i64, i32*, i32) #1

declare dso_local i32 @TEA_transform(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
