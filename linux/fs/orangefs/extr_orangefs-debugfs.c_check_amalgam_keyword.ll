; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-debugfs.c_check_amalgam_keyword.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-debugfs.c_check_amalgam_keyword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.client_debug_mask = type { i64, i64 }

@num_kmod_keyword_mask_map = common dso_local global i32 0, align 4
@cdm_array = common dso_local global %struct.TYPE_4__* null, align 8
@client_all_index = common dso_local global i64 0, align 8
@client_debug_string = common dso_local global i32 0, align 4
@ORANGEFS_ALL = common dso_local global i32 0, align 4
@client_verbose_index = common dso_local global i64 0, align 8
@ORANGEFS_VERBOSE = common dso_local global i32 0, align 4
@s_kmod_keyword_mask_map = common dso_local global %struct.TYPE_3__* null, align 8
@kernel_debug_string = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @check_amalgam_keyword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_amalgam_keyword(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca %struct.client_debug_mask*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @num_kmod_keyword_mask_map, align 4
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %64

13:                                               ; preds = %2
  %14 = load i8*, i8** %3, align 8
  %15 = bitcast i8* %14 to %struct.client_debug_mask*
  store %struct.client_debug_mask* %15, %struct.client_debug_mask** %6, align 8
  %16 = load %struct.client_debug_mask*, %struct.client_debug_mask** %6, align 8
  %17 = getelementptr inbounds %struct.client_debug_mask, %struct.client_debug_mask* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cdm_array, align 8
  %20 = load i64, i64* @client_all_index, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %18, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %13
  %26 = load %struct.client_debug_mask*, %struct.client_debug_mask** %6, align 8
  %27 = getelementptr inbounds %struct.client_debug_mask, %struct.client_debug_mask* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cdm_array, align 8
  %30 = load i64, i64* @client_all_index, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %28, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %25
  %36 = load i32, i32* @client_debug_string, align 4
  %37 = load i32, i32* @ORANGEFS_ALL, align 4
  %38 = call i32 @strcpy(i32 %36, i32 %37)
  store i32 1, i32* %8, align 4
  br label %82

39:                                               ; preds = %25, %13
  %40 = load %struct.client_debug_mask*, %struct.client_debug_mask** %6, align 8
  %41 = getelementptr inbounds %struct.client_debug_mask, %struct.client_debug_mask* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cdm_array, align 8
  %44 = load i64, i64* @client_verbose_index, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %42, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %39
  %50 = load %struct.client_debug_mask*, %struct.client_debug_mask** %6, align 8
  %51 = getelementptr inbounds %struct.client_debug_mask, %struct.client_debug_mask* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cdm_array, align 8
  %54 = load i64, i64* @client_verbose_index, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %52, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %49
  %60 = load i32, i32* @client_debug_string, align 4
  %61 = load i32, i32* @ORANGEFS_VERBOSE, align 4
  %62 = call i32 @strcpy(i32 %60, i32 %61)
  store i32 1, i32* %8, align 4
  br label %82

63:                                               ; preds = %49, %39
  br label %81

64:                                               ; preds = %2
  %65 = load i8*, i8** %3, align 8
  %66 = bitcast i8* %65 to i64*
  store i64* %66, i64** %5, align 8
  %67 = load i64*, i64** %5, align 8
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_kmod_keyword_mask_map, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp sge i64 %68, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %64
  %77 = load i32, i32* @kernel_debug_string, align 4
  %78 = load i32, i32* @ORANGEFS_ALL, align 4
  %79 = call i32 @strcpy(i32 %77, i32 %78)
  store i32 1, i32* %8, align 4
  br label %82

80:                                               ; preds = %64
  br label %81

81:                                               ; preds = %80, %63
  br label %82

82:                                               ; preds = %81, %76, %59, %35
  %83 = load i32, i32* %8, align 4
  ret i32 %83
}

declare dso_local i32 @strcpy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
