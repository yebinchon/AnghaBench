; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_sb.c_fixup_leb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_sb.c_fixup_leb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"unmap empty LEB %d\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"fixup LEB %d, data len %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i32, i32)* @fixup_leb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fixup_leb(%struct.ubifs_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = icmp sge i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @ubifs_assert(%struct.ubifs_info* %9, i32 %12)
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %17 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = srem i32 %15, %18
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @ubifs_assert(%struct.ubifs_info* %14, i32 %21)
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %26 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @ubifs_assert(%struct.ubifs_info* %23, i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %3
  %34 = load i32, i32* %6, align 4
  %35 = call i32 (i8*, i32, ...) @dbg_mnt(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @ubifs_leb_unmap(%struct.ubifs_info* %36, i32 %37)
  store i32 %38, i32* %4, align 4
  br label %62

39:                                               ; preds = %3
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 (i8*, i32, ...) @dbg_mnt(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %46 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @ubifs_leb_read(%struct.ubifs_info* %43, i32 %44, i32 %47, i32 0, i32 %48, i32 1)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %39
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %62

54:                                               ; preds = %39
  %55 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %58 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @ubifs_leb_change(%struct.ubifs_info* %55, i32 %56, i32 %59, i32 %60)
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %54, %52, %33
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @dbg_mnt(i8*, i32, ...) #1

declare dso_local i32 @ubifs_leb_unmap(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_leb_read(%struct.ubifs_info*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ubifs_leb_change(%struct.ubifs_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
