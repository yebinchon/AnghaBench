; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_init_free_nid_cache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_init_free_nid_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.f2fs_nm_info = type { i32, i8*, i8*, i8** }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NAT_ENTRY_PER_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*)* @init_free_nid_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_free_nid_cache(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca %struct.f2fs_nm_info*, align 8
  %5 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  %6 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %7 = call %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info* %6)
  store %struct.f2fs_nm_info* %7, %struct.f2fs_nm_info** %4, align 8
  %8 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %9 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %4, align 8
  %10 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @array_size(i32 8, i32 %11)
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8** @f2fs_kzalloc(%struct.f2fs_sb_info* %8, i32 %12, i32 %13)
  %15 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %4, align 8
  %16 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %15, i32 0, i32 3
  store i8** %14, i8*** %16, align 8
  %17 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %4, align 8
  %18 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %17, i32 0, i32 3
  %19 = load i8**, i8*** %18, align 8
  %20 = icmp ne i8** %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %93

24:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %55, %24
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %4, align 8
  %28 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %58

31:                                               ; preds = %25
  %32 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %33 = load i32, i32* @NAT_ENTRY_PER_BLOCK, align 4
  %34 = call i32 @f2fs_bitmap_size(i32 %33)
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @f2fs_kvzalloc(%struct.f2fs_sb_info* %32, i32 %34, i32 %35)
  %37 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %4, align 8
  %38 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %37, i32 0, i32 3
  %39 = load i8**, i8*** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  store i8* %36, i8** %42, align 8
  %43 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %4, align 8
  %44 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %43, i32 0, i32 3
  %45 = load i8**, i8*** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %31
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %93

54:                                               ; preds = %31
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %25

58:                                               ; preds = %25
  %59 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %60 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %4, align 8
  %61 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sdiv i32 %62, 8
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i8* @f2fs_kvzalloc(%struct.f2fs_sb_info* %59, i32 %63, i32 %64)
  %66 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %4, align 8
  %67 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %4, align 8
  %69 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %68, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %58
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %93

75:                                               ; preds = %58
  %76 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %77 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %4, align 8
  %78 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @array_size(i32 2, i32 %79)
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call i8* @f2fs_kvzalloc(%struct.f2fs_sb_info* %76, i32 %80, i32 %81)
  %83 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %4, align 8
  %84 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  %85 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %4, align 8
  %86 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %75
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %93

92:                                               ; preds = %75
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %89, %72, %51, %21
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info*) #1

declare dso_local i8** @f2fs_kzalloc(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @array_size(i32, i32) #1

declare dso_local i8* @f2fs_kvzalloc(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @f2fs_bitmap_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
