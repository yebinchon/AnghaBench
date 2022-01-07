; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_get_stripe_size.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_get_stripe_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_sb_info = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ext4_sb_info*)* @ext4_get_stripe_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ext4_get_stripe_size(%struct.ext4_sb_info* %0) #0 {
  %2 = alloca %struct.ext4_sb_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.ext4_sb_info* %0, %struct.ext4_sb_info** %2, align 8
  %6 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %2, align 8
  %7 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @le16_to_cpu(i32 %10)
  store i64 %11, i64* %3, align 8
  %12 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %2, align 8
  %13 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @le32_to_cpu(i32 %16)
  store i64 %17, i64* %4, align 8
  %18 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %2, align 8
  %19 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %1
  %23 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %2, align 8
  %24 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %2, align 8
  %27 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ule i64 %25, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %2, align 8
  %32 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %5, align 4
  br label %62

35:                                               ; preds = %22, %1
  %36 = load i64, i64* %4, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load i64, i64* %4, align 8
  %40 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %2, align 8
  %41 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ule i64 %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i64, i64* %4, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %5, align 4
  br label %61

47:                                               ; preds = %38, %35
  %48 = load i64, i64* %3, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load i64, i64* %3, align 8
  %52 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %2, align 8
  %53 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ule i64 %51, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i64, i64* %3, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %5, align 4
  br label %60

59:                                               ; preds = %50, %47
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %59, %56
  br label %61

61:                                               ; preds = %60, %44
  br label %62

62:                                               ; preds = %61, %30
  %63 = load i32, i32* %5, align 4
  %64 = icmp sle i32 %63, 1
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %65, %62
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  ret i64 %68
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
