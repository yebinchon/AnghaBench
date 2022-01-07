; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_super.c___save_error_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_super.c___save_error_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_super_block = type { i32, i32, i32, i32, i32, i8*, i32, i32, i32, i64, i64, i8*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, %struct.ext4_super_block* }

@EXT4_ERROR_FS = common dso_local global i32 0, align 4
@s_last_error_time = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, i8*, i32)* @__save_error_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__save_error_info(%struct.super_block* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext4_super_block*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.super_block*, %struct.super_block** %4, align 8
  %9 = call %struct.TYPE_2__* @EXT4_SB(%struct.super_block* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load %struct.ext4_super_block*, %struct.ext4_super_block** %10, align 8
  store %struct.ext4_super_block* %11, %struct.ext4_super_block** %7, align 8
  %12 = load i32, i32* @EXT4_ERROR_FS, align 4
  %13 = load %struct.super_block*, %struct.super_block** %4, align 8
  %14 = call %struct.TYPE_2__* @EXT4_SB(%struct.super_block* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %12
  store i32 %17, i32* %15, align 4
  %18 = load %struct.super_block*, %struct.super_block** %4, align 8
  %19 = getelementptr inbounds %struct.super_block, %struct.super_block* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @bdev_read_only(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %96

24:                                               ; preds = %3
  %25 = load i32, i32* @EXT4_ERROR_FS, align 4
  %26 = call i32 @cpu_to_le16(i32 %25)
  %27 = load %struct.ext4_super_block*, %struct.ext4_super_block** %7, align 8
  %28 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %27, i32 0, i32 13
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.ext4_super_block*, %struct.ext4_super_block** %7, align 8
  %32 = load i32, i32* @s_last_error_time, align 4
  %33 = call i32 @ext4_update_tstamp(%struct.ext4_super_block* %31, i32 %32)
  %34 = load %struct.ext4_super_block*, %struct.ext4_super_block** %7, align 8
  %35 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %34, i32 0, i32 12
  %36 = load i32, i32* %35, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @strncpy(i32 %36, i8* %37, i32 4)
  %39 = load i32, i32* %6, align 4
  %40 = call i8* @cpu_to_le32(i32 %39)
  %41 = load %struct.ext4_super_block*, %struct.ext4_super_block** %7, align 8
  %42 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %41, i32 0, i32 11
  store i8* %40, i8** %42, align 8
  %43 = load %struct.ext4_super_block*, %struct.ext4_super_block** %7, align 8
  %44 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %43, i32 0, i32 10
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %77, label %47

47:                                               ; preds = %24
  %48 = load %struct.ext4_super_block*, %struct.ext4_super_block** %7, align 8
  %49 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %48, i32 0, i32 9
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.ext4_super_block*, %struct.ext4_super_block** %7, align 8
  %52 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %51, i32 0, i32 10
  store i64 %50, i64* %52, align 8
  %53 = load %struct.ext4_super_block*, %struct.ext4_super_block** %7, align 8
  %54 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ext4_super_block*, %struct.ext4_super_block** %7, align 8
  %57 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %56, i32 0, i32 8
  store i32 %55, i32* %57, align 8
  %58 = load %struct.ext4_super_block*, %struct.ext4_super_block** %7, align 8
  %59 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 @strncpy(i32 %60, i8* %61, i32 4)
  %63 = load i32, i32* %6, align 4
  %64 = call i8* @cpu_to_le32(i32 %63)
  %65 = load %struct.ext4_super_block*, %struct.ext4_super_block** %7, align 8
  %66 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %65, i32 0, i32 5
  store i8* %64, i8** %66, align 8
  %67 = load %struct.ext4_super_block*, %struct.ext4_super_block** %7, align 8
  %68 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ext4_super_block*, %struct.ext4_super_block** %7, align 8
  %71 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 8
  %72 = load %struct.ext4_super_block*, %struct.ext4_super_block** %7, align 8
  %73 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ext4_super_block*, %struct.ext4_super_block** %7, align 8
  %76 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %47, %24
  %78 = load %struct.ext4_super_block*, %struct.ext4_super_block** %7, align 8
  %79 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %92, label %82

82:                                               ; preds = %77
  %83 = load %struct.super_block*, %struct.super_block** %4, align 8
  %84 = call %struct.TYPE_2__* @EXT4_SB(%struct.super_block* %83)
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* @jiffies, align 8
  %87 = load i32, i32* @HZ, align 4
  %88 = mul nsw i32 86400, %87
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %86, %89
  %91 = call i32 @mod_timer(i32* %85, i64 %90)
  br label %92

92:                                               ; preds = %82, %77
  %93 = load %struct.ext4_super_block*, %struct.ext4_super_block** %7, align 8
  %94 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %93, i32 0, i32 0
  %95 = call i32 @le32_add_cpu(i32* %94, i32 1)
  br label %96

96:                                               ; preds = %92, %23
  ret void
}

declare dso_local %struct.TYPE_2__* @EXT4_SB(%struct.super_block*) #1

declare dso_local i64 @bdev_read_only(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ext4_update_tstamp(%struct.ext4_super_block*, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
