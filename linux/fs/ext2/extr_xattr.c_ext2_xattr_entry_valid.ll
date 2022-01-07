; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_xattr.c_ext2_xattr_entry_valid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_xattr.c_ext2_xattr_entry_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_xattr_entry = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext2_xattr_entry*, i8*, i64)* @ext2_xattr_entry_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_xattr_entry_valid(%struct.ext2_xattr_entry* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ext2_xattr_entry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ext2_xattr_entry*, align 8
  %9 = alloca i64, align 8
  store %struct.ext2_xattr_entry* %0, %struct.ext2_xattr_entry** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %5, align 8
  %11 = call %struct.ext2_xattr_entry* @EXT2_XATTR_NEXT(%struct.ext2_xattr_entry* %10)
  store %struct.ext2_xattr_entry* %11, %struct.ext2_xattr_entry** %8, align 8
  %12 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %8, align 8
  %13 = bitcast %struct.ext2_xattr_entry* %12 to i8*
  %14 = load i8*, i8** %6, align 8
  %15 = icmp uge i8* %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %42

17:                                               ; preds = %3
  %18 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %5, align 8
  %19 = getelementptr inbounds %struct.ext2_xattr_entry, %struct.ext2_xattr_entry* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %42

23:                                               ; preds = %17
  %24 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %5, align 8
  %25 = getelementptr inbounds %struct.ext2_xattr_entry, %struct.ext2_xattr_entry* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @le32_to_cpu(i32 %26)
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %40, label %31

31:                                               ; preds = %23
  %32 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %5, align 8
  %33 = getelementptr inbounds %struct.ext2_xattr_entry, %struct.ext2_xattr_entry* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @le16_to_cpu(i32 %34)
  %36 = load i64, i64* %9, align 8
  %37 = add i64 %35, %36
  %38 = load i64, i64* %7, align 8
  %39 = icmp ugt i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %31, %23
  store i32 0, i32* %4, align 4
  br label %42

41:                                               ; preds = %31
  store i32 1, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %40, %22, %16
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.ext2_xattr_entry* @EXT2_XATTR_NEXT(%struct.ext2_xattr_entry*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
