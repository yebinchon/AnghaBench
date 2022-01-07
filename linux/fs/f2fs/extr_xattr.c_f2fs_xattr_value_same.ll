; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_xattr.c_f2fs_xattr_value_same.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_xattr.c_f2fs_xattr_value_same.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_xattr_entry = type { i32, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_xattr_entry*, i8*, i64)* @f2fs_xattr_value_same to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_xattr_value_same(%struct.f2fs_xattr_entry* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.f2fs_xattr_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.f2fs_xattr_entry* %0, %struct.f2fs_xattr_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.f2fs_xattr_entry*, %struct.f2fs_xattr_entry** %4, align 8
  %9 = getelementptr inbounds %struct.f2fs_xattr_entry, %struct.f2fs_xattr_entry* %8, i32 0, i32 2
  %10 = load i8*, i8** %9, align 8
  %11 = load %struct.f2fs_xattr_entry*, %struct.f2fs_xattr_entry** %4, align 8
  %12 = getelementptr inbounds %struct.f2fs_xattr_entry, %struct.f2fs_xattr_entry* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = getelementptr i8, i8* %10, i64 %14
  store i8* %15, i8** %7, align 8
  %16 = load %struct.f2fs_xattr_entry*, %struct.f2fs_xattr_entry** %4, align 8
  %17 = getelementptr inbounds %struct.f2fs_xattr_entry, %struct.f2fs_xattr_entry* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @le16_to_cpu(i32 %18)
  %20 = load i64, i64* %6, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @memcmp(i8* %23, i8* %24, i64 %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %22, %3
  %30 = phi i1 [ false, %3 ], [ %28, %22 ]
  %31 = zext i1 %30 to i32
  ret i32 %31
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
