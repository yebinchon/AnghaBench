; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_resize.c_verify_reserved_gdb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_resize.c_verify_reserved_gdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i64, i64 }

@.str = private unnamed_addr constant [40 x i8] c"reserved GDT %llu missing grp %d (%llu)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, %struct.buffer_head*)* @verify_reserved_gdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_reserved_gdb(%struct.super_block* %0, i32 %1, %struct.buffer_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  %15 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %16 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  store i32 1, i32* %9, align 4
  store i32 5, i32* %10, align 4
  store i32 7, i32* %11, align 4
  %18 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %19 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %13, align 8
  store i32 0, i32* %14, align 4
  br label %22

22:                                               ; preds = %64, %3
  %23 = load %struct.super_block*, %struct.super_block** %5, align 8
  %24 = call i32 @ext4_list_backups(%struct.super_block* %23, i32* %9, i32* %10, i32* %11)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %65

27:                                               ; preds = %22
  %28 = load i32*, i32** %13, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %13, align 8
  %30 = load i32, i32* %28, align 4
  %31 = call i64 @le32_to_cpu(i32 %30)
  %32 = load i32, i32* %12, align 4
  %33 = load %struct.super_block*, %struct.super_block** %5, align 8
  %34 = call i32 @EXT4_BLOCKS_PER_GROUP(%struct.super_block* %33)
  %35 = mul i32 %32, %34
  %36 = zext i32 %35 to i64
  %37 = load i64, i64* %8, align 8
  %38 = add nsw i64 %36, %37
  %39 = icmp ne i64 %31, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %27
  %41 = load %struct.super_block*, %struct.super_block** %5, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = zext i32 %44 to i64
  %46 = load %struct.super_block*, %struct.super_block** %5, align 8
  %47 = call i32 @EXT4_BLOCKS_PER_GROUP(%struct.super_block* %46)
  %48 = zext i32 %47 to i64
  %49 = mul nsw i64 %45, %48
  %50 = load i64, i64* %8, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @ext4_warning(%struct.super_block* %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %42, i32 %43, i64 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %67

55:                                               ; preds = %27
  %56 = load i32, i32* %14, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %14, align 4
  %58 = load %struct.super_block*, %struct.super_block** %5, align 8
  %59 = call i32 @EXT4_ADDR_PER_BLOCK(%struct.super_block* %58)
  %60 = icmp sgt i32 %57, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* @EFBIG, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %67

64:                                               ; preds = %55
  br label %22

65:                                               ; preds = %22
  %66 = load i32, i32* %14, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %65, %61, %40
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @ext4_list_backups(%struct.super_block*, i32*, i32*, i32*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @EXT4_BLOCKS_PER_GROUP(%struct.super_block*) #1

declare dso_local i32 @ext4_warning(%struct.super_block*, i8*, i64, i32, i64) #1

declare dso_local i32 @EXT4_ADDR_PER_BLOCK(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
