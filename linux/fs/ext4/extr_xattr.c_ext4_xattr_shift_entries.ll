; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_shift_entries.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_shift_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_xattr_entry = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ext4_xattr_entry*, i32, i8*, i8*, i64)* @ext4_xattr_shift_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_xattr_shift_entries(%struct.ext4_xattr_entry* %0, i32 %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.ext4_xattr_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ext4_xattr_entry*, align 8
  %12 = alloca i32, align 4
  store %struct.ext4_xattr_entry* %0, %struct.ext4_xattr_entry** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %6, align 8
  store %struct.ext4_xattr_entry* %13, %struct.ext4_xattr_entry** %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp sgt i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  br label %18

18:                                               ; preds = %45, %5
  %19 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %11, align 8
  %20 = call i32 @IS_LAST_ENTRY(%struct.ext4_xattr_entry* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br i1 %22, label %23, label %48

23:                                               ; preds = %18
  %24 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %11, align 8
  %25 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %23
  %29 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %11, align 8
  %30 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %11, align 8
  %35 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @le16_to_cpu(i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @cpu_to_le16(i32 %40)
  %42 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %11, align 8
  %43 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %33, %28, %23
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %11, align 8
  %47 = call %struct.ext4_xattr_entry* @EXT4_XATTR_NEXT(%struct.ext4_xattr_entry* %46)
  store %struct.ext4_xattr_entry* %47, %struct.ext4_xattr_entry** %11, align 8
  br label %18

48:                                               ; preds = %18
  %49 = load i8*, i8** %8, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @memmove(i8* %49, i8* %50, i64 %51)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @IS_LAST_ENTRY(%struct.ext4_xattr_entry*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local %struct.ext4_xattr_entry* @EXT4_XATTR_NEXT(%struct.ext4_xattr_entry*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
