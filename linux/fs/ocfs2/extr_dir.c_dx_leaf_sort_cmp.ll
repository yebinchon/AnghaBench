; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_dx_leaf_sort_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_dx_leaf_sort_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_dx_entry = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @dx_leaf_sort_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dx_leaf_sort_cmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ocfs2_dx_entry*, align 8
  %7 = alloca %struct.ocfs2_dx_entry*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.ocfs2_dx_entry*
  store %struct.ocfs2_dx_entry* %13, %struct.ocfs2_dx_entry** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.ocfs2_dx_entry*
  store %struct.ocfs2_dx_entry* %15, %struct.ocfs2_dx_entry** %7, align 8
  %16 = load %struct.ocfs2_dx_entry*, %struct.ocfs2_dx_entry** %6, align 8
  %17 = getelementptr inbounds %struct.ocfs2_dx_entry, %struct.ocfs2_dx_entry* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @le32_to_cpu(i32 %18)
  store i64 %19, i64* %8, align 8
  %20 = load %struct.ocfs2_dx_entry*, %struct.ocfs2_dx_entry** %7, align 8
  %21 = getelementptr inbounds %struct.ocfs2_dx_entry, %struct.ocfs2_dx_entry* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @le32_to_cpu(i32 %22)
  store i64 %23, i64* %9, align 8
  %24 = load %struct.ocfs2_dx_entry*, %struct.ocfs2_dx_entry** %6, align 8
  %25 = getelementptr inbounds %struct.ocfs2_dx_entry, %struct.ocfs2_dx_entry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @le32_to_cpu(i32 %26)
  store i64 %27, i64* %10, align 8
  %28 = load %struct.ocfs2_dx_entry*, %struct.ocfs2_dx_entry** %7, align 8
  %29 = getelementptr inbounds %struct.ocfs2_dx_entry, %struct.ocfs2_dx_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @le32_to_cpu(i32 %30)
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %52

36:                                               ; preds = %2
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 -1, i32* %3, align 4
  br label %52

41:                                               ; preds = %36
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %11, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 1, i32* %3, align 4
  br label %52

46:                                               ; preds = %41
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %11, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 -1, i32* %3, align 4
  br label %52

51:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %50, %45, %40, %35
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
