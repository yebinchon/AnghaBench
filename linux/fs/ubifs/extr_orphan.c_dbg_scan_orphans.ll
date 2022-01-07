; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_orphan.c_dbg_scan_orphans.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_orphan.c_dbg_scan_orphans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i64 }
%struct.check_info = type { i32 }
%struct.ubifs_scan_leb = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"cannot allocate memory to check orphans\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.check_info*)* @dbg_scan_orphans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbg_scan_orphans(%struct.ubifs_info* %0, %struct.check_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.check_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ubifs_scan_leb*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.check_info* %1, %struct.check_info** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %11 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %65

15:                                               ; preds = %2
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %17 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @GFP_NOFS, align 4
  %20 = load i32, i32* @PAGE_KERNEL, align 4
  %21 = call i8* @__vmalloc(i32 %18, i32 %19, i32 %20)
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %15
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %26 = call i32 @ubifs_err(%struct.ubifs_info* %25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %65

27:                                               ; preds = %15
  %28 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %29 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %58, %27
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %34 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp sle i32 %32, %35
  br i1 %36, label %37, label %61

37:                                               ; preds = %31
  %38 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = call %struct.ubifs_scan_leb* @ubifs_scan(%struct.ubifs_info* %38, i32 %39, i32 0, i8* %40, i32 0)
  store %struct.ubifs_scan_leb* %41, %struct.ubifs_scan_leb** %9, align 8
  %42 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %9, align 8
  %43 = call i64 @IS_ERR(%struct.ubifs_scan_leb* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %9, align 8
  %47 = call i32 @PTR_ERR(%struct.ubifs_scan_leb* %46)
  store i32 %47, i32* %7, align 4
  br label %61

48:                                               ; preds = %37
  %49 = load %struct.check_info*, %struct.check_info** %5, align 8
  %50 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %9, align 8
  %51 = call i32 @dbg_read_orphans(%struct.check_info* %49, %struct.ubifs_scan_leb* %50)
  store i32 %51, i32* %7, align 4
  %52 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %9, align 8
  %53 = call i32 @ubifs_scan_destroy(%struct.ubifs_scan_leb* %52)
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %61

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %31

61:                                               ; preds = %56, %45, %31
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @vfree(i8* %62)
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %61, %24, %14
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i8* @__vmalloc(i32, i32, i32) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*) #1

declare dso_local %struct.ubifs_scan_leb* @ubifs_scan(%struct.ubifs_info*, i32, i32, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_scan_leb*) #1

declare dso_local i32 @PTR_ERR(%struct.ubifs_scan_leb*) #1

declare dso_local i32 @dbg_read_orphans(%struct.check_info*, %struct.ubifs_scan_leb*) #1

declare dso_local i32 @ubifs_scan_destroy(%struct.ubifs_scan_leb*) #1

declare dso_local i32 @vfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
