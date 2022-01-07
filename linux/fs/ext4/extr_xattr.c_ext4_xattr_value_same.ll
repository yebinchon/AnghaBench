; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_value_same.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_value_same.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_xattr_search = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.ext4_xattr_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext4_xattr_search*, %struct.ext4_xattr_info*)* @ext4_xattr_value_same to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_xattr_value_same(%struct.ext4_xattr_search* %0, %struct.ext4_xattr_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ext4_xattr_search*, align 8
  %5 = alloca %struct.ext4_xattr_info*, align 8
  %6 = alloca i8*, align 8
  store %struct.ext4_xattr_search* %0, %struct.ext4_xattr_search** %4, align 8
  store %struct.ext4_xattr_info* %1, %struct.ext4_xattr_info** %5, align 8
  %7 = load %struct.ext4_xattr_search*, %struct.ext4_xattr_search** %4, align 8
  %8 = getelementptr inbounds %struct.ext4_xattr_search, %struct.ext4_xattr_search* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

14:                                               ; preds = %2
  %15 = load %struct.ext4_xattr_search*, %struct.ext4_xattr_search** %4, align 8
  %16 = getelementptr inbounds %struct.ext4_xattr_search, %struct.ext4_xattr_search* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le32_to_cpu(i32 %19)
  %21 = load %struct.ext4_xattr_info*, %struct.ext4_xattr_info** %5, align 8
  %22 = getelementptr inbounds %struct.ext4_xattr_info, %struct.ext4_xattr_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %50

26:                                               ; preds = %14
  %27 = load %struct.ext4_xattr_search*, %struct.ext4_xattr_search** %4, align 8
  %28 = getelementptr inbounds %struct.ext4_xattr_search, %struct.ext4_xattr_search* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = load %struct.ext4_xattr_search*, %struct.ext4_xattr_search** %4, align 8
  %32 = getelementptr inbounds %struct.ext4_xattr_search, %struct.ext4_xattr_search* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @le16_to_cpu(i32 %35)
  %37 = sext i32 %36 to i64
  %38 = getelementptr i8, i8* %30, i64 %37
  store i8* %38, i8** %6, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load %struct.ext4_xattr_info*, %struct.ext4_xattr_info** %5, align 8
  %41 = getelementptr inbounds %struct.ext4_xattr_info, %struct.ext4_xattr_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ext4_xattr_info*, %struct.ext4_xattr_info** %5, align 8
  %44 = getelementptr inbounds %struct.ext4_xattr_info, %struct.ext4_xattr_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @memcmp(i8* %39, i32 %42, i32 %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %26, %25, %13
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memcmp(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
